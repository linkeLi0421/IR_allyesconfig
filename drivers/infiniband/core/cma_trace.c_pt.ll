; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/cma_trace.c_pt.bc'
source_filename = "../drivers/infiniband/core/cma_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.200 }
%union.anon.200 = type { %struct.anon.201 }
%struct.anon.201 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.202, %struct.trace_event, ptr, ptr, %union.anon.203, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.202 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.203 = type { ptr }
%union.anon.204 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%union.anon.216 = type { %struct.bpf_raw_event_map }
%union.anon.217 = type { %struct.bpf_raw_event_map }
%union.anon.218 = type { %struct.bpf_raw_event_map }
%union.anon.219 = type { %struct.bpf_raw_event_map }
%union.anon.220 = type { %struct.bpf_raw_event_map }
%union.anon.221 = type { %struct.bpf_raw_event_map }
%union.anon.222 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.rdma_id_private = type { %struct.rdma_cm_id, ptr, %struct.hlist_node, %union.anon.176, %union.anon.177, ptr, %struct.list_head, i32, i32, %struct.spinlock, %struct.mutex, %struct.completion, %struct.refcount_struct, %struct.mutex, i32, i32, ptr, i32, %union.anon.178, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.rdma_restrack_entry, %struct.rdma_ucm_ece }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.173 }
%union.anon.173 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%union.anon.176 = type { %struct.list_head }
%union.anon.177 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.178 = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.trace_event_raw_cma_fsm_class = type { %struct.trace_entry, i32, i32, [28 x i8], [28 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.trace_event_raw_cm_id_attach = type { %struct.trace_entry, i32, [28 x i8], [28 x i8], i32, [0 x i8] }
%struct.trace_event_raw_cma_qp_class = type { %struct.trace_entry, i32, i32, i32, [28 x i8], [28 x i8], [0 x i8] }
%struct.trace_event_raw_cm_qp_create = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], [28 x i8], [0 x i8] }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cm_req_handler = type { %struct.trace_entry, i32, i32, i32, [28 x i8], [28 x i8], [0 x i8] }
%struct.trace_event_raw_cm_event_handler = type { %struct.trace_entry, i32, i32, i32, i32, [28 x i8], [28 x i8], [0 x i8] }
%struct.rdma_cm_event = type { i32, i32, %union.anon.172, %struct.rdma_ucm_ece }
%union.anon.172 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.trace_event_raw_cm_event_done = type { %struct.trace_entry, i32, i32, i32, i32, [28 x i8], [28 x i8], [0 x i8] }
%struct.trace_event_raw_cma_client_class = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cm_send_rtu = internal constant [12 x i8] c"cm_send_rtu\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_rtu = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_rtu }, align 4
@__tracepoint_cm_send_rtu = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_rtu, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_rtu, ptr null, ptr @__traceiter_cm_send_rtu, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_rtu = internal constant ptr @__tracepoint_cm_send_rtu, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_send_rej = internal constant [12 x i8] c"cm_send_rej\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_rej = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_rej }, align 4
@__tracepoint_cm_send_rej = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_rej, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_rej, ptr null, ptr @__traceiter_cm_send_rej, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_rej = internal constant ptr @__tracepoint_cm_send_rej, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_send_mra = internal constant [12 x i8] c"cm_send_mra\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_mra = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_mra }, align 4
@__tracepoint_cm_send_mra = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_mra, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_mra, ptr null, ptr @__traceiter_cm_send_mra, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_mra = internal constant ptr @__tracepoint_cm_send_mra, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_send_sidr_req = internal constant [17 x i8] c"cm_send_sidr_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_sidr_req = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_sidr_req }, align 4
@__tracepoint_cm_send_sidr_req = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_sidr_req, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_sidr_req, ptr null, ptr @__traceiter_cm_send_sidr_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_sidr_req = internal constant ptr @__tracepoint_cm_send_sidr_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_send_sidr_rep = internal constant [17 x i8] c"cm_send_sidr_rep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_sidr_rep = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_sidr_rep }, align 4
@__tracepoint_cm_send_sidr_rep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_sidr_rep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_sidr_rep, ptr null, ptr @__traceiter_cm_send_sidr_rep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_sidr_rep = internal constant ptr @__tracepoint_cm_send_sidr_rep, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_disconnect = internal constant [14 x i8] c"cm_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_cm_disconnect }, align 4
@__tracepoint_cm_disconnect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_disconnect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_disconnect, ptr null, ptr @__traceiter_cm_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_disconnect = internal constant ptr @__tracepoint_cm_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_sent_drep = internal constant [13 x i8] c"cm_sent_drep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_sent_drep = dso_local global %struct.static_call_key { ptr @__traceiter_cm_sent_drep }, align 4
@__tracepoint_cm_sent_drep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_sent_drep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_sent_drep, ptr null, ptr @__traceiter_cm_sent_drep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_sent_drep = internal constant ptr @__tracepoint_cm_sent_drep, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_sent_dreq = internal constant [13 x i8] c"cm_sent_dreq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_sent_dreq = dso_local global %struct.static_call_key { ptr @__traceiter_cm_sent_dreq }, align 4
@__tracepoint_cm_sent_dreq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_sent_dreq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_sent_dreq, ptr null, ptr @__traceiter_cm_sent_dreq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_sent_dreq = internal constant ptr @__tracepoint_cm_sent_dreq, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_id_destroy = internal constant [14 x i8] c"cm_id_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_id_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_cm_id_destroy }, align 4
@__tracepoint_cm_id_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_id_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_id_destroy, ptr null, ptr @__traceiter_cm_id_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_id_destroy = internal constant ptr @__tracepoint_cm_id_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_id_attach = internal constant [13 x i8] c"cm_id_attach\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_id_attach = dso_local global %struct.static_call_key { ptr @__traceiter_cm_id_attach }, align 4
@__tracepoint_cm_id_attach = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_id_attach, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_id_attach, ptr null, ptr @__traceiter_cm_id_attach, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_id_attach = internal constant ptr @__tracepoint_cm_id_attach, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_send_req = internal constant [12 x i8] c"cm_send_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_req = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_req }, align 4
@__tracepoint_cm_send_req = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_req, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_req, ptr null, ptr @__traceiter_cm_send_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_req = internal constant ptr @__tracepoint_cm_send_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_send_rep = internal constant [12 x i8] c"cm_send_rep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_send_rep = dso_local global %struct.static_call_key { ptr @__traceiter_cm_send_rep }, align 4
@__tracepoint_cm_send_rep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_send_rep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_send_rep, ptr null, ptr @__traceiter_cm_send_rep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_send_rep = internal constant ptr @__tracepoint_cm_send_rep, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_qp_destroy = internal constant [14 x i8] c"cm_qp_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_qp_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_cm_qp_destroy }, align 4
@__tracepoint_cm_qp_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_qp_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_qp_destroy, ptr null, ptr @__traceiter_cm_qp_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_qp_destroy = internal constant ptr @__tracepoint_cm_qp_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_qp_create = internal constant [13 x i8] c"cm_qp_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_qp_create = dso_local global %struct.static_call_key { ptr @__traceiter_cm_qp_create }, align 4
@__tracepoint_cm_qp_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_qp_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_qp_create, ptr null, ptr @__traceiter_cm_qp_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_qp_create = internal constant ptr @__tracepoint_cm_qp_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_req_handler = internal constant [15 x i8] c"cm_req_handler\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_req_handler = dso_local global %struct.static_call_key { ptr @__traceiter_cm_req_handler }, align 4
@__tracepoint_cm_req_handler = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_req_handler, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_req_handler, ptr null, ptr @__traceiter_cm_req_handler, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_req_handler = internal constant ptr @__tracepoint_cm_req_handler, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_event_handler = internal constant [17 x i8] c"cm_event_handler\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_event_handler = dso_local global %struct.static_call_key { ptr @__traceiter_cm_event_handler }, align 4
@__tracepoint_cm_event_handler = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_event_handler, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_event_handler, ptr null, ptr @__traceiter_cm_event_handler, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_event_handler = internal constant ptr @__tracepoint_cm_event_handler, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_event_done = internal constant [14 x i8] c"cm_event_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_event_done = dso_local global %struct.static_call_key { ptr @__traceiter_cm_event_done }, align 4
@__tracepoint_cm_event_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_event_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_event_done, ptr null, ptr @__traceiter_cm_event_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_event_done = internal constant ptr @__tracepoint_cm_event_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_add_one = internal constant [11 x i8] c"cm_add_one\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_add_one = dso_local global %struct.static_call_key { ptr @__traceiter_cm_add_one }, align 4
@__tracepoint_cm_add_one = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_add_one, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_add_one, ptr null, ptr @__traceiter_cm_add_one, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_add_one = internal constant ptr @__tracepoint_cm_add_one, section "__tracepoints_ptrs", align 4
@__tpstrtab_cm_remove_one = internal constant [14 x i8] c"cm_remove_one\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cm_remove_one = dso_local global %struct.static_call_key { ptr @__traceiter_cm_remove_one }, align 4
@__tracepoint_cm_remove_one = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cm_remove_one, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cm_remove_one, ptr null, ptr @__traceiter_cm_remove_one, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cm_remove_one = internal constant ptr @__tracepoint_cm_remove_one, section "__tracepoints_ptrs", align 4
@str__rdma_cma__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdma_cma\00", [23 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_EVENT_CQ_ERR\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_CQ_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_CQ_ERR = internal global ptr @__TRACE_SYSTEM_IB_EVENT_CQ_ERR, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_EVENT_QP_FATAL\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_QP_FATAL = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_QP_FATAL = internal global ptr @__TRACE_SYSTEM_IB_EVENT_QP_FATAL, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_EVENT_QP_REQ_ERR\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR = internal global ptr @__TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IB_EVENT_QP_ACCESS_ERR\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR = internal global ptr @__TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_EVENT_COMM_EST\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_COMM_EST = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.4, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_COMM_EST = internal global ptr @__TRACE_SYSTEM_IB_EVENT_COMM_EST, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_EVENT_SQ_DRAINED\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_SQ_DRAINED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_SQ_DRAINED = internal global ptr @__TRACE_SYSTEM_IB_EVENT_SQ_DRAINED, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_EVENT_PATH_MIG\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_PATH_MIG = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.6, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_PATH_MIG = internal global ptr @__TRACE_SYSTEM_IB_EVENT_PATH_MIG, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IB_EVENT_PATH_MIG_ERR\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.7, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR = internal global ptr @__TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IB_EVENT_DEVICE_FATAL\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.8, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL = internal global ptr @__TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_EVENT_PORT_ACTIVE\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.9, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE = internal global ptr @__TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_EVENT_PORT_ERR\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_PORT_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.10, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_PORT_ERR = internal global ptr @__TRACE_SYSTEM_IB_EVENT_PORT_ERR, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_EVENT_LID_CHANGE\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_LID_CHANGE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.11, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_LID_CHANGE = internal global ptr @__TRACE_SYSTEM_IB_EVENT_LID_CHANGE, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_EVENT_PKEY_CHANGE\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.12, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE = internal global ptr @__TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_EVENT_SM_CHANGE\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_SM_CHANGE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.13, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_SM_CHANGE = internal global ptr @__TRACE_SYSTEM_IB_EVENT_SM_CHANGE, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IB_EVENT_SRQ_ERR\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_SRQ_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.14, i32 14 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_SRQ_ERR = internal global ptr @__TRACE_SYSTEM_IB_EVENT_SRQ_ERR, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IB_EVENT_SRQ_LIMIT_REACHED\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.15, i32 15 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED = internal global ptr @__TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED, section "_ftrace_eval_map", align 4
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IB_EVENT_QP_LAST_WQE_REACHED\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.16, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED = internal global ptr @__TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED, section "_ftrace_eval_map", align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IB_EVENT_CLIENT_REREGISTER\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.17, i32 17 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER = internal global ptr @__TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER, section "_ftrace_eval_map", align 4
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_EVENT_GID_CHANGE\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_GID_CHANGE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.18, i32 18 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_GID_CHANGE = internal global ptr @__TRACE_SYSTEM_IB_EVENT_GID_CHANGE, section "_ftrace_eval_map", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_EVENT_WQ_FATAL\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_EVENT_WQ_FATAL = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.19, i32 19 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_EVENT_WQ_FATAL = internal global ptr @__TRACE_SYSTEM_IB_EVENT_WQ_FATAL, section "_ftrace_eval_map", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IB_WC_SUCCESS\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_SUCCESS = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.20, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_SUCCESS = internal global ptr @__TRACE_SYSTEM_IB_WC_SUCCESS, section "_ftrace_eval_map", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_WC_LOC_LEN_ERR\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_LOC_LEN_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.21, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_LOC_LEN_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_LOC_LEN_ERR, section "_ftrace_eval_map", align 4
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_WC_LOC_QP_OP_ERR\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.22, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR, section "_ftrace_eval_map", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_WC_LOC_EEC_OP_ERR\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.23, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR, section "_ftrace_eval_map", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_WC_LOC_PROT_ERR\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_LOC_PROT_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.24, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_LOC_PROT_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_LOC_PROT_ERR, section "_ftrace_eval_map", align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_WC_WR_FLUSH_ERR\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.25, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR, section "_ftrace_eval_map", align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_WC_MW_BIND_ERR\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_MW_BIND_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.26, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_MW_BIND_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_MW_BIND_ERR, section "_ftrace_eval_map", align 4
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_WC_BAD_RESP_ERR\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_BAD_RESP_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.27, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_BAD_RESP_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_BAD_RESP_ERR, section "_ftrace_eval_map", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_WC_LOC_ACCESS_ERR\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.28, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR, section "_ftrace_eval_map", align 4
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IB_WC_REM_INV_REQ_ERR\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.29, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR, section "_ftrace_eval_map", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_WC_REM_ACCESS_ERR\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.30, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR, section "_ftrace_eval_map", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IB_WC_REM_OP_ERR\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_REM_OP_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.31, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_REM_OP_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_REM_OP_ERR, section "_ftrace_eval_map", align 4
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_WC_RETRY_EXC_ERR\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.32, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR, section "_ftrace_eval_map", align 4
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IB_WC_RNR_RETRY_EXC_ERR\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.33, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR, section "_ftrace_eval_map", align 4
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IB_WC_LOC_RDD_VIOL_ERR\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.34, i32 14 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR, section "_ftrace_eval_map", align 4
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IB_WC_REM_INV_RD_REQ_ERR\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.35, i32 15 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR, section "_ftrace_eval_map", align 4
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_WC_REM_ABORT_ERR\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_REM_ABORT_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.36, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_REM_ABORT_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_REM_ABORT_ERR, section "_ftrace_eval_map", align 4
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_WC_INV_EECN_ERR\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_INV_EECN_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.37, i32 17 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_INV_EECN_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_INV_EECN_ERR, section "_ftrace_eval_map", align 4
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IB_WC_INV_EEC_STATE_ERR\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.38, i32 18 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR, section "_ftrace_eval_map", align 4
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_WC_FATAL_ERR\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_FATAL_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.39, i32 19 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_FATAL_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_FATAL_ERR, section "_ftrace_eval_map", align 4
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IB_WC_RESP_TIMEOUT_ERR\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.40, i32 20 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR, section "_ftrace_eval_map", align 4
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_WC_GENERAL_ERR\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_WC_GENERAL_ERR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.41, i32 21 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_WC_GENERAL_ERR = internal global ptr @__TRACE_SYSTEM_IB_WC_GENERAL_ERR, section "_ftrace_eval_map", align 4
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_CM_REQ_ERROR\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_REQ_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.42, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_REQ_ERROR = internal global ptr @__TRACE_SYSTEM_IB_CM_REQ_ERROR, section "_ftrace_eval_map", align 4
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_REQ_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_REQ_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.43, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_REQ_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_REQ_RECEIVED, section "_ftrace_eval_map", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_CM_REP_ERROR\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_REP_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.44, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_REP_ERROR = internal global ptr @__TRACE_SYSTEM_IB_CM_REP_ERROR, section "_ftrace_eval_map", align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_REP_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_REP_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.45, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_REP_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_REP_RECEIVED, section "_ftrace_eval_map", align 4
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_RTU_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_RTU_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.46, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_RTU_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_RTU_RECEIVED, section "_ftrace_eval_map", align 4
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IB_CM_USER_ESTABLISHED\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_USER_ESTABLISHED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.47, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_USER_ESTABLISHED = internal global ptr @__TRACE_SYSTEM_IB_CM_USER_ESTABLISHED, section "_ftrace_eval_map", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IB_CM_DREQ_ERROR\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_DREQ_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.48, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_DREQ_ERROR = internal global ptr @__TRACE_SYSTEM_IB_CM_DREQ_ERROR, section "_ftrace_eval_map", align 4
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_CM_DREQ_RECEIVED\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_DREQ_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.49, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_DREQ_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_DREQ_RECEIVED, section "_ftrace_eval_map", align 4
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_CM_DREP_RECEIVED\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_DREP_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.50, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_DREP_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_DREP_RECEIVED, section "_ftrace_eval_map", align 4
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IB_CM_TIMEWAIT_EXIT\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.51, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT = internal global ptr @__TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT, section "_ftrace_eval_map", align 4
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_MRA_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_MRA_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.52, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_MRA_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_MRA_RECEIVED, section "_ftrace_eval_map", align 4
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_REJ_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_REJ_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.53, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_REJ_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_REJ_RECEIVED, section "_ftrace_eval_map", align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_CM_LAP_ERROR\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_LAP_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.54, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_LAP_ERROR = internal global ptr @__TRACE_SYSTEM_IB_CM_LAP_ERROR, section "_ftrace_eval_map", align 4
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_LAP_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_LAP_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.55, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_LAP_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_LAP_RECEIVED, section "_ftrace_eval_map", align 4
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_CM_APR_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_APR_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.56, i32 14 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_APR_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_APR_RECEIVED, section "_ftrace_eval_map", align 4
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_CM_SIDR_REQ_ERROR\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.57, i32 15 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR = internal global ptr @__TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR, section "_ftrace_eval_map", align 4
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IB_CM_SIDR_REQ_RECEIVED\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.58, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED, section "_ftrace_eval_map", align 4
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IB_CM_SIDR_REP_RECEIVED\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.59, i32 17 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED = internal global ptr @__TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED, section "_ftrace_eval_map", align 4
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RDMA_CM_EVENT_ADDR_RESOLVED\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.60, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED, section "_ftrace_eval_map", align 4
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RDMA_CM_EVENT_ADDR_ERROR\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.61, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR, section "_ftrace_eval_map", align 4
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDMA_CM_EVENT_ROUTE_RESOLVED\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.62, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED, section "_ftrace_eval_map", align 4
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RDMA_CM_EVENT_ROUTE_ERROR\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.63, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR, section "_ftrace_eval_map", align 4
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RDMA_CM_EVENT_CONNECT_REQUEST\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.64, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST, section "_ftrace_eval_map", align 4
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RDMA_CM_EVENT_CONNECT_RESPONSE\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.65, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE, section "_ftrace_eval_map", align 4
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RDMA_CM_EVENT_CONNECT_ERROR\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.66, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR, section "_ftrace_eval_map", align 4
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RDMA_CM_EVENT_UNREACHABLE\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.67, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE, section "_ftrace_eval_map", align 4
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDMA_CM_EVENT_REJECTED\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.68, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED, section "_ftrace_eval_map", align 4
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RDMA_CM_EVENT_ESTABLISHED\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.69, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED, section "_ftrace_eval_map", align 4
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RDMA_CM_EVENT_DISCONNECTED\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.70, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED, section "_ftrace_eval_map", align 4
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDMA_CM_EVENT_DEVICE_REMOVAL\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.71, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL, section "_ftrace_eval_map", align 4
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDMA_CM_EVENT_MULTICAST_JOIN\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.72, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN, section "_ftrace_eval_map", align 4
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RDMA_CM_EVENT_MULTICAST_ERROR\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.73, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR, section "_ftrace_eval_map", align 4
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RDMA_CM_EVENT_ADDR_CHANGE\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.74, i32 14 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE, section "_ftrace_eval_map", align 4
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RDMA_CM_EVENT_TIMEWAIT_EXIT\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.75, i32 15 }, section ".init.data", align 4
@TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT = internal global ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT, section "_ftrace_eval_map", align 4
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IB_QPT_SMI\00", [21 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_SMI = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.76, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_SMI = internal global ptr @__TRACE_SYSTEM_IB_QPT_SMI, section "_ftrace_eval_map", align 4
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IB_QPT_GSI\00", [21 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_GSI = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.77, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_GSI = internal global ptr @__TRACE_SYSTEM_IB_QPT_GSI, section "_ftrace_eval_map", align 4
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IB_QPT_RC\00", [22 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_RC = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.78, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_RC = internal global ptr @__TRACE_SYSTEM_IB_QPT_RC, section "_ftrace_eval_map", align 4
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IB_QPT_UC\00", [22 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_UC = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.79, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_UC = internal global ptr @__TRACE_SYSTEM_IB_QPT_UC, section "_ftrace_eval_map", align 4
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IB_QPT_UD\00", [22 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_UD = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.80, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_UD = internal global ptr @__TRACE_SYSTEM_IB_QPT_UD, section "_ftrace_eval_map", align 4
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_QPT_RAW_IPV6\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_RAW_IPV6 = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.81, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_RAW_IPV6 = internal global ptr @__TRACE_SYSTEM_IB_QPT_RAW_IPV6, section "_ftrace_eval_map", align 4
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_QPT_RAW_ETHERTYPE\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.82, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE = internal global ptr @__TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE, section "_ftrace_eval_map", align 4
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_QPT_RAW_PACKET\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_RAW_PACKET = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.83, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_RAW_PACKET = internal global ptr @__TRACE_SYSTEM_IB_QPT_RAW_PACKET, section "_ftrace_eval_map", align 4
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IB_QPT_XRC_INI\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_XRC_INI = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.84, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_XRC_INI = internal global ptr @__TRACE_SYSTEM_IB_QPT_XRC_INI, section "_ftrace_eval_map", align 4
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IB_QPT_XRC_TGT\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_QPT_XRC_TGT = internal global %struct.trace_eval_map { ptr @str__rdma_cma__trace_system_name, ptr @.str.85, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_QPT_XRC_TGT = internal global ptr @__TRACE_SYSTEM_IB_QPT_XRC_TGT, section "_ftrace_eval_map", align 4
@trace_event_fields_cma_fsm_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cma_fsm_class = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cma_fsm_class, ptr @perf_trace_cma_fsm_class, ptr @trace_event_reg, ptr @trace_event_fields_cma_fsm_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_fsm_class, i64 24), ptr getelementptr (i8, ptr @event_class_cma_fsm_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_fsm_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cma_fsm_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cma_fsm_class = internal global { [90 x i8], [38 x i8] } { [90 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc tos=%u\22, REC->cm_id, REC->srcaddr, REC->dstaddr, REC->tos\00", [38 x i8] zeroinitializer }, align 32
@event_cm_send_rtu = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_send_rtu }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_rtu = internal global ptr @event_cm_send_rtu, section "_ftrace_events", align 4
@event_cm_send_rej = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_send_rej }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_rej = internal global ptr @event_cm_send_rej, section "_ftrace_events", align 4
@event_cm_send_mra = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_send_mra }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_mra = internal global ptr @event_cm_send_mra, section "_ftrace_events", align 4
@event_cm_send_sidr_req = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_send_sidr_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_sidr_req = internal global ptr @event_cm_send_sidr_req, section "_ftrace_events", align 4
@event_cm_send_sidr_rep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_send_sidr_rep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_sidr_rep = internal global ptr @event_cm_send_sidr_rep, section "_ftrace_events", align 4
@event_cm_disconnect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_disconnect = internal global ptr @event_cm_disconnect, section "_ftrace_events", align 4
@event_cm_sent_drep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_sent_drep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_sent_drep = internal global ptr @event_cm_sent_drep, section "_ftrace_events", align 4
@event_cm_sent_dreq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_sent_dreq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_sent_dreq = internal global ptr @event_cm_sent_dreq, section "_ftrace_events", align 4
@event_cm_id_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_fsm_class, %union.anon.202 { ptr @__tracepoint_cm_id_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_fsm_class }, ptr @print_fmt_cma_fsm_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_id_destroy = internal global ptr @event_cm_id_destroy, section "_ftrace_events", align 4
@trace_event_fields_cm_id_attach = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.94, %union.anon.200 { %struct.anon.201 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cm_id_attach = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cm_id_attach, ptr @perf_trace_cm_id_attach, ptr @trace_event_reg, ptr @trace_event_fields_cm_id_attach, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_id_attach, i64 24), ptr getelementptr (i8, ptr @event_class_cm_id_attach, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_id_attach = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_id_attach, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_id_attach = internal global { [103 x i8], [57 x i8] } { [103 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc device=%s\22, REC->cm_id, REC->srcaddr, REC->dstaddr, __get_str(devname)\00", [57 x i8] zeroinitializer }, align 32
@event_cm_id_attach = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_id_attach, %union.anon.202 { ptr @__tracepoint_cm_id_attach }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_id_attach }, ptr @print_fmt_cm_id_attach, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_id_attach = internal global ptr @event_cm_id_attach, section "_ftrace_events", align 4
@trace_event_fields_cma_qp_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.97, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cma_qp_class = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cma_qp_class, ptr @perf_trace_cma_qp_class, ptr @trace_event_reg, ptr @trace_event_fields_cma_qp_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_qp_class, i64 24), ptr getelementptr (i8, ptr @event_class_cma_qp_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_qp_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cma_qp_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cma_qp_class = internal global { [113 x i8], [47 x i8] } { [113 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc tos=%u qp_num=%u\22, REC->cm_id, REC->srcaddr, REC->dstaddr, REC->tos, REC->qp_num\00", [47 x i8] zeroinitializer }, align 32
@event_cm_send_req = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_qp_class, %union.anon.202 { ptr @__tracepoint_cm_send_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_qp_class }, ptr @print_fmt_cma_qp_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_req = internal global ptr @event_cm_send_req, section "_ftrace_events", align 4
@event_cm_send_rep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_qp_class, %union.anon.202 { ptr @__tracepoint_cm_send_rep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_qp_class }, ptr @print_fmt_cma_qp_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_send_rep = internal global ptr @event_cm_send_rep, section "_ftrace_events", align 4
@event_cm_qp_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_qp_class, %union.anon.202 { ptr @__tracepoint_cm_qp_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_qp_class }, ptr @print_fmt_cma_qp_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_qp_destroy = internal global ptr @event_cm_qp_destroy, section "_ftrace_events", align 4
@trace_event_fields_cm_qp_create = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.97, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.102, %union.anon.200 { %struct.anon.201 { ptr @.str.103, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.104, %union.anon.200 { %struct.anon.201 { ptr @.str.105, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_cm_qp_create = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cm_qp_create, ptr @perf_trace_cm_qp_create, ptr @trace_event_reg, ptr @trace_event_fields_cm_qp_create, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_qp_create, i64 24), ptr getelementptr (i8, ptr @event_class_cm_qp_create, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_qp_create = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_qp_create, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_qp_create = internal global { [526 x i8], [146 x i8] } { [526 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc tos=%u pd.id=%u qp_type=%s send_wr=%u recv_wr=%u qp_num=%u rc=%d\22, REC->cm_id, REC->srcaddr, REC->dstaddr, REC->tos, REC->pd_id, __print_symbolic(REC->qp_type, { IB_QPT_SMI, \22SMI\22 }, { IB_QPT_GSI, \22GSI\22 }, { IB_QPT_RC, \22RC\22 }, { IB_QPT_UC, \22UC\22 }, { IB_QPT_UD, \22UD\22 }, { IB_QPT_RAW_IPV6, \22RAW_IPV6\22 }, { IB_QPT_RAW_ETHERTYPE, \22RAW_ETHERTYPE\22 }, { IB_QPT_RAW_PACKET, \22RAW_PACKET\22 }, { IB_QPT_XRC_INI, \22XRC_INI\22 }, { IB_QPT_XRC_TGT, \22XRC_TGT\22 }), REC->send_wr, REC->recv_wr, REC->qp_num, REC->rc\00", [146 x i8] zeroinitializer }, align 32
@event_cm_qp_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_qp_create, %union.anon.202 { ptr @__tracepoint_cm_qp_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_qp_create }, ptr @print_fmt_cm_qp_create, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_qp_create = internal global ptr @event_cm_qp_create, section "_ftrace_events", align 4
@trace_event_fields_cm_req_handler = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.104, %union.anon.200 { %struct.anon.201 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cm_req_handler = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cm_req_handler, ptr @perf_trace_cm_req_handler, ptr @trace_event_reg, ptr @trace_event_fields_cm_req_handler, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_req_handler, i64 24), ptr getelementptr (i8, ptr @event_class_cm_req_handler, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_req_handler = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_req_handler, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_req_handler = internal global { [877 x i8], [211 x i8] } { [877 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc tos=%u %s (%lu)\22, REC->cm_id, REC->srcaddr, REC->dstaddr, REC->tos, __print_symbolic(REC->event, { IB_CM_REQ_ERROR, \22REQ_ERROR\22 }, { IB_CM_REQ_RECEIVED, \22REQ_RECEIVED\22 }, { IB_CM_REP_ERROR, \22REP_ERROR\22 }, { IB_CM_REP_RECEIVED, \22REP_RECEIVED\22 }, { IB_CM_RTU_RECEIVED, \22RTU_RECEIVED\22 }, { IB_CM_USER_ESTABLISHED, \22USER_ESTABLISHED\22 }, { IB_CM_DREQ_ERROR, \22DREQ_ERROR\22 }, { IB_CM_DREQ_RECEIVED, \22DREQ_RECEIVED\22 }, { IB_CM_DREP_RECEIVED, \22DREP_RECEIVED\22 }, { IB_CM_TIMEWAIT_EXIT, \22TIMEWAIT_EXIT\22 }, { IB_CM_MRA_RECEIVED, \22MRA_RECEIVED\22 }, { IB_CM_REJ_RECEIVED, \22REJ_RECEIVED\22 }, { IB_CM_LAP_ERROR, \22LAP_ERROR\22 }, { IB_CM_LAP_RECEIVED, \22LAP_RECEIVED\22 }, { IB_CM_APR_RECEIVED, \22APR_RECEIVED\22 }, { IB_CM_SIDR_REQ_ERROR, \22SIDR_REQ_ERROR\22 }, { IB_CM_SIDR_REQ_RECEIVED, \22SIDR_REQ_RECEIVED\22 }, { IB_CM_SIDR_REP_RECEIVED, \22SIDR_REP_RECEIVED\22 }), REC->event\00", [211 x i8] zeroinitializer }, align 32
@event_cm_req_handler = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_req_handler, %union.anon.202 { ptr @__tracepoint_cm_req_handler }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_req_handler }, ptr @print_fmt_cm_req_handler, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_req_handler = internal global ptr @event_cm_req_handler, section "_ftrace_events", align 4
@trace_event_fields_cm_event_handler = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.104, %union.anon.200 { %struct.anon.201 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.102, %union.anon.200 { %struct.anon.201 { ptr @.str.137, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cm_event_handler = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cm_event_handler, ptr @perf_trace_cm_event_handler, ptr @trace_event_reg, ptr @trace_event_fields_cm_event_handler, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_event_handler, i64 24), ptr getelementptr (i8, ptr @event_class_cm_event_handler, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_event_handler = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_event_handler, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_event_handler = internal global { [943 x i8], [241 x i8] } { [943 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc tos=%u %s (%lu/%d)\22, REC->cm_id, REC->srcaddr, REC->dstaddr, REC->tos, __print_symbolic(REC->event, { RDMA_CM_EVENT_ADDR_RESOLVED, \22ADDR_RESOLVED\22 }, { RDMA_CM_EVENT_ADDR_ERROR, \22ADDR_ERROR\22 }, { RDMA_CM_EVENT_ROUTE_RESOLVED, \22ROUTE_RESOLVED\22 }, { RDMA_CM_EVENT_ROUTE_ERROR, \22ROUTE_ERROR\22 }, { RDMA_CM_EVENT_CONNECT_REQUEST, \22CONNECT_REQUEST\22 }, { RDMA_CM_EVENT_CONNECT_RESPONSE, \22CONNECT_RESPONSE\22 }, { RDMA_CM_EVENT_CONNECT_ERROR, \22CONNECT_ERROR\22 }, { RDMA_CM_EVENT_UNREACHABLE, \22UNREACHABLE\22 }, { RDMA_CM_EVENT_REJECTED, \22REJECTED\22 }, { RDMA_CM_EVENT_ESTABLISHED, \22ESTABLISHED\22 }, { RDMA_CM_EVENT_DISCONNECTED, \22DISCONNECTED\22 }, { RDMA_CM_EVENT_DEVICE_REMOVAL, \22DEVICE_REMOVAL\22 }, { RDMA_CM_EVENT_MULTICAST_JOIN, \22MULTICAST_JOIN\22 }, { RDMA_CM_EVENT_MULTICAST_ERROR, \22MULTICAST_ERROR\22 }, { RDMA_CM_EVENT_ADDR_CHANGE, \22ADDR_CHANGE\22 }, { RDMA_CM_EVENT_TIMEWAIT_EXIT, \22TIMEWAIT_EXIT\22 }), REC->event, REC->status\00", [241 x i8] zeroinitializer }, align 32
@event_cm_event_handler = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_event_handler, %union.anon.202 { ptr @__tracepoint_cm_event_handler }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_event_handler }, ptr @print_fmt_cm_event_handler, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_event_handler = internal global ptr @event_cm_event_handler, section "_ftrace_events", align 4
@trace_event_fields_cm_event_done = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.200 { %struct.anon.201 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.104, %union.anon.200 { %struct.anon.201 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.102, %union.anon.200 { %struct.anon.201 { ptr @.str.154, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.90, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.89, %union.anon.200 { %struct.anon.201 { ptr @.str.91, i32 28, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cm_event_done = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cm_event_done, ptr @perf_trace_cm_event_done, ptr @trace_event_reg, ptr @trace_event_fields_cm_event_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_event_done, i64 24), ptr getelementptr (i8, ptr @event_class_cm_event_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_event_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_event_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_event_done = internal global { [942 x i8], [242 x i8] } { [942 x i8] c"\22cm.id=%u src=%pISpc dst=%pISpc tos=%u %s consumer returns %d\22, REC->cm_id, REC->srcaddr, REC->dstaddr, REC->tos, __print_symbolic(REC->event, { RDMA_CM_EVENT_ADDR_RESOLVED, \22ADDR_RESOLVED\22 }, { RDMA_CM_EVENT_ADDR_ERROR, \22ADDR_ERROR\22 }, { RDMA_CM_EVENT_ROUTE_RESOLVED, \22ROUTE_RESOLVED\22 }, { RDMA_CM_EVENT_ROUTE_ERROR, \22ROUTE_ERROR\22 }, { RDMA_CM_EVENT_CONNECT_REQUEST, \22CONNECT_REQUEST\22 }, { RDMA_CM_EVENT_CONNECT_RESPONSE, \22CONNECT_RESPONSE\22 }, { RDMA_CM_EVENT_CONNECT_ERROR, \22CONNECT_ERROR\22 }, { RDMA_CM_EVENT_UNREACHABLE, \22UNREACHABLE\22 }, { RDMA_CM_EVENT_REJECTED, \22REJECTED\22 }, { RDMA_CM_EVENT_ESTABLISHED, \22ESTABLISHED\22 }, { RDMA_CM_EVENT_DISCONNECTED, \22DISCONNECTED\22 }, { RDMA_CM_EVENT_DEVICE_REMOVAL, \22DEVICE_REMOVAL\22 }, { RDMA_CM_EVENT_MULTICAST_JOIN, \22MULTICAST_JOIN\22 }, { RDMA_CM_EVENT_MULTICAST_ERROR, \22MULTICAST_ERROR\22 }, { RDMA_CM_EVENT_ADDR_CHANGE, \22ADDR_CHANGE\22 }, { RDMA_CM_EVENT_TIMEWAIT_EXIT, \22TIMEWAIT_EXIT\22 }), REC->result\00", [242 x i8] zeroinitializer }, align 32
@event_cm_event_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_event_done, %union.anon.202 { ptr @__tracepoint_cm_event_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_event_done }, ptr @print_fmt_cm_event_done, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_event_done = internal global ptr @event_cm_event_done, section "_ftrace_events", align 4
@trace_event_fields_cma_client_class = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.94, %union.anon.200 { %struct.anon.201 { ptr @.str.156, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cma_client_class = internal global %struct.trace_event_class { ptr @str__rdma_cma__trace_system_name, ptr @trace_event_raw_event_cma_client_class, ptr @perf_trace_cma_client_class, ptr @trace_event_reg, ptr @trace_event_fields_cma_client_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_client_class, i64 24), ptr getelementptr (i8, ptr @event_class_cma_client_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_client_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cma_client_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cma_client_class = internal global { [34 x i8], [62 x i8] } { [34 x i8] c"\22device name=%s\22, __get_str(name)\00", [62 x i8] zeroinitializer }, align 32
@event_cm_add_one = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_client_class, %union.anon.202 { ptr @__tracepoint_cm_add_one }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_client_class }, ptr @print_fmt_cma_client_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_add_one = internal global ptr @event_cm_add_one, section "_ftrace_events", align 4
@event_cm_remove_one = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_client_class, %union.anon.202 { ptr @__tracepoint_cm_remove_one }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_client_class }, ptr @print_fmt_cma_client_class, ptr null, %union.anon.203 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cm_remove_one = internal global ptr @event_cm_remove_one, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cm_send_rtu = internal global %union.anon.204 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_rtu, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_send_rej = internal global %union.anon.205 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_rej, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_send_mra = internal global %union.anon.206 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_mra, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_send_sidr_req = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_sidr_req, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_send_sidr_rep = internal global %union.anon.208 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_sidr_rep, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_disconnect = internal global %union.anon.209 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_disconnect, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_sent_drep = internal global %union.anon.210 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_sent_drep, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_sent_dreq = internal global %union.anon.211 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_sent_dreq, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_id_destroy = internal global %union.anon.212 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_id_destroy, ptr @__bpf_trace_cma_fsm_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_id_attach = internal global %union.anon.213 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_id_attach, ptr @__bpf_trace_cm_id_attach, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_send_req = internal global %union.anon.214 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_req, ptr @__bpf_trace_cma_qp_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_send_rep = internal global %union.anon.215 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_send_rep, ptr @__bpf_trace_cma_qp_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_qp_destroy = internal global %union.anon.216 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_qp_destroy, ptr @__bpf_trace_cma_qp_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_qp_create = internal global %union.anon.217 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_qp_create, ptr @__bpf_trace_cm_qp_create, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_req_handler = internal global %union.anon.218 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_req_handler, ptr @__bpf_trace_cm_req_handler, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_event_handler = internal global %union.anon.219 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_event_handler, ptr @__bpf_trace_cm_event_handler, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_event_done = internal global %union.anon.220 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_event_done, ptr @__bpf_trace_cm_event_done, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_add_one = internal global %union.anon.221 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_add_one, ptr @__bpf_trace_cma_client_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cm_remove_one = internal global %union.anon.222 { %struct.bpf_raw_event_map { ptr @__tracepoint_cm_remove_one, ptr @__bpf_trace_cma_client_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cm_id\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tos\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unsigned char[sizeof(struct sockaddr_in6)]\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"srcaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dstaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cm.id=%u src=%pISpc dst=%pISpc tos=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cm.id=%u src=%pISpc dst=%pISpc device=%s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qp_num\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cm.id=%u src=%pISpc dst=%pISpc tos=%u qp_num=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_id\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"send_wr\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recv_wr\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qp_type\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"cm.id=%u src=%pISpc dst=%pISpc tos=%u pd.id=%u qp_type=%s send_wr=%u recv_wr=%u qp_num=%u rc=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@trace_raw_output_cm_qp_create.symbols = internal constant { [11 x %struct.trace_print_flags], [40 x i8] } { [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.107 }, %struct.trace_print_flags { i32 1, ptr @.str.108 }, %struct.trace_print_flags { i32 2, ptr @.str.109 }, %struct.trace_print_flags { i32 3, ptr @.str.110 }, %struct.trace_print_flags { i32 4, ptr @.str.111 }, %struct.trace_print_flags { i32 5, ptr @.str.112 }, %struct.trace_print_flags { i32 6, ptr @.str.113 }, %struct.trace_print_flags { i32 8, ptr @.str.114 }, %struct.trace_print_flags { i32 9, ptr @.str.115 }, %struct.trace_print_flags { i32 10, ptr @.str.116 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMI\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GSI\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RC\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UC\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UD\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RAW_IPV6\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RAW_ETHERTYPE\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RAW_PACKET\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XRC_INI\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XRC_TGT\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cm.id=%u src=%pISpc dst=%pISpc tos=%u %s (%lu)\0A\00", [48 x i8] zeroinitializer }, align 32
@trace_raw_output_cm_req_handler.symbols = internal constant { [19 x %struct.trace_print_flags], [40 x i8] } { [19 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.119 }, %struct.trace_print_flags { i32 1, ptr @.str.120 }, %struct.trace_print_flags { i32 2, ptr @.str.121 }, %struct.trace_print_flags { i32 3, ptr @.str.122 }, %struct.trace_print_flags { i32 4, ptr @.str.123 }, %struct.trace_print_flags { i32 5, ptr @.str.124 }, %struct.trace_print_flags { i32 6, ptr @.str.125 }, %struct.trace_print_flags { i32 7, ptr @.str.126 }, %struct.trace_print_flags { i32 8, ptr @.str.127 }, %struct.trace_print_flags { i32 9, ptr @.str.128 }, %struct.trace_print_flags { i32 10, ptr @.str.129 }, %struct.trace_print_flags { i32 11, ptr @.str.130 }, %struct.trace_print_flags { i32 12, ptr @.str.131 }, %struct.trace_print_flags { i32 13, ptr @.str.132 }, %struct.trace_print_flags { i32 14, ptr @.str.133 }, %struct.trace_print_flags { i32 15, ptr @.str.134 }, %struct.trace_print_flags { i32 16, ptr @.str.135 }, %struct.trace_print_flags { i32 17, ptr @.str.136 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REQ_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REQ_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REP_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REP_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RTU_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USER_ESTABLISHED\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DREQ_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DREQ_RECEIVED\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DREP_RECEIVED\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TIMEWAIT_EXIT\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MRA_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REJ_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LAP_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LAP_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"APR_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SIDR_REQ_ERROR\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SIDR_REQ_RECEIVED\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SIDR_REP_RECEIVED\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cm.id=%u src=%pISpc dst=%pISpc tos=%u %s (%lu/%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_raw_output_cm_event_handler.symbols = internal constant { [17 x %struct.trace_print_flags], [56 x i8] } { [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.139 }, %struct.trace_print_flags { i32 1, ptr @.str.140 }, %struct.trace_print_flags { i32 2, ptr @.str.141 }, %struct.trace_print_flags { i32 3, ptr @.str.142 }, %struct.trace_print_flags { i32 4, ptr @.str.143 }, %struct.trace_print_flags { i32 5, ptr @.str.144 }, %struct.trace_print_flags { i32 6, ptr @.str.145 }, %struct.trace_print_flags { i32 7, ptr @.str.146 }, %struct.trace_print_flags { i32 8, ptr @.str.147 }, %struct.trace_print_flags { i32 9, ptr @.str.148 }, %struct.trace_print_flags { i32 10, ptr @.str.149 }, %struct.trace_print_flags { i32 11, ptr @.str.150 }, %struct.trace_print_flags { i32 12, ptr @.str.151 }, %struct.trace_print_flags { i32 13, ptr @.str.152 }, %struct.trace_print_flags { i32 14, ptr @.str.153 }, %struct.trace_print_flags { i32 15, ptr @.str.128 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADDR_RESOLVED\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADDR_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ROUTE_RESOLVED\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ROUTE_ERROR\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CONNECT_REQUEST\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CONNECT_RESPONSE\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CONNECT_ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNREACHABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REJECTED\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DISCONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEVICE_REMOVAL\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MULTICAST_JOIN\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MULTICAST_ERROR\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDR_CHANGE\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"cm.id=%u src=%pISpc dst=%pISpc tos=%u %s consumer returns %d\0A\00", [34 x i8] zeroinitializer }, align 32
@trace_raw_output_cm_event_done.symbols = internal constant { [17 x %struct.trace_print_flags], [56 x i8] } { [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.139 }, %struct.trace_print_flags { i32 1, ptr @.str.140 }, %struct.trace_print_flags { i32 2, ptr @.str.141 }, %struct.trace_print_flags { i32 3, ptr @.str.142 }, %struct.trace_print_flags { i32 4, ptr @.str.143 }, %struct.trace_print_flags { i32 5, ptr @.str.144 }, %struct.trace_print_flags { i32 6, ptr @.str.145 }, %struct.trace_print_flags { i32 7, ptr @.str.146 }, %struct.trace_print_flags { i32 8, ptr @.str.147 }, %struct.trace_print_flags { i32 9, ptr @.str.148 }, %struct.trace_print_flags { i32 10, ptr @.str.149 }, %struct.trace_print_flags { i32 11, ptr @.str.150 }, %struct.trace_print_flags { i32 12, ptr @.str.151 }, %struct.trace_print_flags { i32 13, ptr @.str.152 }, %struct.trace_print_flags { i32 14, ptr @.str.153 }, %struct.trace_print_flags { i32 15, ptr @.str.128 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device name=%s\0A\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [39 x i8] c"../drivers/infiniband/core/cma_trace.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [33 x i8] c"str__rdma_cma__trace_system_name\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 36, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 37, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 81, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 121, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [31 x i8] c"../include/trace/events/rdma.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 159, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 159, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant [33 x i8] c"trace_event_fields_cma_fsm_class\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_cma_fsm_class\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [24 x i8] c"print_fmt_cma_fsm_class\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [18 x i8] c"event_cm_send_rtu\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 56, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant [18 x i8] c"event_cm_send_rej\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 57, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant [18 x i8] c"event_cm_send_mra\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 58, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant [23 x i8] c"event_cm_send_sidr_req\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 59, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [23 x i8] c"event_cm_send_sidr_rep\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 60, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c"event_cm_disconnect\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 61, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant [19 x i8] c"event_cm_sent_drep\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 62, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant [19 x i8] c"event_cm_sent_dreq\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 63, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c"event_cm_id_destroy\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 64, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant [32 x i8] c"trace_event_fields_cm_id_attach\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_cm_id_attach\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [23 x i8] c"print_fmt_cm_id_attach\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [19 x i8] c"event_cm_id_attach\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [32 x i8] c"trace_event_fields_cma_qp_class\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_cma_qp_class\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [23 x i8] c"print_fmt_cma_qp_class\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [18 x i8] c"event_cm_send_req\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 134, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant [18 x i8] c"event_cm_send_rep\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 135, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c"event_cm_qp_destroy\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 136, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [32 x i8] c"trace_event_fields_cm_qp_create\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_cm_qp_create\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [23 x i8] c"print_fmt_cm_qp_create\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [19 x i8] c"event_cm_qp_create\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [34 x i8] c"trace_event_fields_cm_req_handler\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_cm_req_handler\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [25 x i8] c"print_fmt_cm_req_handler\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [21 x i8] c"event_cm_req_handler\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [36 x i8] c"trace_event_fields_cm_event_handler\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_cm_event_handler\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [27 x i8] c"print_fmt_cm_event_handler\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [23 x i8] c"event_cm_event_handler\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [33 x i8] c"trace_event_fields_cm_event_done\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_cm_event_done\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [24 x i8] c"print_fmt_cm_event_done\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c"event_cm_event_done\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [36 x i8] c"trace_event_fields_cma_client_class\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_cma_client_class\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [27 x i8] c"print_fmt_cma_client_class\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"event_cm_add_one\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 352, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c"event_cm_remove_one\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 353, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 21, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 66, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 96, i32 1 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 171, i32 1 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 223, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 255, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 290, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [41 x i8] c"../drivers/infiniband/core/./cma_trace.h\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 325, i32 1 }
@llvm.compiler.used = appending global [462 x ptr] [ptr @TRACE_SYSTEM_IB_CM_APR_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_DREP_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_DREQ_ERROR, ptr @TRACE_SYSTEM_IB_CM_DREQ_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_LAP_ERROR, ptr @TRACE_SYSTEM_IB_CM_LAP_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_MRA_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_REJ_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_REP_ERROR, ptr @TRACE_SYSTEM_IB_CM_REP_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_REQ_ERROR, ptr @TRACE_SYSTEM_IB_CM_REQ_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_RTU_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR, ptr @TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED, ptr @TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT, ptr @TRACE_SYSTEM_IB_CM_USER_ESTABLISHED, ptr @TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER, ptr @TRACE_SYSTEM_IB_EVENT_COMM_EST, ptr @TRACE_SYSTEM_IB_EVENT_CQ_ERR, ptr @TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL, ptr @TRACE_SYSTEM_IB_EVENT_GID_CHANGE, ptr @TRACE_SYSTEM_IB_EVENT_LID_CHANGE, ptr @TRACE_SYSTEM_IB_EVENT_PATH_MIG, ptr @TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR, ptr @TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE, ptr @TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE, ptr @TRACE_SYSTEM_IB_EVENT_PORT_ERR, ptr @TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR, ptr @TRACE_SYSTEM_IB_EVENT_QP_FATAL, ptr @TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED, ptr @TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR, ptr @TRACE_SYSTEM_IB_EVENT_SM_CHANGE, ptr @TRACE_SYSTEM_IB_EVENT_SQ_DRAINED, ptr @TRACE_SYSTEM_IB_EVENT_SRQ_ERR, ptr @TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED, ptr @TRACE_SYSTEM_IB_EVENT_WQ_FATAL, ptr @TRACE_SYSTEM_IB_QPT_GSI, ptr @TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE, ptr @TRACE_SYSTEM_IB_QPT_RAW_IPV6, ptr @TRACE_SYSTEM_IB_QPT_RAW_PACKET, ptr @TRACE_SYSTEM_IB_QPT_RC, ptr @TRACE_SYSTEM_IB_QPT_SMI, ptr @TRACE_SYSTEM_IB_QPT_UC, ptr @TRACE_SYSTEM_IB_QPT_UD, ptr @TRACE_SYSTEM_IB_QPT_XRC_INI, ptr @TRACE_SYSTEM_IB_QPT_XRC_TGT, ptr @TRACE_SYSTEM_IB_WC_BAD_RESP_ERR, ptr @TRACE_SYSTEM_IB_WC_FATAL_ERR, ptr @TRACE_SYSTEM_IB_WC_GENERAL_ERR, ptr @TRACE_SYSTEM_IB_WC_INV_EECN_ERR, ptr @TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR, ptr @TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR, ptr @TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR, ptr @TRACE_SYSTEM_IB_WC_LOC_LEN_ERR, ptr @TRACE_SYSTEM_IB_WC_LOC_PROT_ERR, ptr @TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR, ptr @TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR, ptr @TRACE_SYSTEM_IB_WC_MW_BIND_ERR, ptr @TRACE_SYSTEM_IB_WC_REM_ABORT_ERR, ptr @TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR, ptr @TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR, ptr @TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR, ptr @TRACE_SYSTEM_IB_WC_REM_OP_ERR, ptr @TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR, ptr @TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR, ptr @TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR, ptr @TRACE_SYSTEM_IB_WC_SUCCESS, ptr @TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT, ptr @TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE, ptr @__TRACE_SYSTEM_IB_CM_APR_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_DREP_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_DREQ_ERROR, ptr @__TRACE_SYSTEM_IB_CM_DREQ_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_LAP_ERROR, ptr @__TRACE_SYSTEM_IB_CM_LAP_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_MRA_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_REJ_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_REP_ERROR, ptr @__TRACE_SYSTEM_IB_CM_REP_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_REQ_ERROR, ptr @__TRACE_SYSTEM_IB_CM_REQ_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_RTU_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR, ptr @__TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED, ptr @__TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT, ptr @__TRACE_SYSTEM_IB_CM_USER_ESTABLISHED, ptr @__TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER, ptr @__TRACE_SYSTEM_IB_EVENT_COMM_EST, ptr @__TRACE_SYSTEM_IB_EVENT_CQ_ERR, ptr @__TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL, ptr @__TRACE_SYSTEM_IB_EVENT_GID_CHANGE, ptr @__TRACE_SYSTEM_IB_EVENT_LID_CHANGE, ptr @__TRACE_SYSTEM_IB_EVENT_PATH_MIG, ptr @__TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR, ptr @__TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE, ptr @__TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE, ptr @__TRACE_SYSTEM_IB_EVENT_PORT_ERR, ptr @__TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR, ptr @__TRACE_SYSTEM_IB_EVENT_QP_FATAL, ptr @__TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED, ptr @__TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR, ptr @__TRACE_SYSTEM_IB_EVENT_SM_CHANGE, ptr @__TRACE_SYSTEM_IB_EVENT_SQ_DRAINED, ptr @__TRACE_SYSTEM_IB_EVENT_SRQ_ERR, ptr @__TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED, ptr @__TRACE_SYSTEM_IB_EVENT_WQ_FATAL, ptr @__TRACE_SYSTEM_IB_QPT_GSI, ptr @__TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE, ptr @__TRACE_SYSTEM_IB_QPT_RAW_IPV6, ptr @__TRACE_SYSTEM_IB_QPT_RAW_PACKET, ptr @__TRACE_SYSTEM_IB_QPT_RC, ptr @__TRACE_SYSTEM_IB_QPT_SMI, ptr @__TRACE_SYSTEM_IB_QPT_UC, ptr @__TRACE_SYSTEM_IB_QPT_UD, ptr @__TRACE_SYSTEM_IB_QPT_XRC_INI, ptr @__TRACE_SYSTEM_IB_QPT_XRC_TGT, ptr @__TRACE_SYSTEM_IB_WC_BAD_RESP_ERR, ptr @__TRACE_SYSTEM_IB_WC_FATAL_ERR, ptr @__TRACE_SYSTEM_IB_WC_GENERAL_ERR, ptr @__TRACE_SYSTEM_IB_WC_INV_EECN_ERR, ptr @__TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR, ptr @__TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR, ptr @__TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR, ptr @__TRACE_SYSTEM_IB_WC_LOC_LEN_ERR, ptr @__TRACE_SYSTEM_IB_WC_LOC_PROT_ERR, ptr @__TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR, ptr @__TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR, ptr @__TRACE_SYSTEM_IB_WC_MW_BIND_ERR, ptr @__TRACE_SYSTEM_IB_WC_REM_ABORT_ERR, ptr @__TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR, ptr @__TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR, ptr @__TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR, ptr @__TRACE_SYSTEM_IB_WC_REM_OP_ERR, ptr @__TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR, ptr @__TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR, ptr @__TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR, ptr @__TRACE_SYSTEM_IB_WC_SUCCESS, ptr @__TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT, ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE, ptr @__bpf_trace_tp_map_cm_add_one, ptr @__bpf_trace_tp_map_cm_disconnect, ptr @__bpf_trace_tp_map_cm_event_done, ptr @__bpf_trace_tp_map_cm_event_handler, ptr @__bpf_trace_tp_map_cm_id_attach, ptr @__bpf_trace_tp_map_cm_id_destroy, ptr @__bpf_trace_tp_map_cm_qp_create, ptr @__bpf_trace_tp_map_cm_qp_destroy, ptr @__bpf_trace_tp_map_cm_remove_one, ptr @__bpf_trace_tp_map_cm_req_handler, ptr @__bpf_trace_tp_map_cm_send_mra, ptr @__bpf_trace_tp_map_cm_send_rej, ptr @__bpf_trace_tp_map_cm_send_rep, ptr @__bpf_trace_tp_map_cm_send_req, ptr @__bpf_trace_tp_map_cm_send_rtu, ptr @__bpf_trace_tp_map_cm_send_sidr_rep, ptr @__bpf_trace_tp_map_cm_send_sidr_req, ptr @__bpf_trace_tp_map_cm_sent_drep, ptr @__bpf_trace_tp_map_cm_sent_dreq, ptr @__event_cm_add_one, ptr @__event_cm_disconnect, ptr @__event_cm_event_done, ptr @__event_cm_event_handler, ptr @__event_cm_id_attach, ptr @__event_cm_id_destroy, ptr @__event_cm_qp_create, ptr @__event_cm_qp_destroy, ptr @__event_cm_remove_one, ptr @__event_cm_req_handler, ptr @__event_cm_send_mra, ptr @__event_cm_send_rej, ptr @__event_cm_send_rep, ptr @__event_cm_send_req, ptr @__event_cm_send_rtu, ptr @__event_cm_send_sidr_rep, ptr @__event_cm_send_sidr_req, ptr @__event_cm_sent_drep, ptr @__event_cm_sent_dreq, ptr @__tracepoint_cm_add_one, ptr @__tracepoint_cm_disconnect, ptr @__tracepoint_cm_event_done, ptr @__tracepoint_cm_event_handler, ptr @__tracepoint_cm_id_attach, ptr @__tracepoint_cm_id_destroy, ptr @__tracepoint_cm_qp_create, ptr @__tracepoint_cm_qp_destroy, ptr @__tracepoint_cm_remove_one, ptr @__tracepoint_cm_req_handler, ptr @__tracepoint_cm_send_mra, ptr @__tracepoint_cm_send_rej, ptr @__tracepoint_cm_send_rep, ptr @__tracepoint_cm_send_req, ptr @__tracepoint_cm_send_rtu, ptr @__tracepoint_cm_send_sidr_rep, ptr @__tracepoint_cm_send_sidr_req, ptr @__tracepoint_cm_sent_drep, ptr @__tracepoint_cm_sent_dreq, ptr @__tracepoint_ptr_cm_add_one, ptr @__tracepoint_ptr_cm_disconnect, ptr @__tracepoint_ptr_cm_event_done, ptr @__tracepoint_ptr_cm_event_handler, ptr @__tracepoint_ptr_cm_id_attach, ptr @__tracepoint_ptr_cm_id_destroy, ptr @__tracepoint_ptr_cm_qp_create, ptr @__tracepoint_ptr_cm_qp_destroy, ptr @__tracepoint_ptr_cm_remove_one, ptr @__tracepoint_ptr_cm_req_handler, ptr @__tracepoint_ptr_cm_send_mra, ptr @__tracepoint_ptr_cm_send_rej, ptr @__tracepoint_ptr_cm_send_rep, ptr @__tracepoint_ptr_cm_send_req, ptr @__tracepoint_ptr_cm_send_rtu, ptr @__tracepoint_ptr_cm_send_sidr_rep, ptr @__tracepoint_ptr_cm_send_sidr_req, ptr @__tracepoint_ptr_cm_sent_drep, ptr @__tracepoint_ptr_cm_sent_dreq, ptr @event_class_cm_event_done, ptr @event_class_cm_event_handler, ptr @event_class_cm_id_attach, ptr @event_class_cm_qp_create, ptr @event_class_cm_req_handler, ptr @event_class_cma_client_class, ptr @event_class_cma_fsm_class, ptr @event_class_cma_qp_class, ptr @event_cm_add_one, ptr @event_cm_disconnect, ptr @event_cm_event_done, ptr @event_cm_event_handler, ptr @event_cm_id_attach, ptr @event_cm_id_destroy, ptr @event_cm_qp_create, ptr @event_cm_qp_destroy, ptr @event_cm_remove_one, ptr @event_cm_req_handler, ptr @event_cm_send_mra, ptr @event_cm_send_rej, ptr @event_cm_send_rep, ptr @event_cm_send_req, ptr @event_cm_send_rtu, ptr @event_cm_send_sidr_rep, ptr @event_cm_send_sidr_req, ptr @event_cm_sent_drep, ptr @event_cm_sent_dreq, ptr @str__rdma_cma__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @trace_event_fields_cma_fsm_class, ptr @trace_event_type_funcs_cma_fsm_class, ptr @print_fmt_cma_fsm_class, ptr @trace_event_fields_cm_id_attach, ptr @trace_event_type_funcs_cm_id_attach, ptr @print_fmt_cm_id_attach, ptr @trace_event_fields_cma_qp_class, ptr @trace_event_type_funcs_cma_qp_class, ptr @print_fmt_cma_qp_class, ptr @trace_event_fields_cm_qp_create, ptr @trace_event_type_funcs_cm_qp_create, ptr @print_fmt_cm_qp_create, ptr @trace_event_fields_cm_req_handler, ptr @trace_event_type_funcs_cm_req_handler, ptr @print_fmt_cm_req_handler, ptr @trace_event_fields_cm_event_handler, ptr @trace_event_type_funcs_cm_event_handler, ptr @print_fmt_cm_event_handler, ptr @trace_event_fields_cm_event_done, ptr @trace_event_type_funcs_cm_event_done, ptr @print_fmt_cm_event_done, ptr @trace_event_fields_cma_client_class, ptr @trace_event_type_funcs_cma_client_class, ptr @print_fmt_cma_client_class, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @trace_raw_output_cm_qp_create.symbols, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @trace_raw_output_cm_req_handler.symbols, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @trace_raw_output_cm_event_handler.symbols, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @trace_raw_output_cm_event_done.symbols, ptr @.str.156, ptr @.str.157], section "llvm.metadata"
@0 = internal global [206 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__rdma_cma__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cma_fsm_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cma_fsm_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cma_fsm_class to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_rtu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_rej to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_mra to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_sidr_req to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_sidr_rep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_disconnect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_sent_drep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_sent_dreq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_id_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_id_attach to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_id_attach to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_id_attach to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_id_attach to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cma_qp_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cma_qp_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cma_qp_class to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_req to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_send_rep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_qp_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_qp_create to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_qp_create to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_qp_create to i32), i32 526, i32 672, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_qp_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_req_handler to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_req_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_req_handler to i32), i32 877, i32 1088, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_req_handler to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_event_handler to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_event_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_event_handler to i32), i32 943, i32 1184, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_event_handler to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_event_done to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_event_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_event_done to i32), i32 942, i32 1184, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_event_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cma_client_class to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cma_client_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cma_client_class to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_add_one to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cm_remove_one to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cm_qp_create.symbols to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cm_req_handler.symbols to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cm_event_handler.symbols to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cm_event_done.symbols to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cm_send_rtu(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_rtu, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_send_rej(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_rej, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_send_mra(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_mra, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_send_sidr_req(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_sidr_req, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_send_sidr_rep(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_sidr_rep, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_disconnect(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_disconnect, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_sent_drep(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_sent_drep, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_sent_dreq(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_sent_dreq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_id_destroy(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_id_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_id_attach(ptr nocapture readnone %__data, ptr noundef %id_priv, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_id_attach, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv, ptr noundef %device) #7
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
define dso_local i32 @__traceiter_cm_send_req(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_req, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_send_rep(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_send_rep, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_qp_destroy(ptr nocapture readnone %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_qp_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv) #7
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
define dso_local i32 @__traceiter_cm_qp_create(ptr nocapture readnone %__data, ptr noundef %id_priv, ptr noundef %pd, ptr noundef %qp_init_attr, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_qp_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv, ptr noundef %pd, ptr noundef %qp_init_attr, i32 noundef %rc) #7
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
define dso_local i32 @__traceiter_cm_req_handler(ptr nocapture readnone %__data, ptr noundef %id_priv, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_req_handler, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv, i32 noundef %event) #7
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
define dso_local i32 @__traceiter_cm_event_handler(ptr nocapture readnone %__data, ptr noundef %id_priv, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_event_handler, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv, ptr noundef %event) #7
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
define dso_local i32 @__traceiter_cm_event_done(ptr nocapture readnone %__data, ptr noundef %id_priv, ptr noundef %event, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_event_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %id_priv, ptr noundef %event, i32 noundef %result) #7
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
define dso_local i32 @__traceiter_cm_add_one(ptr nocapture readnone %__data, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_add_one, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %device) #7
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
define dso_local i32 @__traceiter_cm_remove_one(ptr nocapture readnone %__data, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cm_remove_one, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %device) #7
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
define internal void @trace_event_raw_event_cma_fsm_class(ptr noundef %__data, ptr nocapture noundef readonly %id_priv) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 72) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 1
  %conv = zext i8 %7 to i32
  %tos6 = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %tos6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tos6, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call3, i32 0, i32 3
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call3, i32 0, i32 4
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cma_fsm_class(ptr noundef %__data, ptr nocapture noundef readonly %id_priv) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 76, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %conv = zext i8 %31 to i32
  %tos17 = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %tos17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %tos17, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call13, i32 0, i32 3
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %33 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %call13, i32 0, i32 4
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %34 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 76, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
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
define internal void @trace_event_raw_event_cm_id_attach(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr noundef readonly %device) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %name.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %call.i33 = tail call i32 @strlen(ptr noundef nonnull %name.i) #10
  %add = add i32 %call.i33, 73
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i33, 16
  %or.i = add i32 %add.i, 65608
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call3, i32 0, i32 2
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call3, i32 0, i32 3
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %add.ptr = getelementptr i8, ptr %call3, i32 72
  %tobool13.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool13.not, ptr @.str.93, ptr %name.i
  %call16 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_id_attach(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr noundef readonly %device) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %name.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65608
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %add12 = add i32 %call.i, 84
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call13, i32 0, i32 4
  %27 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call13, i32 0, i32 2
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %31 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %call13, i32 0, i32 3
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %add.ptr = getelementptr i8, ptr %call13, i32 72
  %tobool25.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool25.not, ptr @.str.93, ptr %name.i
  %call28 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
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
define internal void @trace_event_raw_event_cma_qp_class(ptr noundef %__data, ptr nocapture noundef readonly %id_priv) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 76) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 1
  %conv = zext i8 %7 to i32
  %tos6 = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %tos6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tos6, align 4
  %qp_num = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 21
  %9 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qp_num, align 4
  %qp_num7 = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %qp_num7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %qp_num7, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call3, i32 0, i32 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call3, i32 0, i32 5
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cma_qp_class(ptr noundef %__data, ptr nocapture noundef readonly %id_priv) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 76, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %conv = zext i8 %31 to i32
  %tos17 = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %tos17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %tos17, align 4
  %qp_num = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 21
  %33 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qp_num, align 4
  %qp_num18 = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %qp_num18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %qp_num18, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call13, i32 0, i32 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %36 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %call13, i32 0, i32 5
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %37 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 76, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cm_qp_create(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr nocapture noundef readonly %pd, ptr nocapture noundef readonly %qp_init_attr, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 96) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cm_id, align 4
  %id7 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id7, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %pd_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pd_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %9 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tos, align 1
  %conv = zext i8 %10 to i32
  %tos8 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %tos8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %tos8, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %12 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cap, align 4
  %send_wr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %send_wr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %send_wr, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_recv_wr, align 4
  %recv_wr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %recv_wr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %recv_wr, align 4
  %rc10 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 7
  %18 = ptrtoint ptr %rc10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rc, ptr %rc10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc)
  %tobool11.not = icmp eq i32 %rc, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %qp_num = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 21
  %19 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qp_num, align 4
  %qp_num13 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 4
  %21 = ptrtoint ptr %qp_num13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %qp_num13, align 4
  %qp_type = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 6
  %22 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qp_type, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %qp_num16 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %qp_num16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qp_num16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12
  %.sink = phi i32 [ %23, %if.then12 ], [ 0, %if.else ]
  %25 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %25, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 9
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %27 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call3, i32 0, i32 10
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_qp_create(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr nocapture noundef readonly %pd, ptr nocapture noundef readonly %qp_init_attr, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 100, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cm_id, align 4
  %id18 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7, i32 8
  %30 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id18, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %pd_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pd_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %33 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tos, align 1
  %conv = zext i8 %34 to i32
  %tos19 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %tos19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %tos19, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %36 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cap, align 4
  %send_wr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %send_wr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %send_wr, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_recv_wr, align 4
  %recv_wr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %recv_wr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %recv_wr, align 4
  %rc21 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 7
  %42 = ptrtoint ptr %rc21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rc, ptr %rc21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc)
  %tobool22.not = icmp eq i32 %rc, 0
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %qp_num = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 21
  %43 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qp_num, align 4
  %qp_num24 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 4
  %45 = ptrtoint ptr %qp_num24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %qp_num24, align 4
  %qp_type = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 6
  %46 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qp_type, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %qp_num27 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 4
  %48 = ptrtoint ptr %qp_num27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qp_num27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  %.sink = phi i32 [ %47, %if.then23 ], [ 0, %if.else ]
  %49 = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink, ptr %49, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 9
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %51 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %call13, i32 0, i32 10
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %52 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %53 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rctx, align 4
  %55 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 100, i32 noundef %54, ptr noundef %__data, i64 noundef 1, ptr noundef %56, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cm_req_handler(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, i32 noundef %event) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 76) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 1
  %conv = zext i8 %7 to i32
  %tos6 = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %tos6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tos6, align 4
  %event7 = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %event7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %event, ptr %event7, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call3, i32 0, i32 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call3, i32 0, i32 5
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_req_handler(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, i32 noundef %event) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 76, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %conv = zext i8 %31 to i32
  %tos17 = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %tos17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %tos17, align 4
  %event18 = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %event18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %event, ptr %event18, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call13, i32 0, i32 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %34 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %call13, i32 0, i32 5
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 76, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cm_event_handler(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr nocapture noundef readonly %event) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 80) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 1
  %conv = zext i8 %7 to i32
  %tos6 = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %tos6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tos6, align 4
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event, align 8
  %event8 = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %event8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %event8, align 4
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %status9 = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %status9, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call3, i32 0, i32 5
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call3, i32 0, i32 6
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_event_handler(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %conv = zext i8 %31 to i32
  %tos17 = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %tos17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %tos17, align 4
  %33 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %event, align 8
  %event19 = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %event19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %event19, align 4
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %status20 = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %status20, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call13, i32 0, i32 5
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %39 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %call13, i32 0, i32 6
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %40 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 84, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cm_event_done(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr nocapture noundef readonly %event, i32 noundef %result) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 80) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 1
  %conv = zext i8 %7 to i32
  %tos6 = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %tos6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tos6, align 4
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event, align 8
  %event8 = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %event8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %event8, align 4
  %result9 = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %result9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %result, ptr %result9, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call3, i32 0, i32 5
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call3, i32 0, i32 6
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_event_done(ptr noundef %__data, ptr nocapture noundef readonly %id_priv, ptr nocapture noundef readonly %event, i32 noundef %result) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cm_id, align 4
  %tos = getelementptr inbounds %struct.rdma_id_private, ptr %id_priv, i32 0, i32 24
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %conv = zext i8 %31 to i32
  %tos17 = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %tos17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %tos17, align 4
  %33 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %event, align 8
  %event19 = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %event19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %event19, align 4
  %result20 = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %result20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %result, ptr %result20, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call13, i32 0, i32 5
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4
  %37 = call ptr @memcpy(ptr %srcaddr, ptr %route, i32 28)
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %call13, i32 0, i32 6
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id_priv, i32 0, i32 4, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %dstaddr, ptr %dst_addr, i32 28)
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 84, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_client_class(ptr noundef %__data, ptr noundef readonly %device) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !538

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !539

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
  %name.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %call.i22 = tail call i32 @strlen(ptr noundef nonnull %name.i) #10
  %add = add i32 %call.i22, 13
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i22, 16
  %or.i = add i32 %add.i, 65548
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_client_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str.93, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cma_client_class(ptr noundef %__data, ptr noundef readonly %device) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !540
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !540
  %name.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65548
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !528) #7
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
  %add12 = add i32 %call.i, 24
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
  %24 = call i32 @llvm.read_register.i32(metadata !528) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_client_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str.93, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cma_fsm_class(ptr noundef %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_id_attach(ptr noundef %__data, ptr noundef %id_priv, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %device to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cma_qp_class(ptr noundef %__data, ptr noundef %id_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_qp_create(ptr noundef %__data, ptr noundef %id_priv, ptr noundef %pd, ptr noundef %qp_init_attr, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %pd to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %qp_init_attr to i32
  %conv8 = zext i32 %2 to i64
  %conv12 = zext i32 %rc to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_req_handler(ptr noundef %__data, ptr noundef %id_priv, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %event to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_event_handler(ptr noundef %__data, ptr noundef %id_priv, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %event to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_event_done(ptr noundef %__data, ptr noundef %id_priv, ptr noundef %event, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %id_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %event to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %result to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cma_client_class(ptr noundef %__data, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %device to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_fsm_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %1, i32 0, i32 3
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %1, i32 0, i32 4
  %tos = getelementptr inbounds %struct.trace_event_raw_cma_fsm_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tos, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.92, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, i32 noundef %5) #7
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_id_attach(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %1, i32 0, i32 2
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %1, i32 0, i32 3
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_cm_id_attach, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.96, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, ptr noundef %add.ptr) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_qp_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %1, i32 0, i32 4
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %1, i32 0, i32 5
  %tos = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tos, align 4
  %qp_num = getelementptr inbounds %struct.trace_event_raw_cma_qp_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qp_num, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.98, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, i32 noundef %5, i32 noundef %7) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_qp_create(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 9
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 10
  %tos = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tos, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pd_id, align 4
  %qp_type = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qp_type, align 4
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_cm_qp_create.symbols) #7
  %send_wr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %send_wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_wr, align 4
  %recv_wr = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %recv_wr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recv_wr, align 4
  %qp_num = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_num, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_cm_qp_create, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.106, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, i32 noundef %5, i32 noundef %7, ptr noundef %call2, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_req_handler(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %1, i32 0, i32 4
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %1, i32 0, i32 5
  %tos = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tos, align 4
  %event = getelementptr inbounds %struct.trace_event_raw_cm_req_handler, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event, align 4
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cm_req_handler.symbols) #7
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.118, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, i32 noundef %5, ptr noundef %call2, i32 noundef %9) #7
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_event_handler(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %1, i32 0, i32 5
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %1, i32 0, i32 6
  %tos = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tos, align 4
  %event = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event, align 4
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cm_event_handler.symbols) #7
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_cm_event_handler, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.138, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, i32 noundef %5, ptr noundef %call2, i32 noundef %9, i32 noundef %11) #7
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_event_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cm_id, align 4
  %srcaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %1, i32 0, i32 5
  %dstaddr = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %1, i32 0, i32 6
  %tos = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tos, align 4
  %event = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event, align 4
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cm_event_done.symbols) #7
  %result = getelementptr inbounds %struct.trace_event_raw_cm_event_done, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %result, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.155, i32 noundef %3, ptr noundef %srcaddr, ptr noundef %dstaddr, i32 noundef %5, ptr noundef %call2, i32 noundef %9) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_client_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_client_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.157, ptr noundef %add.ptr) #7
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
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 206)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 206)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!llvm.named.register.sp = !{!528}
!llvm.module.flags = !{!529, !530, !531, !532, !533, !534, !535, !536}
!llvm.ident = !{!537}

!0 = !{ptr @__tracepoint_cm_send_rtu, !1, !"__tracepoint_cm_send_rtu", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 56, i32 1}
!2 = !{ptr @__tracepoint_ptr_cm_send_rtu, !1, !"__tracepoint_ptr_cm_send_rtu", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cm_send_rtu, !1, !"__SCK__tp_func_cm_send_rtu", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cm_send_rej, !5, !"__tracepoint_cm_send_rej", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 57, i32 1}
!6 = !{ptr @__tracepoint_ptr_cm_send_rej, !5, !"__tracepoint_ptr_cm_send_rej", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cm_send_rej, !5, !"__SCK__tp_func_cm_send_rej", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cm_send_mra, !9, !"__tracepoint_cm_send_mra", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 58, i32 1}
!10 = !{ptr @__tracepoint_ptr_cm_send_mra, !9, !"__tracepoint_ptr_cm_send_mra", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cm_send_mra, !9, !"__SCK__tp_func_cm_send_mra", i1 false, i1 false}
!12 = !{ptr @__tracepoint_cm_send_sidr_req, !13, !"__tracepoint_cm_send_sidr_req", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 59, i32 1}
!14 = !{ptr @__tracepoint_ptr_cm_send_sidr_req, !13, !"__tracepoint_ptr_cm_send_sidr_req", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_cm_send_sidr_req, !13, !"__SCK__tp_func_cm_send_sidr_req", i1 false, i1 false}
!16 = !{ptr @__tracepoint_cm_send_sidr_rep, !17, !"__tracepoint_cm_send_sidr_rep", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 60, i32 1}
!18 = !{ptr @__tracepoint_ptr_cm_send_sidr_rep, !17, !"__tracepoint_ptr_cm_send_sidr_rep", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_cm_send_sidr_rep, !17, !"__SCK__tp_func_cm_send_sidr_rep", i1 false, i1 false}
!20 = !{ptr @__tracepoint_cm_disconnect, !21, !"__tracepoint_cm_disconnect", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 61, i32 1}
!22 = !{ptr @__tracepoint_ptr_cm_disconnect, !21, !"__tracepoint_ptr_cm_disconnect", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_cm_disconnect, !21, !"__SCK__tp_func_cm_disconnect", i1 false, i1 false}
!24 = !{ptr @__tracepoint_cm_sent_drep, !25, !"__tracepoint_cm_sent_drep", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 62, i32 1}
!26 = !{ptr @__tracepoint_ptr_cm_sent_drep, !25, !"__tracepoint_ptr_cm_sent_drep", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_cm_sent_drep, !25, !"__SCK__tp_func_cm_sent_drep", i1 false, i1 false}
!28 = !{ptr @__tracepoint_cm_sent_dreq, !29, !"__tracepoint_cm_sent_dreq", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 63, i32 1}
!30 = !{ptr @__tracepoint_ptr_cm_sent_dreq, !29, !"__tracepoint_ptr_cm_sent_dreq", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_cm_sent_dreq, !29, !"__SCK__tp_func_cm_sent_dreq", i1 false, i1 false}
!32 = !{ptr @__tracepoint_cm_id_destroy, !33, !"__tracepoint_cm_id_destroy", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 64, i32 1}
!34 = !{ptr @__tracepoint_ptr_cm_id_destroy, !33, !"__tracepoint_ptr_cm_id_destroy", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_cm_id_destroy, !33, !"__SCK__tp_func_cm_id_destroy", i1 false, i1 false}
!36 = !{ptr @__tracepoint_cm_id_attach, !37, !"__tracepoint_cm_id_attach", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 66, i32 1}
!38 = !{ptr @__tracepoint_ptr_cm_id_attach, !37, !"__tracepoint_ptr_cm_id_attach", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_cm_id_attach, !37, !"__SCK__tp_func_cm_id_attach", i1 false, i1 false}
!40 = !{ptr @__tracepoint_cm_send_req, !41, !"__tracepoint_cm_send_req", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 134, i32 1}
!42 = !{ptr @__tracepoint_ptr_cm_send_req, !41, !"__tracepoint_ptr_cm_send_req", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_cm_send_req, !41, !"__SCK__tp_func_cm_send_req", i1 false, i1 false}
!44 = !{ptr @__tracepoint_cm_send_rep, !45, !"__tracepoint_cm_send_rep", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 135, i32 1}
!46 = !{ptr @__tracepoint_ptr_cm_send_rep, !45, !"__tracepoint_ptr_cm_send_rep", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_cm_send_rep, !45, !"__SCK__tp_func_cm_send_rep", i1 false, i1 false}
!48 = !{ptr @__tracepoint_cm_qp_destroy, !49, !"__tracepoint_cm_qp_destroy", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 136, i32 1}
!50 = !{ptr @__tracepoint_ptr_cm_qp_destroy, !49, !"__tracepoint_ptr_cm_qp_destroy", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_cm_qp_destroy, !49, !"__SCK__tp_func_cm_qp_destroy", i1 false, i1 false}
!52 = !{ptr @__tracepoint_cm_qp_create, !53, !"__tracepoint_cm_qp_create", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 171, i32 1}
!54 = !{ptr @__tracepoint_ptr_cm_qp_create, !53, !"__tracepoint_ptr_cm_qp_create", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_cm_qp_create, !53, !"__SCK__tp_func_cm_qp_create", i1 false, i1 false}
!56 = !{ptr @__tracepoint_cm_req_handler, !57, !"__tracepoint_cm_req_handler", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 223, i32 1}
!58 = !{ptr @__tracepoint_ptr_cm_req_handler, !57, !"__tracepoint_ptr_cm_req_handler", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_cm_req_handler, !57, !"__SCK__tp_func_cm_req_handler", i1 false, i1 false}
!60 = !{ptr @__tracepoint_cm_event_handler, !61, !"__tracepoint_cm_event_handler", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 255, i32 1}
!62 = !{ptr @__tracepoint_ptr_cm_event_handler, !61, !"__tracepoint_ptr_cm_event_handler", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_cm_event_handler, !61, !"__SCK__tp_func_cm_event_handler", i1 false, i1 false}
!64 = !{ptr @__tracepoint_cm_event_done, !65, !"__tracepoint_cm_event_done", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 290, i32 1}
!66 = !{ptr @__tracepoint_ptr_cm_event_done, !65, !"__tracepoint_ptr_cm_event_done", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_cm_event_done, !65, !"__SCK__tp_func_cm_event_done", i1 false, i1 false}
!68 = !{ptr @__tracepoint_cm_add_one, !69, !"__tracepoint_cm_add_one", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 352, i32 1}
!70 = !{ptr @__tracepoint_ptr_cm_add_one, !69, !"__tracepoint_ptr_cm_add_one", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_cm_add_one, !69, !"__SCK__tp_func_cm_add_one", i1 false, i1 false}
!72 = !{ptr @__tracepoint_cm_remove_one, !73, !"__tracepoint_cm_remove_one", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 353, i32 1}
!74 = !{ptr @__tracepoint_ptr_cm_remove_one, !73, !"__tracepoint_ptr_cm_remove_one", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_cm_remove_one, !73, !"__SCK__tp_func_cm_remove_one", i1 false, i1 false}
!76 = !{ptr @.str, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/trace/events/rdma.h", i32 37, i32 1}
!78 = !{ptr @__TRACE_SYSTEM_IB_EVENT_CQ_ERR, !77, !"__TRACE_SYSTEM_IB_EVENT_CQ_ERR", i1 false, i1 false}
!79 = !{ptr @TRACE_SYSTEM_IB_EVENT_CQ_ERR, !77, !"TRACE_SYSTEM_IB_EVENT_CQ_ERR", i1 false, i1 false}
!80 = !{ptr @.str.1, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__TRACE_SYSTEM_IB_EVENT_QP_FATAL, !77, !"__TRACE_SYSTEM_IB_EVENT_QP_FATAL", i1 false, i1 false}
!82 = !{ptr @TRACE_SYSTEM_IB_EVENT_QP_FATAL, !77, !"TRACE_SYSTEM_IB_EVENT_QP_FATAL", i1 false, i1 false}
!83 = !{ptr @.str.2, !77, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR, !77, !"__TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR", i1 false, i1 false}
!85 = !{ptr @TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR, !77, !"TRACE_SYSTEM_IB_EVENT_QP_REQ_ERR", i1 false, i1 false}
!86 = !{ptr @.str.3, !77, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR, !77, !"__TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR", i1 false, i1 false}
!88 = !{ptr @TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR, !77, !"TRACE_SYSTEM_IB_EVENT_QP_ACCESS_ERR", i1 false, i1 false}
!89 = !{ptr @.str.4, !77, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__TRACE_SYSTEM_IB_EVENT_COMM_EST, !77, !"__TRACE_SYSTEM_IB_EVENT_COMM_EST", i1 false, i1 false}
!91 = !{ptr @TRACE_SYSTEM_IB_EVENT_COMM_EST, !77, !"TRACE_SYSTEM_IB_EVENT_COMM_EST", i1 false, i1 false}
!92 = !{ptr @.str.5, !77, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @__TRACE_SYSTEM_IB_EVENT_SQ_DRAINED, !77, !"__TRACE_SYSTEM_IB_EVENT_SQ_DRAINED", i1 false, i1 false}
!94 = !{ptr @TRACE_SYSTEM_IB_EVENT_SQ_DRAINED, !77, !"TRACE_SYSTEM_IB_EVENT_SQ_DRAINED", i1 false, i1 false}
!95 = !{ptr @.str.6, !77, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__TRACE_SYSTEM_IB_EVENT_PATH_MIG, !77, !"__TRACE_SYSTEM_IB_EVENT_PATH_MIG", i1 false, i1 false}
!97 = !{ptr @TRACE_SYSTEM_IB_EVENT_PATH_MIG, !77, !"TRACE_SYSTEM_IB_EVENT_PATH_MIG", i1 false, i1 false}
!98 = !{ptr @.str.7, !77, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR, !77, !"__TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR", i1 false, i1 false}
!100 = !{ptr @TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR, !77, !"TRACE_SYSTEM_IB_EVENT_PATH_MIG_ERR", i1 false, i1 false}
!101 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL, !77, !"__TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL", i1 false, i1 false}
!103 = !{ptr @TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL, !77, !"TRACE_SYSTEM_IB_EVENT_DEVICE_FATAL", i1 false, i1 false}
!104 = !{ptr @.str.9, !77, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @__TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE, !77, !"__TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE", i1 false, i1 false}
!106 = !{ptr @TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE, !77, !"TRACE_SYSTEM_IB_EVENT_PORT_ACTIVE", i1 false, i1 false}
!107 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__TRACE_SYSTEM_IB_EVENT_PORT_ERR, !77, !"__TRACE_SYSTEM_IB_EVENT_PORT_ERR", i1 false, i1 false}
!109 = !{ptr @TRACE_SYSTEM_IB_EVENT_PORT_ERR, !77, !"TRACE_SYSTEM_IB_EVENT_PORT_ERR", i1 false, i1 false}
!110 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @__TRACE_SYSTEM_IB_EVENT_LID_CHANGE, !77, !"__TRACE_SYSTEM_IB_EVENT_LID_CHANGE", i1 false, i1 false}
!112 = !{ptr @TRACE_SYSTEM_IB_EVENT_LID_CHANGE, !77, !"TRACE_SYSTEM_IB_EVENT_LID_CHANGE", i1 false, i1 false}
!113 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE, !77, !"__TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE", i1 false, i1 false}
!115 = !{ptr @TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE, !77, !"TRACE_SYSTEM_IB_EVENT_PKEY_CHANGE", i1 false, i1 false}
!116 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @__TRACE_SYSTEM_IB_EVENT_SM_CHANGE, !77, !"__TRACE_SYSTEM_IB_EVENT_SM_CHANGE", i1 false, i1 false}
!118 = !{ptr @TRACE_SYSTEM_IB_EVENT_SM_CHANGE, !77, !"TRACE_SYSTEM_IB_EVENT_SM_CHANGE", i1 false, i1 false}
!119 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__TRACE_SYSTEM_IB_EVENT_SRQ_ERR, !77, !"__TRACE_SYSTEM_IB_EVENT_SRQ_ERR", i1 false, i1 false}
!121 = !{ptr @TRACE_SYSTEM_IB_EVENT_SRQ_ERR, !77, !"TRACE_SYSTEM_IB_EVENT_SRQ_ERR", i1 false, i1 false}
!122 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED, !77, !"__TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED", i1 false, i1 false}
!124 = !{ptr @TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED, !77, !"TRACE_SYSTEM_IB_EVENT_SRQ_LIMIT_REACHED", i1 false, i1 false}
!125 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED, !77, !"__TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED", i1 false, i1 false}
!127 = !{ptr @TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED, !77, !"TRACE_SYSTEM_IB_EVENT_QP_LAST_WQE_REACHED", i1 false, i1 false}
!128 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER, !77, !"__TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER", i1 false, i1 false}
!130 = !{ptr @TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER, !77, !"TRACE_SYSTEM_IB_EVENT_CLIENT_REREGISTER", i1 false, i1 false}
!131 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @__TRACE_SYSTEM_IB_EVENT_GID_CHANGE, !77, !"__TRACE_SYSTEM_IB_EVENT_GID_CHANGE", i1 false, i1 false}
!133 = !{ptr @TRACE_SYSTEM_IB_EVENT_GID_CHANGE, !77, !"TRACE_SYSTEM_IB_EVENT_GID_CHANGE", i1 false, i1 false}
!134 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__TRACE_SYSTEM_IB_EVENT_WQ_FATAL, !77, !"__TRACE_SYSTEM_IB_EVENT_WQ_FATAL", i1 false, i1 false}
!136 = !{ptr @TRACE_SYSTEM_IB_EVENT_WQ_FATAL, !77, !"TRACE_SYSTEM_IB_EVENT_WQ_FATAL", i1 false, i1 false}
!137 = !{ptr @.str.20, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/trace/events/rdma.h", i32 81, i32 1}
!139 = !{ptr @__TRACE_SYSTEM_IB_WC_SUCCESS, !138, !"__TRACE_SYSTEM_IB_WC_SUCCESS", i1 false, i1 false}
!140 = !{ptr @TRACE_SYSTEM_IB_WC_SUCCESS, !138, !"TRACE_SYSTEM_IB_WC_SUCCESS", i1 false, i1 false}
!141 = !{ptr @.str.21, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__TRACE_SYSTEM_IB_WC_LOC_LEN_ERR, !138, !"__TRACE_SYSTEM_IB_WC_LOC_LEN_ERR", i1 false, i1 false}
!143 = !{ptr @TRACE_SYSTEM_IB_WC_LOC_LEN_ERR, !138, !"TRACE_SYSTEM_IB_WC_LOC_LEN_ERR", i1 false, i1 false}
!144 = !{ptr @.str.22, !138, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @__TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR, !138, !"__TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR", i1 false, i1 false}
!146 = !{ptr @TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR, !138, !"TRACE_SYSTEM_IB_WC_LOC_QP_OP_ERR", i1 false, i1 false}
!147 = !{ptr @.str.23, !138, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR, !138, !"__TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR", i1 false, i1 false}
!149 = !{ptr @TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR, !138, !"TRACE_SYSTEM_IB_WC_LOC_EEC_OP_ERR", i1 false, i1 false}
!150 = !{ptr @.str.24, !138, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @__TRACE_SYSTEM_IB_WC_LOC_PROT_ERR, !138, !"__TRACE_SYSTEM_IB_WC_LOC_PROT_ERR", i1 false, i1 false}
!152 = !{ptr @TRACE_SYSTEM_IB_WC_LOC_PROT_ERR, !138, !"TRACE_SYSTEM_IB_WC_LOC_PROT_ERR", i1 false, i1 false}
!153 = !{ptr @.str.25, !138, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @__TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR, !138, !"__TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR", i1 false, i1 false}
!155 = !{ptr @TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR, !138, !"TRACE_SYSTEM_IB_WC_WR_FLUSH_ERR", i1 false, i1 false}
!156 = !{ptr @.str.26, !138, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @__TRACE_SYSTEM_IB_WC_MW_BIND_ERR, !138, !"__TRACE_SYSTEM_IB_WC_MW_BIND_ERR", i1 false, i1 false}
!158 = !{ptr @TRACE_SYSTEM_IB_WC_MW_BIND_ERR, !138, !"TRACE_SYSTEM_IB_WC_MW_BIND_ERR", i1 false, i1 false}
!159 = !{ptr @.str.27, !138, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__TRACE_SYSTEM_IB_WC_BAD_RESP_ERR, !138, !"__TRACE_SYSTEM_IB_WC_BAD_RESP_ERR", i1 false, i1 false}
!161 = !{ptr @TRACE_SYSTEM_IB_WC_BAD_RESP_ERR, !138, !"TRACE_SYSTEM_IB_WC_BAD_RESP_ERR", i1 false, i1 false}
!162 = !{ptr @.str.28, !138, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR, !138, !"__TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR", i1 false, i1 false}
!164 = !{ptr @TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR, !138, !"TRACE_SYSTEM_IB_WC_LOC_ACCESS_ERR", i1 false, i1 false}
!165 = !{ptr @.str.29, !138, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @__TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR, !138, !"__TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR", i1 false, i1 false}
!167 = !{ptr @TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR, !138, !"TRACE_SYSTEM_IB_WC_REM_INV_REQ_ERR", i1 false, i1 false}
!168 = !{ptr @.str.30, !138, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @__TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR, !138, !"__TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR", i1 false, i1 false}
!170 = !{ptr @TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR, !138, !"TRACE_SYSTEM_IB_WC_REM_ACCESS_ERR", i1 false, i1 false}
!171 = !{ptr @.str.31, !138, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @__TRACE_SYSTEM_IB_WC_REM_OP_ERR, !138, !"__TRACE_SYSTEM_IB_WC_REM_OP_ERR", i1 false, i1 false}
!173 = !{ptr @TRACE_SYSTEM_IB_WC_REM_OP_ERR, !138, !"TRACE_SYSTEM_IB_WC_REM_OP_ERR", i1 false, i1 false}
!174 = !{ptr @.str.32, !138, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @__TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR, !138, !"__TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR", i1 false, i1 false}
!176 = !{ptr @TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR, !138, !"TRACE_SYSTEM_IB_WC_RETRY_EXC_ERR", i1 false, i1 false}
!177 = !{ptr @.str.33, !138, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR, !138, !"__TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR", i1 false, i1 false}
!179 = !{ptr @TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR, !138, !"TRACE_SYSTEM_IB_WC_RNR_RETRY_EXC_ERR", i1 false, i1 false}
!180 = !{ptr @.str.34, !138, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @__TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR, !138, !"__TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR", i1 false, i1 false}
!182 = !{ptr @TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR, !138, !"TRACE_SYSTEM_IB_WC_LOC_RDD_VIOL_ERR", i1 false, i1 false}
!183 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR, !138, !"__TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR", i1 false, i1 false}
!185 = !{ptr @TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR, !138, !"TRACE_SYSTEM_IB_WC_REM_INV_RD_REQ_ERR", i1 false, i1 false}
!186 = !{ptr @.str.36, !138, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__TRACE_SYSTEM_IB_WC_REM_ABORT_ERR, !138, !"__TRACE_SYSTEM_IB_WC_REM_ABORT_ERR", i1 false, i1 false}
!188 = !{ptr @TRACE_SYSTEM_IB_WC_REM_ABORT_ERR, !138, !"TRACE_SYSTEM_IB_WC_REM_ABORT_ERR", i1 false, i1 false}
!189 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @__TRACE_SYSTEM_IB_WC_INV_EECN_ERR, !138, !"__TRACE_SYSTEM_IB_WC_INV_EECN_ERR", i1 false, i1 false}
!191 = !{ptr @TRACE_SYSTEM_IB_WC_INV_EECN_ERR, !138, !"TRACE_SYSTEM_IB_WC_INV_EECN_ERR", i1 false, i1 false}
!192 = !{ptr @.str.38, !138, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR, !138, !"__TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR", i1 false, i1 false}
!194 = !{ptr @TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR, !138, !"TRACE_SYSTEM_IB_WC_INV_EEC_STATE_ERR", i1 false, i1 false}
!195 = !{ptr @.str.39, !138, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @__TRACE_SYSTEM_IB_WC_FATAL_ERR, !138, !"__TRACE_SYSTEM_IB_WC_FATAL_ERR", i1 false, i1 false}
!197 = !{ptr @TRACE_SYSTEM_IB_WC_FATAL_ERR, !138, !"TRACE_SYSTEM_IB_WC_FATAL_ERR", i1 false, i1 false}
!198 = !{ptr @.str.40, !138, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @__TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR, !138, !"__TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR", i1 false, i1 false}
!200 = !{ptr @TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR, !138, !"TRACE_SYSTEM_IB_WC_RESP_TIMEOUT_ERR", i1 false, i1 false}
!201 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @__TRACE_SYSTEM_IB_WC_GENERAL_ERR, !138, !"__TRACE_SYSTEM_IB_WC_GENERAL_ERR", i1 false, i1 false}
!203 = !{ptr @TRACE_SYSTEM_IB_WC_GENERAL_ERR, !138, !"TRACE_SYSTEM_IB_WC_GENERAL_ERR", i1 false, i1 false}
!204 = !{ptr @.str.42, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../include/trace/events/rdma.h", i32 121, i32 1}
!206 = !{ptr @__TRACE_SYSTEM_IB_CM_REQ_ERROR, !205, !"__TRACE_SYSTEM_IB_CM_REQ_ERROR", i1 false, i1 false}
!207 = !{ptr @TRACE_SYSTEM_IB_CM_REQ_ERROR, !205, !"TRACE_SYSTEM_IB_CM_REQ_ERROR", i1 false, i1 false}
!208 = !{ptr @.str.43, !205, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @__TRACE_SYSTEM_IB_CM_REQ_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_REQ_RECEIVED", i1 false, i1 false}
!210 = !{ptr @TRACE_SYSTEM_IB_CM_REQ_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_REQ_RECEIVED", i1 false, i1 false}
!211 = !{ptr @.str.44, !205, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @__TRACE_SYSTEM_IB_CM_REP_ERROR, !205, !"__TRACE_SYSTEM_IB_CM_REP_ERROR", i1 false, i1 false}
!213 = !{ptr @TRACE_SYSTEM_IB_CM_REP_ERROR, !205, !"TRACE_SYSTEM_IB_CM_REP_ERROR", i1 false, i1 false}
!214 = !{ptr @.str.45, !205, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @__TRACE_SYSTEM_IB_CM_REP_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_REP_RECEIVED", i1 false, i1 false}
!216 = !{ptr @TRACE_SYSTEM_IB_CM_REP_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_REP_RECEIVED", i1 false, i1 false}
!217 = !{ptr @.str.46, !205, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @__TRACE_SYSTEM_IB_CM_RTU_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_RTU_RECEIVED", i1 false, i1 false}
!219 = !{ptr @TRACE_SYSTEM_IB_CM_RTU_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_RTU_RECEIVED", i1 false, i1 false}
!220 = !{ptr @.str.47, !205, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @__TRACE_SYSTEM_IB_CM_USER_ESTABLISHED, !205, !"__TRACE_SYSTEM_IB_CM_USER_ESTABLISHED", i1 false, i1 false}
!222 = !{ptr @TRACE_SYSTEM_IB_CM_USER_ESTABLISHED, !205, !"TRACE_SYSTEM_IB_CM_USER_ESTABLISHED", i1 false, i1 false}
!223 = !{ptr @.str.48, !205, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @__TRACE_SYSTEM_IB_CM_DREQ_ERROR, !205, !"__TRACE_SYSTEM_IB_CM_DREQ_ERROR", i1 false, i1 false}
!225 = !{ptr @TRACE_SYSTEM_IB_CM_DREQ_ERROR, !205, !"TRACE_SYSTEM_IB_CM_DREQ_ERROR", i1 false, i1 false}
!226 = !{ptr @.str.49, !205, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @__TRACE_SYSTEM_IB_CM_DREQ_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_DREQ_RECEIVED", i1 false, i1 false}
!228 = !{ptr @TRACE_SYSTEM_IB_CM_DREQ_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_DREQ_RECEIVED", i1 false, i1 false}
!229 = !{ptr @.str.50, !205, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @__TRACE_SYSTEM_IB_CM_DREP_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_DREP_RECEIVED", i1 false, i1 false}
!231 = !{ptr @TRACE_SYSTEM_IB_CM_DREP_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_DREP_RECEIVED", i1 false, i1 false}
!232 = !{ptr @.str.51, !205, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @__TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT, !205, !"__TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT", i1 false, i1 false}
!234 = !{ptr @TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT, !205, !"TRACE_SYSTEM_IB_CM_TIMEWAIT_EXIT", i1 false, i1 false}
!235 = !{ptr @.str.52, !205, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @__TRACE_SYSTEM_IB_CM_MRA_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_MRA_RECEIVED", i1 false, i1 false}
!237 = !{ptr @TRACE_SYSTEM_IB_CM_MRA_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_MRA_RECEIVED", i1 false, i1 false}
!238 = !{ptr @.str.53, !205, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @__TRACE_SYSTEM_IB_CM_REJ_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_REJ_RECEIVED", i1 false, i1 false}
!240 = !{ptr @TRACE_SYSTEM_IB_CM_REJ_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_REJ_RECEIVED", i1 false, i1 false}
!241 = !{ptr @.str.54, !205, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__TRACE_SYSTEM_IB_CM_LAP_ERROR, !205, !"__TRACE_SYSTEM_IB_CM_LAP_ERROR", i1 false, i1 false}
!243 = !{ptr @TRACE_SYSTEM_IB_CM_LAP_ERROR, !205, !"TRACE_SYSTEM_IB_CM_LAP_ERROR", i1 false, i1 false}
!244 = !{ptr @.str.55, !205, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @__TRACE_SYSTEM_IB_CM_LAP_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_LAP_RECEIVED", i1 false, i1 false}
!246 = !{ptr @TRACE_SYSTEM_IB_CM_LAP_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_LAP_RECEIVED", i1 false, i1 false}
!247 = !{ptr @.str.56, !205, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @__TRACE_SYSTEM_IB_CM_APR_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_APR_RECEIVED", i1 false, i1 false}
!249 = !{ptr @TRACE_SYSTEM_IB_CM_APR_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_APR_RECEIVED", i1 false, i1 false}
!250 = !{ptr @.str.57, !205, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @__TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR, !205, !"__TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR", i1 false, i1 false}
!252 = !{ptr @TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR, !205, !"TRACE_SYSTEM_IB_CM_SIDR_REQ_ERROR", i1 false, i1 false}
!253 = !{ptr @.str.58, !205, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @__TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED", i1 false, i1 false}
!255 = !{ptr @TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_SIDR_REQ_RECEIVED", i1 false, i1 false}
!256 = !{ptr @.str.59, !205, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @__TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED, !205, !"__TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED", i1 false, i1 false}
!258 = !{ptr @TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED, !205, !"TRACE_SYSTEM_IB_CM_SIDR_REP_RECEIVED", i1 false, i1 false}
!259 = !{ptr @.str.60, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../include/trace/events/rdma.h", i32 159, i32 1}
!261 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED", i1 false, i1 false}
!262 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_RESOLVED", i1 false, i1 false}
!263 = !{ptr @.str.61, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR", i1 false, i1 false}
!265 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_ERROR", i1 false, i1 false}
!266 = !{ptr @.str.62, !260, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED", i1 false, i1 false}
!268 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_RESOLVED", i1 false, i1 false}
!269 = !{ptr @.str.63, !260, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR", i1 false, i1 false}
!271 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_ROUTE_ERROR", i1 false, i1 false}
!272 = !{ptr @.str.64, !260, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST", i1 false, i1 false}
!274 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_REQUEST", i1 false, i1 false}
!275 = !{ptr @.str.65, !260, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE", i1 false, i1 false}
!277 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_RESPONSE", i1 false, i1 false}
!278 = !{ptr @.str.66, !260, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR", i1 false, i1 false}
!280 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_CONNECT_ERROR", i1 false, i1 false}
!281 = !{ptr @.str.67, !260, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE", i1 false, i1 false}
!283 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_UNREACHABLE", i1 false, i1 false}
!284 = !{ptr @.str.68, !260, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED", i1 false, i1 false}
!286 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_REJECTED", i1 false, i1 false}
!287 = !{ptr @.str.69, !260, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED", i1 false, i1 false}
!289 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_ESTABLISHED", i1 false, i1 false}
!290 = !{ptr @.str.70, !260, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED", i1 false, i1 false}
!292 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_DISCONNECTED", i1 false, i1 false}
!293 = !{ptr @.str.71, !260, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL", i1 false, i1 false}
!295 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_DEVICE_REMOVAL", i1 false, i1 false}
!296 = !{ptr @.str.72, !260, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN", i1 false, i1 false}
!298 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_JOIN", i1 false, i1 false}
!299 = !{ptr @.str.73, !260, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR", i1 false, i1 false}
!301 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_MULTICAST_ERROR", i1 false, i1 false}
!302 = !{ptr @.str.74, !260, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE", i1 false, i1 false}
!304 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_ADDR_CHANGE", i1 false, i1 false}
!305 = !{ptr @.str.75, !260, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @__TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT, !260, !"__TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT", i1 false, i1 false}
!307 = !{ptr @TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT, !260, !"TRACE_SYSTEM_RDMA_CM_EVENT_TIMEWAIT_EXIT", i1 false, i1 false}
!308 = !{ptr @.str.76, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 159, i32 1}
!310 = !{ptr @__TRACE_SYSTEM_IB_QPT_SMI, !309, !"__TRACE_SYSTEM_IB_QPT_SMI", i1 false, i1 false}
!311 = !{ptr @TRACE_SYSTEM_IB_QPT_SMI, !309, !"TRACE_SYSTEM_IB_QPT_SMI", i1 false, i1 false}
!312 = !{ptr @.str.77, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @__TRACE_SYSTEM_IB_QPT_GSI, !309, !"__TRACE_SYSTEM_IB_QPT_GSI", i1 false, i1 false}
!314 = !{ptr @TRACE_SYSTEM_IB_QPT_GSI, !309, !"TRACE_SYSTEM_IB_QPT_GSI", i1 false, i1 false}
!315 = !{ptr @.str.78, !309, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @__TRACE_SYSTEM_IB_QPT_RC, !309, !"__TRACE_SYSTEM_IB_QPT_RC", i1 false, i1 false}
!317 = !{ptr @TRACE_SYSTEM_IB_QPT_RC, !309, !"TRACE_SYSTEM_IB_QPT_RC", i1 false, i1 false}
!318 = !{ptr @.str.79, !309, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @__TRACE_SYSTEM_IB_QPT_UC, !309, !"__TRACE_SYSTEM_IB_QPT_UC", i1 false, i1 false}
!320 = !{ptr @TRACE_SYSTEM_IB_QPT_UC, !309, !"TRACE_SYSTEM_IB_QPT_UC", i1 false, i1 false}
!321 = !{ptr @.str.80, !309, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @__TRACE_SYSTEM_IB_QPT_UD, !309, !"__TRACE_SYSTEM_IB_QPT_UD", i1 false, i1 false}
!323 = !{ptr @TRACE_SYSTEM_IB_QPT_UD, !309, !"TRACE_SYSTEM_IB_QPT_UD", i1 false, i1 false}
!324 = !{ptr @.str.81, !309, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @__TRACE_SYSTEM_IB_QPT_RAW_IPV6, !309, !"__TRACE_SYSTEM_IB_QPT_RAW_IPV6", i1 false, i1 false}
!326 = !{ptr @TRACE_SYSTEM_IB_QPT_RAW_IPV6, !309, !"TRACE_SYSTEM_IB_QPT_RAW_IPV6", i1 false, i1 false}
!327 = !{ptr @.str.82, !309, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @__TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE, !309, !"__TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE", i1 false, i1 false}
!329 = !{ptr @TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE, !309, !"TRACE_SYSTEM_IB_QPT_RAW_ETHERTYPE", i1 false, i1 false}
!330 = !{ptr @.str.83, !309, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @__TRACE_SYSTEM_IB_QPT_RAW_PACKET, !309, !"__TRACE_SYSTEM_IB_QPT_RAW_PACKET", i1 false, i1 false}
!332 = !{ptr @TRACE_SYSTEM_IB_QPT_RAW_PACKET, !309, !"TRACE_SYSTEM_IB_QPT_RAW_PACKET", i1 false, i1 false}
!333 = !{ptr @.str.84, !309, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @__TRACE_SYSTEM_IB_QPT_XRC_INI, !309, !"__TRACE_SYSTEM_IB_QPT_XRC_INI", i1 false, i1 false}
!335 = !{ptr @TRACE_SYSTEM_IB_QPT_XRC_INI, !309, !"TRACE_SYSTEM_IB_QPT_XRC_INI", i1 false, i1 false}
!336 = !{ptr @.str.85, !309, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @__TRACE_SYSTEM_IB_QPT_XRC_TGT, !309, !"__TRACE_SYSTEM_IB_QPT_XRC_TGT", i1 false, i1 false}
!338 = !{ptr @TRACE_SYSTEM_IB_QPT_XRC_TGT, !309, !"TRACE_SYSTEM_IB_QPT_XRC_TGT", i1 false, i1 false}
!339 = !{ptr @event_class_cma_fsm_class, !340, !"event_class_cma_fsm_class", i1 false, i1 false}
!340 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 21, i32 1}
!341 = !{ptr @event_cm_send_rtu, !1, !"event_cm_send_rtu", i1 false, i1 false}
!342 = !{ptr @__event_cm_send_rtu, !1, !"__event_cm_send_rtu", i1 false, i1 false}
!343 = !{ptr @event_cm_send_rej, !5, !"event_cm_send_rej", i1 false, i1 false}
!344 = !{ptr @__event_cm_send_rej, !5, !"__event_cm_send_rej", i1 false, i1 false}
!345 = !{ptr @event_cm_send_mra, !9, !"event_cm_send_mra", i1 false, i1 false}
!346 = !{ptr @__event_cm_send_mra, !9, !"__event_cm_send_mra", i1 false, i1 false}
!347 = !{ptr @event_cm_send_sidr_req, !13, !"event_cm_send_sidr_req", i1 false, i1 false}
!348 = !{ptr @__event_cm_send_sidr_req, !13, !"__event_cm_send_sidr_req", i1 false, i1 false}
!349 = !{ptr @event_cm_send_sidr_rep, !17, !"event_cm_send_sidr_rep", i1 false, i1 false}
!350 = !{ptr @__event_cm_send_sidr_rep, !17, !"__event_cm_send_sidr_rep", i1 false, i1 false}
!351 = !{ptr @event_cm_disconnect, !21, !"event_cm_disconnect", i1 false, i1 false}
!352 = !{ptr @__event_cm_disconnect, !21, !"__event_cm_disconnect", i1 false, i1 false}
!353 = !{ptr @event_cm_sent_drep, !25, !"event_cm_sent_drep", i1 false, i1 false}
!354 = !{ptr @__event_cm_sent_drep, !25, !"__event_cm_sent_drep", i1 false, i1 false}
!355 = !{ptr @event_cm_sent_dreq, !29, !"event_cm_sent_dreq", i1 false, i1 false}
!356 = !{ptr @__event_cm_sent_dreq, !29, !"__event_cm_sent_dreq", i1 false, i1 false}
!357 = !{ptr @event_cm_id_destroy, !33, !"event_cm_id_destroy", i1 false, i1 false}
!358 = !{ptr @__event_cm_id_destroy, !33, !"__event_cm_id_destroy", i1 false, i1 false}
!359 = !{ptr @event_class_cm_id_attach, !37, !"event_class_cm_id_attach", i1 false, i1 false}
!360 = !{ptr @event_cm_id_attach, !37, !"event_cm_id_attach", i1 false, i1 false}
!361 = !{ptr @__event_cm_id_attach, !37, !"__event_cm_id_attach", i1 false, i1 false}
!362 = !{ptr @event_class_cma_qp_class, !363, !"event_class_cma_qp_class", i1 false, i1 false}
!363 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 96, i32 1}
!364 = !{ptr @event_cm_send_req, !41, !"event_cm_send_req", i1 false, i1 false}
!365 = !{ptr @__event_cm_send_req, !41, !"__event_cm_send_req", i1 false, i1 false}
!366 = !{ptr @event_cm_send_rep, !45, !"event_cm_send_rep", i1 false, i1 false}
!367 = !{ptr @__event_cm_send_rep, !45, !"__event_cm_send_rep", i1 false, i1 false}
!368 = !{ptr @event_cm_qp_destroy, !49, !"event_cm_qp_destroy", i1 false, i1 false}
!369 = !{ptr @__event_cm_qp_destroy, !49, !"__event_cm_qp_destroy", i1 false, i1 false}
!370 = !{ptr @event_class_cm_qp_create, !53, !"event_class_cm_qp_create", i1 false, i1 false}
!371 = !{ptr @event_cm_qp_create, !53, !"event_cm_qp_create", i1 false, i1 false}
!372 = !{ptr @__event_cm_qp_create, !53, !"__event_cm_qp_create", i1 false, i1 false}
!373 = !{ptr @event_class_cm_req_handler, !57, !"event_class_cm_req_handler", i1 false, i1 false}
!374 = !{ptr @event_cm_req_handler, !57, !"event_cm_req_handler", i1 false, i1 false}
!375 = !{ptr @__event_cm_req_handler, !57, !"__event_cm_req_handler", i1 false, i1 false}
!376 = !{ptr @event_class_cm_event_handler, !61, !"event_class_cm_event_handler", i1 false, i1 false}
!377 = !{ptr @event_cm_event_handler, !61, !"event_cm_event_handler", i1 false, i1 false}
!378 = !{ptr @__event_cm_event_handler, !61, !"__event_cm_event_handler", i1 false, i1 false}
!379 = !{ptr @event_class_cm_event_done, !65, !"event_class_cm_event_done", i1 false, i1 false}
!380 = !{ptr @event_cm_event_done, !65, !"event_cm_event_done", i1 false, i1 false}
!381 = !{ptr @__event_cm_event_done, !65, !"__event_cm_event_done", i1 false, i1 false}
!382 = !{ptr @event_class_cma_client_class, !383, !"event_class_cma_client_class", i1 false, i1 false}
!383 = !{!"../drivers/infiniband/core/./cma_trace.h", i32 325, i32 1}
!384 = !{ptr @event_cm_add_one, !69, !"event_cm_add_one", i1 false, i1 false}
!385 = !{ptr @__event_cm_add_one, !69, !"__event_cm_add_one", i1 false, i1 false}
!386 = !{ptr @event_cm_remove_one, !73, !"event_cm_remove_one", i1 false, i1 false}
!387 = !{ptr @__event_cm_remove_one, !73, !"__event_cm_remove_one", i1 false, i1 false}
!388 = !{ptr @__bpf_trace_tp_map_cm_send_rtu, !1, !"__bpf_trace_tp_map_cm_send_rtu", i1 false, i1 false}
!389 = !{ptr @__bpf_trace_tp_map_cm_send_rej, !5, !"__bpf_trace_tp_map_cm_send_rej", i1 false, i1 false}
!390 = !{ptr @__bpf_trace_tp_map_cm_send_mra, !9, !"__bpf_trace_tp_map_cm_send_mra", i1 false, i1 false}
!391 = !{ptr @__bpf_trace_tp_map_cm_send_sidr_req, !13, !"__bpf_trace_tp_map_cm_send_sidr_req", i1 false, i1 false}
!392 = !{ptr @__bpf_trace_tp_map_cm_send_sidr_rep, !17, !"__bpf_trace_tp_map_cm_send_sidr_rep", i1 false, i1 false}
!393 = !{ptr @__bpf_trace_tp_map_cm_disconnect, !21, !"__bpf_trace_tp_map_cm_disconnect", i1 false, i1 false}
!394 = !{ptr @__bpf_trace_tp_map_cm_sent_drep, !25, !"__bpf_trace_tp_map_cm_sent_drep", i1 false, i1 false}
!395 = !{ptr @__bpf_trace_tp_map_cm_sent_dreq, !29, !"__bpf_trace_tp_map_cm_sent_dreq", i1 false, i1 false}
!396 = !{ptr @__bpf_trace_tp_map_cm_id_destroy, !33, !"__bpf_trace_tp_map_cm_id_destroy", i1 false, i1 false}
!397 = !{ptr @__bpf_trace_tp_map_cm_id_attach, !37, !"__bpf_trace_tp_map_cm_id_attach", i1 false, i1 false}
!398 = !{ptr @__bpf_trace_tp_map_cm_send_req, !41, !"__bpf_trace_tp_map_cm_send_req", i1 false, i1 false}
!399 = !{ptr @__bpf_trace_tp_map_cm_send_rep, !45, !"__bpf_trace_tp_map_cm_send_rep", i1 false, i1 false}
!400 = !{ptr @__bpf_trace_tp_map_cm_qp_destroy, !49, !"__bpf_trace_tp_map_cm_qp_destroy", i1 false, i1 false}
!401 = !{ptr @__bpf_trace_tp_map_cm_qp_create, !53, !"__bpf_trace_tp_map_cm_qp_create", i1 false, i1 false}
!402 = !{ptr @__bpf_trace_tp_map_cm_req_handler, !57, !"__bpf_trace_tp_map_cm_req_handler", i1 false, i1 false}
!403 = !{ptr @__bpf_trace_tp_map_cm_event_handler, !61, !"__bpf_trace_tp_map_cm_event_handler", i1 false, i1 false}
!404 = !{ptr @__bpf_trace_tp_map_cm_event_done, !65, !"__bpf_trace_tp_map_cm_event_done", i1 false, i1 false}
!405 = !{ptr @__bpf_trace_tp_map_cm_add_one, !69, !"__bpf_trace_tp_map_cm_add_one", i1 false, i1 false}
!406 = !{ptr @__bpf_trace_tp_map_cm_remove_one, !73, !"__bpf_trace_tp_map_cm_remove_one", i1 false, i1 false}
!407 = !{ptr @__tpstrtab_cm_send_rtu, !1, !"__tpstrtab_cm_send_rtu", i1 false, i1 false}
!408 = !{ptr @__tpstrtab_cm_send_rej, !5, !"__tpstrtab_cm_send_rej", i1 false, i1 false}
!409 = !{ptr @__tpstrtab_cm_send_mra, !9, !"__tpstrtab_cm_send_mra", i1 false, i1 false}
!410 = !{ptr @__tpstrtab_cm_send_sidr_req, !13, !"__tpstrtab_cm_send_sidr_req", i1 false, i1 false}
!411 = !{ptr @__tpstrtab_cm_send_sidr_rep, !17, !"__tpstrtab_cm_send_sidr_rep", i1 false, i1 false}
!412 = !{ptr @__tpstrtab_cm_disconnect, !21, !"__tpstrtab_cm_disconnect", i1 false, i1 false}
!413 = !{ptr @__tpstrtab_cm_sent_drep, !25, !"__tpstrtab_cm_sent_drep", i1 false, i1 false}
!414 = !{ptr @__tpstrtab_cm_sent_dreq, !29, !"__tpstrtab_cm_sent_dreq", i1 false, i1 false}
!415 = !{ptr @__tpstrtab_cm_id_destroy, !33, !"__tpstrtab_cm_id_destroy", i1 false, i1 false}
!416 = !{ptr @__tpstrtab_cm_id_attach, !37, !"__tpstrtab_cm_id_attach", i1 false, i1 false}
!417 = !{ptr @__tpstrtab_cm_send_req, !41, !"__tpstrtab_cm_send_req", i1 false, i1 false}
!418 = !{ptr @__tpstrtab_cm_send_rep, !45, !"__tpstrtab_cm_send_rep", i1 false, i1 false}
!419 = !{ptr @__tpstrtab_cm_qp_destroy, !49, !"__tpstrtab_cm_qp_destroy", i1 false, i1 false}
!420 = !{ptr @__tpstrtab_cm_qp_create, !53, !"__tpstrtab_cm_qp_create", i1 false, i1 false}
!421 = !{ptr @__tpstrtab_cm_req_handler, !57, !"__tpstrtab_cm_req_handler", i1 false, i1 false}
!422 = !{ptr @__tpstrtab_cm_event_handler, !61, !"__tpstrtab_cm_event_handler", i1 false, i1 false}
!423 = !{ptr @__tpstrtab_cm_event_done, !65, !"__tpstrtab_cm_event_done", i1 false, i1 false}
!424 = !{ptr @__tpstrtab_cm_add_one, !69, !"__tpstrtab_cm_add_one", i1 false, i1 false}
!425 = !{ptr @__tpstrtab_cm_remove_one, !73, !"__tpstrtab_cm_remove_one", i1 false, i1 false}
!426 = !{ptr @str__rdma_cma__trace_system_name, !427, !"str__rdma_cma__trace_system_name", i1 false, i1 false}
!427 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!428 = !{ptr @.str.86, !340, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.87, !340, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.88, !340, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.89, !340, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.90, !340, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.91, !340, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @trace_event_fields_cma_fsm_class, !340, !"trace_event_fields_cma_fsm_class", i1 false, i1 false}
!435 = !{ptr @trace_event_type_funcs_cma_fsm_class, !340, !"trace_event_type_funcs_cma_fsm_class", i1 false, i1 false}
!436 = !{ptr @.str.92, !340, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @print_fmt_cma_fsm_class, !340, !"print_fmt_cma_fsm_class", i1 false, i1 false}
!438 = !{ptr @.str.93, !37, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.94, !37, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.95, !37, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @trace_event_fields_cm_id_attach, !37, !"trace_event_fields_cm_id_attach", i1 false, i1 false}
!442 = !{ptr @trace_event_type_funcs_cm_id_attach, !37, !"trace_event_type_funcs_cm_id_attach", i1 false, i1 false}
!443 = !{ptr @.str.96, !37, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @print_fmt_cm_id_attach, !37, !"print_fmt_cm_id_attach", i1 false, i1 false}
!445 = !{ptr @.str.97, !363, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @trace_event_fields_cma_qp_class, !363, !"trace_event_fields_cma_qp_class", i1 false, i1 false}
!447 = !{ptr @trace_event_type_funcs_cma_qp_class, !363, !"trace_event_type_funcs_cma_qp_class", i1 false, i1 false}
!448 = !{ptr @.str.98, !363, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @print_fmt_cma_qp_class, !363, !"print_fmt_cma_qp_class", i1 false, i1 false}
!450 = !{ptr @.str.99, !53, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.100, !53, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.101, !53, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.102, !53, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @.str.103, !53, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.104, !53, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.105, !53, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @trace_event_fields_cm_qp_create, !53, !"trace_event_fields_cm_qp_create", i1 false, i1 false}
!458 = !{ptr @trace_event_type_funcs_cm_qp_create, !53, !"trace_event_type_funcs_cm_qp_create", i1 false, i1 false}
!459 = !{ptr @.str.106, !53, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @.str.107, !53, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.108, !53, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.109, !53, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.110, !53, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.111, !53, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.112, !53, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.113, !53, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.114, !53, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @.str.115, !53, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.116, !53, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @trace_raw_output_cm_qp_create.symbols, !53, !"symbols", i1 false, i1 false}
!471 = !{ptr @print_fmt_cm_qp_create, !53, !"print_fmt_cm_qp_create", i1 false, i1 false}
!472 = !{ptr @.str.117, !57, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @trace_event_fields_cm_req_handler, !57, !"trace_event_fields_cm_req_handler", i1 false, i1 false}
!474 = !{ptr @trace_event_type_funcs_cm_req_handler, !57, !"trace_event_type_funcs_cm_req_handler", i1 false, i1 false}
!475 = !{ptr @.str.118, !57, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.119, !57, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.120, !57, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @.str.121, !57, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @.str.122, !57, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @.str.123, !57, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.124, !57, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @.str.125, !57, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.126, !57, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.127, !57, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @.str.128, !57, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @.str.129, !57, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @.str.130, !57, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @.str.131, !57, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @.str.132, !57, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @.str.133, !57, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @.str.134, !57, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.135, !57, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @.str.136, !57, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @trace_raw_output_cm_req_handler.symbols, !57, !"symbols", i1 false, i1 false}
!495 = !{ptr @print_fmt_cm_req_handler, !57, !"print_fmt_cm_req_handler", i1 false, i1 false}
!496 = !{ptr @.str.137, !61, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @trace_event_fields_cm_event_handler, !61, !"trace_event_fields_cm_event_handler", i1 false, i1 false}
!498 = !{ptr @trace_event_type_funcs_cm_event_handler, !61, !"trace_event_type_funcs_cm_event_handler", i1 false, i1 false}
!499 = !{ptr @.str.138, !61, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.139, !61, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.140, !61, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.141, !61, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.142, !61, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @.str.143, !61, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @.str.144, !61, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @.str.145, !61, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @.str.146, !61, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @.str.147, !61, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @.str.148, !61, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @.str.149, !61, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @.str.150, !61, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @.str.151, !61, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @.str.152, !61, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.153, !61, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @trace_raw_output_cm_event_handler.symbols, !61, !"symbols", i1 false, i1 false}
!516 = !{ptr @print_fmt_cm_event_handler, !61, !"print_fmt_cm_event_handler", i1 false, i1 false}
!517 = !{ptr @.str.154, !65, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @trace_event_fields_cm_event_done, !65, !"trace_event_fields_cm_event_done", i1 false, i1 false}
!519 = !{ptr @trace_event_type_funcs_cm_event_done, !65, !"trace_event_type_funcs_cm_event_done", i1 false, i1 false}
!520 = !{ptr @.str.155, !65, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @trace_raw_output_cm_event_done.symbols, !65, !"symbols", i1 false, i1 false}
!522 = !{ptr @print_fmt_cm_event_done, !65, !"print_fmt_cm_event_done", i1 false, i1 false}
!523 = !{ptr @.str.156, !383, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @trace_event_fields_cma_client_class, !383, !"trace_event_fields_cma_client_class", i1 false, i1 false}
!525 = !{ptr @trace_event_type_funcs_cma_client_class, !383, !"trace_event_type_funcs_cma_client_class", i1 false, i1 false}
!526 = !{ptr @.str.157, !383, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @print_fmt_cma_client_class, !383, !"print_fmt_cma_client_class", i1 false, i1 false}
!528 = !{!"sp"}
!529 = !{i32 1, !"wchar_size", i32 2}
!530 = !{i32 1, !"min_enum_size", i32 4}
!531 = !{i32 8, !"branch-target-enforcement", i32 0}
!532 = !{i32 8, !"sign-return-address", i32 0}
!533 = !{i32 8, !"sign-return-address-all", i32 0}
!534 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!535 = !{i32 7, !"uwtable", i32 1}
!536 = !{i32 7, !"frame-pointer", i32 2}
!537 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!538 = !{!"branch_weights", i32 2000, i32 1}
!539 = !{!"branch_weights", i32 1, i32 2000}
!540 = !{!"auto-init"}
