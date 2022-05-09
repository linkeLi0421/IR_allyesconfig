; ModuleID = '/llk/IR_all_yes/fs/cifs/trace.c_pt.bc'
source_filename = "../fs/cifs/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.3, %struct.trace_event, ptr, ptr, %union.anon.6, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.3 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.6 = type { ptr }
%union.anon.129 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.130 = type { %struct.bpf_raw_event_map }
%union.anon.131 = type { %struct.bpf_raw_event_map }
%union.anon.132 = type { %struct.bpf_raw_event_map }
%union.anon.133 = type { %struct.bpf_raw_event_map }
%union.anon.134 = type { %struct.bpf_raw_event_map }
%union.anon.135 = type { %struct.bpf_raw_event_map }
%union.anon.136 = type { %struct.bpf_raw_event_map }
%union.anon.137 = type { %struct.bpf_raw_event_map }
%union.anon.138 = type { %struct.bpf_raw_event_map }
%union.anon.139 = type { %struct.bpf_raw_event_map }
%union.anon.140 = type { %struct.bpf_raw_event_map }
%union.anon.141 = type { %struct.bpf_raw_event_map }
%union.anon.142 = type { %struct.bpf_raw_event_map }
%union.anon.143 = type { %struct.bpf_raw_event_map }
%union.anon.144 = type { %struct.bpf_raw_event_map }
%union.anon.145 = type { %struct.bpf_raw_event_map }
%union.anon.146 = type { %struct.bpf_raw_event_map }
%union.anon.147 = type { %struct.bpf_raw_event_map }
%union.anon.148 = type { %struct.bpf_raw_event_map }
%union.anon.149 = type { %struct.bpf_raw_event_map }
%union.anon.150 = type { %struct.bpf_raw_event_map }
%union.anon.151 = type { %struct.bpf_raw_event_map }
%union.anon.152 = type { %struct.bpf_raw_event_map }
%union.anon.153 = type { %struct.bpf_raw_event_map }
%union.anon.154 = type { %struct.bpf_raw_event_map }
%union.anon.155 = type { %struct.bpf_raw_event_map }
%union.anon.156 = type { %struct.bpf_raw_event_map }
%union.anon.157 = type { %struct.bpf_raw_event_map }
%union.anon.158 = type { %struct.bpf_raw_event_map }
%union.anon.159 = type { %struct.bpf_raw_event_map }
%union.anon.160 = type { %struct.bpf_raw_event_map }
%union.anon.161 = type { %struct.bpf_raw_event_map }
%union.anon.162 = type { %struct.bpf_raw_event_map }
%union.anon.163 = type { %struct.bpf_raw_event_map }
%union.anon.164 = type { %struct.bpf_raw_event_map }
%union.anon.165 = type { %struct.bpf_raw_event_map }
%union.anon.166 = type { %struct.bpf_raw_event_map }
%union.anon.167 = type { %struct.bpf_raw_event_map }
%union.anon.168 = type { %struct.bpf_raw_event_map }
%union.anon.169 = type { %struct.bpf_raw_event_map }
%union.anon.170 = type { %struct.bpf_raw_event_map }
%union.anon.171 = type { %struct.bpf_raw_event_map }
%union.anon.172 = type { %struct.bpf_raw_event_map }
%union.anon.173 = type { %struct.bpf_raw_event_map }
%union.anon.174 = type { %struct.bpf_raw_event_map }
%union.anon.175 = type { %struct.bpf_raw_event_map }
%union.anon.176 = type { %struct.bpf_raw_event_map }
%union.anon.177 = type { %struct.bpf_raw_event_map }
%union.anon.178 = type { %struct.bpf_raw_event_map }
%union.anon.179 = type { %struct.bpf_raw_event_map }
%union.anon.180 = type { %struct.bpf_raw_event_map }
%union.anon.181 = type { %struct.bpf_raw_event_map }
%union.anon.182 = type { %struct.bpf_raw_event_map }
%union.anon.183 = type { %struct.bpf_raw_event_map }
%union.anon.184 = type { %struct.bpf_raw_event_map }
%union.anon.185 = type { %struct.bpf_raw_event_map }
%union.anon.186 = type { %struct.bpf_raw_event_map }
%union.anon.187 = type { %struct.bpf_raw_event_map }
%union.anon.188 = type { %struct.bpf_raw_event_map }
%union.anon.189 = type { %struct.bpf_raw_event_map }
%union.anon.190 = type { %struct.bpf_raw_event_map }
%union.anon.191 = type { %struct.bpf_raw_event_map }
%union.anon.192 = type { %struct.bpf_raw_event_map }
%union.anon.193 = type { %struct.bpf_raw_event_map }
%union.anon.194 = type { %struct.bpf_raw_event_map }
%union.anon.195 = type { %struct.bpf_raw_event_map }
%union.anon.196 = type { %struct.bpf_raw_event_map }
%union.anon.197 = type { %struct.bpf_raw_event_map }
%union.anon.198 = type { %struct.bpf_raw_event_map }
%union.anon.199 = type { %struct.bpf_raw_event_map }
%union.anon.200 = type { %struct.bpf_raw_event_map }
%union.anon.201 = type { %struct.bpf_raw_event_map }
%union.anon.202 = type { %struct.bpf_raw_event_map }
%union.anon.203 = type { %struct.bpf_raw_event_map }
%union.anon.204 = type { %struct.bpf_raw_event_map }
%union.anon.205 = type { %struct.bpf_raw_event_map }
%union.anon.206 = type { %struct.bpf_raw_event_map }
%union.anon.207 = type { %struct.bpf_raw_event_map }
%union.anon.208 = type { %struct.bpf_raw_event_map }
%union.anon.209 = type { %struct.bpf_raw_event_map }
%union.anon.210 = type { %struct.bpf_raw_event_map }
%union.anon.211 = type { %struct.bpf_raw_event_map }
%union.anon.212 = type { %struct.bpf_raw_event_map }
%union.anon.213 = type { %struct.bpf_raw_event_map }
%union.anon.214 = type { %struct.bpf_raw_event_map }
%union.anon.215 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_smb3_rw_err_class = type { %struct.trace_entry, i32, i64, i32, i64, i64, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_smb3_rw_done_class = type { %struct.trace_entry, i32, i64, i32, i64, i64, i32, [0 x i8] }
%struct.trace_event_raw_smb3_fd_class = type { %struct.trace_entry, i32, i64, i32, i64, [0 x i8] }
%struct.trace_event_raw_smb3_fd_err_class = type { %struct.trace_entry, i32, i64, i32, i64, i32, [0 x i8] }
%struct.trace_event_raw_smb3_inf_enter_class = type { %struct.trace_entry, i32, i64, i32, i64, i8, i32, [0 x i8] }
%struct.trace_event_raw_smb3_inf_err_class = type { %struct.trace_entry, i32, i64, i32, i64, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_inf_compound_enter_class = type { %struct.trace_entry, i32, i32, i64, i32, [0 x i8] }
%struct.trace_event_raw_smb3_inf_compound_done_class = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_smb3_inf_compound_err_class = type { %struct.trace_entry, i32, i32, i64, i32, [0 x i8] }
%struct.trace_event_raw_smb3_cmd_err_class = type { %struct.trace_entry, i32, i64, i16, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_cmd_done_class = type { %struct.trace_entry, i32, i64, i16, i64, [0 x i8] }
%struct.trace_event_raw_smb3_mid_class = type { %struct.trace_entry, i16, i64, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_exit_err_class = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_sync_err_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_enter_exit_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_tcon_class = type { %struct.trace_entry, i32, i32, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_open_enter_class = type { %struct.trace_entry, i32, i32, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_open_err_class = type { %struct.trace_entry, i32, i32, i64, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_open_done_class = type { %struct.trace_entry, i32, i64, i32, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_smb3_lease_done_class = type { %struct.trace_entry, i32, i32, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_smb3_lease_err_class = type { %struct.trace_entry, i32, i32, i64, i64, i64, i32, [0 x i8] }
%struct.trace_event_raw_smb3_connect_class = type { %struct.trace_entry, i32, i64, [128 x i8], [0 x i8] }
%struct.trace_event_raw_smb3_connect_err_class = type { %struct.trace_entry, i32, i64, [128 x i8], i32, [0 x i8] }
%struct.trace_event_raw_smb3_reconnect_class = type { %struct.trace_entry, i64, i64, i32, [0 x i8] }
%struct.trace_event_raw_smb3_credit_class = type { %struct.trace_entry, i64, i64, i32, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_smb3_write_err = internal constant [15 x i8] c"smb3_write_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_write_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_write_err }, align 4
@__tracepoint_smb3_write_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_write_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_write_err, ptr null, ptr @__traceiter_smb3_write_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_write_err = internal constant ptr @__tracepoint_smb3_write_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_read_err = internal constant [14 x i8] c"smb3_read_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_read_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_read_err }, align 4
@__tracepoint_smb3_read_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_read_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_read_err, ptr null, ptr @__traceiter_smb3_read_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_read_err = internal constant ptr @__tracepoint_smb3_read_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_dir_err = internal constant [19 x i8] c"smb3_query_dir_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_dir_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_dir_err }, align 4
@__tracepoint_smb3_query_dir_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_dir_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_dir_err, ptr null, ptr @__traceiter_smb3_query_dir_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_dir_err = internal constant ptr @__tracepoint_smb3_query_dir_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_zero_err = internal constant [14 x i8] c"smb3_zero_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_zero_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_zero_err }, align 4
@__tracepoint_smb3_zero_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_zero_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_zero_err, ptr null, ptr @__traceiter_smb3_zero_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_zero_err = internal constant ptr @__tracepoint_smb3_zero_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_falloc_err = internal constant [16 x i8] c"smb3_falloc_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_falloc_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_falloc_err }, align 4
@__tracepoint_smb3_falloc_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_falloc_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_falloc_err, ptr null, ptr @__traceiter_smb3_falloc_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_falloc_err = internal constant ptr @__tracepoint_smb3_falloc_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_write_enter = internal constant [17 x i8] c"smb3_write_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_write_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_write_enter }, align 4
@__tracepoint_smb3_write_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_write_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_write_enter, ptr null, ptr @__traceiter_smb3_write_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_write_enter = internal constant ptr @__tracepoint_smb3_write_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_read_enter = internal constant [16 x i8] c"smb3_read_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_read_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_read_enter }, align 4
@__tracepoint_smb3_read_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_read_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_read_enter, ptr null, ptr @__traceiter_smb3_read_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_read_enter = internal constant ptr @__tracepoint_smb3_read_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_dir_enter = internal constant [21 x i8] c"smb3_query_dir_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_dir_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_dir_enter }, align 4
@__tracepoint_smb3_query_dir_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_dir_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_dir_enter, ptr null, ptr @__traceiter_smb3_query_dir_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_dir_enter = internal constant ptr @__tracepoint_smb3_query_dir_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_zero_enter = internal constant [16 x i8] c"smb3_zero_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_zero_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_zero_enter }, align 4
@__tracepoint_smb3_zero_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_zero_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_zero_enter, ptr null, ptr @__traceiter_smb3_zero_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_zero_enter = internal constant ptr @__tracepoint_smb3_zero_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_falloc_enter = internal constant [18 x i8] c"smb3_falloc_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_falloc_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_falloc_enter }, align 4
@__tracepoint_smb3_falloc_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_falloc_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_falloc_enter, ptr null, ptr @__traceiter_smb3_falloc_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_falloc_enter = internal constant ptr @__tracepoint_smb3_falloc_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_write_done = internal constant [16 x i8] c"smb3_write_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_write_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_write_done }, align 4
@__tracepoint_smb3_write_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_write_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_write_done, ptr null, ptr @__traceiter_smb3_write_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_write_done = internal constant ptr @__tracepoint_smb3_write_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_read_done = internal constant [15 x i8] c"smb3_read_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_read_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_read_done }, align 4
@__tracepoint_smb3_read_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_read_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_read_done, ptr null, ptr @__traceiter_smb3_read_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_read_done = internal constant ptr @__tracepoint_smb3_read_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_dir_done = internal constant [20 x i8] c"smb3_query_dir_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_dir_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_dir_done }, align 4
@__tracepoint_smb3_query_dir_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_dir_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_dir_done, ptr null, ptr @__traceiter_smb3_query_dir_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_dir_done = internal constant ptr @__tracepoint_smb3_query_dir_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_zero_done = internal constant [15 x i8] c"smb3_zero_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_zero_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_zero_done }, align 4
@__tracepoint_smb3_zero_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_zero_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_zero_done, ptr null, ptr @__traceiter_smb3_zero_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_zero_done = internal constant ptr @__tracepoint_smb3_zero_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_falloc_done = internal constant [17 x i8] c"smb3_falloc_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_falloc_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_falloc_done }, align 4
@__tracepoint_smb3_falloc_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_falloc_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_falloc_done, ptr null, ptr @__traceiter_smb3_falloc_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_falloc_done = internal constant ptr @__tracepoint_smb3_falloc_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_flush_enter = internal constant [17 x i8] c"smb3_flush_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_flush_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_flush_enter }, align 4
@__tracepoint_smb3_flush_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_flush_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_flush_enter, ptr null, ptr @__traceiter_smb3_flush_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_flush_enter = internal constant ptr @__tracepoint_smb3_flush_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_flush_done = internal constant [16 x i8] c"smb3_flush_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_flush_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_flush_done }, align 4
@__tracepoint_smb3_flush_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_flush_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_flush_done, ptr null, ptr @__traceiter_smb3_flush_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_flush_done = internal constant ptr @__tracepoint_smb3_flush_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_close_enter = internal constant [17 x i8] c"smb3_close_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_close_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_close_enter }, align 4
@__tracepoint_smb3_close_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_close_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_close_enter, ptr null, ptr @__traceiter_smb3_close_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_close_enter = internal constant ptr @__tracepoint_smb3_close_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_close_done = internal constant [16 x i8] c"smb3_close_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_close_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_close_done }, align 4
@__tracepoint_smb3_close_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_close_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_close_done, ptr null, ptr @__traceiter_smb3_close_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_close_done = internal constant ptr @__tracepoint_smb3_close_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_flush_err = internal constant [15 x i8] c"smb3_flush_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_flush_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_flush_err }, align 4
@__tracepoint_smb3_flush_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_flush_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_flush_err, ptr null, ptr @__traceiter_smb3_flush_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_flush_err = internal constant ptr @__tracepoint_smb3_flush_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_lock_err = internal constant [14 x i8] c"smb3_lock_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_lock_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_lock_err }, align 4
@__tracepoint_smb3_lock_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_lock_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_lock_err, ptr null, ptr @__traceiter_smb3_lock_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_lock_err = internal constant ptr @__tracepoint_smb3_lock_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_close_err = internal constant [15 x i8] c"smb3_close_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_close_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_close_err }, align 4
@__tracepoint_smb3_close_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_close_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_close_err, ptr null, ptr @__traceiter_smb3_close_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_close_err = internal constant ptr @__tracepoint_smb3_close_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_info_enter = internal constant [22 x i8] c"smb3_query_info_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_info_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_info_enter }, align 4
@__tracepoint_smb3_query_info_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_info_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_info_enter, ptr null, ptr @__traceiter_smb3_query_info_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_info_enter = internal constant ptr @__tracepoint_smb3_query_info_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_info_done = internal constant [21 x i8] c"smb3_query_info_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_info_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_info_done }, align 4
@__tracepoint_smb3_query_info_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_info_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_info_done, ptr null, ptr @__traceiter_smb3_query_info_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_info_done = internal constant ptr @__tracepoint_smb3_query_info_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_notify_enter = internal constant [18 x i8] c"smb3_notify_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_notify_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_notify_enter }, align 4
@__tracepoint_smb3_notify_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_notify_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_notify_enter, ptr null, ptr @__traceiter_smb3_notify_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_notify_enter = internal constant ptr @__tracepoint_smb3_notify_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_notify_done = internal constant [17 x i8] c"smb3_notify_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_notify_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_notify_done }, align 4
@__tracepoint_smb3_notify_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_notify_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_notify_done, ptr null, ptr @__traceiter_smb3_notify_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_notify_done = internal constant ptr @__tracepoint_smb3_notify_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_info_err = internal constant [20 x i8] c"smb3_query_info_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_info_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_info_err }, align 4
@__tracepoint_smb3_query_info_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_info_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_info_err, ptr null, ptr @__traceiter_smb3_query_info_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_info_err = internal constant ptr @__tracepoint_smb3_query_info_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_info_err = internal constant [18 x i8] c"smb3_set_info_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_info_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_info_err }, align 4
@__tracepoint_smb3_set_info_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_info_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_info_err, ptr null, ptr @__traceiter_smb3_set_info_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_info_err = internal constant ptr @__tracepoint_smb3_set_info_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_notify_err = internal constant [16 x i8] c"smb3_notify_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_notify_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_notify_err }, align 4
@__tracepoint_smb3_notify_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_notify_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_notify_err, ptr null, ptr @__traceiter_smb3_notify_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_notify_err = internal constant ptr @__tracepoint_smb3_notify_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_fsctl_err = internal constant [15 x i8] c"smb3_fsctl_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_fsctl_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_fsctl_err }, align 4
@__tracepoint_smb3_fsctl_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_fsctl_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_fsctl_err, ptr null, ptr @__traceiter_smb3_fsctl_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_fsctl_err = internal constant ptr @__tracepoint_smb3_fsctl_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_info_compound_enter = internal constant [31 x i8] c"smb3_query_info_compound_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_info_compound_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_info_compound_enter }, align 4
@__tracepoint_smb3_query_info_compound_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_info_compound_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_info_compound_enter, ptr null, ptr @__traceiter_smb3_query_info_compound_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_info_compound_enter = internal constant ptr @__tracepoint_smb3_query_info_compound_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_posix_query_info_compound_enter = internal constant [37 x i8] c"smb3_posix_query_info_compound_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_posix_query_info_compound_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_posix_query_info_compound_enter }, align 4
@__tracepoint_smb3_posix_query_info_compound_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_posix_query_info_compound_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_posix_query_info_compound_enter, ptr null, ptr @__traceiter_smb3_posix_query_info_compound_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_posix_query_info_compound_enter = internal constant ptr @__tracepoint_smb3_posix_query_info_compound_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_hardlink_enter = internal constant [20 x i8] c"smb3_hardlink_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_hardlink_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_hardlink_enter }, align 4
@__tracepoint_smb3_hardlink_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_hardlink_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_hardlink_enter, ptr null, ptr @__traceiter_smb3_hardlink_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_hardlink_enter = internal constant ptr @__tracepoint_smb3_hardlink_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_rename_enter = internal constant [18 x i8] c"smb3_rename_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_rename_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_rename_enter }, align 4
@__tracepoint_smb3_rename_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_rename_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_rename_enter, ptr null, ptr @__traceiter_smb3_rename_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_rename_enter = internal constant ptr @__tracepoint_smb3_rename_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_rmdir_enter = internal constant [17 x i8] c"smb3_rmdir_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_rmdir_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_rmdir_enter }, align 4
@__tracepoint_smb3_rmdir_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_rmdir_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_rmdir_enter, ptr null, ptr @__traceiter_smb3_rmdir_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_rmdir_enter = internal constant ptr @__tracepoint_smb3_rmdir_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_eof_enter = internal constant [19 x i8] c"smb3_set_eof_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_eof_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_eof_enter }, align 4
@__tracepoint_smb3_set_eof_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_eof_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_eof_enter, ptr null, ptr @__traceiter_smb3_set_eof_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_eof_enter = internal constant ptr @__tracepoint_smb3_set_eof_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_info_compound_enter = internal constant [29 x i8] c"smb3_set_info_compound_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_info_compound_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_info_compound_enter }, align 4
@__tracepoint_smb3_set_info_compound_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_info_compound_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_info_compound_enter, ptr null, ptr @__traceiter_smb3_set_info_compound_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_info_compound_enter = internal constant ptr @__tracepoint_smb3_set_info_compound_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_delete_enter = internal constant [18 x i8] c"smb3_delete_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_delete_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_delete_enter }, align 4
@__tracepoint_smb3_delete_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_delete_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_delete_enter, ptr null, ptr @__traceiter_smb3_delete_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_delete_enter = internal constant ptr @__tracepoint_smb3_delete_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_mkdir_enter = internal constant [17 x i8] c"smb3_mkdir_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_mkdir_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_mkdir_enter }, align 4
@__tracepoint_smb3_mkdir_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_mkdir_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_mkdir_enter, ptr null, ptr @__traceiter_smb3_mkdir_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_mkdir_enter = internal constant ptr @__tracepoint_smb3_mkdir_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_info_compound_done = internal constant [30 x i8] c"smb3_query_info_compound_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_info_compound_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_info_compound_done }, align 4
@__tracepoint_smb3_query_info_compound_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_info_compound_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_info_compound_done, ptr null, ptr @__traceiter_smb3_query_info_compound_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_info_compound_done = internal constant ptr @__tracepoint_smb3_query_info_compound_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_posix_query_info_compound_done = internal constant [36 x i8] c"smb3_posix_query_info_compound_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_posix_query_info_compound_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_posix_query_info_compound_done }, align 4
@__tracepoint_smb3_posix_query_info_compound_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_posix_query_info_compound_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_posix_query_info_compound_done, ptr null, ptr @__traceiter_smb3_posix_query_info_compound_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_posix_query_info_compound_done = internal constant ptr @__tracepoint_smb3_posix_query_info_compound_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_hardlink_done = internal constant [19 x i8] c"smb3_hardlink_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_hardlink_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_hardlink_done }, align 4
@__tracepoint_smb3_hardlink_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_hardlink_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_hardlink_done, ptr null, ptr @__traceiter_smb3_hardlink_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_hardlink_done = internal constant ptr @__tracepoint_smb3_hardlink_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_rename_done = internal constant [17 x i8] c"smb3_rename_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_rename_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_rename_done }, align 4
@__tracepoint_smb3_rename_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_rename_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_rename_done, ptr null, ptr @__traceiter_smb3_rename_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_rename_done = internal constant ptr @__tracepoint_smb3_rename_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_rmdir_done = internal constant [16 x i8] c"smb3_rmdir_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_rmdir_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_rmdir_done }, align 4
@__tracepoint_smb3_rmdir_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_rmdir_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_rmdir_done, ptr null, ptr @__traceiter_smb3_rmdir_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_rmdir_done = internal constant ptr @__tracepoint_smb3_rmdir_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_eof_done = internal constant [18 x i8] c"smb3_set_eof_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_eof_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_eof_done }, align 4
@__tracepoint_smb3_set_eof_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_eof_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_eof_done, ptr null, ptr @__traceiter_smb3_set_eof_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_eof_done = internal constant ptr @__tracepoint_smb3_set_eof_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_info_compound_done = internal constant [28 x i8] c"smb3_set_info_compound_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_info_compound_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_info_compound_done }, align 4
@__tracepoint_smb3_set_info_compound_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_info_compound_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_info_compound_done, ptr null, ptr @__traceiter_smb3_set_info_compound_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_info_compound_done = internal constant ptr @__tracepoint_smb3_set_info_compound_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_delete_done = internal constant [17 x i8] c"smb3_delete_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_delete_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_delete_done }, align 4
@__tracepoint_smb3_delete_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_delete_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_delete_done, ptr null, ptr @__traceiter_smb3_delete_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_delete_done = internal constant ptr @__tracepoint_smb3_delete_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_mkdir_done = internal constant [16 x i8] c"smb3_mkdir_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_mkdir_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_mkdir_done }, align 4
@__tracepoint_smb3_mkdir_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_mkdir_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_mkdir_done, ptr null, ptr @__traceiter_smb3_mkdir_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_mkdir_done = internal constant ptr @__tracepoint_smb3_mkdir_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_query_info_compound_err = internal constant [29 x i8] c"smb3_query_info_compound_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_query_info_compound_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_query_info_compound_err }, align 4
@__tracepoint_smb3_query_info_compound_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_query_info_compound_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_query_info_compound_err, ptr null, ptr @__traceiter_smb3_query_info_compound_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_query_info_compound_err = internal constant ptr @__tracepoint_smb3_query_info_compound_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_posix_query_info_compound_err = internal constant [35 x i8] c"smb3_posix_query_info_compound_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_posix_query_info_compound_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_posix_query_info_compound_err }, align 4
@__tracepoint_smb3_posix_query_info_compound_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_posix_query_info_compound_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_posix_query_info_compound_err, ptr null, ptr @__traceiter_smb3_posix_query_info_compound_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_posix_query_info_compound_err = internal constant ptr @__tracepoint_smb3_posix_query_info_compound_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_hardlink_err = internal constant [18 x i8] c"smb3_hardlink_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_hardlink_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_hardlink_err }, align 4
@__tracepoint_smb3_hardlink_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_hardlink_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_hardlink_err, ptr null, ptr @__traceiter_smb3_hardlink_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_hardlink_err = internal constant ptr @__tracepoint_smb3_hardlink_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_rename_err = internal constant [16 x i8] c"smb3_rename_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_rename_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_rename_err }, align 4
@__tracepoint_smb3_rename_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_rename_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_rename_err, ptr null, ptr @__traceiter_smb3_rename_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_rename_err = internal constant ptr @__tracepoint_smb3_rename_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_rmdir_err = internal constant [15 x i8] c"smb3_rmdir_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_rmdir_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_rmdir_err }, align 4
@__tracepoint_smb3_rmdir_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_rmdir_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_rmdir_err, ptr null, ptr @__traceiter_smb3_rmdir_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_rmdir_err = internal constant ptr @__tracepoint_smb3_rmdir_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_eof_err = internal constant [17 x i8] c"smb3_set_eof_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_eof_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_eof_err }, align 4
@__tracepoint_smb3_set_eof_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_eof_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_eof_err, ptr null, ptr @__traceiter_smb3_set_eof_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_eof_err = internal constant ptr @__tracepoint_smb3_set_eof_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_info_compound_err = internal constant [27 x i8] c"smb3_set_info_compound_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_info_compound_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_info_compound_err }, align 4
@__tracepoint_smb3_set_info_compound_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_info_compound_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_info_compound_err, ptr null, ptr @__traceiter_smb3_set_info_compound_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_info_compound_err = internal constant ptr @__tracepoint_smb3_set_info_compound_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_mkdir_err = internal constant [15 x i8] c"smb3_mkdir_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_mkdir_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_mkdir_err }, align 4
@__tracepoint_smb3_mkdir_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_mkdir_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_mkdir_err, ptr null, ptr @__traceiter_smb3_mkdir_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_mkdir_err = internal constant ptr @__tracepoint_smb3_mkdir_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_delete_err = internal constant [16 x i8] c"smb3_delete_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_delete_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_delete_err }, align 4
@__tracepoint_smb3_delete_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_delete_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_delete_err, ptr null, ptr @__traceiter_smb3_delete_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_delete_err = internal constant ptr @__tracepoint_smb3_delete_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_cmd_err = internal constant [13 x i8] c"smb3_cmd_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_cmd_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_cmd_err }, align 4
@__tracepoint_smb3_cmd_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_cmd_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_cmd_err, ptr null, ptr @__traceiter_smb3_cmd_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_cmd_err = internal constant ptr @__tracepoint_smb3_cmd_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_cmd_enter = internal constant [15 x i8] c"smb3_cmd_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_cmd_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_cmd_enter }, align 4
@__tracepoint_smb3_cmd_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_cmd_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_cmd_enter, ptr null, ptr @__traceiter_smb3_cmd_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_cmd_enter = internal constant ptr @__tracepoint_smb3_cmd_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_cmd_done = internal constant [14 x i8] c"smb3_cmd_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_cmd_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_cmd_done }, align 4
@__tracepoint_smb3_cmd_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_cmd_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_cmd_done, ptr null, ptr @__traceiter_smb3_cmd_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_cmd_done = internal constant ptr @__tracepoint_smb3_cmd_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_ses_expired = internal constant [17 x i8] c"smb3_ses_expired\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_ses_expired = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_ses_expired }, align 4
@__tracepoint_smb3_ses_expired = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_ses_expired, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_ses_expired, ptr null, ptr @__traceiter_smb3_ses_expired, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_ses_expired = internal constant ptr @__tracepoint_smb3_ses_expired, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_slow_rsp = internal constant [14 x i8] c"smb3_slow_rsp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_slow_rsp = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_slow_rsp }, align 4
@__tracepoint_smb3_slow_rsp = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_slow_rsp, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_slow_rsp, ptr null, ptr @__traceiter_smb3_slow_rsp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_slow_rsp = internal constant ptr @__tracepoint_smb3_slow_rsp, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_exit_err = internal constant [14 x i8] c"smb3_exit_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_exit_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_exit_err }, align 4
@__tracepoint_smb3_exit_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_exit_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_exit_err, ptr null, ptr @__traceiter_smb3_exit_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_exit_err = internal constant ptr @__tracepoint_smb3_exit_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_cifs_fsync_err = internal constant [15 x i8] c"cifs_fsync_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cifs_fsync_err = dso_local global %struct.static_call_key { ptr @__traceiter_cifs_fsync_err }, align 4
@__tracepoint_cifs_fsync_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cifs_fsync_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cifs_fsync_err, ptr null, ptr @__traceiter_cifs_fsync_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cifs_fsync_err = internal constant ptr @__tracepoint_cifs_fsync_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_cifs_flush_err = internal constant [15 x i8] c"cifs_flush_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cifs_flush_err = dso_local global %struct.static_call_key { ptr @__traceiter_cifs_flush_err }, align 4
@__tracepoint_cifs_flush_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cifs_flush_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cifs_flush_err, ptr null, ptr @__traceiter_cifs_flush_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cifs_flush_err = internal constant ptr @__tracepoint_cifs_flush_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_enter = internal constant [11 x i8] c"smb3_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_enter }, align 4
@__tracepoint_smb3_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_enter, ptr null, ptr @__traceiter_smb3_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_enter = internal constant ptr @__tracepoint_smb3_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_exit_done = internal constant [15 x i8] c"smb3_exit_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_exit_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_exit_done }, align 4
@__tracepoint_smb3_exit_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_exit_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_exit_done, ptr null, ptr @__traceiter_smb3_exit_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_exit_done = internal constant ptr @__tracepoint_smb3_exit_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_tcon = internal constant [10 x i8] c"smb3_tcon\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_tcon = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_tcon }, align 4
@__tracepoint_smb3_tcon = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_tcon, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_tcon, ptr null, ptr @__traceiter_smb3_tcon, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_tcon = internal constant ptr @__tracepoint_smb3_tcon, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_open_enter = internal constant [16 x i8] c"smb3_open_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_open_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_open_enter }, align 4
@__tracepoint_smb3_open_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_open_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_open_enter, ptr null, ptr @__traceiter_smb3_open_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_open_enter = internal constant ptr @__tracepoint_smb3_open_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_posix_mkdir_enter = internal constant [23 x i8] c"smb3_posix_mkdir_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_posix_mkdir_enter = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_posix_mkdir_enter }, align 4
@__tracepoint_smb3_posix_mkdir_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_posix_mkdir_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_posix_mkdir_enter, ptr null, ptr @__traceiter_smb3_posix_mkdir_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_posix_mkdir_enter = internal constant ptr @__tracepoint_smb3_posix_mkdir_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_open_err = internal constant [14 x i8] c"smb3_open_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_open_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_open_err }, align 4
@__tracepoint_smb3_open_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_open_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_open_err, ptr null, ptr @__traceiter_smb3_open_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_open_err = internal constant ptr @__tracepoint_smb3_open_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_posix_mkdir_err = internal constant [21 x i8] c"smb3_posix_mkdir_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_posix_mkdir_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_posix_mkdir_err }, align 4
@__tracepoint_smb3_posix_mkdir_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_posix_mkdir_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_posix_mkdir_err, ptr null, ptr @__traceiter_smb3_posix_mkdir_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_posix_mkdir_err = internal constant ptr @__tracepoint_smb3_posix_mkdir_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_open_done = internal constant [15 x i8] c"smb3_open_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_open_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_open_done }, align 4
@__tracepoint_smb3_open_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_open_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_open_done, ptr null, ptr @__traceiter_smb3_open_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_open_done = internal constant ptr @__tracepoint_smb3_open_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_posix_mkdir_done = internal constant [22 x i8] c"smb3_posix_mkdir_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_posix_mkdir_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_posix_mkdir_done }, align 4
@__tracepoint_smb3_posix_mkdir_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_posix_mkdir_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_posix_mkdir_done, ptr null, ptr @__traceiter_smb3_posix_mkdir_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_posix_mkdir_done = internal constant ptr @__tracepoint_smb3_posix_mkdir_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_lease_done = internal constant [16 x i8] c"smb3_lease_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_lease_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_lease_done }, align 4
@__tracepoint_smb3_lease_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_lease_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_lease_done, ptr null, ptr @__traceiter_smb3_lease_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_lease_done = internal constant ptr @__tracepoint_smb3_lease_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_lease_err = internal constant [15 x i8] c"smb3_lease_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_lease_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_lease_err }, align 4
@__tracepoint_smb3_lease_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_lease_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_lease_err, ptr null, ptr @__traceiter_smb3_lease_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_lease_err = internal constant ptr @__tracepoint_smb3_lease_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_connect_done = internal constant [18 x i8] c"smb3_connect_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_connect_done = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_connect_done }, align 4
@__tracepoint_smb3_connect_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_connect_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_connect_done, ptr null, ptr @__traceiter_smb3_connect_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_connect_done = internal constant ptr @__tracepoint_smb3_connect_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_connect_err = internal constant [17 x i8] c"smb3_connect_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_connect_err = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_connect_err }, align 4
@__tracepoint_smb3_connect_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_connect_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_connect_err, ptr null, ptr @__traceiter_smb3_connect_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_connect_err = internal constant ptr @__tracepoint_smb3_connect_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_reconnect = internal constant [15 x i8] c"smb3_reconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_reconnect = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_reconnect }, align 4
@__tracepoint_smb3_reconnect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_reconnect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_reconnect, ptr null, ptr @__traceiter_smb3_reconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_reconnect = internal constant ptr @__tracepoint_smb3_reconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_partial_send_reconnect = internal constant [28 x i8] c"smb3_partial_send_reconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_partial_send_reconnect = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_partial_send_reconnect }, align 4
@__tracepoint_smb3_partial_send_reconnect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_partial_send_reconnect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_partial_send_reconnect, ptr null, ptr @__traceiter_smb3_partial_send_reconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_partial_send_reconnect = internal constant ptr @__tracepoint_smb3_partial_send_reconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_reconnect_with_invalid_credits = internal constant [36 x i8] c"smb3_reconnect_with_invalid_credits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_reconnect_with_invalid_credits = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_reconnect_with_invalid_credits }, align 4
@__tracepoint_smb3_reconnect_with_invalid_credits = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_reconnect_with_invalid_credits, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_reconnect_with_invalid_credits, ptr null, ptr @__traceiter_smb3_reconnect_with_invalid_credits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_reconnect_with_invalid_credits = internal constant ptr @__tracepoint_smb3_reconnect_with_invalid_credits, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_reconnect_detected = internal constant [24 x i8] c"smb3_reconnect_detected\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_reconnect_detected = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_reconnect_detected }, align 4
@__tracepoint_smb3_reconnect_detected = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_reconnect_detected, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_reconnect_detected, ptr null, ptr @__traceiter_smb3_reconnect_detected, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_reconnect_detected = internal constant ptr @__tracepoint_smb3_reconnect_detected, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_credit_timeout = internal constant [20 x i8] c"smb3_credit_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_credit_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_credit_timeout }, align 4
@__tracepoint_smb3_credit_timeout = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_credit_timeout, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_credit_timeout, ptr null, ptr @__traceiter_smb3_credit_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_credit_timeout = internal constant ptr @__tracepoint_smb3_credit_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_insufficient_credits = internal constant [26 x i8] c"smb3_insufficient_credits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_insufficient_credits = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_insufficient_credits }, align 4
@__tracepoint_smb3_insufficient_credits = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_insufficient_credits, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_insufficient_credits, ptr null, ptr @__traceiter_smb3_insufficient_credits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_insufficient_credits = internal constant ptr @__tracepoint_smb3_insufficient_credits, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_too_many_credits = internal constant [22 x i8] c"smb3_too_many_credits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_too_many_credits = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_too_many_credits }, align 4
@__tracepoint_smb3_too_many_credits = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_too_many_credits, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_too_many_credits, ptr null, ptr @__traceiter_smb3_too_many_credits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_too_many_credits = internal constant ptr @__tracepoint_smb3_too_many_credits, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_add_credits = internal constant [17 x i8] c"smb3_add_credits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_add_credits = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_add_credits }, align 4
@__tracepoint_smb3_add_credits = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_add_credits, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_add_credits, ptr null, ptr @__traceiter_smb3_add_credits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_add_credits = internal constant ptr @__tracepoint_smb3_add_credits, section "__tracepoints_ptrs", align 4
@__tpstrtab_smb3_set_credits = internal constant [17 x i8] c"smb3_set_credits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smb3_set_credits = dso_local global %struct.static_call_key { ptr @__traceiter_smb3_set_credits }, align 4
@__tracepoint_smb3_set_credits = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_smb3_set_credits, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_smb3_set_credits, ptr null, ptr @__traceiter_smb3_set_credits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smb3_set_credits = internal constant ptr @__tracepoint_smb3_set_credits, section "__tracepoints_ptrs", align 4
@str__cifs__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_smb3_rw_err_class = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_smb3_rw_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_rw_err_class, ptr @perf_trace_smb3_rw_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_rw_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_rw_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_rw_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_rw_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_rw_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_rw_err_class = internal global { [144 x i8], [48 x i8] } { [144 x i8] c"\22\09xid=%u sid=0x%llx tid=0x%x fid=0x%llx offset=0x%llx len=0x%x rc=%d\22, REC->xid, REC->sesid, REC->tid, REC->fid, REC->offset, REC->len, REC->rc\00", [48 x i8] zeroinitializer }, align 32
@event_smb3_write_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_err_class, %union.anon.3 { ptr @__tracepoint_smb3_write_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_err_class }, ptr @print_fmt_smb3_rw_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_write_err = internal global ptr @event_smb3_write_err, section "_ftrace_events", align 4
@event_smb3_read_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_err_class, %union.anon.3 { ptr @__tracepoint_smb3_read_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_err_class }, ptr @print_fmt_smb3_rw_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_read_err = internal global ptr @event_smb3_read_err, section "_ftrace_events", align 4
@event_smb3_query_dir_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_err_class, %union.anon.3 { ptr @__tracepoint_smb3_query_dir_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_err_class }, ptr @print_fmt_smb3_rw_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_dir_err = internal global ptr @event_smb3_query_dir_err, section "_ftrace_events", align 4
@event_smb3_zero_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_err_class, %union.anon.3 { ptr @__tracepoint_smb3_zero_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_err_class }, ptr @print_fmt_smb3_rw_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_zero_err = internal global ptr @event_smb3_zero_err, section "_ftrace_events", align 4
@event_smb3_falloc_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_err_class, %union.anon.3 { ptr @__tracepoint_smb3_falloc_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_err_class }, ptr @print_fmt_smb3_rw_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_falloc_err = internal global ptr @event_smb3_falloc_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_rw_done_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_rw_done_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_rw_done_class, ptr @perf_trace_smb3_rw_done_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_rw_done_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_rw_done_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_rw_done_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_rw_done_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_rw_done_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_rw_done_class = internal global { [128 x i8], [32 x i8] } { [128 x i8] c"\22xid=%u sid=0x%llx tid=0x%x fid=0x%llx offset=0x%llx len=0x%x\22, REC->xid, REC->sesid, REC->tid, REC->fid, REC->offset, REC->len\00", [32 x i8] zeroinitializer }, align 32
@event_smb3_write_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_write_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_write_enter = internal global ptr @event_smb3_write_enter, section "_ftrace_events", align 4
@event_smb3_read_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_read_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_read_enter = internal global ptr @event_smb3_read_enter, section "_ftrace_events", align 4
@event_smb3_query_dir_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_query_dir_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_dir_enter = internal global ptr @event_smb3_query_dir_enter, section "_ftrace_events", align 4
@event_smb3_zero_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_zero_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_zero_enter = internal global ptr @event_smb3_zero_enter, section "_ftrace_events", align 4
@event_smb3_falloc_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_falloc_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_falloc_enter = internal global ptr @event_smb3_falloc_enter, section "_ftrace_events", align 4
@event_smb3_write_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_write_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_write_done = internal global ptr @event_smb3_write_done, section "_ftrace_events", align 4
@event_smb3_read_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_read_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_read_done = internal global ptr @event_smb3_read_done, section "_ftrace_events", align 4
@event_smb3_query_dir_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_query_dir_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_dir_done = internal global ptr @event_smb3_query_dir_done, section "_ftrace_events", align 4
@event_smb3_zero_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_zero_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_zero_done = internal global ptr @event_smb3_zero_done, section "_ftrace_events", align 4
@event_smb3_falloc_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_rw_done_class, %union.anon.3 { ptr @__tracepoint_smb3_falloc_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_rw_done_class }, ptr @print_fmt_smb3_rw_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_falloc_done = internal global ptr @event_smb3_falloc_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_fd_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_smb3_fd_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_fd_class, ptr @perf_trace_smb3_fd_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_fd_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_fd_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_fd_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_fd_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_fd_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_fd_class = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22\09xid=%u sid=0x%llx tid=0x%x fid=0x%llx\22, REC->xid, REC->sesid, REC->tid, REC->fid\00", [45 x i8] zeroinitializer }, align 32
@event_smb3_flush_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_class, %union.anon.3 { ptr @__tracepoint_smb3_flush_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_class }, ptr @print_fmt_smb3_fd_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_flush_enter = internal global ptr @event_smb3_flush_enter, section "_ftrace_events", align 4
@event_smb3_flush_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_class, %union.anon.3 { ptr @__tracepoint_smb3_flush_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_class }, ptr @print_fmt_smb3_fd_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_flush_done = internal global ptr @event_smb3_flush_done, section "_ftrace_events", align 4
@event_smb3_close_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_class, %union.anon.3 { ptr @__tracepoint_smb3_close_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_class }, ptr @print_fmt_smb3_fd_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_close_enter = internal global ptr @event_smb3_close_enter, section "_ftrace_events", align 4
@event_smb3_close_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_class, %union.anon.3 { ptr @__tracepoint_smb3_close_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_class }, ptr @print_fmt_smb3_fd_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_close_done = internal global ptr @event_smb3_close_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_fd_err_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_smb3_fd_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_fd_err_class, ptr @perf_trace_smb3_fd_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_fd_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_fd_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_fd_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_fd_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_fd_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_fd_err_class = internal global { [98 x i8], [62 x i8] } { [98 x i8] c"\22\09xid=%u sid=0x%llx tid=0x%x fid=0x%llx rc=%d\22, REC->xid, REC->sesid, REC->tid, REC->fid, REC->rc\00", [62 x i8] zeroinitializer }, align 32
@event_smb3_flush_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_err_class, %union.anon.3 { ptr @__tracepoint_smb3_flush_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_err_class }, ptr @print_fmt_smb3_fd_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_flush_err = internal global ptr @event_smb3_flush_err, section "_ftrace_events", align 4
@event_smb3_lock_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_err_class, %union.anon.3 { ptr @__tracepoint_smb3_lock_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_err_class }, ptr @print_fmt_smb3_fd_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_lock_err = internal global ptr @event_smb3_lock_err, section "_ftrace_events", align 4
@event_smb3_close_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_fd_err_class, %union.anon.3 { ptr @__tracepoint_smb3_close_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_fd_err_class }, ptr @print_fmt_smb3_fd_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_close_err = internal global ptr @event_smb3_close_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_inf_enter_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.1 { %struct.anon.2 { ptr @.str.16, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_inf_enter_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_inf_enter_class, ptr @perf_trace_smb3_inf_enter_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_inf_enter_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_inf_enter_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_inf_enter_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_inf_enter_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_inf_enter_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_inf_enter_class = internal global { [127 x i8], [33 x i8] } { [127 x i8] c"\22xid=%u sid=0x%llx tid=0x%x fid=0x%llx class=%u type=0x%x\22, REC->xid, REC->sesid, REC->tid, REC->fid, REC->infclass, REC->type\00", [33 x i8] zeroinitializer }, align 32
@event_smb3_query_info_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_query_info_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_enter_class }, ptr @print_fmt_smb3_inf_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_info_enter = internal global ptr @event_smb3_query_info_enter, section "_ftrace_events", align 4
@event_smb3_query_info_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_query_info_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_enter_class }, ptr @print_fmt_smb3_inf_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_info_done = internal global ptr @event_smb3_query_info_done, section "_ftrace_events", align 4
@event_smb3_notify_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_notify_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_enter_class }, ptr @print_fmt_smb3_inf_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_notify_enter = internal global ptr @event_smb3_notify_enter, section "_ftrace_events", align 4
@event_smb3_notify_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_notify_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_enter_class }, ptr @print_fmt_smb3_inf_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_notify_done = internal global ptr @event_smb3_notify_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_inf_err_class = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.1 { %struct.anon.2 { ptr @.str.16, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_smb3_inf_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_inf_err_class, ptr @perf_trace_smb3_inf_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_inf_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_inf_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_inf_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_inf_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_inf_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_inf_err_class = internal global { [142 x i8], [50 x i8] } { [142 x i8] c"\22xid=%u sid=0x%llx tid=0x%x fid=0x%llx class=%u type=0x%x rc=%d\22, REC->xid, REC->sesid, REC->tid, REC->fid, REC->infclass, REC->type, REC->rc\00", [50 x i8] zeroinitializer }, align 32
@event_smb3_query_info_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_err_class, %union.anon.3 { ptr @__tracepoint_smb3_query_info_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_err_class }, ptr @print_fmt_smb3_inf_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_info_err = internal global ptr @event_smb3_query_info_err, section "_ftrace_events", align 4
@event_smb3_set_info_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_err_class, %union.anon.3 { ptr @__tracepoint_smb3_set_info_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_err_class }, ptr @print_fmt_smb3_inf_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_info_err = internal global ptr @event_smb3_set_info_err, section "_ftrace_events", align 4
@event_smb3_notify_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_err_class, %union.anon.3 { ptr @__tracepoint_smb3_notify_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_err_class }, ptr @print_fmt_smb3_inf_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_notify_err = internal global ptr @event_smb3_notify_err, section "_ftrace_events", align 4
@event_smb3_fsctl_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_err_class, %union.anon.3 { ptr @__tracepoint_smb3_fsctl_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_err_class }, ptr @print_fmt_smb3_inf_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_fsctl_err = internal global ptr @event_smb3_fsctl_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_inf_compound_enter_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_smb3_inf_compound_enter_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_inf_compound_enter_class, ptr @perf_trace_smb3_inf_compound_enter_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_inf_compound_enter_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_inf_compound_enter_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_inf_compound_enter_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_inf_compound_enter_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_inf_compound_enter_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_inf_compound_enter_class = internal global { [86 x i8], [42 x i8] } { [86 x i8] c"\22xid=%u sid=0x%llx tid=0x%x path=%s\22, REC->xid, REC->sesid, REC->tid, __get_str(path)\00", [42 x i8] zeroinitializer }, align 32
@event_smb3_query_info_compound_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_query_info_compound_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_info_compound_enter = internal global ptr @event_smb3_query_info_compound_enter, section "_ftrace_events", align 4
@event_smb3_posix_query_info_compound_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_posix_query_info_compound_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_posix_query_info_compound_enter = internal global ptr @event_smb3_posix_query_info_compound_enter, section "_ftrace_events", align 4
@event_smb3_hardlink_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_hardlink_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_hardlink_enter = internal global ptr @event_smb3_hardlink_enter, section "_ftrace_events", align 4
@event_smb3_rename_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_rename_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_rename_enter = internal global ptr @event_smb3_rename_enter, section "_ftrace_events", align 4
@event_smb3_rmdir_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_rmdir_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_rmdir_enter = internal global ptr @event_smb3_rmdir_enter, section "_ftrace_events", align 4
@event_smb3_set_eof_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_set_eof_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_eof_enter = internal global ptr @event_smb3_set_eof_enter, section "_ftrace_events", align 4
@event_smb3_set_info_compound_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_set_info_compound_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_info_compound_enter = internal global ptr @event_smb3_set_info_compound_enter, section "_ftrace_events", align 4
@event_smb3_delete_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_delete_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_delete_enter = internal global ptr @event_smb3_delete_enter, section "_ftrace_events", align 4
@event_smb3_mkdir_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_mkdir_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class }, ptr @print_fmt_smb3_inf_compound_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_mkdir_enter = internal global ptr @event_smb3_mkdir_enter, section "_ftrace_events", align 4
@trace_event_fields_smb3_inf_compound_done_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_smb3_inf_compound_done_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_inf_compound_done_class, ptr @perf_trace_smb3_inf_compound_done_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_inf_compound_done_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_inf_compound_done_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_inf_compound_done_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_inf_compound_done_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_inf_compound_done_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_inf_compound_done_class = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22xid=%u sid=0x%llx tid=0x%x\22, REC->xid, REC->sesid, REC->tid\00", [35 x i8] zeroinitializer }, align 32
@event_smb3_query_info_compound_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_query_info_compound_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_info_compound_done = internal global ptr @event_smb3_query_info_compound_done, section "_ftrace_events", align 4
@event_smb3_posix_query_info_compound_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_posix_query_info_compound_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_posix_query_info_compound_done = internal global ptr @event_smb3_posix_query_info_compound_done, section "_ftrace_events", align 4
@event_smb3_hardlink_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_hardlink_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_hardlink_done = internal global ptr @event_smb3_hardlink_done, section "_ftrace_events", align 4
@event_smb3_rename_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_rename_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_rename_done = internal global ptr @event_smb3_rename_done, section "_ftrace_events", align 4
@event_smb3_rmdir_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_rmdir_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_rmdir_done = internal global ptr @event_smb3_rmdir_done, section "_ftrace_events", align 4
@event_smb3_set_eof_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_set_eof_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_eof_done = internal global ptr @event_smb3_set_eof_done, section "_ftrace_events", align 4
@event_smb3_set_info_compound_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_set_info_compound_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_info_compound_done = internal global ptr @event_smb3_set_info_compound_done, section "_ftrace_events", align 4
@event_smb3_delete_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_delete_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_delete_done = internal global ptr @event_smb3_delete_done, section "_ftrace_events", align 4
@event_smb3_mkdir_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_done_class, %union.anon.3 { ptr @__tracepoint_smb3_mkdir_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_done_class }, ptr @print_fmt_smb3_inf_compound_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_mkdir_done = internal global ptr @event_smb3_mkdir_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_inf_compound_err_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_smb3_inf_compound_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_inf_compound_err_class, ptr @perf_trace_smb3_inf_compound_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_inf_compound_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_inf_compound_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_inf_compound_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_inf_compound_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_inf_compound_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_inf_compound_err_class = internal global { [76 x i8], [52 x i8] } { [76 x i8] c"\22xid=%u sid=0x%llx tid=0x%x rc=%d\22, REC->xid, REC->sesid, REC->tid, REC->rc\00", [52 x i8] zeroinitializer }, align 32
@event_smb3_query_info_compound_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_query_info_compound_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_query_info_compound_err = internal global ptr @event_smb3_query_info_compound_err, section "_ftrace_events", align 4
@event_smb3_posix_query_info_compound_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_posix_query_info_compound_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_posix_query_info_compound_err = internal global ptr @event_smb3_posix_query_info_compound_err, section "_ftrace_events", align 4
@event_smb3_hardlink_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_hardlink_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_hardlink_err = internal global ptr @event_smb3_hardlink_err, section "_ftrace_events", align 4
@event_smb3_rename_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_rename_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_rename_err = internal global ptr @event_smb3_rename_err, section "_ftrace_events", align 4
@event_smb3_rmdir_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_rmdir_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_rmdir_err = internal global ptr @event_smb3_rmdir_err, section "_ftrace_events", align 4
@event_smb3_set_eof_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_set_eof_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_eof_err = internal global ptr @event_smb3_set_eof_err, section "_ftrace_events", align 4
@event_smb3_set_info_compound_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_set_info_compound_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_info_compound_err = internal global ptr @event_smb3_set_info_compound_err, section "_ftrace_events", align 4
@event_smb3_mkdir_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_mkdir_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_mkdir_err = internal global ptr @event_smb3_mkdir_err, section "_ftrace_events", align 4
@event_smb3_delete_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_inf_compound_err_class, %union.anon.3 { ptr @__tracepoint_smb3_delete_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_inf_compound_err_class }, ptr @print_fmt_smb3_inf_compound_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_delete_err = internal global ptr @event_smb3_delete_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_cmd_err_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.1 { %struct.anon.2 { ptr @.str.27, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_cmd_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_cmd_err_class, ptr @perf_trace_smb3_cmd_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_cmd_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_cmd_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_cmd_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_cmd_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_cmd_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_cmd_err_class = internal global { [121 x i8], [39 x i8] } { [121 x i8] c"\22\09sid=0x%llx tid=0x%x cmd=%u mid=%llu status=0x%x rc=%d\22, REC->sesid, REC->tid, REC->cmd, REC->mid, REC->status, REC->rc\00", [39 x i8] zeroinitializer }, align 32
@event_smb3_cmd_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_cmd_err_class, %union.anon.3 { ptr @__tracepoint_smb3_cmd_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_cmd_err_class }, ptr @print_fmt_smb3_cmd_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_cmd_err = internal global ptr @event_smb3_cmd_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_cmd_done_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.1 { %struct.anon.2 { ptr @.str.27, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_smb3_cmd_done_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_cmd_done_class, ptr @perf_trace_smb3_cmd_done_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_cmd_done_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_cmd_done_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_cmd_done_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_cmd_done_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_cmd_done_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_cmd_done_class = internal global { [81 x i8], [47 x i8] } { [81 x i8] c"\22\09sid=0x%llx tid=0x%x cmd=%u mid=%llu\22, REC->sesid, REC->tid, REC->cmd, REC->mid\00", [47 x i8] zeroinitializer }, align 32
@event_smb3_cmd_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_cmd_done_class, %union.anon.3 { ptr @__tracepoint_smb3_cmd_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_cmd_done_class }, ptr @print_fmt_smb3_cmd_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_cmd_enter = internal global ptr @event_smb3_cmd_enter, section "_ftrace_events", align 4
@event_smb3_cmd_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_cmd_done_class, %union.anon.3 { ptr @__tracepoint_smb3_cmd_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_cmd_done_class }, ptr @print_fmt_smb3_cmd_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_cmd_done = internal global ptr @event_smb3_cmd_done, section "_ftrace_events", align 4
@event_smb3_ses_expired = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_cmd_done_class, %union.anon.3 { ptr @__tracepoint_smb3_ses_expired }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_cmd_done_class }, ptr @print_fmt_smb3_cmd_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_ses_expired = internal global ptr @event_smb3_ses_expired, section "_ftrace_events", align 4
@trace_event_fields_smb3_mid_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.1 { %struct.anon.2 { ptr @.str.27, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.1 { %struct.anon.2 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.1 { %struct.anon.2 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_smb3_mid_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_mid_class, ptr @perf_trace_smb3_mid_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_mid_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_mid_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_mid_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_mid_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_mid_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_mid_class = internal global { [120 x i8], [40 x i8] } { [120 x i8] c"\22\09cmd=%u mid=%llu pid=%u, when_sent=%lu when_rcv=%lu\22, REC->cmd, REC->mid, REC->pid, REC->when_sent, REC->when_received\00", [40 x i8] zeroinitializer }, align 32
@event_smb3_slow_rsp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_mid_class, %union.anon.3 { ptr @__tracepoint_smb3_slow_rsp }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_mid_class }, ptr @print_fmt_smb3_mid_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_slow_rsp = internal global ptr @event_smb3_slow_rsp, section "_ftrace_events", align 4
@trace_event_fields_smb3_exit_err_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_smb3_exit_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_exit_err_class, ptr @perf_trace_smb3_exit_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_exit_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_exit_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_exit_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_exit_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_exit_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_exit_err_class = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22\09%s: xid=%u rc=%d\22, __get_str(func_name), REC->xid, REC->rc\00", [35 x i8] zeroinitializer }, align 32
@event_smb3_exit_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_exit_err_class, %union.anon.3 { ptr @__tracepoint_smb3_exit_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_exit_err_class }, ptr @print_fmt_smb3_exit_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_exit_err = internal global ptr @event_smb3_exit_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_sync_err_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.33, %union.anon.1 { %struct.anon.2 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_sync_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_sync_err_class, ptr @perf_trace_smb3_sync_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_sync_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_sync_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_sync_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_sync_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_sync_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_sync_err_class = internal global { [36 x i8], [60 x i8] } { [36 x i8] c"\22\09ino=%lu rc=%d\22, REC->ino, REC->rc\00", [60 x i8] zeroinitializer }, align 32
@event_cifs_fsync_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_sync_err_class, %union.anon.3 { ptr @__tracepoint_cifs_fsync_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_sync_err_class }, ptr @print_fmt_smb3_sync_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cifs_fsync_err = internal global ptr @event_cifs_fsync_err, section "_ftrace_events", align 4
@event_cifs_flush_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_sync_err_class, %union.anon.3 { ptr @__tracepoint_cifs_flush_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_sync_err_class }, ptr @print_fmt_smb3_sync_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cifs_flush_err = internal global ptr @event_cifs_flush_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_enter_exit_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_enter_exit_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_enter_exit_class, ptr @perf_trace_smb3_enter_exit_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_enter_exit_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_enter_exit_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_enter_exit_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_enter_exit_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_enter_exit_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_enter_exit_class = internal global { [46 x i8], [50 x i8] } { [46 x i8] c"\22\09%s: xid=%u\22, __get_str(func_name), REC->xid\00", [50 x i8] zeroinitializer }, align 32
@event_smb3_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_enter_exit_class, %union.anon.3 { ptr @__tracepoint_smb3_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_enter_exit_class }, ptr @print_fmt_smb3_enter_exit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_enter = internal global ptr @event_smb3_enter, section "_ftrace_events", align 4
@event_smb3_exit_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_enter_exit_class, %union.anon.3 { ptr @__tracepoint_smb3_exit_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_enter_exit_class }, ptr @print_fmt_smb3_enter_exit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_exit_done = internal global ptr @event_smb3_exit_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_tcon_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_smb3_tcon_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_tcon_class, ptr @perf_trace_smb3_tcon_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_tcon_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_tcon_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_tcon_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_tcon_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_tcon_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_tcon_class = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\22xid=%u sid=0x%llx tid=0x%x unc_name=%s rc=%d\22, REC->xid, REC->sesid, REC->tid, __get_str(name), REC->rc\00", [55 x i8] zeroinitializer }, align 32
@event_smb3_tcon = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_tcon_class, %union.anon.3 { ptr @__tracepoint_smb3_tcon }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_tcon_class }, ptr @print_fmt_smb3_tcon_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_tcon = internal global ptr @event_smb3_tcon, section "_ftrace_events", align 4
@trace_event_fields_smb3_open_enter_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.44, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_smb3_open_enter_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_open_enter_class, ptr @perf_trace_smb3_open_enter_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_open_enter_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_open_enter_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_open_enter_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_open_enter_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_open_enter_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_open_enter_class = internal global { [132 x i8], [60 x i8] } { [132 x i8] c"\22xid=%u sid=0x%llx tid=0x%x cr_opts=0x%x des_access=0x%x\22, REC->xid, REC->sesid, REC->tid, REC->create_options, REC->desired_access\00", [60 x i8] zeroinitializer }, align 32
@event_smb3_open_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_open_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_open_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_open_enter_class }, ptr @print_fmt_smb3_open_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_open_enter = internal global ptr @event_smb3_open_enter, section "_ftrace_events", align 4
@event_smb3_posix_mkdir_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_open_enter_class, %union.anon.3 { ptr @__tracepoint_smb3_posix_mkdir_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_open_enter_class }, ptr @print_fmt_smb3_open_enter_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_posix_mkdir_enter = internal global ptr @event_smb3_posix_mkdir_enter, section "_ftrace_events", align 4
@trace_event_fields_smb3_open_err_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.44, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_open_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_open_err_class, ptr @perf_trace_smb3_open_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_open_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_open_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_open_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_open_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_open_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_open_err_class = internal global { [147 x i8], [45 x i8] } { [147 x i8] c"\22xid=%u sid=0x%llx tid=0x%x cr_opts=0x%x des_access=0x%x rc=%d\22, REC->xid, REC->sesid, REC->tid, REC->create_options, REC->desired_access, REC->rc\00", [45 x i8] zeroinitializer }, align 32
@event_smb3_open_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_open_err_class, %union.anon.3 { ptr @__tracepoint_smb3_open_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_open_err_class }, ptr @print_fmt_smb3_open_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_open_err = internal global ptr @event_smb3_open_err, section "_ftrace_events", align 4
@event_smb3_posix_mkdir_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_open_err_class, %union.anon.3 { ptr @__tracepoint_smb3_posix_mkdir_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_open_err_class }, ptr @print_fmt_smb3_open_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_posix_mkdir_err = internal global ptr @event_smb3_posix_mkdir_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_open_done_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.1 { %struct.anon.2 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.44, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_open_done_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_open_done_class, ptr @perf_trace_smb3_open_done_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_open_done_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_open_done_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_open_done_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_open_done_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_open_done_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_open_done_class = internal global { [153 x i8], [39 x i8] } { [153 x i8] c"\22xid=%u sid=0x%llx tid=0x%x fid=0x%llx cr_opts=0x%x des_access=0x%x\22, REC->xid, REC->sesid, REC->tid, REC->fid, REC->create_options, REC->desired_access\00", [39 x i8] zeroinitializer }, align 32
@event_smb3_open_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_open_done_class, %union.anon.3 { ptr @__tracepoint_smb3_open_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_open_done_class }, ptr @print_fmt_smb3_open_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_open_done = internal global ptr @event_smb3_open_done, section "_ftrace_events", align 4
@event_smb3_posix_mkdir_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_open_done_class, %union.anon.3 { ptr @__tracepoint_smb3_posix_mkdir_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_open_done_class }, ptr @print_fmt_smb3_open_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_posix_mkdir_done = internal global ptr @event_smb3_posix_mkdir_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_lease_done_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.50, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.51, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_smb3_lease_done_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_lease_done_class, ptr @perf_trace_smb3_lease_done_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_lease_done_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_lease_done_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_lease_done_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_lease_done_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_lease_done_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_lease_done_class = internal global { [141 x i8], [51 x i8] } { [141 x i8] c"\22sid=0x%llx tid=0x%x lease_key=0x%llx%llx lease_state=0x%x\22, REC->sesid, REC->tid, REC->lease_key_high, REC->lease_key_low, REC->lease_state\00", [51 x i8] zeroinitializer }, align 32
@event_smb3_lease_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_lease_done_class, %union.anon.3 { ptr @__tracepoint_smb3_lease_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_lease_done_class }, ptr @print_fmt_smb3_lease_done_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_lease_done = internal global ptr @event_smb3_lease_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_lease_err_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.1 { %struct.anon.2 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.50, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.51, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_lease_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_lease_err_class, ptr @perf_trace_smb3_lease_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_lease_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_lease_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_lease_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_lease_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_lease_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_lease_err_class = internal global { [156 x i8], [36 x i8] } { [156 x i8] c"\22sid=0x%llx tid=0x%x lease_key=0x%llx%llx lease_state=0x%x rc=%d\22, REC->sesid, REC->tid, REC->lease_key_high, REC->lease_key_low, REC->lease_state, REC->rc\00", [36 x i8] zeroinitializer }, align 32
@event_smb3_lease_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_lease_err_class, %union.anon.3 { ptr @__tracepoint_smb3_lease_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_lease_err_class }, ptr @print_fmt_smb3_lease_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_lease_err = internal global ptr @event_smb3_lease_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_connect_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.55, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.1 { %struct.anon.2 { ptr @.str.57, i32 128, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_smb3_connect_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_connect_class, ptr @perf_trace_smb3_connect_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_connect_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_connect_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_connect_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_connect_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_connect_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_connect_class = internal global { [91 x i8], [37 x i8] } { [91 x i8] c"\22conn_id=0x%llx server=%s addr=%pISpsfc\22, REC->conn_id, __get_str(hostname), REC->dst_addr\00", [37 x i8] zeroinitializer }, align 32
@event_smb3_connect_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_connect_class, %union.anon.3 { ptr @__tracepoint_smb3_connect_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_connect_class }, ptr @print_fmt_smb3_connect_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_connect_done = internal global ptr @event_smb3_connect_done, section "_ftrace_events", align 4
@trace_event_fields_smb3_connect_err_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.55, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.1 { %struct.anon.2 { ptr @.str.57, i32 128, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_smb3_connect_err_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_connect_err_class, ptr @perf_trace_smb3_connect_err_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_connect_err_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_connect_err_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_connect_err_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_connect_err_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_connect_err_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_connect_err_class = internal global { [106 x i8], [54 x i8] } { [106 x i8] c"\22rc=%d conn_id=0x%llx server=%s addr=%pISpsfc\22, REC->rc, REC->conn_id, __get_str(hostname), REC->dst_addr\00", [54 x i8] zeroinitializer }, align 32
@event_smb3_connect_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_connect_err_class, %union.anon.3 { ptr @__tracepoint_smb3_connect_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_connect_err_class }, ptr @print_fmt_smb3_connect_err_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_connect_err = internal global ptr @event_smb3_connect_err, section "_ftrace_events", align 4
@trace_event_fields_smb3_reconnect_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.60, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.55, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_smb3_reconnect_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_reconnect_class, ptr @perf_trace_smb3_reconnect_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_reconnect_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_reconnect_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_reconnect_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_reconnect_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_reconnect_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_reconnect_class = internal global { [93 x i8], [35 x i8] } { [93 x i8] c"\22conn_id=0x%llx server=%s current_mid=%llu\22, REC->conn_id, __get_str(hostname), REC->currmid\00", [35 x i8] zeroinitializer }, align 32
@event_smb3_reconnect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_reconnect_class, %union.anon.3 { ptr @__tracepoint_smb3_reconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_reconnect_class }, ptr @print_fmt_smb3_reconnect_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_reconnect = internal global ptr @event_smb3_reconnect, section "_ftrace_events", align 4
@event_smb3_partial_send_reconnect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_reconnect_class, %union.anon.3 { ptr @__tracepoint_smb3_partial_send_reconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_reconnect_class }, ptr @print_fmt_smb3_reconnect_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_partial_send_reconnect = internal global ptr @event_smb3_partial_send_reconnect, section "_ftrace_events", align 4
@trace_event_fields_smb3_credit_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.60, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.1 { %struct.anon.2 { ptr @.str.55, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.1 { %struct.anon.2 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.62, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.63, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.1 { %struct.anon.2 { ptr @.str.64, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_smb3_credit_class = internal global %struct.trace_event_class { ptr @str__cifs__trace_system_name, ptr @trace_event_raw_event_smb3_credit_class, ptr @perf_trace_smb3_credit_class, ptr @trace_event_reg, ptr @trace_event_fields_smb3_credit_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smb3_credit_class, i64 24), ptr getelementptr (i8, ptr @event_class_smb3_credit_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smb3_credit_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_smb3_credit_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_smb3_credit_class = internal global { [185 x i8], [39 x i8] } { [185 x i8] c"\22conn_id=0x%llx server=%s current_mid=%llu credits=%d credit_change=%d in_flight=%d\22, REC->conn_id, __get_str(hostname), REC->currmid, REC->credits, REC->credits_to_add, REC->in_flight\00", [39 x i8] zeroinitializer }, align 32
@event_smb3_reconnect_with_invalid_credits = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_reconnect_with_invalid_credits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_reconnect_with_invalid_credits = internal global ptr @event_smb3_reconnect_with_invalid_credits, section "_ftrace_events", align 4
@event_smb3_reconnect_detected = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_reconnect_detected }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_reconnect_detected = internal global ptr @event_smb3_reconnect_detected, section "_ftrace_events", align 4
@event_smb3_credit_timeout = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_credit_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_credit_timeout = internal global ptr @event_smb3_credit_timeout, section "_ftrace_events", align 4
@event_smb3_insufficient_credits = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_insufficient_credits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_insufficient_credits = internal global ptr @event_smb3_insufficient_credits, section "_ftrace_events", align 4
@event_smb3_too_many_credits = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_too_many_credits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_too_many_credits = internal global ptr @event_smb3_too_many_credits, section "_ftrace_events", align 4
@event_smb3_add_credits = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_add_credits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_add_credits = internal global ptr @event_smb3_add_credits, section "_ftrace_events", align 4
@event_smb3_set_credits = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smb3_credit_class, %union.anon.3 { ptr @__tracepoint_smb3_set_credits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smb3_credit_class }, ptr @print_fmt_smb3_credit_class, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_smb3_set_credits = internal global ptr @event_smb3_set_credits, section "_ftrace_events", align 4
@__bpf_trace_tp_map_smb3_write_err = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_write_err, ptr @__bpf_trace_smb3_rw_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_read_err = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_read_err, ptr @__bpf_trace_smb3_rw_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_dir_err = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_dir_err, ptr @__bpf_trace_smb3_rw_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_zero_err = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_zero_err, ptr @__bpf_trace_smb3_rw_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_falloc_err = internal global %union.anon.133 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_falloc_err, ptr @__bpf_trace_smb3_rw_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_write_enter = internal global %union.anon.134 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_write_enter, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_read_enter = internal global %union.anon.135 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_read_enter, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_dir_enter = internal global %union.anon.136 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_dir_enter, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_zero_enter = internal global %union.anon.137 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_zero_enter, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_falloc_enter = internal global %union.anon.138 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_falloc_enter, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_write_done = internal global %union.anon.139 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_write_done, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_read_done = internal global %union.anon.140 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_read_done, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_dir_done = internal global %union.anon.141 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_dir_done, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_zero_done = internal global %union.anon.142 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_zero_done, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_falloc_done = internal global %union.anon.143 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_falloc_done, ptr @__bpf_trace_smb3_rw_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_flush_enter = internal global %union.anon.144 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_flush_enter, ptr @__bpf_trace_smb3_fd_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_flush_done = internal global %union.anon.145 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_flush_done, ptr @__bpf_trace_smb3_fd_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_close_enter = internal global %union.anon.146 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_close_enter, ptr @__bpf_trace_smb3_fd_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_close_done = internal global %union.anon.147 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_close_done, ptr @__bpf_trace_smb3_fd_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_flush_err = internal global %union.anon.148 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_flush_err, ptr @__bpf_trace_smb3_fd_err_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_lock_err = internal global %union.anon.149 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_lock_err, ptr @__bpf_trace_smb3_fd_err_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_close_err = internal global %union.anon.150 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_close_err, ptr @__bpf_trace_smb3_fd_err_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_info_enter = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_info_enter, ptr @__bpf_trace_smb3_inf_enter_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_info_done = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_info_done, ptr @__bpf_trace_smb3_inf_enter_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_notify_enter = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_notify_enter, ptr @__bpf_trace_smb3_inf_enter_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_notify_done = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_notify_done, ptr @__bpf_trace_smb3_inf_enter_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_info_err = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_info_err, ptr @__bpf_trace_smb3_inf_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_info_err = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_info_err, ptr @__bpf_trace_smb3_inf_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_notify_err = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_notify_err, ptr @__bpf_trace_smb3_inf_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_fsctl_err = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_fsctl_err, ptr @__bpf_trace_smb3_inf_err_class, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_info_compound_enter = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_info_compound_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_posix_query_info_compound_enter = internal global %union.anon.160 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_posix_query_info_compound_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_hardlink_enter = internal global %union.anon.161 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_hardlink_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_rename_enter = internal global %union.anon.162 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_rename_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_rmdir_enter = internal global %union.anon.163 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_rmdir_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_eof_enter = internal global %union.anon.164 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_eof_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_info_compound_enter = internal global %union.anon.165 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_info_compound_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_delete_enter = internal global %union.anon.166 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_delete_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_mkdir_enter = internal global %union.anon.167 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_mkdir_enter, ptr @__bpf_trace_smb3_inf_compound_enter_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_info_compound_done = internal global %union.anon.168 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_info_compound_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_posix_query_info_compound_done = internal global %union.anon.169 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_posix_query_info_compound_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_hardlink_done = internal global %union.anon.170 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_hardlink_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_rename_done = internal global %union.anon.171 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_rename_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_rmdir_done = internal global %union.anon.172 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_rmdir_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_eof_done = internal global %union.anon.173 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_eof_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_info_compound_done = internal global %union.anon.174 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_info_compound_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_delete_done = internal global %union.anon.175 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_delete_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_mkdir_done = internal global %union.anon.176 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_mkdir_done, ptr @__bpf_trace_smb3_inf_compound_done_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_query_info_compound_err = internal global %union.anon.177 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_query_info_compound_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_posix_query_info_compound_err = internal global %union.anon.178 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_posix_query_info_compound_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_hardlink_err = internal global %union.anon.179 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_hardlink_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_rename_err = internal global %union.anon.180 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_rename_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_rmdir_err = internal global %union.anon.181 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_rmdir_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_eof_err = internal global %union.anon.182 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_eof_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_info_compound_err = internal global %union.anon.183 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_info_compound_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_mkdir_err = internal global %union.anon.184 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_mkdir_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_delete_err = internal global %union.anon.185 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_delete_err, ptr @__bpf_trace_smb3_inf_compound_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_cmd_err = internal global %union.anon.186 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_cmd_err, ptr @__bpf_trace_smb3_cmd_err_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_cmd_enter = internal global %union.anon.187 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_cmd_enter, ptr @__bpf_trace_smb3_cmd_done_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_cmd_done = internal global %union.anon.188 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_cmd_done, ptr @__bpf_trace_smb3_cmd_done_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_ses_expired = internal global %union.anon.189 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_ses_expired, ptr @__bpf_trace_smb3_cmd_done_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_slow_rsp = internal global %union.anon.190 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_slow_rsp, ptr @__bpf_trace_smb3_mid_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_exit_err = internal global %union.anon.191 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_exit_err, ptr @__bpf_trace_smb3_exit_err_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cifs_fsync_err = internal global %union.anon.192 { %struct.bpf_raw_event_map { ptr @__tracepoint_cifs_fsync_err, ptr @__bpf_trace_smb3_sync_err_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cifs_flush_err = internal global %union.anon.193 { %struct.bpf_raw_event_map { ptr @__tracepoint_cifs_flush_err, ptr @__bpf_trace_smb3_sync_err_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_enter = internal global %union.anon.194 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_enter, ptr @__bpf_trace_smb3_enter_exit_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_exit_done = internal global %union.anon.195 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_exit_done, ptr @__bpf_trace_smb3_enter_exit_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_tcon = internal global %union.anon.196 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_tcon, ptr @__bpf_trace_smb3_tcon_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_open_enter = internal global %union.anon.197 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_open_enter, ptr @__bpf_trace_smb3_open_enter_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_posix_mkdir_enter = internal global %union.anon.198 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_posix_mkdir_enter, ptr @__bpf_trace_smb3_open_enter_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_open_err = internal global %union.anon.199 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_open_err, ptr @__bpf_trace_smb3_open_err_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_posix_mkdir_err = internal global %union.anon.200 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_posix_mkdir_err, ptr @__bpf_trace_smb3_open_err_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_open_done = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_open_done, ptr @__bpf_trace_smb3_open_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_posix_mkdir_done = internal global %union.anon.202 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_posix_mkdir_done, ptr @__bpf_trace_smb3_open_done_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_lease_done = internal global %union.anon.203 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_lease_done, ptr @__bpf_trace_smb3_lease_done_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_lease_err = internal global %union.anon.204 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_lease_err, ptr @__bpf_trace_smb3_lease_err_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_connect_done = internal global %union.anon.205 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_connect_done, ptr @__bpf_trace_smb3_connect_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_connect_err = internal global %union.anon.206 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_connect_err, ptr @__bpf_trace_smb3_connect_err_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_reconnect = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_reconnect, ptr @__bpf_trace_smb3_reconnect_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_partial_send_reconnect = internal global %union.anon.208 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_partial_send_reconnect, ptr @__bpf_trace_smb3_reconnect_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_reconnect_with_invalid_credits = internal global %union.anon.209 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_reconnect_with_invalid_credits, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_reconnect_detected = internal global %union.anon.210 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_reconnect_detected, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_credit_timeout = internal global %union.anon.211 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_credit_timeout, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_insufficient_credits = internal global %union.anon.212 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_insufficient_credits, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_too_many_credits = internal global %union.anon.213 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_too_many_credits, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_add_credits = internal global %union.anon.214 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_add_credits, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_smb3_set_credits = internal global %union.anon.215 { %struct.bpf_raw_event_map { ptr @__tracepoint_smb3_set_credits, ptr @__bpf_trace_smb3_credit_class, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xid\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u64\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fid\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tid\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sesid\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\09xid=%u sid=0x%llx tid=0x%x fid=0x%llx offset=0x%llx len=0x%x rc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"xid=%u sid=0x%llx tid=0x%x fid=0x%llx offset=0x%llx len=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\09xid=%u sid=0x%llx tid=0x%x fid=0x%llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\09xid=%u sid=0x%llx tid=0x%x fid=0x%llx rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"__u8\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"infclass\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"xid=%u sid=0x%llx tid=0x%x fid=0x%llx class=%u type=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"xid=%u sid=0x%llx tid=0x%x fid=0x%llx class=%u type=0x%x rc=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xid=%u sid=0x%llx tid=0x%x path=%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xid=%u sid=0x%llx tid=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xid=%u sid=0x%llx tid=0x%x rc=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u16\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mid\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\09sid=0x%llx tid=0x%x cmd=%u mid=%llu status=0x%x rc=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\09sid=0x%llx tid=0x%x cmd=%u mid=%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"when_sent\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"when_received\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\09cmd=%u mid=%llu pid=%u, when_sent=%lu when_rcv=%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"func_name\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09%s: xid=%u rc=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ino\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09ino=%lu rc=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09%s: xid=%u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xid=%u sid=0x%llx tid=0x%x unc_name=%s rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_options\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"desired_access\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"xid=%u sid=0x%llx tid=0x%x cr_opts=0x%x des_access=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"xid=%u sid=0x%llx tid=0x%x cr_opts=0x%x des_access=0x%x rc=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"xid=%u sid=0x%llx tid=0x%x fid=0x%llx cr_opts=0x%x des_access=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lease_state\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lease_key_low\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lease_key_high\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sid=0x%llx tid=0x%x lease_key=0x%llx%llx lease_state=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"sid=0x%llx tid=0x%x lease_key=0x%llx%llx lease_state=0x%x rc=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hostname\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"conn_id\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"__u8[sizeof(struct __kernel_sockaddr_storage)]\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dst_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"conn_id=0x%llx server=%s addr=%pISpsfc\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rc=%d conn_id=0x%llx server=%s addr=%pISpsfc\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"currmid\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"conn_id=0x%llx server=%s current_mid=%llu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"credits\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"credits_to_add\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_flight\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"conn_id=0x%llx server=%s current_mid=%llu credits=%d credit_change=%d in_flight=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [19 x i8] c"../fs/cifs/trace.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [29 x i8] c"str__cifs__trace_system_name\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 36, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [37 x i8] c"trace_event_fields_smb3_rw_err_class\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_smb3_rw_err_class\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"print_fmt_smb3_rw_err_class\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"event_smb3_write_err\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 66, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"event_smb3_read_err\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 67, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"event_smb3_query_dir_err\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 68, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"event_smb3_zero_err\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 69, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"event_smb3_falloc_err\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 70, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [38 x i8] c"trace_event_fields_smb3_rw_done_class\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_smb3_rw_done_class\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"print_fmt_smb3_rw_done_class\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"event_smb3_write_enter\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 113, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"event_smb3_read_enter\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 114, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"event_smb3_query_dir_enter\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 115, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"event_smb3_zero_enter\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 116, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"event_smb3_falloc_enter\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 117, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"event_smb3_write_done\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 118, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"event_smb3_read_done\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 119, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"event_smb3_query_dir_done\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 120, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"event_smb3_zero_done\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 121, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"event_smb3_falloc_done\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 122, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [33 x i8] c"trace_event_fields_smb3_fd_class\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_smb3_fd_class\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"print_fmt_smb3_fd_class\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"event_smb3_flush_enter\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 157, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"event_smb3_flush_done\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 158, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"event_smb3_close_enter\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 159, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"event_smb3_close_done\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 160, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [37 x i8] c"trace_event_fields_smb3_fd_err_class\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_smb3_fd_err_class\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"print_fmt_smb3_fd_err_class\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"event_smb3_flush_err\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 197, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"event_smb3_lock_err\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 198, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"event_smb3_close_err\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 199, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [40 x i8] c"trace_event_fields_smb3_inf_enter_class\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_smb3_inf_enter_class\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"print_fmt_smb3_inf_enter_class\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [28 x i8] c"event_smb3_query_info_enter\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 243, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"event_smb3_query_info_done\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 244, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [24 x i8] c"event_smb3_notify_enter\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 245, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"event_smb3_notify_done\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 246, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant [38 x i8] c"trace_event_fields_smb3_inf_err_class\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_smb3_inf_err_class\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [29 x i8] c"print_fmt_smb3_inf_err_class\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"event_smb3_query_info_err\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 291, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [24 x i8] c"event_smb3_set_info_err\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 292, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [22 x i8] c"event_smb3_notify_err\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 293, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"event_smb3_fsctl_err\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 294, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [49 x i8] c"trace_event_fields_smb3_inf_compound_enter_class\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_smb3_inf_compound_enter_class\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [40 x i8] c"print_fmt_smb3_inf_compound_enter_class\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [37 x i8] c"event_smb3_query_info_compound_enter\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 327, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [43 x i8] c"event_smb3_posix_query_info_compound_enter\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 328, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [26 x i8] c"event_smb3_hardlink_enter\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 329, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [24 x i8] c"event_smb3_rename_enter\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 330, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"event_smb3_rmdir_enter\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 331, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [25 x i8] c"event_smb3_set_eof_enter\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 332, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [35 x i8] c"event_smb3_set_info_compound_enter\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 333, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"event_smb3_delete_enter\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 334, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"event_smb3_mkdir_enter\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 335, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [48 x i8] c"trace_event_fields_smb3_inf_compound_done_class\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_smb3_inf_compound_done_class\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [39 x i8] c"print_fmt_smb3_inf_compound_done_class\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [36 x i8] c"event_smb3_query_info_compound_done\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 364, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant [42 x i8] c"event_smb3_posix_query_info_compound_done\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 365, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant [25 x i8] c"event_smb3_hardlink_done\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 366, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant [23 x i8] c"event_smb3_rename_done\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 367, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"event_smb3_rmdir_done\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 368, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant [24 x i8] c"event_smb3_set_eof_done\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 369, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant [34 x i8] c"event_smb3_set_info_compound_done\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 370, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [23 x i8] c"event_smb3_delete_done\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 371, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [22 x i8] c"event_smb3_mkdir_done\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 372, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant [47 x i8] c"trace_event_fields_smb3_inf_compound_err_class\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_smb3_inf_compound_err_class\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [38 x i8] c"print_fmt_smb3_inf_compound_err_class\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [35 x i8] c"event_smb3_query_info_compound_err\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 406, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant [41 x i8] c"event_smb3_posix_query_info_compound_err\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 407, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant [24 x i8] c"event_smb3_hardlink_err\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 408, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant [22 x i8] c"event_smb3_rename_err\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 409, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant [21 x i8] c"event_smb3_rmdir_err\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 410, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [23 x i8] c"event_smb3_set_eof_err\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 411, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [33 x i8] c"event_smb3_set_info_compound_err\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 412, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"event_smb3_mkdir_err\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 413, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [22 x i8] c"event_smb3_delete_err\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 414, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant [38 x i8] c"trace_event_fields_smb3_cmd_err_class\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_smb3_cmd_err_class\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [29 x i8] c"print_fmt_smb3_cmd_err_class\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"event_smb3_cmd_err\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 458, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [39 x i8] c"trace_event_fields_smb3_cmd_done_class\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_smb3_cmd_done_class\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [30 x i8] c"print_fmt_smb3_cmd_done_class\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [21 x i8] c"event_smb3_cmd_enter\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 491, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c"event_smb3_cmd_done\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 492, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant [23 x i8] c"event_smb3_ses_expired\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 493, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant [34 x i8] c"trace_event_fields_smb3_mid_class\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_smb3_mid_class\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [25 x i8] c"print_fmt_smb3_mid_class\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c"event_smb3_slow_rsp\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 530, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant [39 x i8] c"trace_event_fields_smb3_exit_err_class\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_smb3_exit_err_class\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [30 x i8] c"print_fmt_smb3_exit_err_class\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c"event_smb3_exit_err\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 558, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant [39 x i8] c"trace_event_fields_smb3_sync_err_class\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_smb3_sync_err_class\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [30 x i8] c"print_fmt_smb3_sync_err_class\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [21 x i8] c"event_cifs_fsync_err\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 583, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [21 x i8] c"event_cifs_flush_err\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 584, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant [41 x i8] c"trace_event_fields_smb3_enter_exit_class\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_smb3_enter_exit_class\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [32 x i8] c"print_fmt_smb3_enter_exit_class\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [17 x i8] c"event_smb3_enter\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 609, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [21 x i8] c"event_smb3_exit_done\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 610, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant [35 x i8] c"trace_event_fields_smb3_tcon_class\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_smb3_tcon_class\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [26 x i8] c"print_fmt_smb3_tcon_class\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [16 x i8] c"event_smb3_tcon\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 651, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant [41 x i8] c"trace_event_fields_smb3_open_enter_class\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_smb3_open_enter_class\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [32 x i8] c"print_fmt_smb3_open_enter_class\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [22 x i8] c"event_smb3_open_enter\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 693, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant [29 x i8] c"event_smb3_posix_mkdir_enter\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 694, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [39 x i8] c"trace_event_fields_smb3_open_err_class\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_smb3_open_err_class\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [30 x i8] c"print_fmt_smb3_open_err_class\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c"event_smb3_open_err\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 735, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant [27 x i8] c"event_smb3_posix_mkdir_err\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 736, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [40 x i8] c"trace_event_fields_smb3_open_done_class\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_smb3_open_done_class\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [31 x i8] c"print_fmt_smb3_open_done_class\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c"event_smb3_open_done\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 777, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant [28 x i8] c"event_smb3_posix_mkdir_done\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 778, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant [41 x i8] c"trace_event_fields_smb3_lease_done_class\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_smb3_lease_done_class\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [32 x i8] c"print_fmt_smb3_lease_done_class\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [22 x i8] c"event_smb3_lease_done\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 816, i32 1 }
@___asan_gen_.474 = private unnamed_addr constant [40 x i8] c"trace_event_fields_smb3_lease_err_class\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_smb3_lease_err_class\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [31 x i8] c"print_fmt_smb3_lease_err_class\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c"event_smb3_lease_err\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 857, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant [38 x i8] c"trace_event_fields_smb3_connect_class\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_smb3_connect_class\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [29 x i8] c"print_fmt_smb3_connect_class\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [24 x i8] c"event_smb3_connect_done\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 890, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant [42 x i8] c"trace_event_fields_smb3_connect_err_class\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_smb3_connect_err_class\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [33 x i8] c"print_fmt_smb3_connect_err_class\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [23 x i8] c"event_smb3_connect_err\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 926, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant [40 x i8] c"trace_event_fields_smb3_reconnect_class\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_smb3_reconnect_class\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [31 x i8] c"print_fmt_smb3_reconnect_class\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c"event_smb3_reconnect\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 956, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant [34 x i8] c"event_smb3_partial_send_reconnect\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 957, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant [37 x i8] c"trace_event_fields_smb3_credit_class\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_smb3_credit_class\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [28 x i8] c"print_fmt_smb3_credit_class\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [42 x i8] c"event_smb3_reconnect_with_invalid_credits\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1003, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant [30 x i8] c"event_smb3_reconnect_detected\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1004, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant [26 x i8] c"event_smb3_credit_timeout\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1005, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [32 x i8] c"event_smb3_insufficient_credits\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1006, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [28 x i8] c"event_smb3_too_many_credits\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1007, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant [23 x i8] c"event_smb3_add_credits\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1008, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant [23 x i8] c"event_smb3_set_credits\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1009, i32 1 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 23, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 74, i32 1 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 127, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 162, i32 1 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 204, i32 1 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 248, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 296, i32 1 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 338, i32 1 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 375, i32 1 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 419, i32 1 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 460, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 495, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 532, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 561, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 587, i32 1 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 616, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 658, i32 1 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 696, i32 1 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 738, i32 1 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 781, i32 1 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 818, i32 1 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 859, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 892, i32 1 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 928, i32 1 }
@___asan_gen_.750 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c"../fs/cifs/./trace.h\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 959, i32 1 }
@llvm.compiler.used = appending global [602 x ptr] [ptr @__bpf_trace_tp_map_cifs_flush_err, ptr @__bpf_trace_tp_map_cifs_fsync_err, ptr @__bpf_trace_tp_map_smb3_add_credits, ptr @__bpf_trace_tp_map_smb3_close_done, ptr @__bpf_trace_tp_map_smb3_close_enter, ptr @__bpf_trace_tp_map_smb3_close_err, ptr @__bpf_trace_tp_map_smb3_cmd_done, ptr @__bpf_trace_tp_map_smb3_cmd_enter, ptr @__bpf_trace_tp_map_smb3_cmd_err, ptr @__bpf_trace_tp_map_smb3_connect_done, ptr @__bpf_trace_tp_map_smb3_connect_err, ptr @__bpf_trace_tp_map_smb3_credit_timeout, ptr @__bpf_trace_tp_map_smb3_delete_done, ptr @__bpf_trace_tp_map_smb3_delete_enter, ptr @__bpf_trace_tp_map_smb3_delete_err, ptr @__bpf_trace_tp_map_smb3_enter, ptr @__bpf_trace_tp_map_smb3_exit_done, ptr @__bpf_trace_tp_map_smb3_exit_err, ptr @__bpf_trace_tp_map_smb3_falloc_done, ptr @__bpf_trace_tp_map_smb3_falloc_enter, ptr @__bpf_trace_tp_map_smb3_falloc_err, ptr @__bpf_trace_tp_map_smb3_flush_done, ptr @__bpf_trace_tp_map_smb3_flush_enter, ptr @__bpf_trace_tp_map_smb3_flush_err, ptr @__bpf_trace_tp_map_smb3_fsctl_err, ptr @__bpf_trace_tp_map_smb3_hardlink_done, ptr @__bpf_trace_tp_map_smb3_hardlink_enter, ptr @__bpf_trace_tp_map_smb3_hardlink_err, ptr @__bpf_trace_tp_map_smb3_insufficient_credits, ptr @__bpf_trace_tp_map_smb3_lease_done, ptr @__bpf_trace_tp_map_smb3_lease_err, ptr @__bpf_trace_tp_map_smb3_lock_err, ptr @__bpf_trace_tp_map_smb3_mkdir_done, ptr @__bpf_trace_tp_map_smb3_mkdir_enter, ptr @__bpf_trace_tp_map_smb3_mkdir_err, ptr @__bpf_trace_tp_map_smb3_notify_done, ptr @__bpf_trace_tp_map_smb3_notify_enter, ptr @__bpf_trace_tp_map_smb3_notify_err, ptr @__bpf_trace_tp_map_smb3_open_done, ptr @__bpf_trace_tp_map_smb3_open_enter, ptr @__bpf_trace_tp_map_smb3_open_err, ptr @__bpf_trace_tp_map_smb3_partial_send_reconnect, ptr @__bpf_trace_tp_map_smb3_posix_mkdir_done, ptr @__bpf_trace_tp_map_smb3_posix_mkdir_enter, ptr @__bpf_trace_tp_map_smb3_posix_mkdir_err, ptr @__bpf_trace_tp_map_smb3_posix_query_info_compound_done, ptr @__bpf_trace_tp_map_smb3_posix_query_info_compound_enter, ptr @__bpf_trace_tp_map_smb3_posix_query_info_compound_err, ptr @__bpf_trace_tp_map_smb3_query_dir_done, ptr @__bpf_trace_tp_map_smb3_query_dir_enter, ptr @__bpf_trace_tp_map_smb3_query_dir_err, ptr @__bpf_trace_tp_map_smb3_query_info_compound_done, ptr @__bpf_trace_tp_map_smb3_query_info_compound_enter, ptr @__bpf_trace_tp_map_smb3_query_info_compound_err, ptr @__bpf_trace_tp_map_smb3_query_info_done, ptr @__bpf_trace_tp_map_smb3_query_info_enter, ptr @__bpf_trace_tp_map_smb3_query_info_err, ptr @__bpf_trace_tp_map_smb3_read_done, ptr @__bpf_trace_tp_map_smb3_read_enter, ptr @__bpf_trace_tp_map_smb3_read_err, ptr @__bpf_trace_tp_map_smb3_reconnect, ptr @__bpf_trace_tp_map_smb3_reconnect_detected, ptr @__bpf_trace_tp_map_smb3_reconnect_with_invalid_credits, ptr @__bpf_trace_tp_map_smb3_rename_done, ptr @__bpf_trace_tp_map_smb3_rename_enter, ptr @__bpf_trace_tp_map_smb3_rename_err, ptr @__bpf_trace_tp_map_smb3_rmdir_done, ptr @__bpf_trace_tp_map_smb3_rmdir_enter, ptr @__bpf_trace_tp_map_smb3_rmdir_err, ptr @__bpf_trace_tp_map_smb3_ses_expired, ptr @__bpf_trace_tp_map_smb3_set_credits, ptr @__bpf_trace_tp_map_smb3_set_eof_done, ptr @__bpf_trace_tp_map_smb3_set_eof_enter, ptr @__bpf_trace_tp_map_smb3_set_eof_err, ptr @__bpf_trace_tp_map_smb3_set_info_compound_done, ptr @__bpf_trace_tp_map_smb3_set_info_compound_enter, ptr @__bpf_trace_tp_map_smb3_set_info_compound_err, ptr @__bpf_trace_tp_map_smb3_set_info_err, ptr @__bpf_trace_tp_map_smb3_slow_rsp, ptr @__bpf_trace_tp_map_smb3_tcon, ptr @__bpf_trace_tp_map_smb3_too_many_credits, ptr @__bpf_trace_tp_map_smb3_write_done, ptr @__bpf_trace_tp_map_smb3_write_enter, ptr @__bpf_trace_tp_map_smb3_write_err, ptr @__bpf_trace_tp_map_smb3_zero_done, ptr @__bpf_trace_tp_map_smb3_zero_enter, ptr @__bpf_trace_tp_map_smb3_zero_err, ptr @__event_cifs_flush_err, ptr @__event_cifs_fsync_err, ptr @__event_smb3_add_credits, ptr @__event_smb3_close_done, ptr @__event_smb3_close_enter, ptr @__event_smb3_close_err, ptr @__event_smb3_cmd_done, ptr @__event_smb3_cmd_enter, ptr @__event_smb3_cmd_err, ptr @__event_smb3_connect_done, ptr @__event_smb3_connect_err, ptr @__event_smb3_credit_timeout, ptr @__event_smb3_delete_done, ptr @__event_smb3_delete_enter, ptr @__event_smb3_delete_err, ptr @__event_smb3_enter, ptr @__event_smb3_exit_done, ptr @__event_smb3_exit_err, ptr @__event_smb3_falloc_done, ptr @__event_smb3_falloc_enter, ptr @__event_smb3_falloc_err, ptr @__event_smb3_flush_done, ptr @__event_smb3_flush_enter, ptr @__event_smb3_flush_err, ptr @__event_smb3_fsctl_err, ptr @__event_smb3_hardlink_done, ptr @__event_smb3_hardlink_enter, ptr @__event_smb3_hardlink_err, ptr @__event_smb3_insufficient_credits, ptr @__event_smb3_lease_done, ptr @__event_smb3_lease_err, ptr @__event_smb3_lock_err, ptr @__event_smb3_mkdir_done, ptr @__event_smb3_mkdir_enter, ptr @__event_smb3_mkdir_err, ptr @__event_smb3_notify_done, ptr @__event_smb3_notify_enter, ptr @__event_smb3_notify_err, ptr @__event_smb3_open_done, ptr @__event_smb3_open_enter, ptr @__event_smb3_open_err, ptr @__event_smb3_partial_send_reconnect, ptr @__event_smb3_posix_mkdir_done, ptr @__event_smb3_posix_mkdir_enter, ptr @__event_smb3_posix_mkdir_err, ptr @__event_smb3_posix_query_info_compound_done, ptr @__event_smb3_posix_query_info_compound_enter, ptr @__event_smb3_posix_query_info_compound_err, ptr @__event_smb3_query_dir_done, ptr @__event_smb3_query_dir_enter, ptr @__event_smb3_query_dir_err, ptr @__event_smb3_query_info_compound_done, ptr @__event_smb3_query_info_compound_enter, ptr @__event_smb3_query_info_compound_err, ptr @__event_smb3_query_info_done, ptr @__event_smb3_query_info_enter, ptr @__event_smb3_query_info_err, ptr @__event_smb3_read_done, ptr @__event_smb3_read_enter, ptr @__event_smb3_read_err, ptr @__event_smb3_reconnect, ptr @__event_smb3_reconnect_detected, ptr @__event_smb3_reconnect_with_invalid_credits, ptr @__event_smb3_rename_done, ptr @__event_smb3_rename_enter, ptr @__event_smb3_rename_err, ptr @__event_smb3_rmdir_done, ptr @__event_smb3_rmdir_enter, ptr @__event_smb3_rmdir_err, ptr @__event_smb3_ses_expired, ptr @__event_smb3_set_credits, ptr @__event_smb3_set_eof_done, ptr @__event_smb3_set_eof_enter, ptr @__event_smb3_set_eof_err, ptr @__event_smb3_set_info_compound_done, ptr @__event_smb3_set_info_compound_enter, ptr @__event_smb3_set_info_compound_err, ptr @__event_smb3_set_info_err, ptr @__event_smb3_slow_rsp, ptr @__event_smb3_tcon, ptr @__event_smb3_too_many_credits, ptr @__event_smb3_write_done, ptr @__event_smb3_write_enter, ptr @__event_smb3_write_err, ptr @__event_smb3_zero_done, ptr @__event_smb3_zero_enter, ptr @__event_smb3_zero_err, ptr @__tracepoint_cifs_flush_err, ptr @__tracepoint_cifs_fsync_err, ptr @__tracepoint_ptr_cifs_flush_err, ptr @__tracepoint_ptr_cifs_fsync_err, ptr @__tracepoint_ptr_smb3_add_credits, ptr @__tracepoint_ptr_smb3_close_done, ptr @__tracepoint_ptr_smb3_close_enter, ptr @__tracepoint_ptr_smb3_close_err, ptr @__tracepoint_ptr_smb3_cmd_done, ptr @__tracepoint_ptr_smb3_cmd_enter, ptr @__tracepoint_ptr_smb3_cmd_err, ptr @__tracepoint_ptr_smb3_connect_done, ptr @__tracepoint_ptr_smb3_connect_err, ptr @__tracepoint_ptr_smb3_credit_timeout, ptr @__tracepoint_ptr_smb3_delete_done, ptr @__tracepoint_ptr_smb3_delete_enter, ptr @__tracepoint_ptr_smb3_delete_err, ptr @__tracepoint_ptr_smb3_enter, ptr @__tracepoint_ptr_smb3_exit_done, ptr @__tracepoint_ptr_smb3_exit_err, ptr @__tracepoint_ptr_smb3_falloc_done, ptr @__tracepoint_ptr_smb3_falloc_enter, ptr @__tracepoint_ptr_smb3_falloc_err, ptr @__tracepoint_ptr_smb3_flush_done, ptr @__tracepoint_ptr_smb3_flush_enter, ptr @__tracepoint_ptr_smb3_flush_err, ptr @__tracepoint_ptr_smb3_fsctl_err, ptr @__tracepoint_ptr_smb3_hardlink_done, ptr @__tracepoint_ptr_smb3_hardlink_enter, ptr @__tracepoint_ptr_smb3_hardlink_err, ptr @__tracepoint_ptr_smb3_insufficient_credits, ptr @__tracepoint_ptr_smb3_lease_done, ptr @__tracepoint_ptr_smb3_lease_err, ptr @__tracepoint_ptr_smb3_lock_err, ptr @__tracepoint_ptr_smb3_mkdir_done, ptr @__tracepoint_ptr_smb3_mkdir_enter, ptr @__tracepoint_ptr_smb3_mkdir_err, ptr @__tracepoint_ptr_smb3_notify_done, ptr @__tracepoint_ptr_smb3_notify_enter, ptr @__tracepoint_ptr_smb3_notify_err, ptr @__tracepoint_ptr_smb3_open_done, ptr @__tracepoint_ptr_smb3_open_enter, ptr @__tracepoint_ptr_smb3_open_err, ptr @__tracepoint_ptr_smb3_partial_send_reconnect, ptr @__tracepoint_ptr_smb3_posix_mkdir_done, ptr @__tracepoint_ptr_smb3_posix_mkdir_enter, ptr @__tracepoint_ptr_smb3_posix_mkdir_err, ptr @__tracepoint_ptr_smb3_posix_query_info_compound_done, ptr @__tracepoint_ptr_smb3_posix_query_info_compound_enter, ptr @__tracepoint_ptr_smb3_posix_query_info_compound_err, ptr @__tracepoint_ptr_smb3_query_dir_done, ptr @__tracepoint_ptr_smb3_query_dir_enter, ptr @__tracepoint_ptr_smb3_query_dir_err, ptr @__tracepoint_ptr_smb3_query_info_compound_done, ptr @__tracepoint_ptr_smb3_query_info_compound_enter, ptr @__tracepoint_ptr_smb3_query_info_compound_err, ptr @__tracepoint_ptr_smb3_query_info_done, ptr @__tracepoint_ptr_smb3_query_info_enter, ptr @__tracepoint_ptr_smb3_query_info_err, ptr @__tracepoint_ptr_smb3_read_done, ptr @__tracepoint_ptr_smb3_read_enter, ptr @__tracepoint_ptr_smb3_read_err, ptr @__tracepoint_ptr_smb3_reconnect, ptr @__tracepoint_ptr_smb3_reconnect_detected, ptr @__tracepoint_ptr_smb3_reconnect_with_invalid_credits, ptr @__tracepoint_ptr_smb3_rename_done, ptr @__tracepoint_ptr_smb3_rename_enter, ptr @__tracepoint_ptr_smb3_rename_err, ptr @__tracepoint_ptr_smb3_rmdir_done, ptr @__tracepoint_ptr_smb3_rmdir_enter, ptr @__tracepoint_ptr_smb3_rmdir_err, ptr @__tracepoint_ptr_smb3_ses_expired, ptr @__tracepoint_ptr_smb3_set_credits, ptr @__tracepoint_ptr_smb3_set_eof_done, ptr @__tracepoint_ptr_smb3_set_eof_enter, ptr @__tracepoint_ptr_smb3_set_eof_err, ptr @__tracepoint_ptr_smb3_set_info_compound_done, ptr @__tracepoint_ptr_smb3_set_info_compound_enter, ptr @__tracepoint_ptr_smb3_set_info_compound_err, ptr @__tracepoint_ptr_smb3_set_info_err, ptr @__tracepoint_ptr_smb3_slow_rsp, ptr @__tracepoint_ptr_smb3_tcon, ptr @__tracepoint_ptr_smb3_too_many_credits, ptr @__tracepoint_ptr_smb3_write_done, ptr @__tracepoint_ptr_smb3_write_enter, ptr @__tracepoint_ptr_smb3_write_err, ptr @__tracepoint_ptr_smb3_zero_done, ptr @__tracepoint_ptr_smb3_zero_enter, ptr @__tracepoint_ptr_smb3_zero_err, ptr @__tracepoint_smb3_add_credits, ptr @__tracepoint_smb3_close_done, ptr @__tracepoint_smb3_close_enter, ptr @__tracepoint_smb3_close_err, ptr @__tracepoint_smb3_cmd_done, ptr @__tracepoint_smb3_cmd_enter, ptr @__tracepoint_smb3_cmd_err, ptr @__tracepoint_smb3_connect_done, ptr @__tracepoint_smb3_connect_err, ptr @__tracepoint_smb3_credit_timeout, ptr @__tracepoint_smb3_delete_done, ptr @__tracepoint_smb3_delete_enter, ptr @__tracepoint_smb3_delete_err, ptr @__tracepoint_smb3_enter, ptr @__tracepoint_smb3_exit_done, ptr @__tracepoint_smb3_exit_err, ptr @__tracepoint_smb3_falloc_done, ptr @__tracepoint_smb3_falloc_enter, ptr @__tracepoint_smb3_falloc_err, ptr @__tracepoint_smb3_flush_done, ptr @__tracepoint_smb3_flush_enter, ptr @__tracepoint_smb3_flush_err, ptr @__tracepoint_smb3_fsctl_err, ptr @__tracepoint_smb3_hardlink_done, ptr @__tracepoint_smb3_hardlink_enter, ptr @__tracepoint_smb3_hardlink_err, ptr @__tracepoint_smb3_insufficient_credits, ptr @__tracepoint_smb3_lease_done, ptr @__tracepoint_smb3_lease_err, ptr @__tracepoint_smb3_lock_err, ptr @__tracepoint_smb3_mkdir_done, ptr @__tracepoint_smb3_mkdir_enter, ptr @__tracepoint_smb3_mkdir_err, ptr @__tracepoint_smb3_notify_done, ptr @__tracepoint_smb3_notify_enter, ptr @__tracepoint_smb3_notify_err, ptr @__tracepoint_smb3_open_done, ptr @__tracepoint_smb3_open_enter, ptr @__tracepoint_smb3_open_err, ptr @__tracepoint_smb3_partial_send_reconnect, ptr @__tracepoint_smb3_posix_mkdir_done, ptr @__tracepoint_smb3_posix_mkdir_enter, ptr @__tracepoint_smb3_posix_mkdir_err, ptr @__tracepoint_smb3_posix_query_info_compound_done, ptr @__tracepoint_smb3_posix_query_info_compound_enter, ptr @__tracepoint_smb3_posix_query_info_compound_err, ptr @__tracepoint_smb3_query_dir_done, ptr @__tracepoint_smb3_query_dir_enter, ptr @__tracepoint_smb3_query_dir_err, ptr @__tracepoint_smb3_query_info_compound_done, ptr @__tracepoint_smb3_query_info_compound_enter, ptr @__tracepoint_smb3_query_info_compound_err, ptr @__tracepoint_smb3_query_info_done, ptr @__tracepoint_smb3_query_info_enter, ptr @__tracepoint_smb3_query_info_err, ptr @__tracepoint_smb3_read_done, ptr @__tracepoint_smb3_read_enter, ptr @__tracepoint_smb3_read_err, ptr @__tracepoint_smb3_reconnect, ptr @__tracepoint_smb3_reconnect_detected, ptr @__tracepoint_smb3_reconnect_with_invalid_credits, ptr @__tracepoint_smb3_rename_done, ptr @__tracepoint_smb3_rename_enter, ptr @__tracepoint_smb3_rename_err, ptr @__tracepoint_smb3_rmdir_done, ptr @__tracepoint_smb3_rmdir_enter, ptr @__tracepoint_smb3_rmdir_err, ptr @__tracepoint_smb3_ses_expired, ptr @__tracepoint_smb3_set_credits, ptr @__tracepoint_smb3_set_eof_done, ptr @__tracepoint_smb3_set_eof_enter, ptr @__tracepoint_smb3_set_eof_err, ptr @__tracepoint_smb3_set_info_compound_done, ptr @__tracepoint_smb3_set_info_compound_enter, ptr @__tracepoint_smb3_set_info_compound_err, ptr @__tracepoint_smb3_set_info_err, ptr @__tracepoint_smb3_slow_rsp, ptr @__tracepoint_smb3_tcon, ptr @__tracepoint_smb3_too_many_credits, ptr @__tracepoint_smb3_write_done, ptr @__tracepoint_smb3_write_enter, ptr @__tracepoint_smb3_write_err, ptr @__tracepoint_smb3_zero_done, ptr @__tracepoint_smb3_zero_enter, ptr @__tracepoint_smb3_zero_err, ptr @event_cifs_flush_err, ptr @event_cifs_fsync_err, ptr @event_class_smb3_cmd_done_class, ptr @event_class_smb3_cmd_err_class, ptr @event_class_smb3_connect_class, ptr @event_class_smb3_connect_err_class, ptr @event_class_smb3_credit_class, ptr @event_class_smb3_enter_exit_class, ptr @event_class_smb3_exit_err_class, ptr @event_class_smb3_fd_class, ptr @event_class_smb3_fd_err_class, ptr @event_class_smb3_inf_compound_done_class, ptr @event_class_smb3_inf_compound_enter_class, ptr @event_class_smb3_inf_compound_err_class, ptr @event_class_smb3_inf_enter_class, ptr @event_class_smb3_inf_err_class, ptr @event_class_smb3_lease_done_class, ptr @event_class_smb3_lease_err_class, ptr @event_class_smb3_mid_class, ptr @event_class_smb3_open_done_class, ptr @event_class_smb3_open_enter_class, ptr @event_class_smb3_open_err_class, ptr @event_class_smb3_reconnect_class, ptr @event_class_smb3_rw_done_class, ptr @event_class_smb3_rw_err_class, ptr @event_class_smb3_sync_err_class, ptr @event_class_smb3_tcon_class, ptr @event_smb3_add_credits, ptr @event_smb3_close_done, ptr @event_smb3_close_enter, ptr @event_smb3_close_err, ptr @event_smb3_cmd_done, ptr @event_smb3_cmd_enter, ptr @event_smb3_cmd_err, ptr @event_smb3_connect_done, ptr @event_smb3_connect_err, ptr @event_smb3_credit_timeout, ptr @event_smb3_delete_done, ptr @event_smb3_delete_enter, ptr @event_smb3_delete_err, ptr @event_smb3_enter, ptr @event_smb3_exit_done, ptr @event_smb3_exit_err, ptr @event_smb3_falloc_done, ptr @event_smb3_falloc_enter, ptr @event_smb3_falloc_err, ptr @event_smb3_flush_done, ptr @event_smb3_flush_enter, ptr @event_smb3_flush_err, ptr @event_smb3_fsctl_err, ptr @event_smb3_hardlink_done, ptr @event_smb3_hardlink_enter, ptr @event_smb3_hardlink_err, ptr @event_smb3_insufficient_credits, ptr @event_smb3_lease_done, ptr @event_smb3_lease_err, ptr @event_smb3_lock_err, ptr @event_smb3_mkdir_done, ptr @event_smb3_mkdir_enter, ptr @event_smb3_mkdir_err, ptr @event_smb3_notify_done, ptr @event_smb3_notify_enter, ptr @event_smb3_notify_err, ptr @event_smb3_open_done, ptr @event_smb3_open_enter, ptr @event_smb3_open_err, ptr @event_smb3_partial_send_reconnect, ptr @event_smb3_posix_mkdir_done, ptr @event_smb3_posix_mkdir_enter, ptr @event_smb3_posix_mkdir_err, ptr @event_smb3_posix_query_info_compound_done, ptr @event_smb3_posix_query_info_compound_enter, ptr @event_smb3_posix_query_info_compound_err, ptr @event_smb3_query_dir_done, ptr @event_smb3_query_dir_enter, ptr @event_smb3_query_dir_err, ptr @event_smb3_query_info_compound_done, ptr @event_smb3_query_info_compound_enter, ptr @event_smb3_query_info_compound_err, ptr @event_smb3_query_info_done, ptr @event_smb3_query_info_enter, ptr @event_smb3_query_info_err, ptr @event_smb3_read_done, ptr @event_smb3_read_enter, ptr @event_smb3_read_err, ptr @event_smb3_reconnect, ptr @event_smb3_reconnect_detected, ptr @event_smb3_reconnect_with_invalid_credits, ptr @event_smb3_rename_done, ptr @event_smb3_rename_enter, ptr @event_smb3_rename_err, ptr @event_smb3_rmdir_done, ptr @event_smb3_rmdir_enter, ptr @event_smb3_rmdir_err, ptr @event_smb3_ses_expired, ptr @event_smb3_set_credits, ptr @event_smb3_set_eof_done, ptr @event_smb3_set_eof_enter, ptr @event_smb3_set_eof_err, ptr @event_smb3_set_info_compound_done, ptr @event_smb3_set_info_compound_enter, ptr @event_smb3_set_info_compound_err, ptr @event_smb3_set_info_err, ptr @event_smb3_slow_rsp, ptr @event_smb3_tcon, ptr @event_smb3_too_many_credits, ptr @event_smb3_write_done, ptr @event_smb3_write_enter, ptr @event_smb3_write_err, ptr @event_smb3_zero_done, ptr @event_smb3_zero_enter, ptr @event_smb3_zero_err, ptr @str__cifs__trace_system_name, ptr @trace_event_fields_smb3_rw_err_class, ptr @trace_event_type_funcs_smb3_rw_err_class, ptr @print_fmt_smb3_rw_err_class, ptr @trace_event_fields_smb3_rw_done_class, ptr @trace_event_type_funcs_smb3_rw_done_class, ptr @print_fmt_smb3_rw_done_class, ptr @trace_event_fields_smb3_fd_class, ptr @trace_event_type_funcs_smb3_fd_class, ptr @print_fmt_smb3_fd_class, ptr @trace_event_fields_smb3_fd_err_class, ptr @trace_event_type_funcs_smb3_fd_err_class, ptr @print_fmt_smb3_fd_err_class, ptr @trace_event_fields_smb3_inf_enter_class, ptr @trace_event_type_funcs_smb3_inf_enter_class, ptr @print_fmt_smb3_inf_enter_class, ptr @trace_event_fields_smb3_inf_err_class, ptr @trace_event_type_funcs_smb3_inf_err_class, ptr @print_fmt_smb3_inf_err_class, ptr @trace_event_fields_smb3_inf_compound_enter_class, ptr @trace_event_type_funcs_smb3_inf_compound_enter_class, ptr @print_fmt_smb3_inf_compound_enter_class, ptr @trace_event_fields_smb3_inf_compound_done_class, ptr @trace_event_type_funcs_smb3_inf_compound_done_class, ptr @print_fmt_smb3_inf_compound_done_class, ptr @trace_event_fields_smb3_inf_compound_err_class, ptr @trace_event_type_funcs_smb3_inf_compound_err_class, ptr @print_fmt_smb3_inf_compound_err_class, ptr @trace_event_fields_smb3_cmd_err_class, ptr @trace_event_type_funcs_smb3_cmd_err_class, ptr @print_fmt_smb3_cmd_err_class, ptr @trace_event_fields_smb3_cmd_done_class, ptr @trace_event_type_funcs_smb3_cmd_done_class, ptr @print_fmt_smb3_cmd_done_class, ptr @trace_event_fields_smb3_mid_class, ptr @trace_event_type_funcs_smb3_mid_class, ptr @print_fmt_smb3_mid_class, ptr @trace_event_fields_smb3_exit_err_class, ptr @trace_event_type_funcs_smb3_exit_err_class, ptr @print_fmt_smb3_exit_err_class, ptr @trace_event_fields_smb3_sync_err_class, ptr @trace_event_type_funcs_smb3_sync_err_class, ptr @print_fmt_smb3_sync_err_class, ptr @trace_event_fields_smb3_enter_exit_class, ptr @trace_event_type_funcs_smb3_enter_exit_class, ptr @print_fmt_smb3_enter_exit_class, ptr @trace_event_fields_smb3_tcon_class, ptr @trace_event_type_funcs_smb3_tcon_class, ptr @print_fmt_smb3_tcon_class, ptr @trace_event_fields_smb3_open_enter_class, ptr @trace_event_type_funcs_smb3_open_enter_class, ptr @print_fmt_smb3_open_enter_class, ptr @trace_event_fields_smb3_open_err_class, ptr @trace_event_type_funcs_smb3_open_err_class, ptr @print_fmt_smb3_open_err_class, ptr @trace_event_fields_smb3_open_done_class, ptr @trace_event_type_funcs_smb3_open_done_class, ptr @print_fmt_smb3_open_done_class, ptr @trace_event_fields_smb3_lease_done_class, ptr @trace_event_type_funcs_smb3_lease_done_class, ptr @print_fmt_smb3_lease_done_class, ptr @trace_event_fields_smb3_lease_err_class, ptr @trace_event_type_funcs_smb3_lease_err_class, ptr @print_fmt_smb3_lease_err_class, ptr @trace_event_fields_smb3_connect_class, ptr @trace_event_type_funcs_smb3_connect_class, ptr @print_fmt_smb3_connect_class, ptr @trace_event_fields_smb3_connect_err_class, ptr @trace_event_type_funcs_smb3_connect_err_class, ptr @print_fmt_smb3_connect_err_class, ptr @trace_event_fields_smb3_reconnect_class, ptr @trace_event_type_funcs_smb3_reconnect_class, ptr @print_fmt_smb3_reconnect_class, ptr @trace_event_fields_smb3_credit_class, ptr @trace_event_type_funcs_smb3_credit_class, ptr @print_fmt_smb3_credit_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [229 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cifs__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_rw_err_class to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_rw_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_rw_err_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_write_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_read_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_dir_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_zero_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_falloc_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_rw_done_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_rw_done_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_rw_done_class to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_write_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_read_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_dir_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_zero_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_falloc_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_write_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_read_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_dir_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_zero_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_falloc_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_fd_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_fd_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_fd_class to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_flush_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_flush_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_close_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_close_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_fd_err_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_fd_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_fd_err_class to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_flush_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_lock_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_close_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_inf_enter_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_inf_enter_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_inf_enter_class to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_info_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_info_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_notify_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_notify_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_inf_err_class to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_inf_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_inf_err_class to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_info_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_info_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_notify_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_fsctl_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_inf_compound_enter_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_inf_compound_enter_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_inf_compound_enter_class to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_info_compound_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_posix_query_info_compound_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_hardlink_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_rename_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_rmdir_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_eof_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_info_compound_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_delete_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_mkdir_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_inf_compound_done_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_inf_compound_done_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_inf_compound_done_class to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_info_compound_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_posix_query_info_compound_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_hardlink_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_rename_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_rmdir_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_eof_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_info_compound_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_delete_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_mkdir_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_inf_compound_err_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_inf_compound_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_inf_compound_err_class to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_query_info_compound_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_posix_query_info_compound_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_hardlink_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_rename_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_rmdir_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_eof_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_info_compound_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_mkdir_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_delete_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_cmd_err_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_cmd_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_cmd_err_class to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_cmd_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_cmd_done_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_cmd_done_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_cmd_done_class to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_cmd_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_cmd_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_ses_expired to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_mid_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_mid_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_mid_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_slow_rsp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_exit_err_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_exit_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_exit_err_class to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_exit_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_sync_err_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_sync_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_sync_err_class to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cifs_fsync_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cifs_flush_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_enter_exit_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_enter_exit_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_enter_exit_class to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_exit_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_tcon_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_tcon_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_tcon_class to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_tcon to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_open_enter_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_open_enter_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_open_enter_class to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_open_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_posix_mkdir_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_open_err_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_open_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_open_err_class to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_open_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_posix_mkdir_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_open_done_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_open_done_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_open_done_class to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_open_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_posix_mkdir_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_lease_done_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_lease_done_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_lease_done_class to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_lease_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_lease_err_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_lease_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_lease_err_class to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_lease_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_connect_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_connect_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_connect_class to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_connect_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_connect_err_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_connect_err_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_connect_err_class to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_connect_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_reconnect_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_reconnect_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_reconnect_class to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_reconnect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_partial_send_reconnect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_smb3_credit_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_smb3_credit_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_smb3_credit_class to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_reconnect_with_invalid_credits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_reconnect_detected to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_credit_timeout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_insufficient_credits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_too_many_credits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_add_credits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_smb3_set_credits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_smb3_write_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_write_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_read_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_read_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_query_dir_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_dir_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_zero_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_zero_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_falloc_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_falloc_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_write_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_write_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_read_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_read_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_query_dir_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_dir_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_zero_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_zero_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_falloc_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_falloc_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_write_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_write_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_read_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_read_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_query_dir_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_dir_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_zero_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_zero_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_falloc_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_falloc_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #7
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
define dso_local i32 @__traceiter_smb3_flush_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_flush_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_flush_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_flush_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_close_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_close_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_close_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_close_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_flush_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_flush_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_lock_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_lock_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_close_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_close_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_query_info_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_info_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #7
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
define dso_local i32 @__traceiter_smb3_query_info_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_info_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #7
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
define dso_local i32 @__traceiter_smb3_notify_enter(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_notify_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #7
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
define dso_local i32 @__traceiter_smb3_notify_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_notify_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #7
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
define dso_local i32 @__traceiter_smb3_query_info_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_info_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_set_info_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_info_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_notify_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_notify_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_fsctl_err(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_fsctl_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_query_info_compound_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_info_compound_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_posix_query_info_compound_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_posix_query_info_compound_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_hardlink_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_hardlink_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_rename_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_rename_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_rmdir_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_rmdir_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_set_eof_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_eof_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_set_info_compound_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_info_compound_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_delete_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_delete_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_mkdir_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_mkdir_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #7
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
define dso_local i32 @__traceiter_smb3_query_info_compound_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_info_compound_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_posix_query_info_compound_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_posix_query_info_compound_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_hardlink_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_hardlink_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_rename_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_rename_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_rmdir_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_rmdir_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_set_eof_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_eof_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_set_info_compound_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_info_compound_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_delete_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_delete_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_mkdir_done(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_mkdir_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #7
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
define dso_local i32 @__traceiter_smb3_query_info_compound_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_query_info_compound_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_posix_query_info_compound_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_posix_query_info_compound_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_hardlink_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_hardlink_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_rename_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_rename_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_rmdir_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_rmdir_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_set_eof_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_eof_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_set_info_compound_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_info_compound_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_mkdir_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_mkdir_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_delete_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_delete_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_cmd_err(ptr nocapture readnone %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %status, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_cmd_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %status, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_cmd_enter(ptr nocapture readnone %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_cmd_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #7
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
define dso_local i32 @__traceiter_smb3_cmd_done(ptr nocapture readnone %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_cmd_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #7
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
define dso_local i32 @__traceiter_smb3_ses_expired(ptr nocapture readnone %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_ses_expired, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #7
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
define dso_local i32 @__traceiter_smb3_slow_rsp(ptr nocapture readnone %__data, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_slow_rsp, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) #7
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
define dso_local i32 @__traceiter_smb3_exit_err(ptr nocapture readnone %__data, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_cifs_fsync_err(ptr nocapture readnone %__data, i32 noundef %ino, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cifs_fsync_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %ino, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_cifs_flush_err(ptr nocapture readnone %__data, i32 noundef %ino, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cifs_flush_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %ino, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_enter(ptr nocapture readnone %__data, i32 noundef %xid, ptr noundef %func_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, ptr noundef %func_name) #7
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
define dso_local i32 @__traceiter_smb3_exit_done(ptr nocapture readnone %__data, i32 noundef %xid, ptr noundef %func_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, ptr noundef %func_name) #7
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
define dso_local i32 @__traceiter_smb3_tcon(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %unc_name, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_tcon, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %unc_name, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_open_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_open_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #7
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
define dso_local i32 @__traceiter_smb3_posix_mkdir_enter(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_posix_mkdir_enter, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #7
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
define dso_local i32 @__traceiter_smb3_open_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_open_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_posix_mkdir_err(ptr nocapture readnone %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_posix_mkdir_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_open_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_open_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #7
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
define dso_local i32 @__traceiter_smb3_posix_mkdir_done(ptr nocapture readnone %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_posix_mkdir_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #7
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
define dso_local i32 @__traceiter_smb3_lease_done(ptr nocapture readnone %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_lease_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high) #7
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
define dso_local i32 @__traceiter_smb3_lease_err(ptr nocapture readnone %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_lease_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_connect_done(ptr nocapture readnone %__data, ptr noundef %hostname, i64 noundef %conn_id, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_connect_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hostname, i64 noundef %conn_id, ptr noundef %addr) #7
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
define dso_local i32 @__traceiter_smb3_connect_err(ptr nocapture readnone %__data, ptr noundef %hostname, i64 noundef %conn_id, ptr noundef %addr, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_connect_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hostname, i64 noundef %conn_id, ptr noundef %addr, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_smb3_reconnect(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_reconnect, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) #7
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
define dso_local i32 @__traceiter_smb3_partial_send_reconnect(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_partial_send_reconnect, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) #7
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
define dso_local i32 @__traceiter_smb3_reconnect_with_invalid_credits(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_reconnect_with_invalid_credits, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define dso_local i32 @__traceiter_smb3_reconnect_detected(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_reconnect_detected, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define dso_local i32 @__traceiter_smb3_credit_timeout(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_credit_timeout, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define dso_local i32 @__traceiter_smb3_insufficient_credits(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_insufficient_credits, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define dso_local i32 @__traceiter_smb3_too_many_credits(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_too_many_credits, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define dso_local i32 @__traceiter_smb3_add_credits(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_add_credits, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define dso_local i32 @__traceiter_smb3_set_credits(ptr nocapture readnone %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_smb3_set_credits, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #7
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
define internal void @trace_event_raw_event_smb3_rw_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  call void @__sanitizer_cov_trace_pc() #9
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  %offset10 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %offset10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %offset, ptr %offset10, align 8
  %len11 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %len11, align 8
  %rc12 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %rc12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rc, ptr %rc12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_rw_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %offset21 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %offset21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %offset, ptr %offset21, align 8
  %len22 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %len, ptr %len22, align 8
  %rc23 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %call13, i32 0, i32 7
  %33 = ptrtoint ptr %rc23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rc, ptr %rc23, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
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
define internal void @trace_event_raw_event_smb3_rw_done_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  call void @__sanitizer_cov_trace_pc() #9
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  %offset10 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %offset10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %offset, ptr %offset10, align 8
  %len11 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %len11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_rw_done_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %offset21 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %offset21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %offset, ptr %offset21, align 8
  %len22 = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %len, ptr %len22, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_fd_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_fd_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_fd_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  %rc10 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %rc10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rc, ptr %rc10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_fd_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %rc21 = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %rc21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rc, ptr %rc21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_inf_enter_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  %infclass10 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %infclass10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %infclass, ptr %infclass10, align 8
  %type11 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %type11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_inf_enter_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %infclass21 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %infclass21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %infclass, ptr %infclass21, align 8
  %type22 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %type, ptr %type22, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_inf_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  call void @__sanitizer_cov_trace_pc() #9
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  %infclass10 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %infclass10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %infclass, ptr %infclass10, align 8
  %type11 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %type11, align 4
  %rc12 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %rc12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rc, ptr %rc12, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_inf_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %infclass21 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %infclass21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %infclass, ptr %infclass21, align 8
  %type22 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %type, ptr %type22, align 4
  %rc23 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %call13, i32 0, i32 7
  %33 = ptrtoint ptr %rc23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rc, ptr %rc23, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_inf_compound_enter_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef readonly %full_path) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i28 = icmp eq ptr %full_path, null
  %spec.select.i = select i1 %tobool.not.i28, ptr @.str.20, ptr %full_path
  %call.i29 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i29, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i29, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_path = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %__data_loc_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_path, align 8
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xid, ptr %xid6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid8, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_inf_compound_enter_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef readonly %full_path) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %full_path, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %full_path
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i52.not = icmp eq ptr %15, null
  br i1 %tobool.not.i52.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_path = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call13, i32 0, i32 4
  %27 = ptrtoint ptr %__data_loc_path to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_path, align 8
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xid, ptr %xid17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %call13, i32 0, i32 3
  %30 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid19, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_inf_compound_done_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sesid, ptr %sesid8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_inf_compound_done_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sesid, ptr %sesid19, align 8
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_inf_compound_err_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sesid, ptr %sesid8, align 8
  %rc9 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %rc9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rc, ptr %rc9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_inf_compound_err_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sesid, ptr %sesid19, align 8
  %rc20 = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %rc20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rc, ptr %rc20, align 8
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_cmd_err_class(ptr noundef %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %status, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tid6 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %tid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tid, ptr %tid6, align 8
  %sesid7 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %sesid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sesid, ptr %sesid7, align 8
  %cmd8 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %cmd, ptr %cmd8, align 8
  %mid9 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %mid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mid, ptr %mid9, align 8
  %status10 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %status, ptr %status10, align 8
  %rc11 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %rc11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rc, ptr %rc11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_cmd_err_class(ptr noundef %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %status, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tid17 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %tid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %tid, ptr %tid17, align 8
  %sesid18 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %sesid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sesid, ptr %sesid18, align 8
  %cmd19 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %cmd19 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %cmd, ptr %cmd19, align 8
  %mid20 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %mid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %mid, ptr %mid20, align 8
  %status21 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %status, ptr %status21, align 8
  %rc22 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %rc22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rc, ptr %rc22, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_cmd_done_class(ptr noundef %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tid6 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %tid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tid, ptr %tid6, align 8
  %sesid7 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %sesid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sesid, ptr %sesid7, align 8
  %cmd8 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %cmd, ptr %cmd8, align 8
  %mid9 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %mid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mid, ptr %mid9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_cmd_done_class(ptr noundef %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tid17 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %tid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %tid, ptr %tid17, align 8
  %sesid18 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %sesid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sesid, ptr %sesid18, align 8
  %cmd19 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %cmd19 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %cmd, ptr %cmd19, align 8
  %mid20 = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %mid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %mid, ptr %mid20, align 8
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_mid_class(ptr noundef %__data, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cmd6 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %cmd, ptr %cmd6, align 8
  %mid7 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %mid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %mid, ptr %mid7, align 8
  %pid8 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %pid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pid, ptr %pid8, align 8
  %when_sent9 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %when_sent9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %when_sent, ptr %when_sent9, align 4
  %when_received10 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %when_received10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %when_received, ptr %when_received10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_mid_class(ptr noundef %__data, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cmd17 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %cmd17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %cmd, ptr %cmd17, align 8
  %mid18 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %mid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %mid, ptr %mid18, align 8
  %pid19 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %pid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %pid, ptr %pid19, align 8
  %when_sent20 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %when_sent20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %when_sent, ptr %when_sent20, align 4
  %when_received21 = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %when_received21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %when_received, ptr %when_received21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_exit_err_class(ptr noundef %__data, i32 noundef %xid, ptr noundef readonly %func_name, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i26 = icmp eq ptr %func_name, null
  %spec.select.i = select i1 %tobool.not.i26, ptr @.str.20, ptr %func_name
  %call.i27 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i27, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_func_name = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_func_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_func_name, align 4
  %xid7 = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %xid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xid, ptr %xid7, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %rc11 = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %rc11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rc, ptr %rc11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_exit_err_class(ptr noundef %__data, i32 noundef %xid, ptr noundef readonly %func_name, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %func_name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %func_name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i50.not = icmp eq ptr %15, null
  br i1 %tobool.not.i50.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_func_name = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_func_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_func_name, align 4
  %xid18 = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %xid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xid, ptr %xid18, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %rc23 = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %rc23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rc, ptr %rc23, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_sync_err_class(ptr noundef %__data, i32 noundef %ino, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %ino6 = getelementptr inbounds %struct.trace_event_raw_smb3_sync_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ino6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ino, ptr %ino6, align 4
  %rc7 = getelementptr inbounds %struct.trace_event_raw_smb3_sync_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %rc7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rc, ptr %rc7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_sync_err_class(ptr noundef %__data, i32 noundef %ino, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ino17 = getelementptr inbounds %struct.trace_event_raw_smb3_sync_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %ino17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ino, ptr %ino17, align 4
  %rc18 = getelementptr inbounds %struct.trace_event_raw_smb3_sync_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %rc18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rc, ptr %rc18, align 4
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
define internal void @trace_event_raw_event_smb3_enter_exit_class(ptr noundef %__data, i32 noundef %xid, ptr noundef readonly %func_name) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i23 = icmp eq ptr %func_name, null
  %spec.select.i = select i1 %tobool.not.i23, ptr @.str.20, ptr %func_name
  %call.i24 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i24, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i24, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_func_name = getelementptr inbounds %struct.trace_event_raw_smb3_enter_exit_class, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_func_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_func_name, align 4
  %xid7 = getelementptr inbounds %struct.trace_event_raw_smb3_enter_exit_class, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %xid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xid, ptr %xid7, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_enter_exit_class(ptr noundef %__data, i32 noundef %xid, ptr noundef readonly %func_name) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %func_name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %func_name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65552
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i47.not = icmp eq ptr %15, null
  br i1 %tobool.not.i47.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_func_name = getelementptr inbounds %struct.trace_event_raw_smb3_enter_exit_class, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_func_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_func_name, align 4
  %xid18 = getelementptr inbounds %struct.trace_event_raw_smb3_enter_exit_class, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %xid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xid, ptr %xid18, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_tcon_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef readonly %unc_name, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i31 = icmp eq ptr %unc_name, null
  %spec.select.i = select i1 %tobool.not.i31, ptr @.str.20, ptr %unc_name
  %call.i32 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i32, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i32, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 8
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xid, ptr %xid6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid8, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %rc12 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %rc12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rc, ptr %rc12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_tcon_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef readonly %unc_name, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %unc_name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %unc_name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i55.not = icmp eq ptr %15, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call13, i32 0, i32 4
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 8
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xid, ptr %xid17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call13, i32 0, i32 3
  %30 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid19, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %rc24 = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %rc24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rc, ptr %rc24, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_open_enter_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sesid, ptr %sesid8, align 8
  %create_options9 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %create_options9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %create_options, ptr %create_options9, align 8
  %desired_access10 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %desired_access10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %desired_access, ptr %desired_access10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_open_enter_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sesid, ptr %sesid19, align 8
  %create_options20 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %create_options20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %create_options, ptr %create_options20, align 8
  %desired_access21 = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %desired_access21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %desired_access, ptr %desired_access21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_open_err_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sesid, ptr %sesid8, align 8
  %create_options9 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %create_options9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %create_options, ptr %create_options9, align 8
  %desired_access10 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %desired_access10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %desired_access, ptr %desired_access10, align 4
  %rc11 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %rc11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rc, ptr %rc11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_open_err_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sesid, ptr %sesid19, align 8
  %create_options20 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %create_options20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %create_options, ptr %create_options20, align 8
  %desired_access21 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %desired_access21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %desired_access, ptr %desired_access21, align 4
  %rc22 = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %rc22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rc, ptr %rc22, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_open_done_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %xid6 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %xid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %xid, ptr %xid6, align 8
  %fid7 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %fid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %fid, ptr %fid7, align 8
  %tid8 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %tid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid8, align 8
  %sesid9 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %sesid9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sesid, ptr %sesid9, align 8
  %create_options10 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %create_options10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %create_options, ptr %create_options10, align 8
  %desired_access11 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %desired_access11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %desired_access, ptr %desired_access11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_open_done_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %xid17 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %xid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xid, ptr %xid17, align 8
  %fid18 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %fid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %fid, ptr %fid18, align 8
  %tid19 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %tid, ptr %tid19, align 8
  %sesid20 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %sesid20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sesid, ptr %sesid20, align 8
  %create_options21 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %create_options21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %create_options, ptr %create_options21, align 8
  %desired_access22 = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %desired_access22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %desired_access, ptr %desired_access22, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_lease_done_class(ptr noundef %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lease_state6 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %lease_state6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %lease_state, ptr %lease_state6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sesid, ptr %sesid8, align 8
  %lease_key_low9 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %lease_key_low9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %lease_key_low, ptr %lease_key_low9, align 8
  %lease_key_high10 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %lease_key_high10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %lease_key_high, ptr %lease_key_high10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_lease_done_class(ptr noundef %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %lease_state17 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %lease_state17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %lease_state, ptr %lease_state17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sesid, ptr %sesid19, align 8
  %lease_key_low20 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %lease_key_low20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %lease_key_low, ptr %lease_key_low20, align 8
  %lease_key_high21 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %lease_key_high21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %lease_key_high, ptr %lease_key_high21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_lease_err_class(ptr noundef %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %lease_state6 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %lease_state6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %lease_state, ptr %lease_state6, align 8
  %tid7 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tid, ptr %tid7, align 4
  %sesid8 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sesid8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sesid, ptr %sesid8, align 8
  %lease_key_low9 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %lease_key_low9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %lease_key_low, ptr %lease_key_low9, align 8
  %lease_key_high10 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %lease_key_high10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %lease_key_high, ptr %lease_key_high10, align 8
  %rc11 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %rc11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rc, ptr %rc11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_lease_err_class(ptr noundef %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %lease_state17 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %lease_state17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %lease_state, ptr %lease_state17, align 8
  %tid18 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tid, ptr %tid18, align 4
  %sesid19 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sesid19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sesid, ptr %sesid19, align 8
  %lease_key_low20 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %lease_key_low20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %lease_key_low, ptr %lease_key_low20, align 8
  %lease_key_high21 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %lease_key_high21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %lease_key_high, ptr %lease_key_high21, align 8
  %rc22 = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %rc22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rc, ptr %rc22, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_connect_class(ptr noundef %__data, ptr noundef readonly %hostname, i64 noundef %conn_id, ptr nocapture noundef readonly %dst_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i26 = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i26, ptr @.str.20, ptr %hostname
  %call.i27 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i27, 153
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65688
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %conn_id7 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %conn_id7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conn_id, ptr %conn_id7, align 8
  %dst_addr8 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %call3, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %dst_addr8, ptr %dst_addr, i32 128)
  %add.ptr = getelementptr i8, ptr %call3, i32 152
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_connect_class(ptr noundef %__data, ptr noundef readonly %hostname, i64 noundef %conn_id, ptr nocapture noundef readonly %dst_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %hostname
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65688
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i50.not = icmp eq ptr %15, null
  br i1 %tobool.not.i50.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 164
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %conn_id18 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %conn_id18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conn_id, ptr %conn_id18, align 8
  %dst_addr19 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %call13, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %dst_addr19, ptr %dst_addr, i32 128)
  %add.ptr = getelementptr i8, ptr %call13, i32 152
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_connect_err_class(ptr noundef %__data, ptr noundef readonly %hostname, i64 noundef %conn_id, ptr nocapture noundef readonly %dst_addr, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i29 = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i29, ptr @.str.20, ptr %hostname
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i30, 161
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65692
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %conn_id7 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %conn_id7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conn_id, ptr %conn_id7, align 8
  %rc8 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %rc8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rc, ptr %rc8, align 8
  %dst_addr9 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call3, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %dst_addr9, ptr %dst_addr, i32 128)
  %add.ptr = getelementptr i8, ptr %call3, i32 156
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_connect_err_class(ptr noundef %__data, ptr noundef readonly %hostname, i64 noundef %conn_id, ptr nocapture noundef readonly %dst_addr, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %hostname
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65692
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i53.not = icmp eq ptr %15, null
  br i1 %tobool.not.i53.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 172
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %conn_id18 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %conn_id18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conn_id, ptr %conn_id18, align 8
  %rc19 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %rc19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rc, ptr %rc19, align 8
  %dst_addr20 = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %call13, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %dst_addr20, ptr %dst_addr, i32 128)
  %add.ptr = getelementptr i8, ptr %call13, i32 156
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_reconnect_class(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef readonly %hostname) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i26 = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i26, ptr @.str.20, ptr %hostname
  %call.i27 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i27, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %currmid7 = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %currmid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %currmid, ptr %currmid7, align 8
  %conn_id8 = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %conn_id8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conn_id, ptr %conn_id8, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_reconnect_class(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef readonly %hostname) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %hostname
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i50.not = icmp eq ptr %15, null
  br i1 %tobool.not.i50.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %currmid18 = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %currmid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %currmid, ptr %currmid18, align 8
  %conn_id19 = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %conn_id19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conn_id, ptr %conn_id19, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smb3_credit_class(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef readonly %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !899

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !900

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
  %tobool.not.i35 = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i35, ptr @.str.20, ptr %hostname
  %call.i36 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i36, 41
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i36, 16
  %or.i = add i32 %add.i, 65576
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %currmid7 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %currmid7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %currmid, ptr %currmid7, align 8
  %conn_id8 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %conn_id8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conn_id, ptr %conn_id8, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 40
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %credits12 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %credits12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %credits, ptr %credits12, align 4
  %credits_to_add13 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %credits_to_add13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %credits_to_add, ptr %credits_to_add13, align 8
  %in_flight14 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %in_flight14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %in_flight, ptr %in_flight14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_smb3_credit_class(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef readonly %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !901
  %tobool.not.i = icmp eq ptr %hostname, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %hostname
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65576
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !889) #7
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
  %tobool.not.i59.not = icmp eq ptr %15, null
  br i1 %tobool.not.i59.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 52
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !889) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_hostname, align 8
  %currmid18 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %currmid18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %currmid, ptr %currmid18, align 8
  %conn_id19 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %conn_id19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conn_id, ptr %conn_id19, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 40
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %credits24 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %credits24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %credits, ptr %credits24, align 4
  %credits_to_add25 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %credits_to_add25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %credits_to_add, ptr %credits_to_add25, align 8
  %in_flight26 = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %in_flight26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %in_flight, ptr %in_flight26, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_rw_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  %conv17 = zext i32 %len to i64
  %conv21 = zext i32 %rc to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid, i64 noundef %offset, i64 noundef %conv17, i64 noundef %conv21) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_rw_done_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i64 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  %conv17 = zext i32 %len to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid, i64 noundef %offset, i64 noundef %conv17) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_fd_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_fd_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  %conv14 = zext i32 %rc to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid, i64 noundef %conv14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_inf_enter_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  %conv14 = zext i8 %infclass to i64
  %conv18 = zext i32 %type to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid, i64 noundef %conv14, i64 noundef %conv18) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_inf_err_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i8 noundef zeroext %infclass, i32 noundef %type, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  %conv14 = zext i8 %infclass to i64
  %conv18 = zext i32 %type to i64
  %conv22 = zext i32 %rc to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid, i64 noundef %conv14, i64 noundef %conv18, i64 noundef %conv22) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_inf_compound_enter_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %full_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv4 = zext i32 %tid to i64
  %0 = ptrtoint ptr %full_path to i32
  %conv11 = zext i32 %0 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %conv11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_inf_compound_done_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv4 = zext i32 %tid to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_inf_compound_err_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv4 = zext i32 %tid to i64
  %conv11 = zext i32 %rc to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %conv11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_cmd_err_class(ptr noundef %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %status, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %tid to i64
  %conv7 = zext i16 %cmd to i64
  %conv14 = zext i32 %status to i64
  %conv18 = zext i32 %rc to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %sesid, i64 noundef %conv7, i64 noundef %mid, i64 noundef %conv14, i64 noundef %conv18) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_cmd_done_class(ptr noundef %__data, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %tid to i64
  %conv7 = zext i16 %cmd to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %sesid, i64 noundef %conv7, i64 noundef %mid) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_mid_class(ptr noundef %__data, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %cmd to i64
  %conv7 = zext i32 %pid to i64
  %conv11 = zext i32 %when_sent to i64
  %conv15 = zext i32 %when_received to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %mid, i64 noundef %conv7, i64 noundef %conv11, i64 noundef %conv15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_exit_err_class(ptr noundef %__data, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %0 = ptrtoint ptr %func_name to i32
  %conv4 = zext i32 %0 to i64
  %conv8 = zext i32 %rc to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_sync_err_class(ptr noundef %__data, i32 noundef %ino, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %ino to i64
  %conv4 = zext i32 %rc to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_enter_exit_class(ptr noundef %__data, i32 noundef %xid, ptr noundef %func_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %0 = ptrtoint ptr %func_name to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_tcon_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, ptr noundef %unc_name, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv4 = zext i32 %tid to i64
  %0 = ptrtoint ptr %unc_name to i32
  %conv11 = zext i32 %0 to i64
  %conv15 = zext i32 %rc to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %conv11, i64 noundef %conv15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_open_enter_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv4 = zext i32 %tid to i64
  %conv11 = zext i32 %create_options to i64
  %conv15 = zext i32 %desired_access to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %conv11, i64 noundef %conv15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_open_err_class(ptr noundef %__data, i32 noundef %xid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv4 = zext i32 %tid to i64
  %conv11 = zext i32 %create_options to i64
  %conv15 = zext i32 %desired_access to i64
  %conv19 = zext i32 %rc to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %conv11, i64 noundef %conv15, i64 noundef %conv19) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_open_done_class(ptr noundef %__data, i32 noundef %xid, i64 noundef %fid, i32 noundef %tid, i64 noundef %sesid, i32 noundef %create_options, i32 noundef %desired_access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %xid to i64
  %conv7 = zext i32 %tid to i64
  %conv14 = zext i32 %create_options to i64
  %conv18 = zext i32 %desired_access to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %fid, i64 noundef %conv7, i64 noundef %sesid, i64 noundef %conv14, i64 noundef %conv18) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_lease_done_class(ptr noundef %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %lease_state to i64
  %conv4 = zext i32 %tid to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_lease_err_class(ptr noundef %__data, i32 noundef %lease_state, i32 noundef %tid, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %lease_state to i64
  %conv4 = zext i32 %tid to i64
  %conv17 = zext i32 %rc to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %sesid, i64 noundef %lease_key_low, i64 noundef %lease_key_high, i64 noundef %conv17) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_connect_class(ptr noundef %__data, ptr noundef %hostname, i64 noundef %conn_id, ptr noundef %dst_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hostname to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %dst_addr to i32
  %conv7 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conn_id, i64 noundef %conv7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_connect_err_class(ptr noundef %__data, ptr noundef %hostname, i64 noundef %conn_id, ptr noundef %dst_addr, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hostname to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %dst_addr to i32
  %conv7 = zext i32 %1 to i64
  %conv11 = zext i32 %rc to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conn_id, i64 noundef %conv7, i64 noundef %conv11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_reconnect_class(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hostname to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_smb3_credit_class(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hostname to i32
  %conv = zext i32 %0 to i64
  %conv10 = zext i32 %credits to i64
  %conv14 = zext i32 %credits_to_add to i64
  %conv18 = zext i32 %in_flight to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %currmid, i64 noundef %conn_id, i64 noundef %conv, i64 noundef %conv10, i64 noundef %conv14, i64 noundef %conv18) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_rw_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  %len = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_rw_err_class, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i64 noundef %11, i32 noundef %13, i32 noundef %15) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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
define internal i32 @trace_raw_output_smb3_rw_done_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  %len = getelementptr inbounds %struct.trace_event_raw_smb3_rw_done_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i64 noundef %11, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_fd_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_fd_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_fd_err_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i32 noundef %11) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_inf_enter_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %infclass = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %infclass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %infclass, align 8
  %conv = zext i8 %11 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_smb3_inf_enter_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i32 noundef %conv, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_inf_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %infclass = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %infclass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %infclass, align 8
  %conv = zext i8 %11 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_inf_err_class, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i32 noundef %conv, i32 noundef %13, i32 noundef %15) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_inf_compound_enter_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 4
  %__data_loc_path = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_enter_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %__data_loc_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_path, align 8
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i32 noundef %3, i64 noundef %5, i32 noundef %7, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_inf_compound_done_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_done_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, i32 noundef %3, i64 noundef %5, i32 noundef %7) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_inf_compound_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_inf_compound_err_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, i32 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_cmd_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 8
  %cmd = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd, align 8
  %conv = zext i16 %7 to i32
  %mid = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mid, align 8
  %status = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_err_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, i64 noundef %3, i32 noundef %5, i32 noundef %conv, i64 noundef %9, i32 noundef %11, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_cmd_done_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 8
  %cmd = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd, align 8
  %conv = zext i16 %7 to i32
  %mid = getelementptr inbounds %struct.trace_event_raw_smb3_cmd_done_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mid, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i64 noundef %3, i32 noundef %5, i32 noundef %conv, i64 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_mid_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cmd = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd, align 8
  %conv = zext i16 %3 to i32
  %mid = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mid, align 8
  %pid = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %when_sent = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %when_sent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %when_sent, align 4
  %when_received = getelementptr inbounds %struct.trace_event_raw_smb3_mid_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %when_received to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %when_received, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %conv, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_exit_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_func_name = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_func_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_func_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_exit_err_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_sync_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ino = getelementptr inbounds %struct.trace_event_raw_smb3_sync_err_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ino, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_sync_err_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_enter_exit_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_func_name = getelementptr inbounds %struct.trace_event_raw_smb3_enter_exit_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_func_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_func_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_enter_exit_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.41, ptr noundef %add.ptr, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_tcon_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_name, align 8
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_tcon_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, i32 noundef %3, i64 noundef %5, i32 noundef %7, ptr noundef %add.ptr, i32 noundef %11) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_open_enter_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 4
  %create_options = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %create_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %create_options, align 8
  %desired_access = getelementptr inbounds %struct.trace_event_raw_smb3_open_enter_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %desired_access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desired_access, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.46, i32 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_open_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 4
  %create_options = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %create_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %create_options, align 8
  %desired_access = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %desired_access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desired_access, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_open_err_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rc, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, i32 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_open_done_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 8
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid, align 8
  %fid = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fid, align 8
  %create_options = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %create_options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %create_options, align 8
  %desired_access = getelementptr inbounds %struct.trace_event_raw_smb3_open_done_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %desired_access to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desired_access, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.48, i32 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i32 noundef %11, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_lease_done_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 4
  %lease_key_high = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %lease_key_high to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lease_key_high, align 8
  %lease_key_low = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lease_key_low to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lease_key_low, align 8
  %lease_state = getelementptr inbounds %struct.trace_event_raw_smb3_lease_done_class, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %lease_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lease_state, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.52, i64 noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %9, i32 noundef %11) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_lease_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %sesid = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sesid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sesid, align 8
  %tid = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 4
  %lease_key_high = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %lease_key_high to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lease_key_high, align 8
  %lease_key_low = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lease_key_low to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lease_key_low, align 8
  %lease_state = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %lease_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lease_state, align 8
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_lease_err_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rc, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.53, i64 noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %9, i32 noundef %11, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_connect_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %conn_id = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %conn_id, align 8
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_hostname, align 8
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %dst_addr = getelementptr inbounds %struct.trace_event_raw_smb3_connect_class, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.58, i64 noundef %3, ptr noundef %add.ptr, ptr noundef %dst_addr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_connect_err_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %rc = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rc, align 8
  %conn_id = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %conn_id, align 8
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_hostname, align 8
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %dst_addr = getelementptr inbounds %struct.trace_event_raw_smb3_connect_err_class, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.59, i32 noundef %3, i64 noundef %5, ptr noundef %add.ptr, ptr noundef %dst_addr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_reconnect_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %conn_id = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %conn_id, align 8
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_hostname, align 8
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %currmid = getelementptr inbounds %struct.trace_event_raw_smb3_reconnect_class, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %currmid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %currmid, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.61, i64 noundef %3, ptr noundef %add.ptr, i64 noundef %7) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smb3_credit_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %conn_id = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %conn_id, align 8
  %__data_loc_hostname = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_hostname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_hostname, align 8
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %currmid = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %currmid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %currmid, align 8
  %credits = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %credits, align 4
  %credits_to_add = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %credits_to_add to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %credits_to_add, align 8
  %in_flight = getelementptr inbounds %struct.trace_event_raw_smb3_credit_class, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_flight, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i64 noundef %3, ptr noundef %add.ptr, i64 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 229)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 229)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !384, !385, !386, !387, !388, !389, !390, !391, !392, !394, !395, !396, !397, !398, !399, !400, !402, !403, !404, !405, !406, !407, !408, !409, !410, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483, !484, !486, !487, !488, !489, !490, !491, !492, !494, !495, !496, !498, !499, !500, !502, !503, !504, !505, !506, !508, !509, !510, !511, !512, !514, !515, !516, !518, !519, !520, !521, !522, !524, !525, !526, !527, !528, !530, !531, !532, !533, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !548, !549, !550, !552, !553, !554, !555, !556, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!llvm.named.register.sp = !{!889}
!llvm.module.flags = !{!890, !891, !892, !893, !894, !895, !896, !897}
!llvm.ident = !{!898}

!0 = !{ptr @__tracepoint_smb3_write_err, !1, !"__tracepoint_smb3_write_err", i1 false, i1 false}
!1 = !{!"../fs/cifs/./trace.h", i32 66, i32 1}
!2 = !{ptr @__tracepoint_ptr_smb3_write_err, !1, !"__tracepoint_ptr_smb3_write_err", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_smb3_write_err, !1, !"__SCK__tp_func_smb3_write_err", i1 false, i1 false}
!4 = !{ptr @__tracepoint_smb3_read_err, !5, !"__tracepoint_smb3_read_err", i1 false, i1 false}
!5 = !{!"../fs/cifs/./trace.h", i32 67, i32 1}
!6 = !{ptr @__tracepoint_ptr_smb3_read_err, !5, !"__tracepoint_ptr_smb3_read_err", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_smb3_read_err, !5, !"__SCK__tp_func_smb3_read_err", i1 false, i1 false}
!8 = !{ptr @__tracepoint_smb3_query_dir_err, !9, !"__tracepoint_smb3_query_dir_err", i1 false, i1 false}
!9 = !{!"../fs/cifs/./trace.h", i32 68, i32 1}
!10 = !{ptr @__tracepoint_ptr_smb3_query_dir_err, !9, !"__tracepoint_ptr_smb3_query_dir_err", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_smb3_query_dir_err, !9, !"__SCK__tp_func_smb3_query_dir_err", i1 false, i1 false}
!12 = !{ptr @__tracepoint_smb3_zero_err, !13, !"__tracepoint_smb3_zero_err", i1 false, i1 false}
!13 = !{!"../fs/cifs/./trace.h", i32 69, i32 1}
!14 = !{ptr @__tracepoint_ptr_smb3_zero_err, !13, !"__tracepoint_ptr_smb3_zero_err", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_smb3_zero_err, !13, !"__SCK__tp_func_smb3_zero_err", i1 false, i1 false}
!16 = !{ptr @__tracepoint_smb3_falloc_err, !17, !"__tracepoint_smb3_falloc_err", i1 false, i1 false}
!17 = !{!"../fs/cifs/./trace.h", i32 70, i32 1}
!18 = !{ptr @__tracepoint_ptr_smb3_falloc_err, !17, !"__tracepoint_ptr_smb3_falloc_err", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_smb3_falloc_err, !17, !"__SCK__tp_func_smb3_falloc_err", i1 false, i1 false}
!20 = !{ptr @__tracepoint_smb3_write_enter, !21, !"__tracepoint_smb3_write_enter", i1 false, i1 false}
!21 = !{!"../fs/cifs/./trace.h", i32 113, i32 1}
!22 = !{ptr @__tracepoint_ptr_smb3_write_enter, !21, !"__tracepoint_ptr_smb3_write_enter", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_smb3_write_enter, !21, !"__SCK__tp_func_smb3_write_enter", i1 false, i1 false}
!24 = !{ptr @__tracepoint_smb3_read_enter, !25, !"__tracepoint_smb3_read_enter", i1 false, i1 false}
!25 = !{!"../fs/cifs/./trace.h", i32 114, i32 1}
!26 = !{ptr @__tracepoint_ptr_smb3_read_enter, !25, !"__tracepoint_ptr_smb3_read_enter", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_smb3_read_enter, !25, !"__SCK__tp_func_smb3_read_enter", i1 false, i1 false}
!28 = !{ptr @__tracepoint_smb3_query_dir_enter, !29, !"__tracepoint_smb3_query_dir_enter", i1 false, i1 false}
!29 = !{!"../fs/cifs/./trace.h", i32 115, i32 1}
!30 = !{ptr @__tracepoint_ptr_smb3_query_dir_enter, !29, !"__tracepoint_ptr_smb3_query_dir_enter", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_smb3_query_dir_enter, !29, !"__SCK__tp_func_smb3_query_dir_enter", i1 false, i1 false}
!32 = !{ptr @__tracepoint_smb3_zero_enter, !33, !"__tracepoint_smb3_zero_enter", i1 false, i1 false}
!33 = !{!"../fs/cifs/./trace.h", i32 116, i32 1}
!34 = !{ptr @__tracepoint_ptr_smb3_zero_enter, !33, !"__tracepoint_ptr_smb3_zero_enter", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_smb3_zero_enter, !33, !"__SCK__tp_func_smb3_zero_enter", i1 false, i1 false}
!36 = !{ptr @__tracepoint_smb3_falloc_enter, !37, !"__tracepoint_smb3_falloc_enter", i1 false, i1 false}
!37 = !{!"../fs/cifs/./trace.h", i32 117, i32 1}
!38 = !{ptr @__tracepoint_ptr_smb3_falloc_enter, !37, !"__tracepoint_ptr_smb3_falloc_enter", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_smb3_falloc_enter, !37, !"__SCK__tp_func_smb3_falloc_enter", i1 false, i1 false}
!40 = !{ptr @__tracepoint_smb3_write_done, !41, !"__tracepoint_smb3_write_done", i1 false, i1 false}
!41 = !{!"../fs/cifs/./trace.h", i32 118, i32 1}
!42 = !{ptr @__tracepoint_ptr_smb3_write_done, !41, !"__tracepoint_ptr_smb3_write_done", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_smb3_write_done, !41, !"__SCK__tp_func_smb3_write_done", i1 false, i1 false}
!44 = !{ptr @__tracepoint_smb3_read_done, !45, !"__tracepoint_smb3_read_done", i1 false, i1 false}
!45 = !{!"../fs/cifs/./trace.h", i32 119, i32 1}
!46 = !{ptr @__tracepoint_ptr_smb3_read_done, !45, !"__tracepoint_ptr_smb3_read_done", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_smb3_read_done, !45, !"__SCK__tp_func_smb3_read_done", i1 false, i1 false}
!48 = !{ptr @__tracepoint_smb3_query_dir_done, !49, !"__tracepoint_smb3_query_dir_done", i1 false, i1 false}
!49 = !{!"../fs/cifs/./trace.h", i32 120, i32 1}
!50 = !{ptr @__tracepoint_ptr_smb3_query_dir_done, !49, !"__tracepoint_ptr_smb3_query_dir_done", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_smb3_query_dir_done, !49, !"__SCK__tp_func_smb3_query_dir_done", i1 false, i1 false}
!52 = !{ptr @__tracepoint_smb3_zero_done, !53, !"__tracepoint_smb3_zero_done", i1 false, i1 false}
!53 = !{!"../fs/cifs/./trace.h", i32 121, i32 1}
!54 = !{ptr @__tracepoint_ptr_smb3_zero_done, !53, !"__tracepoint_ptr_smb3_zero_done", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_smb3_zero_done, !53, !"__SCK__tp_func_smb3_zero_done", i1 false, i1 false}
!56 = !{ptr @__tracepoint_smb3_falloc_done, !57, !"__tracepoint_smb3_falloc_done", i1 false, i1 false}
!57 = !{!"../fs/cifs/./trace.h", i32 122, i32 1}
!58 = !{ptr @__tracepoint_ptr_smb3_falloc_done, !57, !"__tracepoint_ptr_smb3_falloc_done", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_smb3_falloc_done, !57, !"__SCK__tp_func_smb3_falloc_done", i1 false, i1 false}
!60 = !{ptr @__tracepoint_smb3_flush_enter, !61, !"__tracepoint_smb3_flush_enter", i1 false, i1 false}
!61 = !{!"../fs/cifs/./trace.h", i32 157, i32 1}
!62 = !{ptr @__tracepoint_ptr_smb3_flush_enter, !61, !"__tracepoint_ptr_smb3_flush_enter", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_smb3_flush_enter, !61, !"__SCK__tp_func_smb3_flush_enter", i1 false, i1 false}
!64 = !{ptr @__tracepoint_smb3_flush_done, !65, !"__tracepoint_smb3_flush_done", i1 false, i1 false}
!65 = !{!"../fs/cifs/./trace.h", i32 158, i32 1}
!66 = !{ptr @__tracepoint_ptr_smb3_flush_done, !65, !"__tracepoint_ptr_smb3_flush_done", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_smb3_flush_done, !65, !"__SCK__tp_func_smb3_flush_done", i1 false, i1 false}
!68 = !{ptr @__tracepoint_smb3_close_enter, !69, !"__tracepoint_smb3_close_enter", i1 false, i1 false}
!69 = !{!"../fs/cifs/./trace.h", i32 159, i32 1}
!70 = !{ptr @__tracepoint_ptr_smb3_close_enter, !69, !"__tracepoint_ptr_smb3_close_enter", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_smb3_close_enter, !69, !"__SCK__tp_func_smb3_close_enter", i1 false, i1 false}
!72 = !{ptr @__tracepoint_smb3_close_done, !73, !"__tracepoint_smb3_close_done", i1 false, i1 false}
!73 = !{!"../fs/cifs/./trace.h", i32 160, i32 1}
!74 = !{ptr @__tracepoint_ptr_smb3_close_done, !73, !"__tracepoint_ptr_smb3_close_done", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_smb3_close_done, !73, !"__SCK__tp_func_smb3_close_done", i1 false, i1 false}
!76 = !{ptr @__tracepoint_smb3_flush_err, !77, !"__tracepoint_smb3_flush_err", i1 false, i1 false}
!77 = !{!"../fs/cifs/./trace.h", i32 197, i32 1}
!78 = !{ptr @__tracepoint_ptr_smb3_flush_err, !77, !"__tracepoint_ptr_smb3_flush_err", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_smb3_flush_err, !77, !"__SCK__tp_func_smb3_flush_err", i1 false, i1 false}
!80 = !{ptr @__tracepoint_smb3_lock_err, !81, !"__tracepoint_smb3_lock_err", i1 false, i1 false}
!81 = !{!"../fs/cifs/./trace.h", i32 198, i32 1}
!82 = !{ptr @__tracepoint_ptr_smb3_lock_err, !81, !"__tracepoint_ptr_smb3_lock_err", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_smb3_lock_err, !81, !"__SCK__tp_func_smb3_lock_err", i1 false, i1 false}
!84 = !{ptr @__tracepoint_smb3_close_err, !85, !"__tracepoint_smb3_close_err", i1 false, i1 false}
!85 = !{!"../fs/cifs/./trace.h", i32 199, i32 1}
!86 = !{ptr @__tracepoint_ptr_smb3_close_err, !85, !"__tracepoint_ptr_smb3_close_err", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_smb3_close_err, !85, !"__SCK__tp_func_smb3_close_err", i1 false, i1 false}
!88 = !{ptr @__tracepoint_smb3_query_info_enter, !89, !"__tracepoint_smb3_query_info_enter", i1 false, i1 false}
!89 = !{!"../fs/cifs/./trace.h", i32 243, i32 1}
!90 = !{ptr @__tracepoint_ptr_smb3_query_info_enter, !89, !"__tracepoint_ptr_smb3_query_info_enter", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_smb3_query_info_enter, !89, !"__SCK__tp_func_smb3_query_info_enter", i1 false, i1 false}
!92 = !{ptr @__tracepoint_smb3_query_info_done, !93, !"__tracepoint_smb3_query_info_done", i1 false, i1 false}
!93 = !{!"../fs/cifs/./trace.h", i32 244, i32 1}
!94 = !{ptr @__tracepoint_ptr_smb3_query_info_done, !93, !"__tracepoint_ptr_smb3_query_info_done", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_smb3_query_info_done, !93, !"__SCK__tp_func_smb3_query_info_done", i1 false, i1 false}
!96 = !{ptr @__tracepoint_smb3_notify_enter, !97, !"__tracepoint_smb3_notify_enter", i1 false, i1 false}
!97 = !{!"../fs/cifs/./trace.h", i32 245, i32 1}
!98 = !{ptr @__tracepoint_ptr_smb3_notify_enter, !97, !"__tracepoint_ptr_smb3_notify_enter", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_smb3_notify_enter, !97, !"__SCK__tp_func_smb3_notify_enter", i1 false, i1 false}
!100 = !{ptr @__tracepoint_smb3_notify_done, !101, !"__tracepoint_smb3_notify_done", i1 false, i1 false}
!101 = !{!"../fs/cifs/./trace.h", i32 246, i32 1}
!102 = !{ptr @__tracepoint_ptr_smb3_notify_done, !101, !"__tracepoint_ptr_smb3_notify_done", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_smb3_notify_done, !101, !"__SCK__tp_func_smb3_notify_done", i1 false, i1 false}
!104 = !{ptr @__tracepoint_smb3_query_info_err, !105, !"__tracepoint_smb3_query_info_err", i1 false, i1 false}
!105 = !{!"../fs/cifs/./trace.h", i32 291, i32 1}
!106 = !{ptr @__tracepoint_ptr_smb3_query_info_err, !105, !"__tracepoint_ptr_smb3_query_info_err", i1 false, i1 false}
!107 = !{ptr @__SCK__tp_func_smb3_query_info_err, !105, !"__SCK__tp_func_smb3_query_info_err", i1 false, i1 false}
!108 = !{ptr @__tracepoint_smb3_set_info_err, !109, !"__tracepoint_smb3_set_info_err", i1 false, i1 false}
!109 = !{!"../fs/cifs/./trace.h", i32 292, i32 1}
!110 = !{ptr @__tracepoint_ptr_smb3_set_info_err, !109, !"__tracepoint_ptr_smb3_set_info_err", i1 false, i1 false}
!111 = !{ptr @__SCK__tp_func_smb3_set_info_err, !109, !"__SCK__tp_func_smb3_set_info_err", i1 false, i1 false}
!112 = !{ptr @__tracepoint_smb3_notify_err, !113, !"__tracepoint_smb3_notify_err", i1 false, i1 false}
!113 = !{!"../fs/cifs/./trace.h", i32 293, i32 1}
!114 = !{ptr @__tracepoint_ptr_smb3_notify_err, !113, !"__tracepoint_ptr_smb3_notify_err", i1 false, i1 false}
!115 = !{ptr @__SCK__tp_func_smb3_notify_err, !113, !"__SCK__tp_func_smb3_notify_err", i1 false, i1 false}
!116 = !{ptr @__tracepoint_smb3_fsctl_err, !117, !"__tracepoint_smb3_fsctl_err", i1 false, i1 false}
!117 = !{!"../fs/cifs/./trace.h", i32 294, i32 1}
!118 = !{ptr @__tracepoint_ptr_smb3_fsctl_err, !117, !"__tracepoint_ptr_smb3_fsctl_err", i1 false, i1 false}
!119 = !{ptr @__SCK__tp_func_smb3_fsctl_err, !117, !"__SCK__tp_func_smb3_fsctl_err", i1 false, i1 false}
!120 = !{ptr @__tracepoint_smb3_query_info_compound_enter, !121, !"__tracepoint_smb3_query_info_compound_enter", i1 false, i1 false}
!121 = !{!"../fs/cifs/./trace.h", i32 327, i32 1}
!122 = !{ptr @__tracepoint_ptr_smb3_query_info_compound_enter, !121, !"__tracepoint_ptr_smb3_query_info_compound_enter", i1 false, i1 false}
!123 = !{ptr @__SCK__tp_func_smb3_query_info_compound_enter, !121, !"__SCK__tp_func_smb3_query_info_compound_enter", i1 false, i1 false}
!124 = !{ptr @__tracepoint_smb3_posix_query_info_compound_enter, !125, !"__tracepoint_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!125 = !{!"../fs/cifs/./trace.h", i32 328, i32 1}
!126 = !{ptr @__tracepoint_ptr_smb3_posix_query_info_compound_enter, !125, !"__tracepoint_ptr_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!127 = !{ptr @__SCK__tp_func_smb3_posix_query_info_compound_enter, !125, !"__SCK__tp_func_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!128 = !{ptr @__tracepoint_smb3_hardlink_enter, !129, !"__tracepoint_smb3_hardlink_enter", i1 false, i1 false}
!129 = !{!"../fs/cifs/./trace.h", i32 329, i32 1}
!130 = !{ptr @__tracepoint_ptr_smb3_hardlink_enter, !129, !"__tracepoint_ptr_smb3_hardlink_enter", i1 false, i1 false}
!131 = !{ptr @__SCK__tp_func_smb3_hardlink_enter, !129, !"__SCK__tp_func_smb3_hardlink_enter", i1 false, i1 false}
!132 = !{ptr @__tracepoint_smb3_rename_enter, !133, !"__tracepoint_smb3_rename_enter", i1 false, i1 false}
!133 = !{!"../fs/cifs/./trace.h", i32 330, i32 1}
!134 = !{ptr @__tracepoint_ptr_smb3_rename_enter, !133, !"__tracepoint_ptr_smb3_rename_enter", i1 false, i1 false}
!135 = !{ptr @__SCK__tp_func_smb3_rename_enter, !133, !"__SCK__tp_func_smb3_rename_enter", i1 false, i1 false}
!136 = !{ptr @__tracepoint_smb3_rmdir_enter, !137, !"__tracepoint_smb3_rmdir_enter", i1 false, i1 false}
!137 = !{!"../fs/cifs/./trace.h", i32 331, i32 1}
!138 = !{ptr @__tracepoint_ptr_smb3_rmdir_enter, !137, !"__tracepoint_ptr_smb3_rmdir_enter", i1 false, i1 false}
!139 = !{ptr @__SCK__tp_func_smb3_rmdir_enter, !137, !"__SCK__tp_func_smb3_rmdir_enter", i1 false, i1 false}
!140 = !{ptr @__tracepoint_smb3_set_eof_enter, !141, !"__tracepoint_smb3_set_eof_enter", i1 false, i1 false}
!141 = !{!"../fs/cifs/./trace.h", i32 332, i32 1}
!142 = !{ptr @__tracepoint_ptr_smb3_set_eof_enter, !141, !"__tracepoint_ptr_smb3_set_eof_enter", i1 false, i1 false}
!143 = !{ptr @__SCK__tp_func_smb3_set_eof_enter, !141, !"__SCK__tp_func_smb3_set_eof_enter", i1 false, i1 false}
!144 = !{ptr @__tracepoint_smb3_set_info_compound_enter, !145, !"__tracepoint_smb3_set_info_compound_enter", i1 false, i1 false}
!145 = !{!"../fs/cifs/./trace.h", i32 333, i32 1}
!146 = !{ptr @__tracepoint_ptr_smb3_set_info_compound_enter, !145, !"__tracepoint_ptr_smb3_set_info_compound_enter", i1 false, i1 false}
!147 = !{ptr @__SCK__tp_func_smb3_set_info_compound_enter, !145, !"__SCK__tp_func_smb3_set_info_compound_enter", i1 false, i1 false}
!148 = !{ptr @__tracepoint_smb3_delete_enter, !149, !"__tracepoint_smb3_delete_enter", i1 false, i1 false}
!149 = !{!"../fs/cifs/./trace.h", i32 334, i32 1}
!150 = !{ptr @__tracepoint_ptr_smb3_delete_enter, !149, !"__tracepoint_ptr_smb3_delete_enter", i1 false, i1 false}
!151 = !{ptr @__SCK__tp_func_smb3_delete_enter, !149, !"__SCK__tp_func_smb3_delete_enter", i1 false, i1 false}
!152 = !{ptr @__tracepoint_smb3_mkdir_enter, !153, !"__tracepoint_smb3_mkdir_enter", i1 false, i1 false}
!153 = !{!"../fs/cifs/./trace.h", i32 335, i32 1}
!154 = !{ptr @__tracepoint_ptr_smb3_mkdir_enter, !153, !"__tracepoint_ptr_smb3_mkdir_enter", i1 false, i1 false}
!155 = !{ptr @__SCK__tp_func_smb3_mkdir_enter, !153, !"__SCK__tp_func_smb3_mkdir_enter", i1 false, i1 false}
!156 = !{ptr @__tracepoint_smb3_query_info_compound_done, !157, !"__tracepoint_smb3_query_info_compound_done", i1 false, i1 false}
!157 = !{!"../fs/cifs/./trace.h", i32 364, i32 1}
!158 = !{ptr @__tracepoint_ptr_smb3_query_info_compound_done, !157, !"__tracepoint_ptr_smb3_query_info_compound_done", i1 false, i1 false}
!159 = !{ptr @__SCK__tp_func_smb3_query_info_compound_done, !157, !"__SCK__tp_func_smb3_query_info_compound_done", i1 false, i1 false}
!160 = !{ptr @__tracepoint_smb3_posix_query_info_compound_done, !161, !"__tracepoint_smb3_posix_query_info_compound_done", i1 false, i1 false}
!161 = !{!"../fs/cifs/./trace.h", i32 365, i32 1}
!162 = !{ptr @__tracepoint_ptr_smb3_posix_query_info_compound_done, !161, !"__tracepoint_ptr_smb3_posix_query_info_compound_done", i1 false, i1 false}
!163 = !{ptr @__SCK__tp_func_smb3_posix_query_info_compound_done, !161, !"__SCK__tp_func_smb3_posix_query_info_compound_done", i1 false, i1 false}
!164 = !{ptr @__tracepoint_smb3_hardlink_done, !165, !"__tracepoint_smb3_hardlink_done", i1 false, i1 false}
!165 = !{!"../fs/cifs/./trace.h", i32 366, i32 1}
!166 = !{ptr @__tracepoint_ptr_smb3_hardlink_done, !165, !"__tracepoint_ptr_smb3_hardlink_done", i1 false, i1 false}
!167 = !{ptr @__SCK__tp_func_smb3_hardlink_done, !165, !"__SCK__tp_func_smb3_hardlink_done", i1 false, i1 false}
!168 = !{ptr @__tracepoint_smb3_rename_done, !169, !"__tracepoint_smb3_rename_done", i1 false, i1 false}
!169 = !{!"../fs/cifs/./trace.h", i32 367, i32 1}
!170 = !{ptr @__tracepoint_ptr_smb3_rename_done, !169, !"__tracepoint_ptr_smb3_rename_done", i1 false, i1 false}
!171 = !{ptr @__SCK__tp_func_smb3_rename_done, !169, !"__SCK__tp_func_smb3_rename_done", i1 false, i1 false}
!172 = !{ptr @__tracepoint_smb3_rmdir_done, !173, !"__tracepoint_smb3_rmdir_done", i1 false, i1 false}
!173 = !{!"../fs/cifs/./trace.h", i32 368, i32 1}
!174 = !{ptr @__tracepoint_ptr_smb3_rmdir_done, !173, !"__tracepoint_ptr_smb3_rmdir_done", i1 false, i1 false}
!175 = !{ptr @__SCK__tp_func_smb3_rmdir_done, !173, !"__SCK__tp_func_smb3_rmdir_done", i1 false, i1 false}
!176 = !{ptr @__tracepoint_smb3_set_eof_done, !177, !"__tracepoint_smb3_set_eof_done", i1 false, i1 false}
!177 = !{!"../fs/cifs/./trace.h", i32 369, i32 1}
!178 = !{ptr @__tracepoint_ptr_smb3_set_eof_done, !177, !"__tracepoint_ptr_smb3_set_eof_done", i1 false, i1 false}
!179 = !{ptr @__SCK__tp_func_smb3_set_eof_done, !177, !"__SCK__tp_func_smb3_set_eof_done", i1 false, i1 false}
!180 = !{ptr @__tracepoint_smb3_set_info_compound_done, !181, !"__tracepoint_smb3_set_info_compound_done", i1 false, i1 false}
!181 = !{!"../fs/cifs/./trace.h", i32 370, i32 1}
!182 = !{ptr @__tracepoint_ptr_smb3_set_info_compound_done, !181, !"__tracepoint_ptr_smb3_set_info_compound_done", i1 false, i1 false}
!183 = !{ptr @__SCK__tp_func_smb3_set_info_compound_done, !181, !"__SCK__tp_func_smb3_set_info_compound_done", i1 false, i1 false}
!184 = !{ptr @__tracepoint_smb3_delete_done, !185, !"__tracepoint_smb3_delete_done", i1 false, i1 false}
!185 = !{!"../fs/cifs/./trace.h", i32 371, i32 1}
!186 = !{ptr @__tracepoint_ptr_smb3_delete_done, !185, !"__tracepoint_ptr_smb3_delete_done", i1 false, i1 false}
!187 = !{ptr @__SCK__tp_func_smb3_delete_done, !185, !"__SCK__tp_func_smb3_delete_done", i1 false, i1 false}
!188 = !{ptr @__tracepoint_smb3_mkdir_done, !189, !"__tracepoint_smb3_mkdir_done", i1 false, i1 false}
!189 = !{!"../fs/cifs/./trace.h", i32 372, i32 1}
!190 = !{ptr @__tracepoint_ptr_smb3_mkdir_done, !189, !"__tracepoint_ptr_smb3_mkdir_done", i1 false, i1 false}
!191 = !{ptr @__SCK__tp_func_smb3_mkdir_done, !189, !"__SCK__tp_func_smb3_mkdir_done", i1 false, i1 false}
!192 = !{ptr @__tracepoint_smb3_query_info_compound_err, !193, !"__tracepoint_smb3_query_info_compound_err", i1 false, i1 false}
!193 = !{!"../fs/cifs/./trace.h", i32 406, i32 1}
!194 = !{ptr @__tracepoint_ptr_smb3_query_info_compound_err, !193, !"__tracepoint_ptr_smb3_query_info_compound_err", i1 false, i1 false}
!195 = !{ptr @__SCK__tp_func_smb3_query_info_compound_err, !193, !"__SCK__tp_func_smb3_query_info_compound_err", i1 false, i1 false}
!196 = !{ptr @__tracepoint_smb3_posix_query_info_compound_err, !197, !"__tracepoint_smb3_posix_query_info_compound_err", i1 false, i1 false}
!197 = !{!"../fs/cifs/./trace.h", i32 407, i32 1}
!198 = !{ptr @__tracepoint_ptr_smb3_posix_query_info_compound_err, !197, !"__tracepoint_ptr_smb3_posix_query_info_compound_err", i1 false, i1 false}
!199 = !{ptr @__SCK__tp_func_smb3_posix_query_info_compound_err, !197, !"__SCK__tp_func_smb3_posix_query_info_compound_err", i1 false, i1 false}
!200 = !{ptr @__tracepoint_smb3_hardlink_err, !201, !"__tracepoint_smb3_hardlink_err", i1 false, i1 false}
!201 = !{!"../fs/cifs/./trace.h", i32 408, i32 1}
!202 = !{ptr @__tracepoint_ptr_smb3_hardlink_err, !201, !"__tracepoint_ptr_smb3_hardlink_err", i1 false, i1 false}
!203 = !{ptr @__SCK__tp_func_smb3_hardlink_err, !201, !"__SCK__tp_func_smb3_hardlink_err", i1 false, i1 false}
!204 = !{ptr @__tracepoint_smb3_rename_err, !205, !"__tracepoint_smb3_rename_err", i1 false, i1 false}
!205 = !{!"../fs/cifs/./trace.h", i32 409, i32 1}
!206 = !{ptr @__tracepoint_ptr_smb3_rename_err, !205, !"__tracepoint_ptr_smb3_rename_err", i1 false, i1 false}
!207 = !{ptr @__SCK__tp_func_smb3_rename_err, !205, !"__SCK__tp_func_smb3_rename_err", i1 false, i1 false}
!208 = !{ptr @__tracepoint_smb3_rmdir_err, !209, !"__tracepoint_smb3_rmdir_err", i1 false, i1 false}
!209 = !{!"../fs/cifs/./trace.h", i32 410, i32 1}
!210 = !{ptr @__tracepoint_ptr_smb3_rmdir_err, !209, !"__tracepoint_ptr_smb3_rmdir_err", i1 false, i1 false}
!211 = !{ptr @__SCK__tp_func_smb3_rmdir_err, !209, !"__SCK__tp_func_smb3_rmdir_err", i1 false, i1 false}
!212 = !{ptr @__tracepoint_smb3_set_eof_err, !213, !"__tracepoint_smb3_set_eof_err", i1 false, i1 false}
!213 = !{!"../fs/cifs/./trace.h", i32 411, i32 1}
!214 = !{ptr @__tracepoint_ptr_smb3_set_eof_err, !213, !"__tracepoint_ptr_smb3_set_eof_err", i1 false, i1 false}
!215 = !{ptr @__SCK__tp_func_smb3_set_eof_err, !213, !"__SCK__tp_func_smb3_set_eof_err", i1 false, i1 false}
!216 = !{ptr @__tracepoint_smb3_set_info_compound_err, !217, !"__tracepoint_smb3_set_info_compound_err", i1 false, i1 false}
!217 = !{!"../fs/cifs/./trace.h", i32 412, i32 1}
!218 = !{ptr @__tracepoint_ptr_smb3_set_info_compound_err, !217, !"__tracepoint_ptr_smb3_set_info_compound_err", i1 false, i1 false}
!219 = !{ptr @__SCK__tp_func_smb3_set_info_compound_err, !217, !"__SCK__tp_func_smb3_set_info_compound_err", i1 false, i1 false}
!220 = !{ptr @__tracepoint_smb3_mkdir_err, !221, !"__tracepoint_smb3_mkdir_err", i1 false, i1 false}
!221 = !{!"../fs/cifs/./trace.h", i32 413, i32 1}
!222 = !{ptr @__tracepoint_ptr_smb3_mkdir_err, !221, !"__tracepoint_ptr_smb3_mkdir_err", i1 false, i1 false}
!223 = !{ptr @__SCK__tp_func_smb3_mkdir_err, !221, !"__SCK__tp_func_smb3_mkdir_err", i1 false, i1 false}
!224 = !{ptr @__tracepoint_smb3_delete_err, !225, !"__tracepoint_smb3_delete_err", i1 false, i1 false}
!225 = !{!"../fs/cifs/./trace.h", i32 414, i32 1}
!226 = !{ptr @__tracepoint_ptr_smb3_delete_err, !225, !"__tracepoint_ptr_smb3_delete_err", i1 false, i1 false}
!227 = !{ptr @__SCK__tp_func_smb3_delete_err, !225, !"__SCK__tp_func_smb3_delete_err", i1 false, i1 false}
!228 = !{ptr @__tracepoint_smb3_cmd_err, !229, !"__tracepoint_smb3_cmd_err", i1 false, i1 false}
!229 = !{!"../fs/cifs/./trace.h", i32 458, i32 1}
!230 = !{ptr @__tracepoint_ptr_smb3_cmd_err, !229, !"__tracepoint_ptr_smb3_cmd_err", i1 false, i1 false}
!231 = !{ptr @__SCK__tp_func_smb3_cmd_err, !229, !"__SCK__tp_func_smb3_cmd_err", i1 false, i1 false}
!232 = !{ptr @__tracepoint_smb3_cmd_enter, !233, !"__tracepoint_smb3_cmd_enter", i1 false, i1 false}
!233 = !{!"../fs/cifs/./trace.h", i32 491, i32 1}
!234 = !{ptr @__tracepoint_ptr_smb3_cmd_enter, !233, !"__tracepoint_ptr_smb3_cmd_enter", i1 false, i1 false}
!235 = !{ptr @__SCK__tp_func_smb3_cmd_enter, !233, !"__SCK__tp_func_smb3_cmd_enter", i1 false, i1 false}
!236 = !{ptr @__tracepoint_smb3_cmd_done, !237, !"__tracepoint_smb3_cmd_done", i1 false, i1 false}
!237 = !{!"../fs/cifs/./trace.h", i32 492, i32 1}
!238 = !{ptr @__tracepoint_ptr_smb3_cmd_done, !237, !"__tracepoint_ptr_smb3_cmd_done", i1 false, i1 false}
!239 = !{ptr @__SCK__tp_func_smb3_cmd_done, !237, !"__SCK__tp_func_smb3_cmd_done", i1 false, i1 false}
!240 = !{ptr @__tracepoint_smb3_ses_expired, !241, !"__tracepoint_smb3_ses_expired", i1 false, i1 false}
!241 = !{!"../fs/cifs/./trace.h", i32 493, i32 1}
!242 = !{ptr @__tracepoint_ptr_smb3_ses_expired, !241, !"__tracepoint_ptr_smb3_ses_expired", i1 false, i1 false}
!243 = !{ptr @__SCK__tp_func_smb3_ses_expired, !241, !"__SCK__tp_func_smb3_ses_expired", i1 false, i1 false}
!244 = !{ptr @__tracepoint_smb3_slow_rsp, !245, !"__tracepoint_smb3_slow_rsp", i1 false, i1 false}
!245 = !{!"../fs/cifs/./trace.h", i32 530, i32 1}
!246 = !{ptr @__tracepoint_ptr_smb3_slow_rsp, !245, !"__tracepoint_ptr_smb3_slow_rsp", i1 false, i1 false}
!247 = !{ptr @__SCK__tp_func_smb3_slow_rsp, !245, !"__SCK__tp_func_smb3_slow_rsp", i1 false, i1 false}
!248 = !{ptr @__tracepoint_smb3_exit_err, !249, !"__tracepoint_smb3_exit_err", i1 false, i1 false}
!249 = !{!"../fs/cifs/./trace.h", i32 558, i32 1}
!250 = !{ptr @__tracepoint_ptr_smb3_exit_err, !249, !"__tracepoint_ptr_smb3_exit_err", i1 false, i1 false}
!251 = !{ptr @__SCK__tp_func_smb3_exit_err, !249, !"__SCK__tp_func_smb3_exit_err", i1 false, i1 false}
!252 = !{ptr @__tracepoint_cifs_fsync_err, !253, !"__tracepoint_cifs_fsync_err", i1 false, i1 false}
!253 = !{!"../fs/cifs/./trace.h", i32 583, i32 1}
!254 = !{ptr @__tracepoint_ptr_cifs_fsync_err, !253, !"__tracepoint_ptr_cifs_fsync_err", i1 false, i1 false}
!255 = !{ptr @__SCK__tp_func_cifs_fsync_err, !253, !"__SCK__tp_func_cifs_fsync_err", i1 false, i1 false}
!256 = !{ptr @__tracepoint_cifs_flush_err, !257, !"__tracepoint_cifs_flush_err", i1 false, i1 false}
!257 = !{!"../fs/cifs/./trace.h", i32 584, i32 1}
!258 = !{ptr @__tracepoint_ptr_cifs_flush_err, !257, !"__tracepoint_ptr_cifs_flush_err", i1 false, i1 false}
!259 = !{ptr @__SCK__tp_func_cifs_flush_err, !257, !"__SCK__tp_func_cifs_flush_err", i1 false, i1 false}
!260 = !{ptr @__tracepoint_smb3_enter, !261, !"__tracepoint_smb3_enter", i1 false, i1 false}
!261 = !{!"../fs/cifs/./trace.h", i32 609, i32 1}
!262 = !{ptr @__tracepoint_ptr_smb3_enter, !261, !"__tracepoint_ptr_smb3_enter", i1 false, i1 false}
!263 = !{ptr @__SCK__tp_func_smb3_enter, !261, !"__SCK__tp_func_smb3_enter", i1 false, i1 false}
!264 = !{ptr @__tracepoint_smb3_exit_done, !265, !"__tracepoint_smb3_exit_done", i1 false, i1 false}
!265 = !{!"../fs/cifs/./trace.h", i32 610, i32 1}
!266 = !{ptr @__tracepoint_ptr_smb3_exit_done, !265, !"__tracepoint_ptr_smb3_exit_done", i1 false, i1 false}
!267 = !{ptr @__SCK__tp_func_smb3_exit_done, !265, !"__SCK__tp_func_smb3_exit_done", i1 false, i1 false}
!268 = !{ptr @__tracepoint_smb3_tcon, !269, !"__tracepoint_smb3_tcon", i1 false, i1 false}
!269 = !{!"../fs/cifs/./trace.h", i32 651, i32 1}
!270 = !{ptr @__tracepoint_ptr_smb3_tcon, !269, !"__tracepoint_ptr_smb3_tcon", i1 false, i1 false}
!271 = !{ptr @__SCK__tp_func_smb3_tcon, !269, !"__SCK__tp_func_smb3_tcon", i1 false, i1 false}
!272 = !{ptr @__tracepoint_smb3_open_enter, !273, !"__tracepoint_smb3_open_enter", i1 false, i1 false}
!273 = !{!"../fs/cifs/./trace.h", i32 693, i32 1}
!274 = !{ptr @__tracepoint_ptr_smb3_open_enter, !273, !"__tracepoint_ptr_smb3_open_enter", i1 false, i1 false}
!275 = !{ptr @__SCK__tp_func_smb3_open_enter, !273, !"__SCK__tp_func_smb3_open_enter", i1 false, i1 false}
!276 = !{ptr @__tracepoint_smb3_posix_mkdir_enter, !277, !"__tracepoint_smb3_posix_mkdir_enter", i1 false, i1 false}
!277 = !{!"../fs/cifs/./trace.h", i32 694, i32 1}
!278 = !{ptr @__tracepoint_ptr_smb3_posix_mkdir_enter, !277, !"__tracepoint_ptr_smb3_posix_mkdir_enter", i1 false, i1 false}
!279 = !{ptr @__SCK__tp_func_smb3_posix_mkdir_enter, !277, !"__SCK__tp_func_smb3_posix_mkdir_enter", i1 false, i1 false}
!280 = !{ptr @__tracepoint_smb3_open_err, !281, !"__tracepoint_smb3_open_err", i1 false, i1 false}
!281 = !{!"../fs/cifs/./trace.h", i32 735, i32 1}
!282 = !{ptr @__tracepoint_ptr_smb3_open_err, !281, !"__tracepoint_ptr_smb3_open_err", i1 false, i1 false}
!283 = !{ptr @__SCK__tp_func_smb3_open_err, !281, !"__SCK__tp_func_smb3_open_err", i1 false, i1 false}
!284 = !{ptr @__tracepoint_smb3_posix_mkdir_err, !285, !"__tracepoint_smb3_posix_mkdir_err", i1 false, i1 false}
!285 = !{!"../fs/cifs/./trace.h", i32 736, i32 1}
!286 = !{ptr @__tracepoint_ptr_smb3_posix_mkdir_err, !285, !"__tracepoint_ptr_smb3_posix_mkdir_err", i1 false, i1 false}
!287 = !{ptr @__SCK__tp_func_smb3_posix_mkdir_err, !285, !"__SCK__tp_func_smb3_posix_mkdir_err", i1 false, i1 false}
!288 = !{ptr @__tracepoint_smb3_open_done, !289, !"__tracepoint_smb3_open_done", i1 false, i1 false}
!289 = !{!"../fs/cifs/./trace.h", i32 777, i32 1}
!290 = !{ptr @__tracepoint_ptr_smb3_open_done, !289, !"__tracepoint_ptr_smb3_open_done", i1 false, i1 false}
!291 = !{ptr @__SCK__tp_func_smb3_open_done, !289, !"__SCK__tp_func_smb3_open_done", i1 false, i1 false}
!292 = !{ptr @__tracepoint_smb3_posix_mkdir_done, !293, !"__tracepoint_smb3_posix_mkdir_done", i1 false, i1 false}
!293 = !{!"../fs/cifs/./trace.h", i32 778, i32 1}
!294 = !{ptr @__tracepoint_ptr_smb3_posix_mkdir_done, !293, !"__tracepoint_ptr_smb3_posix_mkdir_done", i1 false, i1 false}
!295 = !{ptr @__SCK__tp_func_smb3_posix_mkdir_done, !293, !"__SCK__tp_func_smb3_posix_mkdir_done", i1 false, i1 false}
!296 = !{ptr @__tracepoint_smb3_lease_done, !297, !"__tracepoint_smb3_lease_done", i1 false, i1 false}
!297 = !{!"../fs/cifs/./trace.h", i32 816, i32 1}
!298 = !{ptr @__tracepoint_ptr_smb3_lease_done, !297, !"__tracepoint_ptr_smb3_lease_done", i1 false, i1 false}
!299 = !{ptr @__SCK__tp_func_smb3_lease_done, !297, !"__SCK__tp_func_smb3_lease_done", i1 false, i1 false}
!300 = !{ptr @__tracepoint_smb3_lease_err, !301, !"__tracepoint_smb3_lease_err", i1 false, i1 false}
!301 = !{!"../fs/cifs/./trace.h", i32 857, i32 1}
!302 = !{ptr @__tracepoint_ptr_smb3_lease_err, !301, !"__tracepoint_ptr_smb3_lease_err", i1 false, i1 false}
!303 = !{ptr @__SCK__tp_func_smb3_lease_err, !301, !"__SCK__tp_func_smb3_lease_err", i1 false, i1 false}
!304 = !{ptr @__tracepoint_smb3_connect_done, !305, !"__tracepoint_smb3_connect_done", i1 false, i1 false}
!305 = !{!"../fs/cifs/./trace.h", i32 890, i32 1}
!306 = !{ptr @__tracepoint_ptr_smb3_connect_done, !305, !"__tracepoint_ptr_smb3_connect_done", i1 false, i1 false}
!307 = !{ptr @__SCK__tp_func_smb3_connect_done, !305, !"__SCK__tp_func_smb3_connect_done", i1 false, i1 false}
!308 = !{ptr @__tracepoint_smb3_connect_err, !309, !"__tracepoint_smb3_connect_err", i1 false, i1 false}
!309 = !{!"../fs/cifs/./trace.h", i32 926, i32 1}
!310 = !{ptr @__tracepoint_ptr_smb3_connect_err, !309, !"__tracepoint_ptr_smb3_connect_err", i1 false, i1 false}
!311 = !{ptr @__SCK__tp_func_smb3_connect_err, !309, !"__SCK__tp_func_smb3_connect_err", i1 false, i1 false}
!312 = !{ptr @__tracepoint_smb3_reconnect, !313, !"__tracepoint_smb3_reconnect", i1 false, i1 false}
!313 = !{!"../fs/cifs/./trace.h", i32 956, i32 1}
!314 = !{ptr @__tracepoint_ptr_smb3_reconnect, !313, !"__tracepoint_ptr_smb3_reconnect", i1 false, i1 false}
!315 = !{ptr @__SCK__tp_func_smb3_reconnect, !313, !"__SCK__tp_func_smb3_reconnect", i1 false, i1 false}
!316 = !{ptr @__tracepoint_smb3_partial_send_reconnect, !317, !"__tracepoint_smb3_partial_send_reconnect", i1 false, i1 false}
!317 = !{!"../fs/cifs/./trace.h", i32 957, i32 1}
!318 = !{ptr @__tracepoint_ptr_smb3_partial_send_reconnect, !317, !"__tracepoint_ptr_smb3_partial_send_reconnect", i1 false, i1 false}
!319 = !{ptr @__SCK__tp_func_smb3_partial_send_reconnect, !317, !"__SCK__tp_func_smb3_partial_send_reconnect", i1 false, i1 false}
!320 = !{ptr @__tracepoint_smb3_reconnect_with_invalid_credits, !321, !"__tracepoint_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!321 = !{!"../fs/cifs/./trace.h", i32 1003, i32 1}
!322 = !{ptr @__tracepoint_ptr_smb3_reconnect_with_invalid_credits, !321, !"__tracepoint_ptr_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!323 = !{ptr @__SCK__tp_func_smb3_reconnect_with_invalid_credits, !321, !"__SCK__tp_func_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!324 = !{ptr @__tracepoint_smb3_reconnect_detected, !325, !"__tracepoint_smb3_reconnect_detected", i1 false, i1 false}
!325 = !{!"../fs/cifs/./trace.h", i32 1004, i32 1}
!326 = !{ptr @__tracepoint_ptr_smb3_reconnect_detected, !325, !"__tracepoint_ptr_smb3_reconnect_detected", i1 false, i1 false}
!327 = !{ptr @__SCK__tp_func_smb3_reconnect_detected, !325, !"__SCK__tp_func_smb3_reconnect_detected", i1 false, i1 false}
!328 = !{ptr @__tracepoint_smb3_credit_timeout, !329, !"__tracepoint_smb3_credit_timeout", i1 false, i1 false}
!329 = !{!"../fs/cifs/./trace.h", i32 1005, i32 1}
!330 = !{ptr @__tracepoint_ptr_smb3_credit_timeout, !329, !"__tracepoint_ptr_smb3_credit_timeout", i1 false, i1 false}
!331 = !{ptr @__SCK__tp_func_smb3_credit_timeout, !329, !"__SCK__tp_func_smb3_credit_timeout", i1 false, i1 false}
!332 = !{ptr @__tracepoint_smb3_insufficient_credits, !333, !"__tracepoint_smb3_insufficient_credits", i1 false, i1 false}
!333 = !{!"../fs/cifs/./trace.h", i32 1006, i32 1}
!334 = !{ptr @__tracepoint_ptr_smb3_insufficient_credits, !333, !"__tracepoint_ptr_smb3_insufficient_credits", i1 false, i1 false}
!335 = !{ptr @__SCK__tp_func_smb3_insufficient_credits, !333, !"__SCK__tp_func_smb3_insufficient_credits", i1 false, i1 false}
!336 = !{ptr @__tracepoint_smb3_too_many_credits, !337, !"__tracepoint_smb3_too_many_credits", i1 false, i1 false}
!337 = !{!"../fs/cifs/./trace.h", i32 1007, i32 1}
!338 = !{ptr @__tracepoint_ptr_smb3_too_many_credits, !337, !"__tracepoint_ptr_smb3_too_many_credits", i1 false, i1 false}
!339 = !{ptr @__SCK__tp_func_smb3_too_many_credits, !337, !"__SCK__tp_func_smb3_too_many_credits", i1 false, i1 false}
!340 = !{ptr @__tracepoint_smb3_add_credits, !341, !"__tracepoint_smb3_add_credits", i1 false, i1 false}
!341 = !{!"../fs/cifs/./trace.h", i32 1008, i32 1}
!342 = !{ptr @__tracepoint_ptr_smb3_add_credits, !341, !"__tracepoint_ptr_smb3_add_credits", i1 false, i1 false}
!343 = !{ptr @__SCK__tp_func_smb3_add_credits, !341, !"__SCK__tp_func_smb3_add_credits", i1 false, i1 false}
!344 = !{ptr @__tracepoint_smb3_set_credits, !345, !"__tracepoint_smb3_set_credits", i1 false, i1 false}
!345 = !{!"../fs/cifs/./trace.h", i32 1009, i32 1}
!346 = !{ptr @__tracepoint_ptr_smb3_set_credits, !345, !"__tracepoint_ptr_smb3_set_credits", i1 false, i1 false}
!347 = !{ptr @__SCK__tp_func_smb3_set_credits, !345, !"__SCK__tp_func_smb3_set_credits", i1 false, i1 false}
!348 = !{ptr @event_class_smb3_rw_err_class, !349, !"event_class_smb3_rw_err_class", i1 false, i1 false}
!349 = !{!"../fs/cifs/./trace.h", i32 23, i32 1}
!350 = !{ptr @event_smb3_write_err, !1, !"event_smb3_write_err", i1 false, i1 false}
!351 = !{ptr @__event_smb3_write_err, !1, !"__event_smb3_write_err", i1 false, i1 false}
!352 = !{ptr @event_smb3_read_err, !5, !"event_smb3_read_err", i1 false, i1 false}
!353 = !{ptr @__event_smb3_read_err, !5, !"__event_smb3_read_err", i1 false, i1 false}
!354 = !{ptr @event_smb3_query_dir_err, !9, !"event_smb3_query_dir_err", i1 false, i1 false}
!355 = !{ptr @__event_smb3_query_dir_err, !9, !"__event_smb3_query_dir_err", i1 false, i1 false}
!356 = !{ptr @event_smb3_zero_err, !13, !"event_smb3_zero_err", i1 false, i1 false}
!357 = !{ptr @__event_smb3_zero_err, !13, !"__event_smb3_zero_err", i1 false, i1 false}
!358 = !{ptr @event_smb3_falloc_err, !17, !"event_smb3_falloc_err", i1 false, i1 false}
!359 = !{ptr @__event_smb3_falloc_err, !17, !"__event_smb3_falloc_err", i1 false, i1 false}
!360 = !{ptr @event_class_smb3_rw_done_class, !361, !"event_class_smb3_rw_done_class", i1 false, i1 false}
!361 = !{!"../fs/cifs/./trace.h", i32 74, i32 1}
!362 = !{ptr @event_smb3_write_enter, !21, !"event_smb3_write_enter", i1 false, i1 false}
!363 = !{ptr @__event_smb3_write_enter, !21, !"__event_smb3_write_enter", i1 false, i1 false}
!364 = !{ptr @event_smb3_read_enter, !25, !"event_smb3_read_enter", i1 false, i1 false}
!365 = !{ptr @__event_smb3_read_enter, !25, !"__event_smb3_read_enter", i1 false, i1 false}
!366 = !{ptr @event_smb3_query_dir_enter, !29, !"event_smb3_query_dir_enter", i1 false, i1 false}
!367 = !{ptr @__event_smb3_query_dir_enter, !29, !"__event_smb3_query_dir_enter", i1 false, i1 false}
!368 = !{ptr @event_smb3_zero_enter, !33, !"event_smb3_zero_enter", i1 false, i1 false}
!369 = !{ptr @__event_smb3_zero_enter, !33, !"__event_smb3_zero_enter", i1 false, i1 false}
!370 = !{ptr @event_smb3_falloc_enter, !37, !"event_smb3_falloc_enter", i1 false, i1 false}
!371 = !{ptr @__event_smb3_falloc_enter, !37, !"__event_smb3_falloc_enter", i1 false, i1 false}
!372 = !{ptr @event_smb3_write_done, !41, !"event_smb3_write_done", i1 false, i1 false}
!373 = !{ptr @__event_smb3_write_done, !41, !"__event_smb3_write_done", i1 false, i1 false}
!374 = !{ptr @event_smb3_read_done, !45, !"event_smb3_read_done", i1 false, i1 false}
!375 = !{ptr @__event_smb3_read_done, !45, !"__event_smb3_read_done", i1 false, i1 false}
!376 = !{ptr @event_smb3_query_dir_done, !49, !"event_smb3_query_dir_done", i1 false, i1 false}
!377 = !{ptr @__event_smb3_query_dir_done, !49, !"__event_smb3_query_dir_done", i1 false, i1 false}
!378 = !{ptr @event_smb3_zero_done, !53, !"event_smb3_zero_done", i1 false, i1 false}
!379 = !{ptr @__event_smb3_zero_done, !53, !"__event_smb3_zero_done", i1 false, i1 false}
!380 = !{ptr @event_smb3_falloc_done, !57, !"event_smb3_falloc_done", i1 false, i1 false}
!381 = !{ptr @__event_smb3_falloc_done, !57, !"__event_smb3_falloc_done", i1 false, i1 false}
!382 = !{ptr @event_class_smb3_fd_class, !383, !"event_class_smb3_fd_class", i1 false, i1 false}
!383 = !{!"../fs/cifs/./trace.h", i32 127, i32 1}
!384 = !{ptr @event_smb3_flush_enter, !61, !"event_smb3_flush_enter", i1 false, i1 false}
!385 = !{ptr @__event_smb3_flush_enter, !61, !"__event_smb3_flush_enter", i1 false, i1 false}
!386 = !{ptr @event_smb3_flush_done, !65, !"event_smb3_flush_done", i1 false, i1 false}
!387 = !{ptr @__event_smb3_flush_done, !65, !"__event_smb3_flush_done", i1 false, i1 false}
!388 = !{ptr @event_smb3_close_enter, !69, !"event_smb3_close_enter", i1 false, i1 false}
!389 = !{ptr @__event_smb3_close_enter, !69, !"__event_smb3_close_enter", i1 false, i1 false}
!390 = !{ptr @event_smb3_close_done, !73, !"event_smb3_close_done", i1 false, i1 false}
!391 = !{ptr @__event_smb3_close_done, !73, !"__event_smb3_close_done", i1 false, i1 false}
!392 = !{ptr @event_class_smb3_fd_err_class, !393, !"event_class_smb3_fd_err_class", i1 false, i1 false}
!393 = !{!"../fs/cifs/./trace.h", i32 162, i32 1}
!394 = !{ptr @event_smb3_flush_err, !77, !"event_smb3_flush_err", i1 false, i1 false}
!395 = !{ptr @__event_smb3_flush_err, !77, !"__event_smb3_flush_err", i1 false, i1 false}
!396 = !{ptr @event_smb3_lock_err, !81, !"event_smb3_lock_err", i1 false, i1 false}
!397 = !{ptr @__event_smb3_lock_err, !81, !"__event_smb3_lock_err", i1 false, i1 false}
!398 = !{ptr @event_smb3_close_err, !85, !"event_smb3_close_err", i1 false, i1 false}
!399 = !{ptr @__event_smb3_close_err, !85, !"__event_smb3_close_err", i1 false, i1 false}
!400 = !{ptr @event_class_smb3_inf_enter_class, !401, !"event_class_smb3_inf_enter_class", i1 false, i1 false}
!401 = !{!"../fs/cifs/./trace.h", i32 204, i32 1}
!402 = !{ptr @event_smb3_query_info_enter, !89, !"event_smb3_query_info_enter", i1 false, i1 false}
!403 = !{ptr @__event_smb3_query_info_enter, !89, !"__event_smb3_query_info_enter", i1 false, i1 false}
!404 = !{ptr @event_smb3_query_info_done, !93, !"event_smb3_query_info_done", i1 false, i1 false}
!405 = !{ptr @__event_smb3_query_info_done, !93, !"__event_smb3_query_info_done", i1 false, i1 false}
!406 = !{ptr @event_smb3_notify_enter, !97, !"event_smb3_notify_enter", i1 false, i1 false}
!407 = !{ptr @__event_smb3_notify_enter, !97, !"__event_smb3_notify_enter", i1 false, i1 false}
!408 = !{ptr @event_smb3_notify_done, !101, !"event_smb3_notify_done", i1 false, i1 false}
!409 = !{ptr @__event_smb3_notify_done, !101, !"__event_smb3_notify_done", i1 false, i1 false}
!410 = !{ptr @event_class_smb3_inf_err_class, !411, !"event_class_smb3_inf_err_class", i1 false, i1 false}
!411 = !{!"../fs/cifs/./trace.h", i32 248, i32 1}
!412 = !{ptr @event_smb3_query_info_err, !105, !"event_smb3_query_info_err", i1 false, i1 false}
!413 = !{ptr @__event_smb3_query_info_err, !105, !"__event_smb3_query_info_err", i1 false, i1 false}
!414 = !{ptr @event_smb3_set_info_err, !109, !"event_smb3_set_info_err", i1 false, i1 false}
!415 = !{ptr @__event_smb3_set_info_err, !109, !"__event_smb3_set_info_err", i1 false, i1 false}
!416 = !{ptr @event_smb3_notify_err, !113, !"event_smb3_notify_err", i1 false, i1 false}
!417 = !{ptr @__event_smb3_notify_err, !113, !"__event_smb3_notify_err", i1 false, i1 false}
!418 = !{ptr @event_smb3_fsctl_err, !117, !"event_smb3_fsctl_err", i1 false, i1 false}
!419 = !{ptr @__event_smb3_fsctl_err, !117, !"__event_smb3_fsctl_err", i1 false, i1 false}
!420 = !{ptr @event_class_smb3_inf_compound_enter_class, !421, !"event_class_smb3_inf_compound_enter_class", i1 false, i1 false}
!421 = !{!"../fs/cifs/./trace.h", i32 296, i32 1}
!422 = !{ptr @event_smb3_query_info_compound_enter, !121, !"event_smb3_query_info_compound_enter", i1 false, i1 false}
!423 = !{ptr @__event_smb3_query_info_compound_enter, !121, !"__event_smb3_query_info_compound_enter", i1 false, i1 false}
!424 = !{ptr @event_smb3_posix_query_info_compound_enter, !125, !"event_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!425 = !{ptr @__event_smb3_posix_query_info_compound_enter, !125, !"__event_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!426 = !{ptr @event_smb3_hardlink_enter, !129, !"event_smb3_hardlink_enter", i1 false, i1 false}
!427 = !{ptr @__event_smb3_hardlink_enter, !129, !"__event_smb3_hardlink_enter", i1 false, i1 false}
!428 = !{ptr @event_smb3_rename_enter, !133, !"event_smb3_rename_enter", i1 false, i1 false}
!429 = !{ptr @__event_smb3_rename_enter, !133, !"__event_smb3_rename_enter", i1 false, i1 false}
!430 = !{ptr @event_smb3_rmdir_enter, !137, !"event_smb3_rmdir_enter", i1 false, i1 false}
!431 = !{ptr @__event_smb3_rmdir_enter, !137, !"__event_smb3_rmdir_enter", i1 false, i1 false}
!432 = !{ptr @event_smb3_set_eof_enter, !141, !"event_smb3_set_eof_enter", i1 false, i1 false}
!433 = !{ptr @__event_smb3_set_eof_enter, !141, !"__event_smb3_set_eof_enter", i1 false, i1 false}
!434 = !{ptr @event_smb3_set_info_compound_enter, !145, !"event_smb3_set_info_compound_enter", i1 false, i1 false}
!435 = !{ptr @__event_smb3_set_info_compound_enter, !145, !"__event_smb3_set_info_compound_enter", i1 false, i1 false}
!436 = !{ptr @event_smb3_delete_enter, !149, !"event_smb3_delete_enter", i1 false, i1 false}
!437 = !{ptr @__event_smb3_delete_enter, !149, !"__event_smb3_delete_enter", i1 false, i1 false}
!438 = !{ptr @event_smb3_mkdir_enter, !153, !"event_smb3_mkdir_enter", i1 false, i1 false}
!439 = !{ptr @__event_smb3_mkdir_enter, !153, !"__event_smb3_mkdir_enter", i1 false, i1 false}
!440 = !{ptr @event_class_smb3_inf_compound_done_class, !441, !"event_class_smb3_inf_compound_done_class", i1 false, i1 false}
!441 = !{!"../fs/cifs/./trace.h", i32 338, i32 1}
!442 = !{ptr @event_smb3_query_info_compound_done, !157, !"event_smb3_query_info_compound_done", i1 false, i1 false}
!443 = !{ptr @__event_smb3_query_info_compound_done, !157, !"__event_smb3_query_info_compound_done", i1 false, i1 false}
!444 = !{ptr @event_smb3_posix_query_info_compound_done, !161, !"event_smb3_posix_query_info_compound_done", i1 false, i1 false}
!445 = !{ptr @__event_smb3_posix_query_info_compound_done, !161, !"__event_smb3_posix_query_info_compound_done", i1 false, i1 false}
!446 = !{ptr @event_smb3_hardlink_done, !165, !"event_smb3_hardlink_done", i1 false, i1 false}
!447 = !{ptr @__event_smb3_hardlink_done, !165, !"__event_smb3_hardlink_done", i1 false, i1 false}
!448 = !{ptr @event_smb3_rename_done, !169, !"event_smb3_rename_done", i1 false, i1 false}
!449 = !{ptr @__event_smb3_rename_done, !169, !"__event_smb3_rename_done", i1 false, i1 false}
!450 = !{ptr @event_smb3_rmdir_done, !173, !"event_smb3_rmdir_done", i1 false, i1 false}
!451 = !{ptr @__event_smb3_rmdir_done, !173, !"__event_smb3_rmdir_done", i1 false, i1 false}
!452 = !{ptr @event_smb3_set_eof_done, !177, !"event_smb3_set_eof_done", i1 false, i1 false}
!453 = !{ptr @__event_smb3_set_eof_done, !177, !"__event_smb3_set_eof_done", i1 false, i1 false}
!454 = !{ptr @event_smb3_set_info_compound_done, !181, !"event_smb3_set_info_compound_done", i1 false, i1 false}
!455 = !{ptr @__event_smb3_set_info_compound_done, !181, !"__event_smb3_set_info_compound_done", i1 false, i1 false}
!456 = !{ptr @event_smb3_delete_done, !185, !"event_smb3_delete_done", i1 false, i1 false}
!457 = !{ptr @__event_smb3_delete_done, !185, !"__event_smb3_delete_done", i1 false, i1 false}
!458 = !{ptr @event_smb3_mkdir_done, !189, !"event_smb3_mkdir_done", i1 false, i1 false}
!459 = !{ptr @__event_smb3_mkdir_done, !189, !"__event_smb3_mkdir_done", i1 false, i1 false}
!460 = !{ptr @event_class_smb3_inf_compound_err_class, !461, !"event_class_smb3_inf_compound_err_class", i1 false, i1 false}
!461 = !{!"../fs/cifs/./trace.h", i32 375, i32 1}
!462 = !{ptr @event_smb3_query_info_compound_err, !193, !"event_smb3_query_info_compound_err", i1 false, i1 false}
!463 = !{ptr @__event_smb3_query_info_compound_err, !193, !"__event_smb3_query_info_compound_err", i1 false, i1 false}
!464 = !{ptr @event_smb3_posix_query_info_compound_err, !197, !"event_smb3_posix_query_info_compound_err", i1 false, i1 false}
!465 = !{ptr @__event_smb3_posix_query_info_compound_err, !197, !"__event_smb3_posix_query_info_compound_err", i1 false, i1 false}
!466 = !{ptr @event_smb3_hardlink_err, !201, !"event_smb3_hardlink_err", i1 false, i1 false}
!467 = !{ptr @__event_smb3_hardlink_err, !201, !"__event_smb3_hardlink_err", i1 false, i1 false}
!468 = !{ptr @event_smb3_rename_err, !205, !"event_smb3_rename_err", i1 false, i1 false}
!469 = !{ptr @__event_smb3_rename_err, !205, !"__event_smb3_rename_err", i1 false, i1 false}
!470 = !{ptr @event_smb3_rmdir_err, !209, !"event_smb3_rmdir_err", i1 false, i1 false}
!471 = !{ptr @__event_smb3_rmdir_err, !209, !"__event_smb3_rmdir_err", i1 false, i1 false}
!472 = !{ptr @event_smb3_set_eof_err, !213, !"event_smb3_set_eof_err", i1 false, i1 false}
!473 = !{ptr @__event_smb3_set_eof_err, !213, !"__event_smb3_set_eof_err", i1 false, i1 false}
!474 = !{ptr @event_smb3_set_info_compound_err, !217, !"event_smb3_set_info_compound_err", i1 false, i1 false}
!475 = !{ptr @__event_smb3_set_info_compound_err, !217, !"__event_smb3_set_info_compound_err", i1 false, i1 false}
!476 = !{ptr @event_smb3_mkdir_err, !221, !"event_smb3_mkdir_err", i1 false, i1 false}
!477 = !{ptr @__event_smb3_mkdir_err, !221, !"__event_smb3_mkdir_err", i1 false, i1 false}
!478 = !{ptr @event_smb3_delete_err, !225, !"event_smb3_delete_err", i1 false, i1 false}
!479 = !{ptr @__event_smb3_delete_err, !225, !"__event_smb3_delete_err", i1 false, i1 false}
!480 = !{ptr @event_class_smb3_cmd_err_class, !481, !"event_class_smb3_cmd_err_class", i1 false, i1 false}
!481 = !{!"../fs/cifs/./trace.h", i32 419, i32 1}
!482 = !{ptr @event_smb3_cmd_err, !229, !"event_smb3_cmd_err", i1 false, i1 false}
!483 = !{ptr @__event_smb3_cmd_err, !229, !"__event_smb3_cmd_err", i1 false, i1 false}
!484 = !{ptr @event_class_smb3_cmd_done_class, !485, !"event_class_smb3_cmd_done_class", i1 false, i1 false}
!485 = !{!"../fs/cifs/./trace.h", i32 460, i32 1}
!486 = !{ptr @event_smb3_cmd_enter, !233, !"event_smb3_cmd_enter", i1 false, i1 false}
!487 = !{ptr @__event_smb3_cmd_enter, !233, !"__event_smb3_cmd_enter", i1 false, i1 false}
!488 = !{ptr @event_smb3_cmd_done, !237, !"event_smb3_cmd_done", i1 false, i1 false}
!489 = !{ptr @__event_smb3_cmd_done, !237, !"__event_smb3_cmd_done", i1 false, i1 false}
!490 = !{ptr @event_smb3_ses_expired, !241, !"event_smb3_ses_expired", i1 false, i1 false}
!491 = !{ptr @__event_smb3_ses_expired, !241, !"__event_smb3_ses_expired", i1 false, i1 false}
!492 = !{ptr @event_class_smb3_mid_class, !493, !"event_class_smb3_mid_class", i1 false, i1 false}
!493 = !{!"../fs/cifs/./trace.h", i32 495, i32 1}
!494 = !{ptr @event_smb3_slow_rsp, !245, !"event_smb3_slow_rsp", i1 false, i1 false}
!495 = !{ptr @__event_smb3_slow_rsp, !245, !"__event_smb3_slow_rsp", i1 false, i1 false}
!496 = !{ptr @event_class_smb3_exit_err_class, !497, !"event_class_smb3_exit_err_class", i1 false, i1 false}
!497 = !{!"../fs/cifs/./trace.h", i32 532, i32 1}
!498 = !{ptr @event_smb3_exit_err, !249, !"event_smb3_exit_err", i1 false, i1 false}
!499 = !{ptr @__event_smb3_exit_err, !249, !"__event_smb3_exit_err", i1 false, i1 false}
!500 = !{ptr @event_class_smb3_sync_err_class, !501, !"event_class_smb3_sync_err_class", i1 false, i1 false}
!501 = !{!"../fs/cifs/./trace.h", i32 561, i32 1}
!502 = !{ptr @event_cifs_fsync_err, !253, !"event_cifs_fsync_err", i1 false, i1 false}
!503 = !{ptr @__event_cifs_fsync_err, !253, !"__event_cifs_fsync_err", i1 false, i1 false}
!504 = !{ptr @event_cifs_flush_err, !257, !"event_cifs_flush_err", i1 false, i1 false}
!505 = !{ptr @__event_cifs_flush_err, !257, !"__event_cifs_flush_err", i1 false, i1 false}
!506 = !{ptr @event_class_smb3_enter_exit_class, !507, !"event_class_smb3_enter_exit_class", i1 false, i1 false}
!507 = !{!"../fs/cifs/./trace.h", i32 587, i32 1}
!508 = !{ptr @event_smb3_enter, !261, !"event_smb3_enter", i1 false, i1 false}
!509 = !{ptr @__event_smb3_enter, !261, !"__event_smb3_enter", i1 false, i1 false}
!510 = !{ptr @event_smb3_exit_done, !265, !"event_smb3_exit_done", i1 false, i1 false}
!511 = !{ptr @__event_smb3_exit_done, !265, !"__event_smb3_exit_done", i1 false, i1 false}
!512 = !{ptr @event_class_smb3_tcon_class, !513, !"event_class_smb3_tcon_class", i1 false, i1 false}
!513 = !{!"../fs/cifs/./trace.h", i32 616, i32 1}
!514 = !{ptr @event_smb3_tcon, !269, !"event_smb3_tcon", i1 false, i1 false}
!515 = !{ptr @__event_smb3_tcon, !269, !"__event_smb3_tcon", i1 false, i1 false}
!516 = !{ptr @event_class_smb3_open_enter_class, !517, !"event_class_smb3_open_enter_class", i1 false, i1 false}
!517 = !{!"../fs/cifs/./trace.h", i32 658, i32 1}
!518 = !{ptr @event_smb3_open_enter, !273, !"event_smb3_open_enter", i1 false, i1 false}
!519 = !{ptr @__event_smb3_open_enter, !273, !"__event_smb3_open_enter", i1 false, i1 false}
!520 = !{ptr @event_smb3_posix_mkdir_enter, !277, !"event_smb3_posix_mkdir_enter", i1 false, i1 false}
!521 = !{ptr @__event_smb3_posix_mkdir_enter, !277, !"__event_smb3_posix_mkdir_enter", i1 false, i1 false}
!522 = !{ptr @event_class_smb3_open_err_class, !523, !"event_class_smb3_open_err_class", i1 false, i1 false}
!523 = !{!"../fs/cifs/./trace.h", i32 696, i32 1}
!524 = !{ptr @event_smb3_open_err, !281, !"event_smb3_open_err", i1 false, i1 false}
!525 = !{ptr @__event_smb3_open_err, !281, !"__event_smb3_open_err", i1 false, i1 false}
!526 = !{ptr @event_smb3_posix_mkdir_err, !285, !"event_smb3_posix_mkdir_err", i1 false, i1 false}
!527 = !{ptr @__event_smb3_posix_mkdir_err, !285, !"__event_smb3_posix_mkdir_err", i1 false, i1 false}
!528 = !{ptr @event_class_smb3_open_done_class, !529, !"event_class_smb3_open_done_class", i1 false, i1 false}
!529 = !{!"../fs/cifs/./trace.h", i32 738, i32 1}
!530 = !{ptr @event_smb3_open_done, !289, !"event_smb3_open_done", i1 false, i1 false}
!531 = !{ptr @__event_smb3_open_done, !289, !"__event_smb3_open_done", i1 false, i1 false}
!532 = !{ptr @event_smb3_posix_mkdir_done, !293, !"event_smb3_posix_mkdir_done", i1 false, i1 false}
!533 = !{ptr @__event_smb3_posix_mkdir_done, !293, !"__event_smb3_posix_mkdir_done", i1 false, i1 false}
!534 = !{ptr @event_class_smb3_lease_done_class, !535, !"event_class_smb3_lease_done_class", i1 false, i1 false}
!535 = !{!"../fs/cifs/./trace.h", i32 781, i32 1}
!536 = !{ptr @event_smb3_lease_done, !297, !"event_smb3_lease_done", i1 false, i1 false}
!537 = !{ptr @__event_smb3_lease_done, !297, !"__event_smb3_lease_done", i1 false, i1 false}
!538 = !{ptr @event_class_smb3_lease_err_class, !539, !"event_class_smb3_lease_err_class", i1 false, i1 false}
!539 = !{!"../fs/cifs/./trace.h", i32 818, i32 1}
!540 = !{ptr @event_smb3_lease_err, !301, !"event_smb3_lease_err", i1 false, i1 false}
!541 = !{ptr @__event_smb3_lease_err, !301, !"__event_smb3_lease_err", i1 false, i1 false}
!542 = !{ptr @event_class_smb3_connect_class, !543, !"event_class_smb3_connect_class", i1 false, i1 false}
!543 = !{!"../fs/cifs/./trace.h", i32 859, i32 1}
!544 = !{ptr @event_smb3_connect_done, !305, !"event_smb3_connect_done", i1 false, i1 false}
!545 = !{ptr @__event_smb3_connect_done, !305, !"__event_smb3_connect_done", i1 false, i1 false}
!546 = !{ptr @event_class_smb3_connect_err_class, !547, !"event_class_smb3_connect_err_class", i1 false, i1 false}
!547 = !{!"../fs/cifs/./trace.h", i32 892, i32 1}
!548 = !{ptr @event_smb3_connect_err, !309, !"event_smb3_connect_err", i1 false, i1 false}
!549 = !{ptr @__event_smb3_connect_err, !309, !"__event_smb3_connect_err", i1 false, i1 false}
!550 = !{ptr @event_class_smb3_reconnect_class, !551, !"event_class_smb3_reconnect_class", i1 false, i1 false}
!551 = !{!"../fs/cifs/./trace.h", i32 928, i32 1}
!552 = !{ptr @event_smb3_reconnect, !313, !"event_smb3_reconnect", i1 false, i1 false}
!553 = !{ptr @__event_smb3_reconnect, !313, !"__event_smb3_reconnect", i1 false, i1 false}
!554 = !{ptr @event_smb3_partial_send_reconnect, !317, !"event_smb3_partial_send_reconnect", i1 false, i1 false}
!555 = !{ptr @__event_smb3_partial_send_reconnect, !317, !"__event_smb3_partial_send_reconnect", i1 false, i1 false}
!556 = !{ptr @event_class_smb3_credit_class, !557, !"event_class_smb3_credit_class", i1 false, i1 false}
!557 = !{!"../fs/cifs/./trace.h", i32 959, i32 1}
!558 = !{ptr @event_smb3_reconnect_with_invalid_credits, !321, !"event_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!559 = !{ptr @__event_smb3_reconnect_with_invalid_credits, !321, !"__event_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!560 = !{ptr @event_smb3_reconnect_detected, !325, !"event_smb3_reconnect_detected", i1 false, i1 false}
!561 = !{ptr @__event_smb3_reconnect_detected, !325, !"__event_smb3_reconnect_detected", i1 false, i1 false}
!562 = !{ptr @event_smb3_credit_timeout, !329, !"event_smb3_credit_timeout", i1 false, i1 false}
!563 = !{ptr @__event_smb3_credit_timeout, !329, !"__event_smb3_credit_timeout", i1 false, i1 false}
!564 = !{ptr @event_smb3_insufficient_credits, !333, !"event_smb3_insufficient_credits", i1 false, i1 false}
!565 = !{ptr @__event_smb3_insufficient_credits, !333, !"__event_smb3_insufficient_credits", i1 false, i1 false}
!566 = !{ptr @event_smb3_too_many_credits, !337, !"event_smb3_too_many_credits", i1 false, i1 false}
!567 = !{ptr @__event_smb3_too_many_credits, !337, !"__event_smb3_too_many_credits", i1 false, i1 false}
!568 = !{ptr @event_smb3_add_credits, !341, !"event_smb3_add_credits", i1 false, i1 false}
!569 = !{ptr @__event_smb3_add_credits, !341, !"__event_smb3_add_credits", i1 false, i1 false}
!570 = !{ptr @event_smb3_set_credits, !345, !"event_smb3_set_credits", i1 false, i1 false}
!571 = !{ptr @__event_smb3_set_credits, !345, !"__event_smb3_set_credits", i1 false, i1 false}
!572 = !{ptr @__bpf_trace_tp_map_smb3_write_err, !1, !"__bpf_trace_tp_map_smb3_write_err", i1 false, i1 false}
!573 = !{ptr @__bpf_trace_tp_map_smb3_read_err, !5, !"__bpf_trace_tp_map_smb3_read_err", i1 false, i1 false}
!574 = !{ptr @__bpf_trace_tp_map_smb3_query_dir_err, !9, !"__bpf_trace_tp_map_smb3_query_dir_err", i1 false, i1 false}
!575 = !{ptr @__bpf_trace_tp_map_smb3_zero_err, !13, !"__bpf_trace_tp_map_smb3_zero_err", i1 false, i1 false}
!576 = !{ptr @__bpf_trace_tp_map_smb3_falloc_err, !17, !"__bpf_trace_tp_map_smb3_falloc_err", i1 false, i1 false}
!577 = !{ptr @__bpf_trace_tp_map_smb3_write_enter, !21, !"__bpf_trace_tp_map_smb3_write_enter", i1 false, i1 false}
!578 = !{ptr @__bpf_trace_tp_map_smb3_read_enter, !25, !"__bpf_trace_tp_map_smb3_read_enter", i1 false, i1 false}
!579 = !{ptr @__bpf_trace_tp_map_smb3_query_dir_enter, !29, !"__bpf_trace_tp_map_smb3_query_dir_enter", i1 false, i1 false}
!580 = !{ptr @__bpf_trace_tp_map_smb3_zero_enter, !33, !"__bpf_trace_tp_map_smb3_zero_enter", i1 false, i1 false}
!581 = !{ptr @__bpf_trace_tp_map_smb3_falloc_enter, !37, !"__bpf_trace_tp_map_smb3_falloc_enter", i1 false, i1 false}
!582 = !{ptr @__bpf_trace_tp_map_smb3_write_done, !41, !"__bpf_trace_tp_map_smb3_write_done", i1 false, i1 false}
!583 = !{ptr @__bpf_trace_tp_map_smb3_read_done, !45, !"__bpf_trace_tp_map_smb3_read_done", i1 false, i1 false}
!584 = !{ptr @__bpf_trace_tp_map_smb3_query_dir_done, !49, !"__bpf_trace_tp_map_smb3_query_dir_done", i1 false, i1 false}
!585 = !{ptr @__bpf_trace_tp_map_smb3_zero_done, !53, !"__bpf_trace_tp_map_smb3_zero_done", i1 false, i1 false}
!586 = !{ptr @__bpf_trace_tp_map_smb3_falloc_done, !57, !"__bpf_trace_tp_map_smb3_falloc_done", i1 false, i1 false}
!587 = !{ptr @__bpf_trace_tp_map_smb3_flush_enter, !61, !"__bpf_trace_tp_map_smb3_flush_enter", i1 false, i1 false}
!588 = !{ptr @__bpf_trace_tp_map_smb3_flush_done, !65, !"__bpf_trace_tp_map_smb3_flush_done", i1 false, i1 false}
!589 = !{ptr @__bpf_trace_tp_map_smb3_close_enter, !69, !"__bpf_trace_tp_map_smb3_close_enter", i1 false, i1 false}
!590 = !{ptr @__bpf_trace_tp_map_smb3_close_done, !73, !"__bpf_trace_tp_map_smb3_close_done", i1 false, i1 false}
!591 = !{ptr @__bpf_trace_tp_map_smb3_flush_err, !77, !"__bpf_trace_tp_map_smb3_flush_err", i1 false, i1 false}
!592 = !{ptr @__bpf_trace_tp_map_smb3_lock_err, !81, !"__bpf_trace_tp_map_smb3_lock_err", i1 false, i1 false}
!593 = !{ptr @__bpf_trace_tp_map_smb3_close_err, !85, !"__bpf_trace_tp_map_smb3_close_err", i1 false, i1 false}
!594 = !{ptr @__bpf_trace_tp_map_smb3_query_info_enter, !89, !"__bpf_trace_tp_map_smb3_query_info_enter", i1 false, i1 false}
!595 = !{ptr @__bpf_trace_tp_map_smb3_query_info_done, !93, !"__bpf_trace_tp_map_smb3_query_info_done", i1 false, i1 false}
!596 = !{ptr @__bpf_trace_tp_map_smb3_notify_enter, !97, !"__bpf_trace_tp_map_smb3_notify_enter", i1 false, i1 false}
!597 = !{ptr @__bpf_trace_tp_map_smb3_notify_done, !101, !"__bpf_trace_tp_map_smb3_notify_done", i1 false, i1 false}
!598 = !{ptr @__bpf_trace_tp_map_smb3_query_info_err, !105, !"__bpf_trace_tp_map_smb3_query_info_err", i1 false, i1 false}
!599 = !{ptr @__bpf_trace_tp_map_smb3_set_info_err, !109, !"__bpf_trace_tp_map_smb3_set_info_err", i1 false, i1 false}
!600 = !{ptr @__bpf_trace_tp_map_smb3_notify_err, !113, !"__bpf_trace_tp_map_smb3_notify_err", i1 false, i1 false}
!601 = !{ptr @__bpf_trace_tp_map_smb3_fsctl_err, !117, !"__bpf_trace_tp_map_smb3_fsctl_err", i1 false, i1 false}
!602 = !{ptr @__bpf_trace_tp_map_smb3_query_info_compound_enter, !121, !"__bpf_trace_tp_map_smb3_query_info_compound_enter", i1 false, i1 false}
!603 = !{ptr @__bpf_trace_tp_map_smb3_posix_query_info_compound_enter, !125, !"__bpf_trace_tp_map_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!604 = !{ptr @__bpf_trace_tp_map_smb3_hardlink_enter, !129, !"__bpf_trace_tp_map_smb3_hardlink_enter", i1 false, i1 false}
!605 = !{ptr @__bpf_trace_tp_map_smb3_rename_enter, !133, !"__bpf_trace_tp_map_smb3_rename_enter", i1 false, i1 false}
!606 = !{ptr @__bpf_trace_tp_map_smb3_rmdir_enter, !137, !"__bpf_trace_tp_map_smb3_rmdir_enter", i1 false, i1 false}
!607 = !{ptr @__bpf_trace_tp_map_smb3_set_eof_enter, !141, !"__bpf_trace_tp_map_smb3_set_eof_enter", i1 false, i1 false}
!608 = !{ptr @__bpf_trace_tp_map_smb3_set_info_compound_enter, !145, !"__bpf_trace_tp_map_smb3_set_info_compound_enter", i1 false, i1 false}
!609 = !{ptr @__bpf_trace_tp_map_smb3_delete_enter, !149, !"__bpf_trace_tp_map_smb3_delete_enter", i1 false, i1 false}
!610 = !{ptr @__bpf_trace_tp_map_smb3_mkdir_enter, !153, !"__bpf_trace_tp_map_smb3_mkdir_enter", i1 false, i1 false}
!611 = !{ptr @__bpf_trace_tp_map_smb3_query_info_compound_done, !157, !"__bpf_trace_tp_map_smb3_query_info_compound_done", i1 false, i1 false}
!612 = !{ptr @__bpf_trace_tp_map_smb3_posix_query_info_compound_done, !161, !"__bpf_trace_tp_map_smb3_posix_query_info_compound_done", i1 false, i1 false}
!613 = !{ptr @__bpf_trace_tp_map_smb3_hardlink_done, !165, !"__bpf_trace_tp_map_smb3_hardlink_done", i1 false, i1 false}
!614 = !{ptr @__bpf_trace_tp_map_smb3_rename_done, !169, !"__bpf_trace_tp_map_smb3_rename_done", i1 false, i1 false}
!615 = !{ptr @__bpf_trace_tp_map_smb3_rmdir_done, !173, !"__bpf_trace_tp_map_smb3_rmdir_done", i1 false, i1 false}
!616 = !{ptr @__bpf_trace_tp_map_smb3_set_eof_done, !177, !"__bpf_trace_tp_map_smb3_set_eof_done", i1 false, i1 false}
!617 = !{ptr @__bpf_trace_tp_map_smb3_set_info_compound_done, !181, !"__bpf_trace_tp_map_smb3_set_info_compound_done", i1 false, i1 false}
!618 = !{ptr @__bpf_trace_tp_map_smb3_delete_done, !185, !"__bpf_trace_tp_map_smb3_delete_done", i1 false, i1 false}
!619 = !{ptr @__bpf_trace_tp_map_smb3_mkdir_done, !189, !"__bpf_trace_tp_map_smb3_mkdir_done", i1 false, i1 false}
!620 = !{ptr @__bpf_trace_tp_map_smb3_query_info_compound_err, !193, !"__bpf_trace_tp_map_smb3_query_info_compound_err", i1 false, i1 false}
!621 = !{ptr @__bpf_trace_tp_map_smb3_posix_query_info_compound_err, !197, !"__bpf_trace_tp_map_smb3_posix_query_info_compound_err", i1 false, i1 false}
!622 = !{ptr @__bpf_trace_tp_map_smb3_hardlink_err, !201, !"__bpf_trace_tp_map_smb3_hardlink_err", i1 false, i1 false}
!623 = !{ptr @__bpf_trace_tp_map_smb3_rename_err, !205, !"__bpf_trace_tp_map_smb3_rename_err", i1 false, i1 false}
!624 = !{ptr @__bpf_trace_tp_map_smb3_rmdir_err, !209, !"__bpf_trace_tp_map_smb3_rmdir_err", i1 false, i1 false}
!625 = !{ptr @__bpf_trace_tp_map_smb3_set_eof_err, !213, !"__bpf_trace_tp_map_smb3_set_eof_err", i1 false, i1 false}
!626 = !{ptr @__bpf_trace_tp_map_smb3_set_info_compound_err, !217, !"__bpf_trace_tp_map_smb3_set_info_compound_err", i1 false, i1 false}
!627 = !{ptr @__bpf_trace_tp_map_smb3_mkdir_err, !221, !"__bpf_trace_tp_map_smb3_mkdir_err", i1 false, i1 false}
!628 = !{ptr @__bpf_trace_tp_map_smb3_delete_err, !225, !"__bpf_trace_tp_map_smb3_delete_err", i1 false, i1 false}
!629 = !{ptr @__bpf_trace_tp_map_smb3_cmd_err, !229, !"__bpf_trace_tp_map_smb3_cmd_err", i1 false, i1 false}
!630 = !{ptr @__bpf_trace_tp_map_smb3_cmd_enter, !233, !"__bpf_trace_tp_map_smb3_cmd_enter", i1 false, i1 false}
!631 = !{ptr @__bpf_trace_tp_map_smb3_cmd_done, !237, !"__bpf_trace_tp_map_smb3_cmd_done", i1 false, i1 false}
!632 = !{ptr @__bpf_trace_tp_map_smb3_ses_expired, !241, !"__bpf_trace_tp_map_smb3_ses_expired", i1 false, i1 false}
!633 = !{ptr @__bpf_trace_tp_map_smb3_slow_rsp, !245, !"__bpf_trace_tp_map_smb3_slow_rsp", i1 false, i1 false}
!634 = !{ptr @__bpf_trace_tp_map_smb3_exit_err, !249, !"__bpf_trace_tp_map_smb3_exit_err", i1 false, i1 false}
!635 = !{ptr @__bpf_trace_tp_map_cifs_fsync_err, !253, !"__bpf_trace_tp_map_cifs_fsync_err", i1 false, i1 false}
!636 = !{ptr @__bpf_trace_tp_map_cifs_flush_err, !257, !"__bpf_trace_tp_map_cifs_flush_err", i1 false, i1 false}
!637 = !{ptr @__bpf_trace_tp_map_smb3_enter, !261, !"__bpf_trace_tp_map_smb3_enter", i1 false, i1 false}
!638 = !{ptr @__bpf_trace_tp_map_smb3_exit_done, !265, !"__bpf_trace_tp_map_smb3_exit_done", i1 false, i1 false}
!639 = !{ptr @__bpf_trace_tp_map_smb3_tcon, !269, !"__bpf_trace_tp_map_smb3_tcon", i1 false, i1 false}
!640 = !{ptr @__bpf_trace_tp_map_smb3_open_enter, !273, !"__bpf_trace_tp_map_smb3_open_enter", i1 false, i1 false}
!641 = !{ptr @__bpf_trace_tp_map_smb3_posix_mkdir_enter, !277, !"__bpf_trace_tp_map_smb3_posix_mkdir_enter", i1 false, i1 false}
!642 = !{ptr @__bpf_trace_tp_map_smb3_open_err, !281, !"__bpf_trace_tp_map_smb3_open_err", i1 false, i1 false}
!643 = !{ptr @__bpf_trace_tp_map_smb3_posix_mkdir_err, !285, !"__bpf_trace_tp_map_smb3_posix_mkdir_err", i1 false, i1 false}
!644 = !{ptr @__bpf_trace_tp_map_smb3_open_done, !289, !"__bpf_trace_tp_map_smb3_open_done", i1 false, i1 false}
!645 = !{ptr @__bpf_trace_tp_map_smb3_posix_mkdir_done, !293, !"__bpf_trace_tp_map_smb3_posix_mkdir_done", i1 false, i1 false}
!646 = !{ptr @__bpf_trace_tp_map_smb3_lease_done, !297, !"__bpf_trace_tp_map_smb3_lease_done", i1 false, i1 false}
!647 = !{ptr @__bpf_trace_tp_map_smb3_lease_err, !301, !"__bpf_trace_tp_map_smb3_lease_err", i1 false, i1 false}
!648 = !{ptr @__bpf_trace_tp_map_smb3_connect_done, !305, !"__bpf_trace_tp_map_smb3_connect_done", i1 false, i1 false}
!649 = !{ptr @__bpf_trace_tp_map_smb3_connect_err, !309, !"__bpf_trace_tp_map_smb3_connect_err", i1 false, i1 false}
!650 = !{ptr @__bpf_trace_tp_map_smb3_reconnect, !313, !"__bpf_trace_tp_map_smb3_reconnect", i1 false, i1 false}
!651 = !{ptr @__bpf_trace_tp_map_smb3_partial_send_reconnect, !317, !"__bpf_trace_tp_map_smb3_partial_send_reconnect", i1 false, i1 false}
!652 = !{ptr @__bpf_trace_tp_map_smb3_reconnect_with_invalid_credits, !321, !"__bpf_trace_tp_map_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!653 = !{ptr @__bpf_trace_tp_map_smb3_reconnect_detected, !325, !"__bpf_trace_tp_map_smb3_reconnect_detected", i1 false, i1 false}
!654 = !{ptr @__bpf_trace_tp_map_smb3_credit_timeout, !329, !"__bpf_trace_tp_map_smb3_credit_timeout", i1 false, i1 false}
!655 = !{ptr @__bpf_trace_tp_map_smb3_insufficient_credits, !333, !"__bpf_trace_tp_map_smb3_insufficient_credits", i1 false, i1 false}
!656 = !{ptr @__bpf_trace_tp_map_smb3_too_many_credits, !337, !"__bpf_trace_tp_map_smb3_too_many_credits", i1 false, i1 false}
!657 = !{ptr @__bpf_trace_tp_map_smb3_add_credits, !341, !"__bpf_trace_tp_map_smb3_add_credits", i1 false, i1 false}
!658 = !{ptr @__bpf_trace_tp_map_smb3_set_credits, !345, !"__bpf_trace_tp_map_smb3_set_credits", i1 false, i1 false}
!659 = !{ptr @__tpstrtab_smb3_write_err, !1, !"__tpstrtab_smb3_write_err", i1 false, i1 false}
!660 = !{ptr @__tpstrtab_smb3_read_err, !5, !"__tpstrtab_smb3_read_err", i1 false, i1 false}
!661 = !{ptr @__tpstrtab_smb3_query_dir_err, !9, !"__tpstrtab_smb3_query_dir_err", i1 false, i1 false}
!662 = !{ptr @__tpstrtab_smb3_zero_err, !13, !"__tpstrtab_smb3_zero_err", i1 false, i1 false}
!663 = !{ptr @__tpstrtab_smb3_falloc_err, !17, !"__tpstrtab_smb3_falloc_err", i1 false, i1 false}
!664 = !{ptr @__tpstrtab_smb3_write_enter, !21, !"__tpstrtab_smb3_write_enter", i1 false, i1 false}
!665 = !{ptr @__tpstrtab_smb3_read_enter, !25, !"__tpstrtab_smb3_read_enter", i1 false, i1 false}
!666 = !{ptr @__tpstrtab_smb3_query_dir_enter, !29, !"__tpstrtab_smb3_query_dir_enter", i1 false, i1 false}
!667 = !{ptr @__tpstrtab_smb3_zero_enter, !33, !"__tpstrtab_smb3_zero_enter", i1 false, i1 false}
!668 = !{ptr @__tpstrtab_smb3_falloc_enter, !37, !"__tpstrtab_smb3_falloc_enter", i1 false, i1 false}
!669 = !{ptr @__tpstrtab_smb3_write_done, !41, !"__tpstrtab_smb3_write_done", i1 false, i1 false}
!670 = !{ptr @__tpstrtab_smb3_read_done, !45, !"__tpstrtab_smb3_read_done", i1 false, i1 false}
!671 = !{ptr @__tpstrtab_smb3_query_dir_done, !49, !"__tpstrtab_smb3_query_dir_done", i1 false, i1 false}
!672 = !{ptr @__tpstrtab_smb3_zero_done, !53, !"__tpstrtab_smb3_zero_done", i1 false, i1 false}
!673 = !{ptr @__tpstrtab_smb3_falloc_done, !57, !"__tpstrtab_smb3_falloc_done", i1 false, i1 false}
!674 = !{ptr @__tpstrtab_smb3_flush_enter, !61, !"__tpstrtab_smb3_flush_enter", i1 false, i1 false}
!675 = !{ptr @__tpstrtab_smb3_flush_done, !65, !"__tpstrtab_smb3_flush_done", i1 false, i1 false}
!676 = !{ptr @__tpstrtab_smb3_close_enter, !69, !"__tpstrtab_smb3_close_enter", i1 false, i1 false}
!677 = !{ptr @__tpstrtab_smb3_close_done, !73, !"__tpstrtab_smb3_close_done", i1 false, i1 false}
!678 = !{ptr @__tpstrtab_smb3_flush_err, !77, !"__tpstrtab_smb3_flush_err", i1 false, i1 false}
!679 = !{ptr @__tpstrtab_smb3_lock_err, !81, !"__tpstrtab_smb3_lock_err", i1 false, i1 false}
!680 = !{ptr @__tpstrtab_smb3_close_err, !85, !"__tpstrtab_smb3_close_err", i1 false, i1 false}
!681 = !{ptr @__tpstrtab_smb3_query_info_enter, !89, !"__tpstrtab_smb3_query_info_enter", i1 false, i1 false}
!682 = !{ptr @__tpstrtab_smb3_query_info_done, !93, !"__tpstrtab_smb3_query_info_done", i1 false, i1 false}
!683 = !{ptr @__tpstrtab_smb3_notify_enter, !97, !"__tpstrtab_smb3_notify_enter", i1 false, i1 false}
!684 = !{ptr @__tpstrtab_smb3_notify_done, !101, !"__tpstrtab_smb3_notify_done", i1 false, i1 false}
!685 = !{ptr @__tpstrtab_smb3_query_info_err, !105, !"__tpstrtab_smb3_query_info_err", i1 false, i1 false}
!686 = !{ptr @__tpstrtab_smb3_set_info_err, !109, !"__tpstrtab_smb3_set_info_err", i1 false, i1 false}
!687 = !{ptr @__tpstrtab_smb3_notify_err, !113, !"__tpstrtab_smb3_notify_err", i1 false, i1 false}
!688 = !{ptr @__tpstrtab_smb3_fsctl_err, !117, !"__tpstrtab_smb3_fsctl_err", i1 false, i1 false}
!689 = !{ptr @__tpstrtab_smb3_query_info_compound_enter, !121, !"__tpstrtab_smb3_query_info_compound_enter", i1 false, i1 false}
!690 = !{ptr @__tpstrtab_smb3_posix_query_info_compound_enter, !125, !"__tpstrtab_smb3_posix_query_info_compound_enter", i1 false, i1 false}
!691 = !{ptr @__tpstrtab_smb3_hardlink_enter, !129, !"__tpstrtab_smb3_hardlink_enter", i1 false, i1 false}
!692 = !{ptr @__tpstrtab_smb3_rename_enter, !133, !"__tpstrtab_smb3_rename_enter", i1 false, i1 false}
!693 = !{ptr @__tpstrtab_smb3_rmdir_enter, !137, !"__tpstrtab_smb3_rmdir_enter", i1 false, i1 false}
!694 = !{ptr @__tpstrtab_smb3_set_eof_enter, !141, !"__tpstrtab_smb3_set_eof_enter", i1 false, i1 false}
!695 = !{ptr @__tpstrtab_smb3_set_info_compound_enter, !145, !"__tpstrtab_smb3_set_info_compound_enter", i1 false, i1 false}
!696 = !{ptr @__tpstrtab_smb3_delete_enter, !149, !"__tpstrtab_smb3_delete_enter", i1 false, i1 false}
!697 = !{ptr @__tpstrtab_smb3_mkdir_enter, !153, !"__tpstrtab_smb3_mkdir_enter", i1 false, i1 false}
!698 = !{ptr @__tpstrtab_smb3_query_info_compound_done, !157, !"__tpstrtab_smb3_query_info_compound_done", i1 false, i1 false}
!699 = !{ptr @__tpstrtab_smb3_posix_query_info_compound_done, !161, !"__tpstrtab_smb3_posix_query_info_compound_done", i1 false, i1 false}
!700 = !{ptr @__tpstrtab_smb3_hardlink_done, !165, !"__tpstrtab_smb3_hardlink_done", i1 false, i1 false}
!701 = !{ptr @__tpstrtab_smb3_rename_done, !169, !"__tpstrtab_smb3_rename_done", i1 false, i1 false}
!702 = !{ptr @__tpstrtab_smb3_rmdir_done, !173, !"__tpstrtab_smb3_rmdir_done", i1 false, i1 false}
!703 = !{ptr @__tpstrtab_smb3_set_eof_done, !177, !"__tpstrtab_smb3_set_eof_done", i1 false, i1 false}
!704 = !{ptr @__tpstrtab_smb3_set_info_compound_done, !181, !"__tpstrtab_smb3_set_info_compound_done", i1 false, i1 false}
!705 = !{ptr @__tpstrtab_smb3_delete_done, !185, !"__tpstrtab_smb3_delete_done", i1 false, i1 false}
!706 = !{ptr @__tpstrtab_smb3_mkdir_done, !189, !"__tpstrtab_smb3_mkdir_done", i1 false, i1 false}
!707 = !{ptr @__tpstrtab_smb3_query_info_compound_err, !193, !"__tpstrtab_smb3_query_info_compound_err", i1 false, i1 false}
!708 = !{ptr @__tpstrtab_smb3_posix_query_info_compound_err, !197, !"__tpstrtab_smb3_posix_query_info_compound_err", i1 false, i1 false}
!709 = !{ptr @__tpstrtab_smb3_hardlink_err, !201, !"__tpstrtab_smb3_hardlink_err", i1 false, i1 false}
!710 = !{ptr @__tpstrtab_smb3_rename_err, !205, !"__tpstrtab_smb3_rename_err", i1 false, i1 false}
!711 = !{ptr @__tpstrtab_smb3_rmdir_err, !209, !"__tpstrtab_smb3_rmdir_err", i1 false, i1 false}
!712 = !{ptr @__tpstrtab_smb3_set_eof_err, !213, !"__tpstrtab_smb3_set_eof_err", i1 false, i1 false}
!713 = !{ptr @__tpstrtab_smb3_set_info_compound_err, !217, !"__tpstrtab_smb3_set_info_compound_err", i1 false, i1 false}
!714 = !{ptr @__tpstrtab_smb3_mkdir_err, !221, !"__tpstrtab_smb3_mkdir_err", i1 false, i1 false}
!715 = !{ptr @__tpstrtab_smb3_delete_err, !225, !"__tpstrtab_smb3_delete_err", i1 false, i1 false}
!716 = !{ptr @__tpstrtab_smb3_cmd_err, !229, !"__tpstrtab_smb3_cmd_err", i1 false, i1 false}
!717 = !{ptr @__tpstrtab_smb3_cmd_enter, !233, !"__tpstrtab_smb3_cmd_enter", i1 false, i1 false}
!718 = !{ptr @__tpstrtab_smb3_cmd_done, !237, !"__tpstrtab_smb3_cmd_done", i1 false, i1 false}
!719 = !{ptr @__tpstrtab_smb3_ses_expired, !241, !"__tpstrtab_smb3_ses_expired", i1 false, i1 false}
!720 = !{ptr @__tpstrtab_smb3_slow_rsp, !245, !"__tpstrtab_smb3_slow_rsp", i1 false, i1 false}
!721 = !{ptr @__tpstrtab_smb3_exit_err, !249, !"__tpstrtab_smb3_exit_err", i1 false, i1 false}
!722 = !{ptr @__tpstrtab_cifs_fsync_err, !253, !"__tpstrtab_cifs_fsync_err", i1 false, i1 false}
!723 = !{ptr @__tpstrtab_cifs_flush_err, !257, !"__tpstrtab_cifs_flush_err", i1 false, i1 false}
!724 = !{ptr @__tpstrtab_smb3_enter, !261, !"__tpstrtab_smb3_enter", i1 false, i1 false}
!725 = !{ptr @__tpstrtab_smb3_exit_done, !265, !"__tpstrtab_smb3_exit_done", i1 false, i1 false}
!726 = !{ptr @__tpstrtab_smb3_tcon, !269, !"__tpstrtab_smb3_tcon", i1 false, i1 false}
!727 = !{ptr @__tpstrtab_smb3_open_enter, !273, !"__tpstrtab_smb3_open_enter", i1 false, i1 false}
!728 = !{ptr @__tpstrtab_smb3_posix_mkdir_enter, !277, !"__tpstrtab_smb3_posix_mkdir_enter", i1 false, i1 false}
!729 = !{ptr @__tpstrtab_smb3_open_err, !281, !"__tpstrtab_smb3_open_err", i1 false, i1 false}
!730 = !{ptr @__tpstrtab_smb3_posix_mkdir_err, !285, !"__tpstrtab_smb3_posix_mkdir_err", i1 false, i1 false}
!731 = !{ptr @__tpstrtab_smb3_open_done, !289, !"__tpstrtab_smb3_open_done", i1 false, i1 false}
!732 = !{ptr @__tpstrtab_smb3_posix_mkdir_done, !293, !"__tpstrtab_smb3_posix_mkdir_done", i1 false, i1 false}
!733 = !{ptr @__tpstrtab_smb3_lease_done, !297, !"__tpstrtab_smb3_lease_done", i1 false, i1 false}
!734 = !{ptr @__tpstrtab_smb3_lease_err, !301, !"__tpstrtab_smb3_lease_err", i1 false, i1 false}
!735 = !{ptr @__tpstrtab_smb3_connect_done, !305, !"__tpstrtab_smb3_connect_done", i1 false, i1 false}
!736 = !{ptr @__tpstrtab_smb3_connect_err, !309, !"__tpstrtab_smb3_connect_err", i1 false, i1 false}
!737 = !{ptr @__tpstrtab_smb3_reconnect, !313, !"__tpstrtab_smb3_reconnect", i1 false, i1 false}
!738 = !{ptr @__tpstrtab_smb3_partial_send_reconnect, !317, !"__tpstrtab_smb3_partial_send_reconnect", i1 false, i1 false}
!739 = !{ptr @__tpstrtab_smb3_reconnect_with_invalid_credits, !321, !"__tpstrtab_smb3_reconnect_with_invalid_credits", i1 false, i1 false}
!740 = !{ptr @__tpstrtab_smb3_reconnect_detected, !325, !"__tpstrtab_smb3_reconnect_detected", i1 false, i1 false}
!741 = !{ptr @__tpstrtab_smb3_credit_timeout, !329, !"__tpstrtab_smb3_credit_timeout", i1 false, i1 false}
!742 = !{ptr @__tpstrtab_smb3_insufficient_credits, !333, !"__tpstrtab_smb3_insufficient_credits", i1 false, i1 false}
!743 = !{ptr @__tpstrtab_smb3_too_many_credits, !337, !"__tpstrtab_smb3_too_many_credits", i1 false, i1 false}
!744 = !{ptr @__tpstrtab_smb3_add_credits, !341, !"__tpstrtab_smb3_add_credits", i1 false, i1 false}
!745 = !{ptr @__tpstrtab_smb3_set_credits, !345, !"__tpstrtab_smb3_set_credits", i1 false, i1 false}
!746 = !{ptr @str__cifs__trace_system_name, !747, !"str__cifs__trace_system_name", i1 false, i1 false}
!747 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!748 = !{ptr @.str, !349, !"<string literal>", i1 false, i1 false}
!749 = !{ptr @.str.1, !349, !"<string literal>", i1 false, i1 false}
!750 = !{ptr @.str.2, !349, !"<string literal>", i1 false, i1 false}
!751 = !{ptr @.str.3, !349, !"<string literal>", i1 false, i1 false}
!752 = !{ptr @.str.4, !349, !"<string literal>", i1 false, i1 false}
!753 = !{ptr @.str.5, !349, !"<string literal>", i1 false, i1 false}
!754 = !{ptr @.str.6, !349, !"<string literal>", i1 false, i1 false}
!755 = !{ptr @.str.7, !349, !"<string literal>", i1 false, i1 false}
!756 = !{ptr @.str.8, !349, !"<string literal>", i1 false, i1 false}
!757 = !{ptr @.str.9, !349, !"<string literal>", i1 false, i1 false}
!758 = !{ptr @.str.10, !349, !"<string literal>", i1 false, i1 false}
!759 = !{ptr @trace_event_fields_smb3_rw_err_class, !349, !"trace_event_fields_smb3_rw_err_class", i1 false, i1 false}
!760 = !{ptr @trace_event_type_funcs_smb3_rw_err_class, !349, !"trace_event_type_funcs_smb3_rw_err_class", i1 false, i1 false}
!761 = !{ptr @.str.11, !349, !"<string literal>", i1 false, i1 false}
!762 = !{ptr @print_fmt_smb3_rw_err_class, !349, !"print_fmt_smb3_rw_err_class", i1 false, i1 false}
!763 = !{ptr @trace_event_fields_smb3_rw_done_class, !361, !"trace_event_fields_smb3_rw_done_class", i1 false, i1 false}
!764 = !{ptr @trace_event_type_funcs_smb3_rw_done_class, !361, !"trace_event_type_funcs_smb3_rw_done_class", i1 false, i1 false}
!765 = !{ptr @.str.12, !361, !"<string literal>", i1 false, i1 false}
!766 = !{ptr @print_fmt_smb3_rw_done_class, !361, !"print_fmt_smb3_rw_done_class", i1 false, i1 false}
!767 = !{ptr @trace_event_fields_smb3_fd_class, !383, !"trace_event_fields_smb3_fd_class", i1 false, i1 false}
!768 = !{ptr @trace_event_type_funcs_smb3_fd_class, !383, !"trace_event_type_funcs_smb3_fd_class", i1 false, i1 false}
!769 = !{ptr @.str.13, !383, !"<string literal>", i1 false, i1 false}
!770 = !{ptr @print_fmt_smb3_fd_class, !383, !"print_fmt_smb3_fd_class", i1 false, i1 false}
!771 = !{ptr @trace_event_fields_smb3_fd_err_class, !393, !"trace_event_fields_smb3_fd_err_class", i1 false, i1 false}
!772 = !{ptr @trace_event_type_funcs_smb3_fd_err_class, !393, !"trace_event_type_funcs_smb3_fd_err_class", i1 false, i1 false}
!773 = !{ptr @.str.14, !393, !"<string literal>", i1 false, i1 false}
!774 = !{ptr @print_fmt_smb3_fd_err_class, !393, !"print_fmt_smb3_fd_err_class", i1 false, i1 false}
!775 = !{ptr @.str.15, !401, !"<string literal>", i1 false, i1 false}
!776 = !{ptr @.str.16, !401, !"<string literal>", i1 false, i1 false}
!777 = !{ptr @.str.17, !401, !"<string literal>", i1 false, i1 false}
!778 = !{ptr @trace_event_fields_smb3_inf_enter_class, !401, !"trace_event_fields_smb3_inf_enter_class", i1 false, i1 false}
!779 = !{ptr @trace_event_type_funcs_smb3_inf_enter_class, !401, !"trace_event_type_funcs_smb3_inf_enter_class", i1 false, i1 false}
!780 = !{ptr @.str.18, !401, !"<string literal>", i1 false, i1 false}
!781 = !{ptr @print_fmt_smb3_inf_enter_class, !401, !"print_fmt_smb3_inf_enter_class", i1 false, i1 false}
!782 = !{ptr @trace_event_fields_smb3_inf_err_class, !411, !"trace_event_fields_smb3_inf_err_class", i1 false, i1 false}
!783 = !{ptr @trace_event_type_funcs_smb3_inf_err_class, !411, !"trace_event_type_funcs_smb3_inf_err_class", i1 false, i1 false}
!784 = !{ptr @.str.19, !411, !"<string literal>", i1 false, i1 false}
!785 = !{ptr @print_fmt_smb3_inf_err_class, !411, !"print_fmt_smb3_inf_err_class", i1 false, i1 false}
!786 = !{ptr @.str.20, !421, !"<string literal>", i1 false, i1 false}
!787 = !{ptr @.str.21, !421, !"<string literal>", i1 false, i1 false}
!788 = !{ptr @.str.22, !421, !"<string literal>", i1 false, i1 false}
!789 = !{ptr @trace_event_fields_smb3_inf_compound_enter_class, !421, !"trace_event_fields_smb3_inf_compound_enter_class", i1 false, i1 false}
!790 = !{ptr @trace_event_type_funcs_smb3_inf_compound_enter_class, !421, !"trace_event_type_funcs_smb3_inf_compound_enter_class", i1 false, i1 false}
!791 = !{ptr @.str.23, !421, !"<string literal>", i1 false, i1 false}
!792 = !{ptr @print_fmt_smb3_inf_compound_enter_class, !421, !"print_fmt_smb3_inf_compound_enter_class", i1 false, i1 false}
!793 = !{ptr @trace_event_fields_smb3_inf_compound_done_class, !441, !"trace_event_fields_smb3_inf_compound_done_class", i1 false, i1 false}
!794 = !{ptr @trace_event_type_funcs_smb3_inf_compound_done_class, !441, !"trace_event_type_funcs_smb3_inf_compound_done_class", i1 false, i1 false}
!795 = !{ptr @.str.24, !441, !"<string literal>", i1 false, i1 false}
!796 = !{ptr @print_fmt_smb3_inf_compound_done_class, !441, !"print_fmt_smb3_inf_compound_done_class", i1 false, i1 false}
!797 = !{ptr @trace_event_fields_smb3_inf_compound_err_class, !461, !"trace_event_fields_smb3_inf_compound_err_class", i1 false, i1 false}
!798 = !{ptr @trace_event_type_funcs_smb3_inf_compound_err_class, !461, !"trace_event_type_funcs_smb3_inf_compound_err_class", i1 false, i1 false}
!799 = !{ptr @.str.25, !461, !"<string literal>", i1 false, i1 false}
!800 = !{ptr @print_fmt_smb3_inf_compound_err_class, !461, !"print_fmt_smb3_inf_compound_err_class", i1 false, i1 false}
!801 = !{ptr @.str.26, !481, !"<string literal>", i1 false, i1 false}
!802 = !{ptr @.str.27, !481, !"<string literal>", i1 false, i1 false}
!803 = !{ptr @.str.28, !481, !"<string literal>", i1 false, i1 false}
!804 = !{ptr @.str.29, !481, !"<string literal>", i1 false, i1 false}
!805 = !{ptr @trace_event_fields_smb3_cmd_err_class, !481, !"trace_event_fields_smb3_cmd_err_class", i1 false, i1 false}
!806 = !{ptr @trace_event_type_funcs_smb3_cmd_err_class, !481, !"trace_event_type_funcs_smb3_cmd_err_class", i1 false, i1 false}
!807 = !{ptr @.str.30, !481, !"<string literal>", i1 false, i1 false}
!808 = !{ptr @print_fmt_smb3_cmd_err_class, !481, !"print_fmt_smb3_cmd_err_class", i1 false, i1 false}
!809 = !{ptr @trace_event_fields_smb3_cmd_done_class, !485, !"trace_event_fields_smb3_cmd_done_class", i1 false, i1 false}
!810 = !{ptr @trace_event_type_funcs_smb3_cmd_done_class, !485, !"trace_event_type_funcs_smb3_cmd_done_class", i1 false, i1 false}
!811 = !{ptr @.str.31, !485, !"<string literal>", i1 false, i1 false}
!812 = !{ptr @print_fmt_smb3_cmd_done_class, !485, !"print_fmt_smb3_cmd_done_class", i1 false, i1 false}
!813 = !{ptr @.str.32, !493, !"<string literal>", i1 false, i1 false}
!814 = !{ptr @.str.33, !493, !"<string literal>", i1 false, i1 false}
!815 = !{ptr @.str.34, !493, !"<string literal>", i1 false, i1 false}
!816 = !{ptr @.str.35, !493, !"<string literal>", i1 false, i1 false}
!817 = !{ptr @trace_event_fields_smb3_mid_class, !493, !"trace_event_fields_smb3_mid_class", i1 false, i1 false}
!818 = !{ptr @trace_event_type_funcs_smb3_mid_class, !493, !"trace_event_type_funcs_smb3_mid_class", i1 false, i1 false}
!819 = !{ptr @.str.36, !493, !"<string literal>", i1 false, i1 false}
!820 = !{ptr @print_fmt_smb3_mid_class, !493, !"print_fmt_smb3_mid_class", i1 false, i1 false}
!821 = !{ptr @.str.37, !497, !"<string literal>", i1 false, i1 false}
!822 = !{ptr @trace_event_fields_smb3_exit_err_class, !497, !"trace_event_fields_smb3_exit_err_class", i1 false, i1 false}
!823 = !{ptr @trace_event_type_funcs_smb3_exit_err_class, !497, !"trace_event_type_funcs_smb3_exit_err_class", i1 false, i1 false}
!824 = !{ptr @.str.38, !497, !"<string literal>", i1 false, i1 false}
!825 = !{ptr @print_fmt_smb3_exit_err_class, !497, !"print_fmt_smb3_exit_err_class", i1 false, i1 false}
!826 = !{ptr @.str.39, !501, !"<string literal>", i1 false, i1 false}
!827 = !{ptr @trace_event_fields_smb3_sync_err_class, !501, !"trace_event_fields_smb3_sync_err_class", i1 false, i1 false}
!828 = !{ptr @trace_event_type_funcs_smb3_sync_err_class, !501, !"trace_event_type_funcs_smb3_sync_err_class", i1 false, i1 false}
!829 = !{ptr @.str.40, !501, !"<string literal>", i1 false, i1 false}
!830 = !{ptr @print_fmt_smb3_sync_err_class, !501, !"print_fmt_smb3_sync_err_class", i1 false, i1 false}
!831 = !{ptr @trace_event_fields_smb3_enter_exit_class, !507, !"trace_event_fields_smb3_enter_exit_class", i1 false, i1 false}
!832 = !{ptr @trace_event_type_funcs_smb3_enter_exit_class, !507, !"trace_event_type_funcs_smb3_enter_exit_class", i1 false, i1 false}
!833 = !{ptr @.str.41, !507, !"<string literal>", i1 false, i1 false}
!834 = !{ptr @print_fmt_smb3_enter_exit_class, !507, !"print_fmt_smb3_enter_exit_class", i1 false, i1 false}
!835 = !{ptr @.str.42, !513, !"<string literal>", i1 false, i1 false}
!836 = !{ptr @trace_event_fields_smb3_tcon_class, !513, !"trace_event_fields_smb3_tcon_class", i1 false, i1 false}
!837 = !{ptr @trace_event_type_funcs_smb3_tcon_class, !513, !"trace_event_type_funcs_smb3_tcon_class", i1 false, i1 false}
!838 = !{ptr @.str.43, !513, !"<string literal>", i1 false, i1 false}
!839 = !{ptr @print_fmt_smb3_tcon_class, !513, !"print_fmt_smb3_tcon_class", i1 false, i1 false}
!840 = !{ptr @.str.44, !517, !"<string literal>", i1 false, i1 false}
!841 = !{ptr @.str.45, !517, !"<string literal>", i1 false, i1 false}
!842 = !{ptr @trace_event_fields_smb3_open_enter_class, !517, !"trace_event_fields_smb3_open_enter_class", i1 false, i1 false}
!843 = !{ptr @trace_event_type_funcs_smb3_open_enter_class, !517, !"trace_event_type_funcs_smb3_open_enter_class", i1 false, i1 false}
!844 = !{ptr @.str.46, !517, !"<string literal>", i1 false, i1 false}
!845 = !{ptr @print_fmt_smb3_open_enter_class, !517, !"print_fmt_smb3_open_enter_class", i1 false, i1 false}
!846 = !{ptr @trace_event_fields_smb3_open_err_class, !523, !"trace_event_fields_smb3_open_err_class", i1 false, i1 false}
!847 = !{ptr @trace_event_type_funcs_smb3_open_err_class, !523, !"trace_event_type_funcs_smb3_open_err_class", i1 false, i1 false}
!848 = !{ptr @.str.47, !523, !"<string literal>", i1 false, i1 false}
!849 = !{ptr @print_fmt_smb3_open_err_class, !523, !"print_fmt_smb3_open_err_class", i1 false, i1 false}
!850 = !{ptr @trace_event_fields_smb3_open_done_class, !529, !"trace_event_fields_smb3_open_done_class", i1 false, i1 false}
!851 = !{ptr @trace_event_type_funcs_smb3_open_done_class, !529, !"trace_event_type_funcs_smb3_open_done_class", i1 false, i1 false}
!852 = !{ptr @.str.48, !529, !"<string literal>", i1 false, i1 false}
!853 = !{ptr @print_fmt_smb3_open_done_class, !529, !"print_fmt_smb3_open_done_class", i1 false, i1 false}
!854 = !{ptr @.str.49, !535, !"<string literal>", i1 false, i1 false}
!855 = !{ptr @.str.50, !535, !"<string literal>", i1 false, i1 false}
!856 = !{ptr @.str.51, !535, !"<string literal>", i1 false, i1 false}
!857 = !{ptr @trace_event_fields_smb3_lease_done_class, !535, !"trace_event_fields_smb3_lease_done_class", i1 false, i1 false}
!858 = !{ptr @trace_event_type_funcs_smb3_lease_done_class, !535, !"trace_event_type_funcs_smb3_lease_done_class", i1 false, i1 false}
!859 = !{ptr @.str.52, !535, !"<string literal>", i1 false, i1 false}
!860 = !{ptr @print_fmt_smb3_lease_done_class, !535, !"print_fmt_smb3_lease_done_class", i1 false, i1 false}
!861 = !{ptr @trace_event_fields_smb3_lease_err_class, !539, !"trace_event_fields_smb3_lease_err_class", i1 false, i1 false}
!862 = !{ptr @trace_event_type_funcs_smb3_lease_err_class, !539, !"trace_event_type_funcs_smb3_lease_err_class", i1 false, i1 false}
!863 = !{ptr @.str.53, !539, !"<string literal>", i1 false, i1 false}
!864 = !{ptr @print_fmt_smb3_lease_err_class, !539, !"print_fmt_smb3_lease_err_class", i1 false, i1 false}
!865 = !{ptr @.str.54, !543, !"<string literal>", i1 false, i1 false}
!866 = !{ptr @.str.55, !543, !"<string literal>", i1 false, i1 false}
!867 = !{ptr @.str.56, !543, !"<string literal>", i1 false, i1 false}
!868 = !{ptr @.str.57, !543, !"<string literal>", i1 false, i1 false}
!869 = !{ptr @trace_event_fields_smb3_connect_class, !543, !"trace_event_fields_smb3_connect_class", i1 false, i1 false}
!870 = !{ptr @trace_event_type_funcs_smb3_connect_class, !543, !"trace_event_type_funcs_smb3_connect_class", i1 false, i1 false}
!871 = !{ptr @.str.58, !543, !"<string literal>", i1 false, i1 false}
!872 = !{ptr @print_fmt_smb3_connect_class, !543, !"print_fmt_smb3_connect_class", i1 false, i1 false}
!873 = !{ptr @trace_event_fields_smb3_connect_err_class, !547, !"trace_event_fields_smb3_connect_err_class", i1 false, i1 false}
!874 = !{ptr @trace_event_type_funcs_smb3_connect_err_class, !547, !"trace_event_type_funcs_smb3_connect_err_class", i1 false, i1 false}
!875 = !{ptr @.str.59, !547, !"<string literal>", i1 false, i1 false}
!876 = !{ptr @print_fmt_smb3_connect_err_class, !547, !"print_fmt_smb3_connect_err_class", i1 false, i1 false}
!877 = !{ptr @.str.60, !551, !"<string literal>", i1 false, i1 false}
!878 = !{ptr @trace_event_fields_smb3_reconnect_class, !551, !"trace_event_fields_smb3_reconnect_class", i1 false, i1 false}
!879 = !{ptr @trace_event_type_funcs_smb3_reconnect_class, !551, !"trace_event_type_funcs_smb3_reconnect_class", i1 false, i1 false}
!880 = !{ptr @.str.61, !551, !"<string literal>", i1 false, i1 false}
!881 = !{ptr @print_fmt_smb3_reconnect_class, !551, !"print_fmt_smb3_reconnect_class", i1 false, i1 false}
!882 = !{ptr @.str.62, !557, !"<string literal>", i1 false, i1 false}
!883 = !{ptr @.str.63, !557, !"<string literal>", i1 false, i1 false}
!884 = !{ptr @.str.64, !557, !"<string literal>", i1 false, i1 false}
!885 = !{ptr @trace_event_fields_smb3_credit_class, !557, !"trace_event_fields_smb3_credit_class", i1 false, i1 false}
!886 = !{ptr @trace_event_type_funcs_smb3_credit_class, !557, !"trace_event_type_funcs_smb3_credit_class", i1 false, i1 false}
!887 = !{ptr @.str.65, !557, !"<string literal>", i1 false, i1 false}
!888 = !{ptr @print_fmt_smb3_credit_class, !557, !"print_fmt_smb3_credit_class", i1 false, i1 false}
!889 = !{!"sp"}
!890 = !{i32 1, !"wchar_size", i32 2}
!891 = !{i32 1, !"min_enum_size", i32 4}
!892 = !{i32 8, !"branch-target-enforcement", i32 0}
!893 = !{i32 8, !"sign-return-address", i32 0}
!894 = !{i32 8, !"sign-return-address-all", i32 0}
!895 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!896 = !{i32 7, !"uwtable", i32 1}
!897 = !{i32 7, !"frame-pointer", i32 2}
!898 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!899 = !{!"branch_weights", i32 2000, i32 1}
!900 = !{!"branch_weights", i32 1, i32 2000}
!901 = !{!"auto-init"}
