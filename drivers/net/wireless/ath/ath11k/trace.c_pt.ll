; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/trace.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__tracepoint_ath11k_log_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_ath11k_log_dbg\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_ath11k_log_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_ath11k_log_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_ath11k_log_dbg\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_ath11k_log_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.176 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.178, %struct.trace_event, ptr, ptr, %union.anon.179, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.178 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.179 = type { ptr }
%union.anon.180 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.101, %struct.anon.102, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.109], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.136, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.137, [0 x i8], [52 x i8] }
%struct.ath11k_qmi = type { ptr, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, ptr, %struct.list_head, %struct.spinlock, %struct.ath11k_qmi_ce_cfg, [52 x %struct.target_mem_chunk], i32, i32, i8, i8, %struct.target_info, %struct.m3_mem_region, i32, %struct.wait_queue_head }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ath11k_qmi_ce_cfg = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.target_mem_chunk = type { i32, i32, i32, ptr, ptr }
%struct.target_info = type { i32, i32, i32, i32, i32, i32, [33 x i8], [129 x i8], [32 x i8] }
%struct.m3_mem_region = type { i32, i32, ptr }
%struct.ath11k_wmi_base = type { ptr, [3 x %struct.ath11k_pdev_wmi], [3 x i32], [3 x i32], %struct.completion, %struct.completion, [8 x i32], %struct.wait_queue_head, ptr, i32, i32, [32 x %struct.wmi_host_mem_chunk], i32, %struct.target_resource_config, ptr }
%struct.ath11k_pdev_wmi = type { ptr, i32, ptr, i32, %struct.wait_queue_head }
%struct.wmi_host_mem_chunk = type { ptr, i32, i32, i32 }
%struct.target_resource_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_htc = type { ptr, [9 x %struct.ath11k_htc_ep], %struct.spinlock, [256 x i8], i32, %struct.completion, i32, [8 x %struct.ath11k_htc_svc_tx_credits], i32, i8 }
%struct.ath11k_htc_ep = type { ptr, i32, i32, %struct.ath11k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i8 }
%struct.ath11k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath11k_htc_svc_tx_credits = type { i16, i8 }
%struct.ath11k_dp = type { ptr, i32, %struct.completion, i8, i8, [8 x %struct.dp_link_desc_bank], %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, [4 x %struct.dp_srng], [3 x %struct.dp_tx_ring], [16 x %struct.hal_wbm_idle_scatter_list], %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.ath11k_hp_update_timer, [3 x %struct.ath11k_hp_update_timer] }
%struct.dp_link_desc_bank = type { ptr, ptr, i32, i32, i32 }
%struct.dp_srng = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.dp_tx_ring = type { i8, %struct.dp_srng, %struct.dp_srng, %struct.idr, %struct.spinlock, ptr, i32, i32 }
%struct.hal_wbm_idle_scatter_list = type { i32, ptr }
%struct.ath11k_hp_update_timer = type { %struct.timer_list, i8, i8, i32, i32, i32, i32, ptr }
%struct.anon.101 = type { i32, ptr }
%struct.anon.102 = type { %struct.completion }
%struct.ath11k_ce = type { [12 x %struct.ath11k_ce_pipe], %struct.spinlock, [12 x %struct.ath11k_hp_update_timer] }
%struct.ath11k_ce_pipe = type { ptr, i16, i32, i32, i32, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.103, i32 }
%union.anon.103 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.107, %struct.anon.108, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.anon.107 = type { ptr, i32 }
%struct.anon.108 = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.109 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.110, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.132, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.110 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.132 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ath11k_targ_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.133, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.135, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.133 = type { ptr, i32, i32 }
%struct.anon.135 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.136 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.137 = type { i32, i32, i32, i32, i32 }
%struct.trace_event_raw_ath11k_htt_pktlog = type { %struct.trace_entry, i32, i32, i16, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_ath11k_htt_ppdu_stats = type { %struct.trace_entry, i32, i32, i16, i32, [0 x i8] }
%struct.trace_event_raw_ath11k_htt_rxdesc = type { %struct.trace_entry, i32, i32, i16, i16, i32, [0 x i8] }
%struct.trace_event_raw_ath11k_log_event = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.trace_event_raw_ath11k_wmi_cmd = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ath11k_wmi_event = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ath11k_log_dbg = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_data_offsets_ath11k_log_dbg_dump = type { i32, i32, i32, i32, i32 }
%struct.trace_event_raw_ath11k_log_dbg_dump = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ath11k_wmi_diag = type { %struct.trace_entry, i32, i32, i16, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_ath11k_htt_pktlog = internal constant [18 x i8] c"ath11k_htt_pktlog\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_htt_pktlog = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_htt_pktlog }, align 4
@__tracepoint_ath11k_htt_pktlog = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_htt_pktlog, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_htt_pktlog, ptr null, ptr @__traceiter_ath11k_htt_pktlog, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_htt_pktlog = internal constant ptr @__tracepoint_ath11k_htt_pktlog, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_htt_ppdu_stats = internal constant [22 x i8] c"ath11k_htt_ppdu_stats\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_htt_ppdu_stats = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_htt_ppdu_stats }, align 4
@__tracepoint_ath11k_htt_ppdu_stats = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_htt_ppdu_stats, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_htt_ppdu_stats, ptr null, ptr @__traceiter_ath11k_htt_ppdu_stats, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_htt_ppdu_stats = internal constant ptr @__tracepoint_ath11k_htt_ppdu_stats, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_htt_rxdesc = internal constant [18 x i8] c"ath11k_htt_rxdesc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_htt_rxdesc = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_htt_rxdesc }, align 4
@__tracepoint_ath11k_htt_rxdesc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_htt_rxdesc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_htt_rxdesc, ptr null, ptr @__traceiter_ath11k_htt_rxdesc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_htt_rxdesc = internal constant ptr @__tracepoint_ath11k_htt_rxdesc, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_log_err = internal constant [15 x i8] c"ath11k_log_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_log_err = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_log_err }, align 4
@__tracepoint_ath11k_log_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_log_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_log_err, ptr null, ptr @__traceiter_ath11k_log_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_log_err = internal constant ptr @__tracepoint_ath11k_log_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_log_warn = internal constant [16 x i8] c"ath11k_log_warn\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_log_warn = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_log_warn }, align 4
@__tracepoint_ath11k_log_warn = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_log_warn, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_log_warn, ptr null, ptr @__traceiter_ath11k_log_warn, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_log_warn = internal constant ptr @__tracepoint_ath11k_log_warn, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_log_info = internal constant [16 x i8] c"ath11k_log_info\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_log_info = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_log_info }, align 4
@__tracepoint_ath11k_log_info = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_log_info, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_log_info, ptr null, ptr @__traceiter_ath11k_log_info, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_log_info = internal constant ptr @__tracepoint_ath11k_log_info, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_wmi_cmd = internal constant [15 x i8] c"ath11k_wmi_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_wmi_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_wmi_cmd }, align 4
@__tracepoint_ath11k_wmi_cmd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_wmi_cmd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_wmi_cmd, ptr null, ptr @__traceiter_ath11k_wmi_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_wmi_cmd = internal constant ptr @__tracepoint_ath11k_wmi_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_wmi_event = internal constant [17 x i8] c"ath11k_wmi_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_wmi_event = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_wmi_event }, align 4
@__tracepoint_ath11k_wmi_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_wmi_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_wmi_event, ptr null, ptr @__traceiter_ath11k_wmi_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_wmi_event = internal constant ptr @__tracepoint_ath11k_wmi_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_log_dbg = internal constant [15 x i8] c"ath11k_log_dbg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_log_dbg = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_log_dbg }, align 4
@__tracepoint_ath11k_log_dbg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_log_dbg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_log_dbg, ptr null, ptr @__traceiter_ath11k_log_dbg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_log_dbg = internal constant ptr @__tracepoint_ath11k_log_dbg, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_log_dbg_dump = internal constant [20 x i8] c"ath11k_log_dbg_dump\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_log_dbg_dump = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_log_dbg_dump }, align 4
@__tracepoint_ath11k_log_dbg_dump = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_log_dbg_dump, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_log_dbg_dump, ptr null, ptr @__traceiter_ath11k_log_dbg_dump, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_log_dbg_dump = internal constant ptr @__tracepoint_ath11k_log_dbg_dump, section "__tracepoints_ptrs", align 4
@__tpstrtab_ath11k_wmi_diag = internal constant [16 x i8] c"ath11k_wmi_diag\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ath11k_wmi_diag = dso_local global %struct.static_call_key { ptr @__traceiter_ath11k_wmi_diag }, align 4
@__tracepoint_ath11k_wmi_diag = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ath11k_wmi_diag, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ath11k_wmi_diag, ptr null, ptr @__traceiter_ath11k_wmi_diag, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ath11k_wmi_diag = internal constant ptr @__tracepoint_ath11k_wmi_diag, section "__tracepoints_ptrs", align 4
@str__ath11k__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath11k\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_ath11k_htt_pktlog = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.176 { %struct.anon.177 { ptr @.str.5, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.176 { %struct.anon.177 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_ath11k_htt_pktlog = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_htt_pktlog, ptr @perf_trace_ath11k_htt_pktlog, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_htt_pktlog, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_htt_pktlog, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_htt_pktlog, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_htt_pktlog = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_htt_pktlog, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_htt_pktlog = internal global { [109 x i8], [51 x i8] } { [109 x i8] c"\22%s %s size %u pktlog_checksum %d\22, __get_str(driver), __get_str(device), REC->buf_len, REC->pktlog_checksum\00", [51 x i8] zeroinitializer }, align 32
@event_ath11k_htt_pktlog = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_htt_pktlog, %union.anon.178 { ptr @__tracepoint_ath11k_htt_pktlog }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_htt_pktlog }, ptr @print_fmt_ath11k_htt_pktlog, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_htt_pktlog = internal global ptr @event_ath11k_htt_pktlog, section "_ftrace_events", align 4
@trace_event_fields_ath11k_htt_ppdu_stats = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.176 { %struct.anon.177 { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_ath11k_htt_ppdu_stats = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_htt_ppdu_stats, ptr @perf_trace_ath11k_htt_ppdu_stats, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_htt_ppdu_stats, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_htt_ppdu_stats, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_htt_ppdu_stats, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_htt_ppdu_stats = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_htt_ppdu_stats, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_htt_ppdu_stats = internal global { [68 x i8], [60 x i8] } { [68 x i8] c"\22%s %s ppdu len %d\22, __get_str(driver), __get_str(device), REC->len\00", [60 x i8] zeroinitializer }, align 32
@event_ath11k_htt_ppdu_stats = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_htt_ppdu_stats, %union.anon.178 { ptr @__tracepoint_ath11k_htt_ppdu_stats }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_htt_ppdu_stats }, ptr @print_fmt_ath11k_htt_ppdu_stats, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_htt_ppdu_stats = internal global ptr @event_ath11k_htt_ppdu_stats, section "_ftrace_events", align 4
@trace_event_fields_ath11k_htt_rxdesc = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.176 { %struct.anon.177 { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.176 { %struct.anon.177 { ptr @.str.14, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_ath11k_htt_rxdesc = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_htt_rxdesc, ptr @perf_trace_ath11k_htt_rxdesc, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_htt_rxdesc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_htt_rxdesc, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_htt_rxdesc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_htt_rxdesc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_htt_rxdesc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_htt_rxdesc = internal global { [93 x i8], [35 x i8] } { [93 x i8] c"\22%s %s rxdesc len %d type %d\22, __get_str(driver), __get_str(device), REC->len, REC->log_type\00", [35 x i8] zeroinitializer }, align 32
@event_ath11k_htt_rxdesc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_htt_rxdesc, %union.anon.178 { ptr @__tracepoint_ath11k_htt_rxdesc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_htt_rxdesc }, ptr @print_fmt_ath11k_htt_rxdesc, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_htt_rxdesc = internal global ptr @event_ath11k_htt_rxdesc, section "_ftrace_events", align 4
@trace_event_fields_ath11k_log_event = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_ath11k_log_event = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_log_event, ptr @perf_trace_ath11k_log_event, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_log_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_log_event, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_log_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_log_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_log_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_log_event = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"\22%s %s %s\22, __get_str(driver), __get_str(device), __get_str(msg)\00", [63 x i8] zeroinitializer }, align 32
@event_ath11k_log_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_log_event, %union.anon.178 { ptr @__tracepoint_ath11k_log_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_log_event }, ptr @print_fmt_ath11k_log_event, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_log_err = internal global ptr @event_ath11k_log_err, section "_ftrace_events", align 4
@event_ath11k_log_warn = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_log_event, %union.anon.178 { ptr @__tracepoint_ath11k_log_warn }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_log_event }, ptr @print_fmt_ath11k_log_event, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_log_warn = internal global ptr @event_ath11k_log_warn, section "_ftrace_events", align 4
@event_ath11k_log_info = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_log_event, %union.anon.178 { ptr @__tracepoint_ath11k_log_info }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_log_event }, ptr @print_fmt_ath11k_log_event, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_log_info = internal global ptr @event_ath11k_log_info, section "_ftrace_events", align 4
@trace_event_fields_ath11k_wmi_cmd = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.176 { %struct.anon.177 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.176 { %struct.anon.177 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_ath11k_wmi_cmd = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_wmi_cmd, ptr @perf_trace_ath11k_wmi_cmd, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_wmi_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_wmi_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_wmi_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_wmi_cmd = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_wmi_cmd, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_wmi_cmd = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22%s %s id %d len %zu\22, __get_str(driver), __get_str(device), REC->id, REC->buf_len\00", [45 x i8] zeroinitializer }, align 32
@event_ath11k_wmi_cmd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_wmi_cmd, %union.anon.178 { ptr @__tracepoint_ath11k_wmi_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_wmi_cmd }, ptr @print_fmt_ath11k_wmi_cmd, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_wmi_cmd = internal global ptr @event_ath11k_wmi_cmd, section "_ftrace_events", align 4
@trace_event_fields_ath11k_wmi_event = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.176 { %struct.anon.177 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.176 { %struct.anon.177 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_ath11k_wmi_event = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_wmi_event, ptr @perf_trace_ath11k_wmi_event, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_wmi_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_wmi_event, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_wmi_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_wmi_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_wmi_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_wmi_event = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22%s %s id %d len %zu\22, __get_str(driver), __get_str(device), REC->id, REC->buf_len\00", [45 x i8] zeroinitializer }, align 32
@event_ath11k_wmi_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_wmi_event, %union.anon.178 { ptr @__tracepoint_ath11k_wmi_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_wmi_event }, ptr @print_fmt_ath11k_wmi_event, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_wmi_event = internal global ptr @event_ath11k_wmi_event, section "_ftrace_events", align 4
@trace_event_fields_ath11k_log_dbg = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.176 { %struct.anon.177 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_ath11k_log_dbg = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_log_dbg, ptr @perf_trace_ath11k_log_dbg, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_log_dbg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_log_dbg, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_log_dbg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_log_dbg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_log_dbg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_log_dbg = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"\22%s %s %s\22, __get_str(driver), __get_str(device), __get_str(msg)\00", [63 x i8] zeroinitializer }, align 32
@event_ath11k_log_dbg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_log_dbg, %union.anon.178 { ptr @__tracepoint_ath11k_log_dbg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_log_dbg }, ptr @print_fmt_ath11k_log_dbg, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_log_dbg = internal global ptr @event_ath11k_log_dbg, section "_ftrace_events", align 4
@trace_event_fields_ath11k_log_dbg_dump = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.176 { %struct.anon.177 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_ath11k_log_dbg_dump = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_log_dbg_dump, ptr @perf_trace_ath11k_log_dbg_dump, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_log_dbg_dump, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_log_dbg_dump, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_log_dbg_dump, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_log_dbg_dump = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_log_dbg_dump, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_log_dbg_dump = internal global { [88 x i8], [40 x i8] } { [88 x i8] c"\22%s %s %s/%s\0A\22, __get_str(driver), __get_str(device), __get_str(prefix), __get_str(msg)\00", [40 x i8] zeroinitializer }, align 32
@event_ath11k_log_dbg_dump = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_log_dbg_dump, %union.anon.178 { ptr @__tracepoint_ath11k_log_dbg_dump }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_log_dbg_dump }, ptr @print_fmt_ath11k_log_dbg_dump, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_log_dbg_dump = internal global ptr @event_ath11k_log_dbg_dump, section "_ftrace_events", align 4
@trace_event_fields_ath11k_wmi_diag = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.176 { %struct.anon.177 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.176 { %struct.anon.177 { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.176 { %struct.anon.177 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_ath11k_wmi_diag = internal global %struct.trace_event_class { ptr @str__ath11k__trace_system_name, ptr @trace_event_raw_event_ath11k_wmi_diag, ptr @perf_trace_ath11k_wmi_diag, ptr @trace_event_reg, ptr @trace_event_fields_ath11k_wmi_diag, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ath11k_wmi_diag, i64 24), ptr getelementptr (i8, ptr @event_class_ath11k_wmi_diag, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ath11k_wmi_diag = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ath11k_wmi_diag, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ath11k_wmi_diag = internal global { [72 x i8], [56 x i8] } { [72 x i8] c"\22%s %s tlv diag len %d\22, __get_str(driver), __get_str(device), REC->len\00", [56 x i8] zeroinitializer }, align 32
@event_ath11k_wmi_diag = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ath11k_wmi_diag, %union.anon.178 { ptr @__tracepoint_ath11k_wmi_diag }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ath11k_wmi_diag }, ptr @print_fmt_ath11k_wmi_diag, ptr null, %union.anon.179 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ath11k_wmi_diag = internal global ptr @event_ath11k_wmi_diag, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ath11k_htt_pktlog = internal global %union.anon.180 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_htt_pktlog, ptr @__bpf_trace_ath11k_htt_pktlog, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_htt_ppdu_stats = internal global %union.anon.181 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_htt_ppdu_stats, ptr @__bpf_trace_ath11k_htt_ppdu_stats, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_htt_rxdesc = internal global %union.anon.182 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_htt_rxdesc, ptr @__bpf_trace_ath11k_htt_rxdesc, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_log_err = internal global %union.anon.183 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_log_err, ptr @__bpf_trace_ath11k_log_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_log_warn = internal global %union.anon.184 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_log_warn, ptr @__bpf_trace_ath11k_log_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_log_info = internal global %union.anon.185 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_log_info, ptr @__bpf_trace_ath11k_log_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_wmi_cmd = internal global %union.anon.186 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_wmi_cmd, ptr @__bpf_trace_ath11k_wmi_cmd, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_wmi_event = internal global %union.anon.187 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_wmi_event, ptr @__bpf_trace_ath11k_wmi_event, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_log_dbg = internal global %union.anon.188 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_log_dbg, ptr @__bpf_trace_ath11k_log_dbg, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_log_dbg_dump = internal global %union.anon.189 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_log_dbg_dump, ptr @__bpf_trace_ath11k_log_dbg_dump, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ath11k_wmi_diag = internal global %union.anon.190 { %struct.bpf_raw_event_map { ptr @__tracepoint_ath11k_wmi_diag, ptr @__bpf_trace_ath11k_wmi_diag, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab___tracepoint_ath11k_log_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_ath11k_log_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_ath11k_log_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_ath11k_log_dbg to i32), ptr @__kstrtab___tracepoint_ath11k_log_dbg, ptr @__kstrtabns___tracepoint_ath11k_log_dbg }, section "___ksymtab+__tracepoint_ath11k_log_dbg", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"driver\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"buf_len\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pktlog_checksum\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pktlog\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s %s size %u pktlog_checksum %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppdu\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s %s ppdu len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"log_type\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxdesc\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s rxdesc len %d type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@trace_event_raw_event_ath11k_log_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ath/ath11k/./trace.h\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %s id %d len %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@trace_event_raw_event_ath11k_log_dbg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prefix\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %s %s/%s\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s tlv diag len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@perf_trace_ath11k_log_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@perf_trace_ath11k_log_dbg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_ = private constant [43 x i8] c"../drivers/net/wireless/ath/ath11k/trace.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [31 x i8] c"str__ath11k__trace_system_name\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 36, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [37 x i8] c"trace_event_fields_ath11k_htt_pktlog\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_ath11k_htt_pktlog\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"print_fmt_ath11k_htt_pktlog\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"event_ath11k_htt_pktlog\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [41 x i8] c"trace_event_fields_ath11k_htt_ppdu_stats\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_ath11k_htt_ppdu_stats\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [32 x i8] c"print_fmt_ath11k_htt_ppdu_stats\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"event_ath11k_htt_ppdu_stats\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [37 x i8] c"trace_event_fields_ath11k_htt_rxdesc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_ath11k_htt_rxdesc\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"print_fmt_ath11k_htt_rxdesc\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [24 x i8] c"event_ath11k_htt_rxdesc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [36 x i8] c"trace_event_fields_ath11k_log_event\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_ath11k_log_event\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"print_fmt_ath11k_log_event\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"event_ath11k_log_err\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 147, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"event_ath11k_log_warn\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 152, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"event_ath11k_log_info\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 157, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [34 x i8] c"trace_event_fields_ath11k_wmi_cmd\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_ath11k_wmi_cmd\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"print_fmt_ath11k_wmi_cmd\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"event_ath11k_wmi_cmd\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [36 x i8] c"trace_event_fields_ath11k_wmi_event\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_ath11k_wmi_event\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"print_fmt_ath11k_wmi_event\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"event_ath11k_wmi_event\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 192, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [34 x i8] c"trace_event_fields_ath11k_log_dbg\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_ath11k_log_dbg\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [25 x i8] c"print_fmt_ath11k_log_dbg\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"event_ath11k_log_dbg\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [39 x i8] c"trace_event_fields_ath11k_log_dbg_dump\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_ath11k_log_dbg_dump\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [30 x i8] c"print_fmt_ath11k_log_dbg_dump\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"event_ath11k_log_dbg_dump\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [35 x i8] c"trace_event_fields_ath11k_wmi_diag\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_ath11k_wmi_diag\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"print_fmt_ath11k_wmi_diag\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"event_ath11k_wmi_diag\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 35, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 66, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 93, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 123, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 162, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 222, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 251, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath11k/./trace.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 284, i32 1 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__bpf_trace_tp_map_ath11k_htt_pktlog, ptr @__bpf_trace_tp_map_ath11k_htt_ppdu_stats, ptr @__bpf_trace_tp_map_ath11k_htt_rxdesc, ptr @__bpf_trace_tp_map_ath11k_log_dbg, ptr @__bpf_trace_tp_map_ath11k_log_dbg_dump, ptr @__bpf_trace_tp_map_ath11k_log_err, ptr @__bpf_trace_tp_map_ath11k_log_info, ptr @__bpf_trace_tp_map_ath11k_log_warn, ptr @__bpf_trace_tp_map_ath11k_wmi_cmd, ptr @__bpf_trace_tp_map_ath11k_wmi_diag, ptr @__bpf_trace_tp_map_ath11k_wmi_event, ptr @__event_ath11k_htt_pktlog, ptr @__event_ath11k_htt_ppdu_stats, ptr @__event_ath11k_htt_rxdesc, ptr @__event_ath11k_log_dbg, ptr @__event_ath11k_log_dbg_dump, ptr @__event_ath11k_log_err, ptr @__event_ath11k_log_info, ptr @__event_ath11k_log_warn, ptr @__event_ath11k_wmi_cmd, ptr @__event_ath11k_wmi_diag, ptr @__event_ath11k_wmi_event, ptr @__ksymtab___tracepoint_ath11k_log_dbg, ptr @__tracepoint_ath11k_htt_pktlog, ptr @__tracepoint_ath11k_htt_ppdu_stats, ptr @__tracepoint_ath11k_htt_rxdesc, ptr @__tracepoint_ath11k_log_dbg, ptr @__tracepoint_ath11k_log_dbg_dump, ptr @__tracepoint_ath11k_log_err, ptr @__tracepoint_ath11k_log_info, ptr @__tracepoint_ath11k_log_warn, ptr @__tracepoint_ath11k_wmi_cmd, ptr @__tracepoint_ath11k_wmi_diag, ptr @__tracepoint_ath11k_wmi_event, ptr @__tracepoint_ptr_ath11k_htt_pktlog, ptr @__tracepoint_ptr_ath11k_htt_ppdu_stats, ptr @__tracepoint_ptr_ath11k_htt_rxdesc, ptr @__tracepoint_ptr_ath11k_log_dbg, ptr @__tracepoint_ptr_ath11k_log_dbg_dump, ptr @__tracepoint_ptr_ath11k_log_err, ptr @__tracepoint_ptr_ath11k_log_info, ptr @__tracepoint_ptr_ath11k_log_warn, ptr @__tracepoint_ptr_ath11k_wmi_cmd, ptr @__tracepoint_ptr_ath11k_wmi_diag, ptr @__tracepoint_ptr_ath11k_wmi_event, ptr @event_ath11k_htt_pktlog, ptr @event_ath11k_htt_ppdu_stats, ptr @event_ath11k_htt_rxdesc, ptr @event_ath11k_log_dbg, ptr @event_ath11k_log_dbg_dump, ptr @event_ath11k_log_err, ptr @event_ath11k_log_info, ptr @event_ath11k_log_warn, ptr @event_ath11k_wmi_cmd, ptr @event_ath11k_wmi_diag, ptr @event_ath11k_wmi_event, ptr @event_class_ath11k_htt_pktlog, ptr @event_class_ath11k_htt_ppdu_stats, ptr @event_class_ath11k_htt_rxdesc, ptr @event_class_ath11k_log_dbg, ptr @event_class_ath11k_log_dbg_dump, ptr @event_class_ath11k_log_event, ptr @event_class_ath11k_wmi_cmd, ptr @event_class_ath11k_wmi_diag, ptr @event_class_ath11k_wmi_event, ptr @str__ath11k__trace_system_name, ptr @trace_event_fields_ath11k_htt_pktlog, ptr @trace_event_type_funcs_ath11k_htt_pktlog, ptr @print_fmt_ath11k_htt_pktlog, ptr @trace_event_fields_ath11k_htt_ppdu_stats, ptr @trace_event_type_funcs_ath11k_htt_ppdu_stats, ptr @print_fmt_ath11k_htt_ppdu_stats, ptr @trace_event_fields_ath11k_htt_rxdesc, ptr @trace_event_type_funcs_ath11k_htt_rxdesc, ptr @print_fmt_ath11k_htt_rxdesc, ptr @trace_event_fields_ath11k_log_event, ptr @trace_event_type_funcs_ath11k_log_event, ptr @print_fmt_ath11k_log_event, ptr @trace_event_fields_ath11k_wmi_cmd, ptr @trace_event_type_funcs_ath11k_wmi_cmd, ptr @print_fmt_ath11k_wmi_cmd, ptr @trace_event_fields_ath11k_wmi_event, ptr @trace_event_type_funcs_ath11k_wmi_event, ptr @print_fmt_ath11k_wmi_event, ptr @trace_event_fields_ath11k_log_dbg, ptr @trace_event_type_funcs_ath11k_log_dbg, ptr @print_fmt_ath11k_log_dbg, ptr @trace_event_fields_ath11k_log_dbg_dump, ptr @trace_event_type_funcs_ath11k_log_dbg_dump, ptr @print_fmt_ath11k_log_dbg_dump, ptr @trace_event_fields_ath11k_wmi_diag, ptr @trace_event_type_funcs_ath11k_wmi_diag, ptr @print_fmt_ath11k_wmi_diag, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__ath11k__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_htt_pktlog to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_htt_pktlog to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_htt_pktlog to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_htt_pktlog to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_htt_ppdu_stats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_htt_ppdu_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_htt_ppdu_stats to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_htt_ppdu_stats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_htt_rxdesc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_htt_rxdesc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_htt_rxdesc to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_htt_rxdesc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_log_event to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_log_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_log_event to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_log_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_log_warn to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_log_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_wmi_cmd to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_wmi_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_wmi_cmd to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_wmi_cmd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_wmi_event to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_wmi_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_wmi_event to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_wmi_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_log_dbg to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_log_dbg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_log_dbg to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_log_dbg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_log_dbg_dump to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_log_dbg_dump to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_log_dbg_dump to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_log_dbg_dump to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ath11k_wmi_diag to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ath11k_wmi_diag to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ath11k_wmi_diag to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ath11k_wmi_diag to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_htt_pktlog(ptr nocapture readnone %__data, ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len, i32 noundef %pktlog_checksum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_htt_pktlog, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len, i32 noundef %pktlog_checksum) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_htt_ppdu_stats(ptr nocapture readnone %__data, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_htt_ppdu_stats, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_htt_rxdesc(ptr nocapture readnone %__data, ptr noundef %ar, ptr noundef %data, i32 noundef %log_type, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_htt_rxdesc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ar, ptr noundef %data, i32 noundef %log_type, i32 noundef %len) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_log_err(ptr nocapture readnone %__data, ptr noundef %ab, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_log_err, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, ptr noundef %vaf) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_log_warn(ptr nocapture readnone %__data, ptr noundef %ab, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_log_warn, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, ptr noundef %vaf) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_log_info(ptr nocapture readnone %__data, ptr noundef %ab, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_log_info, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, ptr noundef %vaf) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_wmi_cmd(ptr nocapture readnone %__data, ptr noundef %ab, i32 noundef %id, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_wmi_cmd, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, i32 noundef %id, ptr noundef %buf, i32 noundef %buf_len) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_wmi_event(ptr nocapture readnone %__data, ptr noundef %ab, i32 noundef %id, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_wmi_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, i32 noundef %id, ptr noundef %buf, i32 noundef %buf_len) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_log_dbg(ptr nocapture readnone %__data, ptr noundef %ab, i32 noundef %level, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, i32 noundef %level, ptr noundef %vaf) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_log_dbg_dump(ptr nocapture readnone %__data, ptr noundef %ab, ptr noundef %msg, ptr noundef %prefix, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_log_dbg_dump, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ab, ptr noundef %msg, ptr noundef %prefix, ptr noundef %buf, i32 noundef %buf_len) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ath11k_wmi_diag(ptr nocapture readnone %__data, ptr noundef %ab, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ath11k_wmi_diag, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ab, ptr noundef %data, i32 noundef %len) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_htt_pktlog(ptr noundef %__data, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %buf, i16 noundef zeroext %buf_len, i32 noundef %pktlog_checksum) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool.not.i57 = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not.i57, ptr @.str, ptr %10
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %8, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call5.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 28
  %call11.i = tail call ptr @dev_driver_string(ptr noundef %6) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge, label %cond.true13.i

cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_htt_pktlog.exit

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar, align 8
  %dev15.i = getelementptr inbounds %struct.ath11k_base, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15.i, align 8
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %14) #9
  br label %trace_event_get_offsets_ath11k_htt_pktlog.exit

trace_event_get_offsets_ath11k_htt_pktlog.exit:   ; preds = %cond.true13.i, %cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge
  %cond19.i = phi ptr [ %call16.i, %cond.true13.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge ]
  %call20.i = tail call i32 @strlen(ptr noundef %cond19.i) #12
  %add21.i = add i32 %call20.i, 1
  %add27.i = add i32 %add21.i, %add.i
  %conv.i = zext i16 %buf_len to i32
  %add33.i = add i32 %add27.i, 28
  %add = add i32 %add33.i, %conv.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_htt_pktlog.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_htt_pktlog.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_htt_pktlog.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_htt_pktlog.exit
  %shl30.i = shl nuw i32 %conv.i, 16
  %or32.i = or i32 %add33.i, %shl30.i
  %shl24.i = shl i32 %add21.i, 16
  %add23.i = add i32 %call5.i, 29
  %or26.i = or i32 %shl24.i, %add23.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or26.i, ptr %__data_loc_driver, align 4
  %__data_loc_pktlog = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %__data_loc_pktlog to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or32.i, ptr %__data_loc_pktlog, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %18 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i58 = icmp eq ptr %23, null
  br i1 %tobool.not.i58, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i63

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i63:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i63, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %27, %if.end.i63 ], [ %23, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %28 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %__data_loc_driver, align 4
  %and14 = and i32 %29, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %30 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar, align 8
  %dev17 = getelementptr inbounds %struct.ath11k_base, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev17, align 8
  %call18 = call ptr @dev_driver_string(ptr noundef %33) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end.cond.end25_crit_edge, label %cond.true20

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

cond.true20:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ar, align 8
  %dev22 = getelementptr inbounds %struct.ath11k_base, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev22, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %37) #9
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true20, %cond.end.cond.end25_crit_edge
  %cond26 = phi ptr [ %call23, %cond.true20 ], [ @.str, %cond.end.cond.end25_crit_edge ]
  %call27 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef %cond26) #13
  %buf_len28 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call3, i32 0, i32 3
  %38 = ptrtoint ptr %buf_len28 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %buf_len, ptr %buf_len28, align 4
  %pktlog_checksum29 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call3, i32 0, i32 4
  %39 = ptrtoint ptr %pktlog_checksum29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %pktlog_checksum, ptr %pktlog_checksum29, align 4
  %40 = ptrtoint ptr %__data_loc_pktlog to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__data_loc_pktlog, align 4
  %and31 = and i32 %41, 65535
  %add.ptr32 = getelementptr i8, ptr %call3, i32 %and31
  %42 = call ptr @memcpy(ptr %add.ptr32, ptr %buf, i32 %conv.i)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end25, %trace_event_get_offsets_ath11k_htt_pktlog.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_htt_pktlog(ptr noundef %__data, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %buf, i16 noundef zeroext %buf_len, i32 noundef %pktlog_checksum) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %9
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %7, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call5.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 28
  %call11.i = tail call ptr @dev_driver_string(ptr noundef %5) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge, label %cond.true13.i

cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_htt_pktlog.exit

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 8
  %dev15.i = getelementptr inbounds %struct.ath11k_base, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15.i, align 8
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %13) #9
  br label %trace_event_get_offsets_ath11k_htt_pktlog.exit

trace_event_get_offsets_ath11k_htt_pktlog.exit:   ; preds = %cond.true13.i, %cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge
  %cond19.i = phi ptr [ %call16.i, %cond.true13.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_htt_pktlog.exit_crit_edge ]
  %call20.i = tail call i32 @strlen(ptr noundef %cond19.i) #12
  %add21.i = add i32 %call20.i, 1
  %add23.i = add i32 %call5.i, 29
  %shl24.i = shl i32 %add21.i, 16
  %or26.i = or i32 %shl24.i, %add23.i
  %add27.i = add i32 %add21.i, %add.i
  %conv.i = zext i16 %buf_len to i32
  %add29.i = add i32 %add27.i, 28
  %shl30.i = shl nuw i32 %conv.i, 16
  %or32.i = or i32 %add29.i, %shl30.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %14 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %perf_events, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %24 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %25, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_htt_pktlog.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_htt_pktlog.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_htt_pktlog.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_htt_pktlog.exit
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %23, align 4
  %tobool.not.i81.not = icmp eq ptr %27, null
  br i1 %tobool.not.i81.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_htt_pktlog.exit.if.end_crit_edge
  %add33.i = add nuw nsw i32 %conv.i, 39
  %add12 = add i32 %add33.i, %add27.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %28 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__regs, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #9
  %31 = ptrtoint ptr %30 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx2.i, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call13, i32 0, i32 1
  %39 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or26.i, ptr %__data_loc_driver, align 4
  %__data_loc_pktlog = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %__data_loc_pktlog to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or32.i, ptr %__data_loc_pktlog, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %42 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i82 = icmp eq ptr %47, null
  br i1 %tobool.not.i82, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %tobool20.not = icmp eq ptr %49, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i85

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i85:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i85, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %51, %if.end.i85 ], [ %47, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %52 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %__data_loc_driver, align 4
  %and26 = and i32 %53, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %54 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ar, align 8
  %dev29 = getelementptr inbounds %struct.ath11k_base, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev29, align 8
  %call30 = call ptr @dev_driver_string(ptr noundef %57) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cond.end.cond.end37_crit_edge, label %cond.true32

cond.end.cond.end37_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end37

cond.true32:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ar, align 8
  %dev34 = getelementptr inbounds %struct.ath11k_base, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev34, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %61) #9
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %cond.end.cond.end37_crit_edge
  %cond38 = phi ptr [ %call35, %cond.true32 ], [ @.str, %cond.end.cond.end37_crit_edge ]
  %call39 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef %cond38) #13
  %buf_len40 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call13, i32 0, i32 3
  %62 = ptrtoint ptr %buf_len40 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %buf_len, ptr %buf_len40, align 4
  %pktlog_checksum41 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %call13, i32 0, i32 4
  %63 = ptrtoint ptr %pktlog_checksum41 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %pktlog_checksum, ptr %pktlog_checksum41, align 4
  %64 = ptrtoint ptr %__data_loc_pktlog to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %__data_loc_pktlog, align 4
  %and43 = and i32 %65, 65535
  %add.ptr44 = getelementptr i8, ptr %call13, i32 %and43
  %66 = call ptr @memcpy(ptr %add.ptr44, ptr %buf, i32 %conv.i)
  %67 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rctx, align 4
  %69 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %68, ptr noundef %__data, i64 noundef 1, ptr noundef %70, ptr noundef %23, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end37, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_htt_ppdu_stats(ptr noundef %__data, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool.not.i54 = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not.i54, ptr @.str, ptr %10
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %8, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call5.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call11.i = tail call ptr @dev_driver_string(ptr noundef %6) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge, label %cond.true13.i

cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar, align 8
  %dev15.i = getelementptr inbounds %struct.ath11k_base, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15.i, align 8
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %14) #9
  br label %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit

trace_event_get_offsets_ath11k_htt_ppdu_stats.exit: ; preds = %cond.true13.i, %cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge
  %cond19.i = phi ptr [ %call16.i, %cond.true13.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge ]
  %call20.i = tail call i32 @strlen(ptr noundef %cond19.i) #12
  %add21.i = add i32 %call20.i, 1
  %add27.i = add i32 %add21.i, %add.i
  %add33.i = add i32 %add27.i, 24
  %add = add i32 %add33.i, %len
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_htt_ppdu_stats.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit
  %shl30.i = shl i32 %len, 16
  %or32.i = or i32 %add33.i, %shl30.i
  %shl24.i = shl i32 %add21.i, 16
  %add23.i = add i32 %call5.i, 25
  %or26.i = or i32 %shl24.i, %add23.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or26.i, ptr %__data_loc_driver, align 4
  %__data_loc_ppdu = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %__data_loc_ppdu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or32.i, ptr %__data_loc_ppdu, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %18 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i55 = icmp eq ptr %23, null
  br i1 %tobool.not.i55, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i60

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i60:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i60, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %27, %if.end.i60 ], [ %23, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %28 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %__data_loc_driver, align 4
  %and14 = and i32 %29, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %30 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar, align 8
  %dev17 = getelementptr inbounds %struct.ath11k_base, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev17, align 8
  %call18 = call ptr @dev_driver_string(ptr noundef %33) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end.cond.end25_crit_edge, label %cond.true20

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

cond.true20:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ar, align 8
  %dev22 = getelementptr inbounds %struct.ath11k_base, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev22, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %37) #9
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true20, %cond.end.cond.end25_crit_edge
  %cond26 = phi ptr [ %call23, %cond.true20 ], [ @.str, %cond.end.cond.end25_crit_edge ]
  %call27 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef %cond26) #13
  %conv = trunc i32 %len to i16
  %len28 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call3, i32 0, i32 3
  %38 = ptrtoint ptr %len28 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %len28, align 4
  %39 = ptrtoint ptr %__data_loc_ppdu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %__data_loc_ppdu, align 4
  %and30 = and i32 %40, 65535
  %add.ptr31 = getelementptr i8, ptr %call3, i32 %and30
  %41 = call ptr @memcpy(ptr %add.ptr31, ptr %data, i32 %len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end25, %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_htt_ppdu_stats(ptr noundef %__data, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %9
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %7, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call5.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call11.i = tail call ptr @dev_driver_string(ptr noundef %5) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge, label %cond.true13.i

cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 8
  %dev15.i = getelementptr inbounds %struct.ath11k_base, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15.i, align 8
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %13) #9
  br label %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit

trace_event_get_offsets_ath11k_htt_ppdu_stats.exit: ; preds = %cond.true13.i, %cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge
  %cond19.i = phi ptr [ %call16.i, %cond.true13.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_htt_ppdu_stats.exit_crit_edge ]
  %call20.i = tail call i32 @strlen(ptr noundef %cond19.i) #12
  %add21.i = add i32 %call20.i, 1
  %add23.i = add i32 %call5.i, 25
  %shl24.i = shl i32 %add21.i, 16
  %or26.i = or i32 %shl24.i, %add23.i
  %add27.i = add i32 %add21.i, %add.i
  %add29.i = add i32 %add27.i, 24
  %shl30.i = shl i32 %len, 16
  %or32.i = or i32 %add29.i, %shl30.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %14 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %perf_events, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %24 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %25, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_htt_ppdu_stats.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %23, align 4
  %tobool.not.i78.not = icmp eq ptr %27, null
  br i1 %tobool.not.i78.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_htt_ppdu_stats.exit.if.end_crit_edge
  %add33.i = add i32 %len, 35
  %add12 = add i32 %add33.i, %add27.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %28 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__regs, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #9
  %31 = ptrtoint ptr %30 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx2.i, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call13, i32 0, i32 1
  %39 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or26.i, ptr %__data_loc_driver, align 4
  %__data_loc_ppdu = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %__data_loc_ppdu to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or32.i, ptr %__data_loc_ppdu, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %42 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i79 = icmp eq ptr %47, null
  br i1 %tobool.not.i79, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %tobool20.not = icmp eq ptr %49, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i82

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i82:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i82, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %51, %if.end.i82 ], [ %47, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %52 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %__data_loc_driver, align 4
  %and26 = and i32 %53, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %54 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ar, align 8
  %dev29 = getelementptr inbounds %struct.ath11k_base, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev29, align 8
  %call30 = call ptr @dev_driver_string(ptr noundef %57) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cond.end.cond.end37_crit_edge, label %cond.true32

cond.end.cond.end37_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end37

cond.true32:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ar, align 8
  %dev34 = getelementptr inbounds %struct.ath11k_base, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev34, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %61) #9
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %cond.end.cond.end37_crit_edge
  %cond38 = phi ptr [ %call35, %cond.true32 ], [ @.str, %cond.end.cond.end37_crit_edge ]
  %call39 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef %cond38) #13
  %conv = trunc i32 %len to i16
  %len40 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %call13, i32 0, i32 3
  %62 = ptrtoint ptr %len40 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv, ptr %len40, align 4
  %63 = ptrtoint ptr %__data_loc_ppdu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %__data_loc_ppdu, align 4
  %and42 = and i32 %64, 65535
  %add.ptr43 = getelementptr i8, ptr %call13, i32 %and42
  %65 = call ptr @memcpy(ptr %add.ptr43, ptr %data, i32 %len)
  %66 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rctx, align 4
  %68 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %67, ptr noundef %__data, i64 noundef 1, ptr noundef %69, ptr noundef %23, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end37, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_htt_rxdesc(ptr noundef %__data, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %data, i32 noundef %log_type, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool.not.i58 = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not.i58, ptr @.str, ptr %10
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %8, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call5.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call11.i = tail call ptr @dev_driver_string(ptr noundef %6) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge, label %cond.true13.i

cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_htt_rxdesc.exit

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar, align 8
  %dev15.i = getelementptr inbounds %struct.ath11k_base, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15.i, align 8
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %14) #9
  br label %trace_event_get_offsets_ath11k_htt_rxdesc.exit

trace_event_get_offsets_ath11k_htt_rxdesc.exit:   ; preds = %cond.true13.i, %cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge
  %cond19.i = phi ptr [ %call16.i, %cond.true13.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge ]
  %call20.i = tail call i32 @strlen(ptr noundef %cond19.i) #12
  %add21.i = add i32 %call20.i, 1
  %add27.i = add i32 %add21.i, %add.i
  %add33.i = add i32 %add27.i, 24
  %add = add i32 %add33.i, %len
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_htt_rxdesc.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_htt_rxdesc.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_htt_rxdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_htt_rxdesc.exit
  %shl30.i = shl i32 %len, 16
  %or32.i = or i32 %add33.i, %shl30.i
  %shl24.i = shl i32 %add21.i, 16
  %add23.i = add i32 %call5.i, 25
  %or26.i = or i32 %shl24.i, %add23.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or26.i, ptr %__data_loc_driver, align 4
  %__data_loc_rxdesc = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %__data_loc_rxdesc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or32.i, ptr %__data_loc_rxdesc, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %18 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i59 = icmp eq ptr %23, null
  br i1 %tobool.not.i59, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i64

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i64:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i64, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %27, %if.end.i64 ], [ %23, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %28 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %__data_loc_driver, align 4
  %and14 = and i32 %29, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %30 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar, align 8
  %dev17 = getelementptr inbounds %struct.ath11k_base, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev17, align 8
  %call18 = call ptr @dev_driver_string(ptr noundef %33) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end.cond.end25_crit_edge, label %cond.true20

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

cond.true20:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ar, align 8
  %dev22 = getelementptr inbounds %struct.ath11k_base, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev22, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %37) #9
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true20, %cond.end.cond.end25_crit_edge
  %cond26 = phi ptr [ %call23, %cond.true20 ], [ @.str, %cond.end.cond.end25_crit_edge ]
  %call27 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef %cond26) #13
  %conv = trunc i32 %len to i16
  %len28 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call3, i32 0, i32 3
  %38 = ptrtoint ptr %len28 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %len28, align 4
  %conv29 = trunc i32 %log_type to i16
  %log_type30 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call3, i32 0, i32 4
  %39 = ptrtoint ptr %log_type30 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv29, ptr %log_type30, align 2
  %40 = ptrtoint ptr %__data_loc_rxdesc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__data_loc_rxdesc, align 4
  %and32 = and i32 %41, 65535
  %add.ptr33 = getelementptr i8, ptr %call3, i32 %and32
  %42 = call ptr @memcpy(ptr %add.ptr33, ptr %data, i32 %len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end25, %trace_event_get_offsets_ath11k_htt_rxdesc.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_htt_rxdesc(ptr noundef %__data, ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %data, i32 noundef %log_type, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %9
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %7, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call5.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call11.i = tail call ptr @dev_driver_string(ptr noundef %5) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge, label %cond.true13.i

cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_htt_rxdesc.exit

cond.true13.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 8
  %dev15.i = getelementptr inbounds %struct.ath11k_base, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15.i, align 8
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %13) #9
  br label %trace_event_get_offsets_ath11k_htt_rxdesc.exit

trace_event_get_offsets_ath11k_htt_rxdesc.exit:   ; preds = %cond.true13.i, %cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge
  %cond19.i = phi ptr [ %call16.i, %cond.true13.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_htt_rxdesc.exit_crit_edge ]
  %call20.i = tail call i32 @strlen(ptr noundef %cond19.i) #12
  %add21.i = add i32 %call20.i, 1
  %add23.i = add i32 %call5.i, 25
  %shl24.i = shl i32 %add21.i, 16
  %or26.i = or i32 %shl24.i, %add23.i
  %add27.i = add i32 %add21.i, %add.i
  %add29.i = add i32 %add27.i, 24
  %shl30.i = shl i32 %len, 16
  %or32.i = or i32 %add29.i, %shl30.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %14 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %perf_events, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %24 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %25, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_htt_rxdesc.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_htt_rxdesc.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_htt_rxdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_htt_rxdesc.exit
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %23, align 4
  %tobool.not.i82.not = icmp eq ptr %27, null
  br i1 %tobool.not.i82.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_htt_rxdesc.exit.if.end_crit_edge
  %add33.i = add i32 %len, 35
  %add12 = add i32 %add33.i, %add27.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %28 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__regs, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #9
  %31 = ptrtoint ptr %30 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx2.i, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call13, i32 0, i32 1
  %39 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or26.i, ptr %__data_loc_driver, align 4
  %__data_loc_rxdesc = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %__data_loc_rxdesc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or32.i, ptr %__data_loc_rxdesc, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %42 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i83 = icmp eq ptr %47, null
  br i1 %tobool.not.i83, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %tobool20.not = icmp eq ptr %49, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i86

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i86:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i86, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %51, %if.end.i86 ], [ %47, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %52 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %__data_loc_driver, align 4
  %and26 = and i32 %53, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %54 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ar, align 8
  %dev29 = getelementptr inbounds %struct.ath11k_base, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev29, align 8
  %call30 = call ptr @dev_driver_string(ptr noundef %57) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cond.end.cond.end37_crit_edge, label %cond.true32

cond.end.cond.end37_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end37

cond.true32:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ar, align 8
  %dev34 = getelementptr inbounds %struct.ath11k_base, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev34, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %61) #9
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %cond.end.cond.end37_crit_edge
  %cond38 = phi ptr [ %call35, %cond.true32 ], [ @.str, %cond.end.cond.end37_crit_edge ]
  %call39 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef %cond38) #13
  %conv = trunc i32 %len to i16
  %len40 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call13, i32 0, i32 3
  %62 = ptrtoint ptr %len40 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv, ptr %len40, align 4
  %conv41 = trunc i32 %log_type to i16
  %log_type42 = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %call13, i32 0, i32 4
  %63 = ptrtoint ptr %log_type42 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv41, ptr %log_type42, align 2
  %64 = ptrtoint ptr %__data_loc_rxdesc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %__data_loc_rxdesc, align 4
  %and44 = and i32 %65, 65535
  %add.ptr45 = getelementptr i8, ptr %call13, i32 %and44
  %66 = call ptr @memcpy(ptr %add.ptr45, ptr %data, i32 %len)
  %67 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rctx, align 4
  %69 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %68, ptr noundef %__data, i64 noundef 1, ptr noundef %70, ptr noundef %23, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end37, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_log_event(ptr noundef %__data, ptr nocapture noundef readonly %ab, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i89 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i89, ptr @.str, ptr %8
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %6, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 20
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_log_event.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %10) #9
  br label %trace_event_get_offsets_ath11k_log_event.exit

trace_event_get_offsets_ath11k_log_event.exit:    ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add24.i = add i32 %add18.i, %add.i
  %add = add i32 %add24.i, 420
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_log_event.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_log_event.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_log_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_log_event.exit
  %add25.i = add i32 %add24.i, 20
  %or28.i = or i32 %add25.i, 26214400
  %shl21.i = shl i32 %add18.i, 16
  %add20.i = add i32 %call4.i, 21
  %or23.i = or i32 %shl21.i, %add20.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or28.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i90 = icmp eq ptr %17, null
  br i1 %tobool.not.i90, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i95

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i95:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i95, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i95 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %22 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_driver, align 4
  %and13 = and i32 %23, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %call16 = call ptr @dev_driver_string(ptr noundef %25) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cond.end.cond.end22_crit_edge, label %cond.true18

cond.end.cond.end22_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end22

cond.true18:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %call20 = call ptr @dev_driver_string(ptr noundef %27) #9
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true18, %cond.end.cond.end22_crit_edge
  %cond23 = phi ptr [ %call20, %cond.true18 ], [ @.str, %cond.end.cond.end22_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef %cond23) #13
  %28 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %__data_loc_msg, align 4
  %and26 = and i32 %29, 65535
  %add.ptr27 = getelementptr i8, ptr %call3, i32 %and26
  %30 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %32 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %va, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack = load i32, ptr %33, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call28 = call i32 @vsnprintf(ptr noundef %add.ptr27, i32 noundef 400, ptr noundef %31, [1 x i32] %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %call28)
  %cmp = icmp sgt i32 %call28, 399
  br i1 %cmp, label %land.rhs, label %cond.end22.if.end58_crit_edge

cond.end22.if.end58_crit_edge:                    ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

land.rhs:                                         ; preds = %cond.end22
  %.b88 = load i1, ptr @trace_event_raw_event_ath11k_log_event.__already_done, align 1
  br i1 %.b88, label %land.rhs.if.end58_crit_edge, label %if.then36, !prof !173

land.rhs.if.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then36:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_event_raw_event_ath11k_log_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 137, i32 noundef 9, ptr noundef null) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then36, %land.rhs.if.end58_crit_edge, %cond.end22.if.end58_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %trace_event_get_offsets_ath11k_log_event.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_log_event(ptr noundef %__data, ptr nocapture noundef readonly %ab, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %5, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 20
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_log_event.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  br label %trace_event_get_offsets_ath11k_log_event.exit

trace_event_get_offsets_ath11k_log_event.exit:    ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_log_event.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add20.i = add i32 %call4.i, 21
  %shl21.i = shl i32 %add18.i, 16
  %or23.i = or i32 %shl21.i, %add20.i
  %add24.i = add i32 %add18.i, %add.i
  %add25.i = add i32 %add24.i, 20
  %or28.i = or i32 %add25.i, 26214400
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_log_event.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_log_event.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_log_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_log_event.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i123.not = icmp eq ptr %23, null
  br i1 %tobool.not.i123.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_log_event.exit.if.end_crit_edge
  %add12 = add i32 %add24.i, 431
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or28.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i124 = icmp eq ptr %41, null
  br i1 %tobool.not.i124, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i127

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i127:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i127, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i127 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %46 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__data_loc_driver, align 4
  %and25 = and i32 %47, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %call28 = call ptr @dev_driver_string(ptr noundef %49) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cond.end.cond.end34_crit_edge, label %cond.true30

cond.end.cond.end34_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34

cond.true30:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %call32 = call ptr @dev_driver_string(ptr noundef %51) #9
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true30, %cond.end.cond.end34_crit_edge
  %cond35 = phi ptr [ %call32, %cond.true30 ], [ @.str, %cond.end.cond.end34_crit_edge ]
  %call36 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef %cond35) #13
  %52 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %__data_loc_msg, align 4
  %and38 = and i32 %53, 65535
  %add.ptr39 = getelementptr i8, ptr %call13, i32 %and38
  %54 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %56 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %va, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack = load i32, ptr %57, align 4
  %59 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call40 = call i32 @vsnprintf(ptr noundef %add.ptr39, i32 noundef 400, ptr noundef %55, [1 x i32] %59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %call40)
  %cmp = icmp sgt i32 %call40, 399
  br i1 %cmp, label %land.rhs, label %cond.end34.if.end80_crit_edge

cond.end34.if.end80_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.rhs:                                         ; preds = %cond.end34
  %.b122 = load i1, ptr @perf_trace_ath11k_log_event.__already_done, align 1
  br i1 %.b122, label %land.rhs.if.end80_crit_edge, label %if.then54, !prof !173

land.rhs.if.end80_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @perf_trace_ath11k_log_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 137, i32 noundef 9, ptr noundef null) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then54, %land.rhs.if.end80_crit_edge, %cond.end34.if.end80_crit_edge
  %60 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rctx, align 4
  %62 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %61, ptr noundef %__data, i64 noundef 1, ptr noundef %63, ptr noundef %19, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_wmi_cmd(ptr noundef %__data, ptr nocapture noundef readonly %ab, i32 noundef %id, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i55 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i55, ptr @.str, ptr %8
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %6, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 28
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_wmi_cmd.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %10) #9
  br label %trace_event_get_offsets_ath11k_wmi_cmd.exit

trace_event_get_offsets_ath11k_wmi_cmd.exit:      ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add24.i = add i32 %add18.i, %add.i
  %add31.i = add i32 %add24.i, 28
  %add = add i32 %add31.i, %buf_len
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_wmi_cmd.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_wmi_cmd.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_wmi_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_wmi_cmd.exit
  %shl28.i = shl i32 %buf_len, 16
  %or30.i = or i32 %add31.i, %shl28.i
  %shl21.i = shl i32 %add18.i, 16
  %add20.i = add i32 %call4.i, 29
  %or23.i = or i32 %shl21.i, %add20.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or30.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %17, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i61

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i61:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i61, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i61 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %22 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_driver, align 4
  %and14 = and i32 %23, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %call17 = call ptr @dev_driver_string(ptr noundef %25) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cond.end.cond.end23_crit_edge, label %cond.true19

cond.end.cond.end23_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true19:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %call21 = call ptr @dev_driver_string(ptr noundef %27) #9
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true19, %cond.end.cond.end23_crit_edge
  %cond24 = phi ptr [ %call21, %cond.true19 ], [ @.str, %cond.end.cond.end23_crit_edge ]
  %call25 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef %cond24) #13
  %id26 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call3, i32 0, i32 3
  %28 = ptrtoint ptr %id26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %id, ptr %id26, align 4
  %buf_len27 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call3, i32 0, i32 4
  %29 = ptrtoint ptr %buf_len27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %buf_len, ptr %buf_len27, align 4
  %30 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__data_loc_buf, align 4
  %and29 = and i32 %31, 65535
  %add.ptr30 = getelementptr i8, ptr %call3, i32 %and29
  %32 = call ptr @memcpy(ptr %add.ptr30, ptr %buf, i32 %buf_len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end23, %trace_event_get_offsets_ath11k_wmi_cmd.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_wmi_cmd(ptr noundef %__data, ptr nocapture noundef readonly %ab, i32 noundef %id, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %5, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 28
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_wmi_cmd.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  br label %trace_event_get_offsets_ath11k_wmi_cmd.exit

trace_event_get_offsets_ath11k_wmi_cmd.exit:      ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_wmi_cmd.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add20.i = add i32 %call4.i, 29
  %shl21.i = shl i32 %add18.i, 16
  %or23.i = or i32 %shl21.i, %add20.i
  %add24.i = add i32 %add18.i, %add.i
  %add26.i = add i32 %add24.i, 28
  %shl28.i = shl i32 %buf_len, 16
  %or30.i = or i32 %add26.i, %shl28.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_wmi_cmd.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_wmi_cmd.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_wmi_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_wmi_cmd.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i79.not = icmp eq ptr %23, null
  br i1 %tobool.not.i79.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_wmi_cmd.exit.if.end_crit_edge
  %add31.i = add i32 %buf_len, 39
  %add12 = add i32 %add31.i, %add24.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or30.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i80 = icmp eq ptr %41, null
  br i1 %tobool.not.i80, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool21.not = icmp eq ptr %43, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i83

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i83:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i83, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i83 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %46 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__data_loc_driver, align 4
  %and26 = and i32 %47, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %call29 = call ptr @dev_driver_string(ptr noundef %49) #9
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %cond.end.cond.end35_crit_edge, label %cond.true31

cond.end.cond.end35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end35

cond.true31:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %call33 = call ptr @dev_driver_string(ptr noundef %51) #9
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true31, %cond.end.cond.end35_crit_edge
  %cond36 = phi ptr [ %call33, %cond.true31 ], [ @.str, %cond.end.cond.end35_crit_edge ]
  %call37 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef %cond36) #13
  %id38 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call13, i32 0, i32 3
  %52 = ptrtoint ptr %id38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %id, ptr %id38, align 4
  %buf_len39 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %call13, i32 0, i32 4
  %53 = ptrtoint ptr %buf_len39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %buf_len, ptr %buf_len39, align 4
  %54 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %__data_loc_buf, align 4
  %and41 = and i32 %55, 65535
  %add.ptr42 = getelementptr i8, ptr %call13, i32 %and41
  %56 = call ptr @memcpy(ptr %add.ptr42, ptr %buf, i32 %buf_len)
  %57 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rctx, align 4
  %59 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %58, ptr noundef %__data, i64 noundef 1, ptr noundef %60, ptr noundef %19, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end35, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_wmi_event(ptr noundef %__data, ptr nocapture noundef readonly %ab, i32 noundef %id, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i55 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i55, ptr @.str, ptr %8
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %6, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 28
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_wmi_event.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %10) #9
  br label %trace_event_get_offsets_ath11k_wmi_event.exit

trace_event_get_offsets_ath11k_wmi_event.exit:    ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add24.i = add i32 %add18.i, %add.i
  %add31.i = add i32 %add24.i, 28
  %add = add i32 %add31.i, %buf_len
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_wmi_event.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_wmi_event.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_wmi_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_wmi_event.exit
  %shl28.i = shl i32 %buf_len, 16
  %or30.i = or i32 %add31.i, %shl28.i
  %shl21.i = shl i32 %add18.i, 16
  %add20.i = add i32 %call4.i, 29
  %or23.i = or i32 %shl21.i, %add20.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or30.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %17, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i61

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i61:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i61, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i61 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %22 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_driver, align 4
  %and14 = and i32 %23, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %call17 = call ptr @dev_driver_string(ptr noundef %25) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cond.end.cond.end23_crit_edge, label %cond.true19

cond.end.cond.end23_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true19:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %call21 = call ptr @dev_driver_string(ptr noundef %27) #9
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true19, %cond.end.cond.end23_crit_edge
  %cond24 = phi ptr [ %call21, %cond.true19 ], [ @.str, %cond.end.cond.end23_crit_edge ]
  %call25 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef %cond24) #13
  %id26 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call3, i32 0, i32 3
  %28 = ptrtoint ptr %id26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %id, ptr %id26, align 4
  %buf_len27 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call3, i32 0, i32 4
  %29 = ptrtoint ptr %buf_len27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %buf_len, ptr %buf_len27, align 4
  %30 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__data_loc_buf, align 4
  %and29 = and i32 %31, 65535
  %add.ptr30 = getelementptr i8, ptr %call3, i32 %and29
  %32 = call ptr @memcpy(ptr %add.ptr30, ptr %buf, i32 %buf_len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end23, %trace_event_get_offsets_ath11k_wmi_event.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_wmi_event(ptr noundef %__data, ptr nocapture noundef readonly %ab, i32 noundef %id, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %5, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 28
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_wmi_event.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  br label %trace_event_get_offsets_ath11k_wmi_event.exit

trace_event_get_offsets_ath11k_wmi_event.exit:    ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_wmi_event.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add20.i = add i32 %call4.i, 29
  %shl21.i = shl i32 %add18.i, 16
  %or23.i = or i32 %shl21.i, %add20.i
  %add24.i = add i32 %add18.i, %add.i
  %add26.i = add i32 %add24.i, 28
  %shl28.i = shl i32 %buf_len, 16
  %or30.i = or i32 %add26.i, %shl28.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_wmi_event.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_wmi_event.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_wmi_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_wmi_event.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i79.not = icmp eq ptr %23, null
  br i1 %tobool.not.i79.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_wmi_event.exit.if.end_crit_edge
  %add31.i = add i32 %buf_len, 39
  %add12 = add i32 %add31.i, %add24.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or30.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i80 = icmp eq ptr %41, null
  br i1 %tobool.not.i80, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool21.not = icmp eq ptr %43, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i83

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i83:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i83, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i83 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %46 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__data_loc_driver, align 4
  %and26 = and i32 %47, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %call29 = call ptr @dev_driver_string(ptr noundef %49) #9
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %cond.end.cond.end35_crit_edge, label %cond.true31

cond.end.cond.end35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end35

cond.true31:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %call33 = call ptr @dev_driver_string(ptr noundef %51) #9
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true31, %cond.end.cond.end35_crit_edge
  %cond36 = phi ptr [ %call33, %cond.true31 ], [ @.str, %cond.end.cond.end35_crit_edge ]
  %call37 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef %cond36) #13
  %id38 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call13, i32 0, i32 3
  %52 = ptrtoint ptr %id38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %id, ptr %id38, align 4
  %buf_len39 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %call13, i32 0, i32 4
  %53 = ptrtoint ptr %buf_len39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %buf_len, ptr %buf_len39, align 4
  %54 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %__data_loc_buf, align 4
  %and41 = and i32 %55, 65535
  %add.ptr42 = getelementptr i8, ptr %call13, i32 %and41
  %56 = call ptr @memcpy(ptr %add.ptr42, ptr %buf, i32 %buf_len)
  %57 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rctx, align 4
  %59 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %58, ptr noundef %__data, i64 noundef 1, ptr noundef %60, ptr noundef %19, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end35, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_log_dbg(ptr noundef %__data, ptr nocapture noundef readonly %ab, i32 noundef %level, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i92 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i92, ptr @.str, ptr %8
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %6, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_log_dbg.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %10) #9
  br label %trace_event_get_offsets_ath11k_log_dbg.exit

trace_event_get_offsets_ath11k_log_dbg.exit:      ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add24.i = add i32 %add18.i, %add.i
  %add = add i32 %add24.i, 424
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_log_dbg.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_log_dbg.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_log_dbg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_log_dbg.exit
  %add25.i = add i32 %add24.i, 24
  %or28.i = or i32 %add25.i, 26214400
  %shl21.i = shl i32 %add18.i, 16
  %add20.i = add i32 %call4.i, 25
  %or23.i = or i32 %shl21.i, %add20.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or28.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i93 = icmp eq ptr %17, null
  br i1 %tobool.not.i93, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i98

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i98:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i98, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i98 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %22 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_driver, align 4
  %and13 = and i32 %23, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %call16 = call ptr @dev_driver_string(ptr noundef %25) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cond.end.cond.end22_crit_edge, label %cond.true18

cond.end.cond.end22_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end22

cond.true18:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %call20 = call ptr @dev_driver_string(ptr noundef %27) #9
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true18, %cond.end.cond.end22_crit_edge
  %cond23 = phi ptr [ %call20, %cond.true18 ], [ @.str, %cond.end.cond.end22_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef %cond23) #13
  %level25 = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call3, i32 0, i32 3
  %28 = ptrtoint ptr %level25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %level, ptr %level25, align 4
  %29 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %__data_loc_msg, align 4
  %and27 = and i32 %30, 65535
  %add.ptr28 = getelementptr i8, ptr %call3, i32 %and27
  %31 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %33 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack = load i32, ptr %34, align 4
  %36 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call29 = call i32 @vsnprintf(ptr noundef %add.ptr28, i32 noundef 400, ptr noundef %32, [1 x i32] %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %call29)
  %cmp = icmp sgt i32 %call29, 399
  br i1 %cmp, label %land.rhs, label %cond.end22.if.end59_crit_edge

cond.end22.if.end59_crit_edge:                    ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.rhs:                                         ; preds = %cond.end22
  %.b91 = load i1, ptr @trace_event_raw_event_ath11k_log_dbg.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.end59_crit_edge, label %if.then37, !prof !173

land.rhs.if.end59_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_event_raw_event_ath11k_log_dbg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then37, %land.rhs.if.end59_crit_edge, %cond.end22.if.end59_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %trace_event_get_offsets_ath11k_log_dbg.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_log_dbg(ptr noundef %__data, ptr nocapture noundef readonly %ab, i32 noundef %level, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %5, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_log_dbg.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  br label %trace_event_get_offsets_ath11k_log_dbg.exit

trace_event_get_offsets_ath11k_log_dbg.exit:      ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_log_dbg.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add20.i = add i32 %call4.i, 25
  %shl21.i = shl i32 %add18.i, 16
  %or23.i = or i32 %shl21.i, %add20.i
  %add24.i = add i32 %add18.i, %add.i
  %add25.i = add i32 %add24.i, 24
  %or28.i = or i32 %add25.i, 26214400
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_log_dbg.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_log_dbg.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_log_dbg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_log_dbg.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i126.not = icmp eq ptr %23, null
  br i1 %tobool.not.i126.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_log_dbg.exit.if.end_crit_edge
  %add12 = add i32 %add24.i, 435
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or28.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i127 = icmp eq ptr %41, null
  br i1 %tobool.not.i127, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i130

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i130:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i130, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i130 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %46 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__data_loc_driver, align 4
  %and25 = and i32 %47, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %call28 = call ptr @dev_driver_string(ptr noundef %49) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cond.end.cond.end34_crit_edge, label %cond.true30

cond.end.cond.end34_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34

cond.true30:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %call32 = call ptr @dev_driver_string(ptr noundef %51) #9
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true30, %cond.end.cond.end34_crit_edge
  %cond35 = phi ptr [ %call32, %cond.true30 ], [ @.str, %cond.end.cond.end34_crit_edge ]
  %call36 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef %cond35) #13
  %level37 = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %call13, i32 0, i32 3
  %52 = ptrtoint ptr %level37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %level, ptr %level37, align 4
  %53 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %__data_loc_msg, align 4
  %and39 = and i32 %54, 65535
  %add.ptr40 = getelementptr i8, ptr %call13, i32 %and39
  %55 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %57 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %va, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack = load i32, ptr %58, align 4
  %60 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call41 = call i32 @vsnprintf(ptr noundef %add.ptr40, i32 noundef 400, ptr noundef %56, [1 x i32] %60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %call41)
  %cmp = icmp sgt i32 %call41, 399
  br i1 %cmp, label %land.rhs, label %cond.end34.if.end81_crit_edge

cond.end34.if.end81_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.rhs:                                         ; preds = %cond.end34
  %.b125 = load i1, ptr @perf_trace_ath11k_log_dbg.__already_done, align 1
  br i1 %.b125, label %land.rhs.if.end81_crit_edge, label %if.then55, !prof !173

land.rhs.if.end81_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then55:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @perf_trace_ath11k_log_dbg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then55, %land.rhs.if.end81_crit_edge, %cond.end34.if.end81_crit_edge
  %61 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rctx, align 4
  %63 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %62, ptr noundef %__data, i64 noundef 1, ptr noundef %64, ptr noundef %19, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_log_dbg_dump(ptr noundef %__data, ptr nocapture noundef readonly %ab, ptr noundef %msg, ptr noundef %prefix, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %__data_offsets = alloca %struct.trace_event_data_offsets_ath11k_log_dbg_dump, align 4
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__data_offsets) #9
  %0 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 1
  %1 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 2
  %2 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 3
  %3 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 4
  %4 = call ptr @memset(ptr %__data_offsets, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = call fastcc i32 @trace_event_get_offsets_ath11k_log_dbg_dump(ptr noundef nonnull %__data_offsets, ptr noundef %ab, ptr noundef %msg, ptr noundef %prefix, i32 noundef %buf_len)
  %add = add i32 %call2, 32
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %__data_offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_offsets, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %__data_loc_device, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %__data_loc_driver, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %__data_loc_msg, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %__data_loc_prefix = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call3, i32 0, i32 4
  %19 = ptrtoint ptr %__data_loc_prefix to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %__data_loc_prefix, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %__data_loc_buf, align 4
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i82 = icmp eq ptr %26, null
  br i1 %tobool.not.i82, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %tobool11.not = icmp eq ptr %28, null
  br i1 %tobool11.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i87

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i87:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i87, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %30, %if.end.i87 ], [ %26, %if.end5.cond.end_crit_edge ]
  %call14 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %31 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__data_loc_driver, align 4
  %and16 = and i32 %32, 65535
  %add.ptr17 = getelementptr i8, ptr %call3, i32 %and16
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %call19 = call ptr @dev_driver_string(ptr noundef %34) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %cond.end.cond.end25_crit_edge, label %cond.true21

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

cond.true21:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %36) #9
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true21, %cond.end.cond.end25_crit_edge
  %cond26 = phi ptr [ %call23, %cond.true21 ], [ @.str, %cond.end.cond.end25_crit_edge ]
  %call27 = call ptr @strcpy(ptr noundef %add.ptr17, ptr noundef %cond26) #13
  %37 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %__data_loc_msg, align 4
  %and29 = and i32 %38, 65535
  %add.ptr30 = getelementptr i8, ptr %call3, i32 %and29
  %tobool31.not = icmp eq ptr %msg, null
  %spec.select = select i1 %tobool31.not, ptr @.str, ptr %msg
  %call36 = call ptr @strcpy(ptr noundef %add.ptr30, ptr noundef nonnull %spec.select) #13
  %39 = ptrtoint ptr %__data_loc_prefix to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %__data_loc_prefix, align 4
  %and38 = and i32 %40, 65535
  %add.ptr39 = getelementptr i8, ptr %call3, i32 %and38
  %tobool40.not = icmp eq ptr %prefix, null
  %cond44 = select i1 %tobool40.not, ptr @.str, ptr %prefix
  %call45 = call ptr @strcpy(ptr noundef %add.ptr39, ptr noundef nonnull %cond44) #13
  %buf_len46 = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call3, i32 0, i32 5
  %41 = ptrtoint ptr %buf_len46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %buf_len, ptr %buf_len46, align 4
  %42 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %__data_loc_buf, align 4
  %and48 = and i32 %43, 65535
  %add.ptr49 = getelementptr i8, ptr %call3, i32 %and48
  %44 = call ptr @memcpy(ptr %add.ptr49, ptr %buf, i32 %buf_len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end25, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__data_offsets) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_log_dbg_dump(ptr noundef %__data, ptr nocapture noundef readonly %ab, ptr noundef %msg, ptr noundef %prefix, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  %__data_offsets = alloca %struct.trace_event_data_offsets_ath11k_log_dbg_dump, align 4
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__data_offsets) #9
  %0 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 1
  %1 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 2
  %2 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 3
  %3 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 4
  %4 = call ptr @memset(ptr %__data_offsets, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %5 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %6 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %call = call fastcc i32 @trace_event_get_offsets_ath11k_log_dbg_dump(ptr noundef nonnull %__data_offsets, ptr noundef %ab, ptr noundef %msg, ptr noundef %prefix, i32 noundef %buf_len)
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %7 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %perf_events, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %17 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %18, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %16, align 4
  %tobool.not.i.not = icmp eq ptr %20, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call, 43
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %21 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__regs, align 4
  %23 = call ptr @llvm.returnaddress(i32 0) #9
  %24 = ptrtoint ptr %23 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %22, i32 0, i32 15
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i, align 4
  %26 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %22, i32 0, i32 11
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2.i, align 4
  %29 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %22, i32 0, i32 13
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %22, i32 0, i32 16
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 19, ptr %arrayidx6.i, align 4
  %32 = ptrtoint ptr %__data_offsets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %__data_offsets, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call13, i32 0, i32 1
  %34 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %__data_loc_device, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %__data_loc_driver, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %__data_loc_msg, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  %__data_loc_prefix = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call13, i32 0, i32 4
  %43 = ptrtoint ptr %__data_loc_prefix to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %__data_loc_prefix, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %3, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %__data_loc_buf, align 4
  %and21 = and i32 %33, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and21
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i106 = icmp eq ptr %50, null
  br i1 %tobool.not.i106, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %tobool23.not = icmp eq ptr %52, null
  br i1 %tobool23.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i109

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i109:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i109, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %54, %if.end.i109 ], [ %50, %if.end16.cond.end_crit_edge ]
  %call26 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %55 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %__data_loc_driver, align 4
  %and28 = and i32 %56, 65535
  %add.ptr29 = getelementptr i8, ptr %call13, i32 %and28
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %call31 = call ptr @dev_driver_string(ptr noundef %58) #9
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %cond.end.cond.end37_crit_edge, label %cond.true33

cond.end.cond.end37_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end37

cond.true33:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %60) #9
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true33, %cond.end.cond.end37_crit_edge
  %cond38 = phi ptr [ %call35, %cond.true33 ], [ @.str, %cond.end.cond.end37_crit_edge ]
  %call39 = call ptr @strcpy(ptr noundef %add.ptr29, ptr noundef %cond38) #13
  %61 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %__data_loc_msg, align 4
  %and41 = and i32 %62, 65535
  %add.ptr42 = getelementptr i8, ptr %call13, i32 %and41
  %tobool43.not = icmp eq ptr %msg, null
  %spec.select = select i1 %tobool43.not, ptr @.str, ptr %msg
  %call48 = call ptr @strcpy(ptr noundef %add.ptr42, ptr noundef nonnull %spec.select) #13
  %63 = ptrtoint ptr %__data_loc_prefix to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %__data_loc_prefix, align 4
  %and50 = and i32 %64, 65535
  %add.ptr51 = getelementptr i8, ptr %call13, i32 %and50
  %tobool52.not = icmp eq ptr %prefix, null
  %cond56 = select i1 %tobool52.not, ptr @.str, ptr %prefix
  %call57 = call ptr @strcpy(ptr noundef %add.ptr51, ptr noundef nonnull %cond56) #13
  %buf_len58 = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %call13, i32 0, i32 5
  %65 = ptrtoint ptr %buf_len58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %buf_len, ptr %buf_len58, align 4
  %66 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %__data_loc_buf, align 4
  %and60 = and i32 %67, 65535
  %add.ptr61 = getelementptr i8, ptr %call13, i32 %and60
  %68 = call ptr @memcpy(ptr %add.ptr61, ptr %buf, i32 %buf_len)
  %69 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rctx, align 4
  %71 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %70, ptr noundef %__data, i64 noundef 1, ptr noundef %72, ptr noundef %16, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end37, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__data_offsets) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ath11k_wmi_diag(ptr noundef %__data, ptr nocapture noundef readonly %ab, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !174

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.cond.end.i_crit_edge

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i52 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i52, ptr @.str, ptr %8
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ %6, %if.end.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_wmi_diag.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %10) #9
  br label %trace_event_get_offsets_ath11k_wmi_diag.exit

trace_event_get_offsets_ath11k_wmi_diag.exit:     ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add24.i = add i32 %add18.i, %add.i
  %add31.i = add i32 %add24.i, 24
  %add = add i32 %add31.i, %len
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ath11k_wmi_diag.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ath11k_wmi_diag.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ath11k_wmi_diag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ath11k_wmi_diag.exit
  %shl28.i = shl i32 %len, 16
  %or30.i = or i32 %add31.i, %shl28.i
  %shl21.i = shl i32 %add18.i, 16
  %add20.i = add i32 %call4.i, 25
  %or23.i = or i32 %shl21.i, %add20.i
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_data = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %__data_loc_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or30.i, ptr %__data_loc_data, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %17, null
  br i1 %tobool.not.i53, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i58

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i58:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i58, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i58 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %22 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_driver, align 4
  %and14 = and i32 %23, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %call17 = call ptr @dev_driver_string(ptr noundef %25) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cond.end.cond.end23_crit_edge, label %cond.true19

cond.end.cond.end23_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true19:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %call21 = call ptr @dev_driver_string(ptr noundef %27) #9
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true19, %cond.end.cond.end23_crit_edge
  %cond24 = phi ptr [ %call21, %cond.true19 ], [ @.str, %cond.end.cond.end23_crit_edge ]
  %call25 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef %cond24) #13
  %conv = trunc i32 %len to i16
  %len26 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call3, i32 0, i32 3
  %28 = ptrtoint ptr %len26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %len26, align 4
  %29 = ptrtoint ptr %__data_loc_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %__data_loc_data, align 4
  %and28 = and i32 %30, 65535
  %add.ptr29 = getelementptr i8, ptr %call3, i32 %and28
  %31 = call ptr @memcpy(ptr %add.ptr29, ptr %data, i32 %len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end23, %trace_event_get_offsets_ath11k_wmi_diag.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ath11k_wmi_diag(ptr noundef %__data, ptr nocapture noundef readonly %ab, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !175
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %cond.end.i

cond.end.i:                                       ; preds = %dev_name.exit.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %5, %entry.cond.end.i_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #12
  %add.i = add i32 %call4.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %call9.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge, label %cond.true11.i

cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_ath11k_wmi_diag.exit

cond.true11.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %call13.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  br label %trace_event_get_offsets_ath11k_wmi_diag.exit

trace_event_get_offsets_ath11k_wmi_diag.exit:     ; preds = %cond.true11.i, %cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge
  %cond16.i = phi ptr [ %call13.i, %cond.true11.i ], [ @.str, %cond.end.i.trace_event_get_offsets_ath11k_wmi_diag.exit_crit_edge ]
  %call17.i = tail call i32 @strlen(ptr noundef %cond16.i) #12
  %add18.i = add i32 %call17.i, 1
  %add20.i = add i32 %call4.i, 25
  %shl21.i = shl i32 %add18.i, 16
  %or23.i = or i32 %shl21.i, %add20.i
  %add24.i = add i32 %add18.i, %add.i
  %add26.i = add i32 %add24.i, 24
  %shl28.i = shl i32 %len, 16
  %or30.i = or i32 %add26.i, %shl28.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ath11k_wmi_diag.exit.if.end_crit_edge

trace_event_get_offsets_ath11k_wmi_diag.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ath11k_wmi_diag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ath11k_wmi_diag.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i76.not = icmp eq ptr %23, null
  br i1 %tobool.not.i76.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ath11k_wmi_diag.exit.if.end_crit_edge
  %add31.i = add i32 %len, 35
  %add12 = add i32 %add31.i, %add24.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !163) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or23.i, ptr %__data_loc_driver, align 4
  %__data_loc_data = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %__data_loc_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or30.i, ptr %__data_loc_data, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i77 = icmp eq ptr %41, null
  br i1 %tobool.not.i77, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool21.not = icmp eq ptr %43, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i80

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i80:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i80, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i80 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #13
  %46 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__data_loc_driver, align 4
  %and26 = and i32 %47, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %call29 = call ptr @dev_driver_string(ptr noundef %49) #9
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %cond.end.cond.end35_crit_edge, label %cond.true31

cond.end.cond.end35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end35

cond.true31:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %call33 = call ptr @dev_driver_string(ptr noundef %51) #9
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true31, %cond.end.cond.end35_crit_edge
  %cond36 = phi ptr [ %call33, %cond.true31 ], [ @.str, %cond.end.cond.end35_crit_edge ]
  %call37 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef %cond36) #13
  %conv = trunc i32 %len to i16
  %len38 = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %call13, i32 0, i32 3
  %52 = ptrtoint ptr %len38 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv, ptr %len38, align 4
  %53 = ptrtoint ptr %__data_loc_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %__data_loc_data, align 4
  %and40 = and i32 %54, 65535
  %add.ptr41 = getelementptr i8, ptr %call13, i32 %and40
  %55 = call ptr @memcpy(ptr %add.ptr41, ptr %data, i32 %len)
  %56 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rctx, align 4
  %58 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %57, ptr noundef %__data, i64 noundef 1, ptr noundef %59, ptr noundef %19, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end35, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_htt_pktlog(ptr noundef %__data, ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len, i32 noundef %pktlog_checksum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ar to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %buf to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i16 %buf_len to i64
  %conv12 = zext i32 %pktlog_checksum to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_htt_ppdu_stats(ptr noundef %__data, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ar to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %data to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %len to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_htt_rxdesc(ptr noundef %__data, ptr noundef %ar, ptr noundef %data, i32 noundef %log_type, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ar to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %data to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %log_type to i64
  %conv12 = zext i32 %len to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_log_event(ptr noundef %__data, ptr noundef %ab, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ab to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_wmi_cmd(ptr noundef %__data, ptr noundef %ab, i32 noundef %id, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ab to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %id to i64
  %1 = ptrtoint ptr %buf to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %buf_len to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_wmi_event(ptr noundef %__data, ptr noundef %ab, i32 noundef %id, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ab to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %id to i64
  %1 = ptrtoint ptr %buf to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %buf_len to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_log_dbg(ptr noundef %__data, ptr noundef %ab, i32 noundef %level, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ab to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %level to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_log_dbg_dump(ptr noundef %__data, ptr noundef %ab, ptr noundef %msg, ptr noundef %prefix, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ab to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %msg to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %prefix to i32
  %conv8 = zext i32 %2 to i64
  %3 = ptrtoint ptr %buf to i32
  %conv12 = zext i32 %3 to i64
  %conv16 = zext i32 %buf_len to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ath11k_wmi_diag(ptr noundef %__data, ptr noundef %ab, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ab to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %data to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %len to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_htt_pktlog(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %buf_len = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf_len, align 4
  %conv = zext i16 %7 to i32
  %pktlog_checksum = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_pktlog, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pktlog_checksum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pktlog_checksum, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv, i32 noundef %9) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_htt_ppdu_stats(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %len = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_ppdu_stats, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_htt_rxdesc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %len = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv = zext i16 %7 to i32
  %log_type = getelementptr inbounds %struct.trace_event_raw_ath11k_htt_rxdesc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %log_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %log_type, align 2
  %conv3 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv, i32 noundef %conv3) #9
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_log_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_event, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_msg, align 4
  %and3 = and i32 %7, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4) #9
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_wmi_cmd(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %id = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_cmd, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %7, i32 noundef %9) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_wmi_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %id = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_event, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %7, i32 noundef %9) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_log_dbg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_msg, align 4
  %and3 = and i32 %7, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4) #9
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_event_get_offsets_ath11k_log_dbg_dump(ptr nocapture noundef writeonly %__data_offsets, ptr nocapture noundef readonly %ab, ptr noundef readonly %msg, ptr noundef readonly %prefix, i32 noundef %buf_len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_name.exit, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

dev_name.exit:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i3

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i3:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i3, %dev_name.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %7, %if.end.i3 ], [ %3, %entry.cond.end_crit_edge ]
  %call4 = tail call i32 @strlen(ptr noundef %cond) #13
  %add = add i32 %call4, 1
  %shl = shl i32 %add, 16
  %or = or i32 %shl, 32
  %8 = ptrtoint ptr %__data_offsets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %__data_offsets, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call9 = tail call ptr @dev_driver_string(ptr noundef %10) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %cond.end.cond.end15_crit_edge, label %cond.true11

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.true11:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call13 = tail call ptr @dev_driver_string(ptr noundef %12) #9
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true11, %cond.end.cond.end15_crit_edge
  %cond16 = phi ptr [ %call13, %cond.true11 ], [ @.str, %cond.end.cond.end15_crit_edge ]
  %call17 = tail call i32 @strlen(ptr noundef %cond16) #13
  %add18 = add i32 %call17, 1
  %add20 = add i32 %call4, 33
  %driver = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 1
  %shl21 = shl i32 %add18, 16
  %or23 = or i32 %shl21, %add20
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or23, ptr %driver, align 4
  %add24 = add i32 %add18, %add
  %tobool25.not = icmp eq ptr %msg, null
  %spec.select = select i1 %tobool25.not, ptr @.str, ptr %msg
  %call30 = tail call i32 @strlen(ptr noundef nonnull %spec.select) #13
  %add31 = add i32 %call30, 1
  %add33 = add i32 %add24, 32
  %msg34 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 2
  %shl35 = shl i32 %add31, 16
  %or37 = or i32 %shl35, %add33
  %14 = ptrtoint ptr %msg34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or37, ptr %msg34, align 4
  %tobool39.not = icmp eq ptr %prefix, null
  %cond43 = select i1 %tobool39.not, ptr @.str, ptr %prefix
  %add38 = add i32 %add31, %add24
  %call44 = tail call i32 @strlen(ptr noundef nonnull %cond43) #13
  %add45 = add i32 %call44, 1
  %add47 = add i32 %add38, 32
  %prefix48 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 3
  %shl49 = shl i32 %add45, 16
  %or51 = or i32 %shl49, %add47
  %15 = ptrtoint ptr %prefix48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or51, ptr %prefix48, align 4
  %add52 = add i32 %add45, %add38
  %add54 = add i32 %add52, 32
  %buf55 = getelementptr inbounds %struct.trace_event_data_offsets_ath11k_log_dbg_dump, ptr %__data_offsets, i32 0, i32 4
  %shl56 = shl i32 %buf_len, 16
  %or58 = or i32 %add54, %shl56
  %16 = ptrtoint ptr %buf55 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or58, ptr %buf55, align 4
  %add59 = add i32 %add52, %buf_len
  ret i32 %add59
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_log_dbg_dump(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_prefix = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %__data_loc_prefix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_prefix, align 4
  %and3 = and i32 %7, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ath11k_log_dbg_dump, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_msg, align 4
  %and5 = and i32 %9, 65535
  %add.ptr6 = getelementptr i8, ptr %1, i32 %and5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4, ptr noundef %add.ptr6) #9
  %call7 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ath11k_wmi_diag(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %len = getelementptr inbounds %struct.trace_event_raw_ath11k_wmi_diag, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__tracepoint_ath11k_htt_pktlog, !1, !"__tracepoint_ath11k_htt_pktlog", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 35, i32 1}
!2 = !{ptr @__tracepoint_ptr_ath11k_htt_pktlog, !1, !"__tracepoint_ptr_ath11k_htt_pktlog", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_ath11k_htt_pktlog, !1, !"__SCK__tp_func_ath11k_htt_pktlog", i1 false, i1 false}
!4 = !{ptr @__tracepoint_ath11k_htt_ppdu_stats, !5, !"__tracepoint_ath11k_htt_ppdu_stats", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 66, i32 1}
!6 = !{ptr @__tracepoint_ptr_ath11k_htt_ppdu_stats, !5, !"__tracepoint_ptr_ath11k_htt_ppdu_stats", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_ath11k_htt_ppdu_stats, !5, !"__SCK__tp_func_ath11k_htt_ppdu_stats", i1 false, i1 false}
!8 = !{ptr @__tracepoint_ath11k_htt_rxdesc, !9, !"__tracepoint_ath11k_htt_rxdesc", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 93, i32 1}
!10 = !{ptr @__tracepoint_ptr_ath11k_htt_rxdesc, !9, !"__tracepoint_ptr_ath11k_htt_rxdesc", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_ath11k_htt_rxdesc, !9, !"__SCK__tp_func_ath11k_htt_rxdesc", i1 false, i1 false}
!12 = !{ptr @__tracepoint_ath11k_log_err, !13, !"__tracepoint_ath11k_log_err", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 147, i32 1}
!14 = !{ptr @__tracepoint_ptr_ath11k_log_err, !13, !"__tracepoint_ptr_ath11k_log_err", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_ath11k_log_err, !13, !"__SCK__tp_func_ath11k_log_err", i1 false, i1 false}
!16 = !{ptr @__tracepoint_ath11k_log_warn, !17, !"__tracepoint_ath11k_log_warn", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 152, i32 1}
!18 = !{ptr @__tracepoint_ptr_ath11k_log_warn, !17, !"__tracepoint_ptr_ath11k_log_warn", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_ath11k_log_warn, !17, !"__SCK__tp_func_ath11k_log_warn", i1 false, i1 false}
!20 = !{ptr @__tracepoint_ath11k_log_info, !21, !"__tracepoint_ath11k_log_info", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 157, i32 1}
!22 = !{ptr @__tracepoint_ptr_ath11k_log_info, !21, !"__tracepoint_ptr_ath11k_log_info", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_ath11k_log_info, !21, !"__SCK__tp_func_ath11k_log_info", i1 false, i1 false}
!24 = !{ptr @__tracepoint_ath11k_wmi_cmd, !25, !"__tracepoint_ath11k_wmi_cmd", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 162, i32 1}
!26 = !{ptr @__tracepoint_ptr_ath11k_wmi_cmd, !25, !"__tracepoint_ptr_ath11k_wmi_cmd", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_ath11k_wmi_cmd, !25, !"__SCK__tp_func_ath11k_wmi_cmd", i1 false, i1 false}
!28 = !{ptr @__tracepoint_ath11k_wmi_event, !29, !"__tracepoint_ath11k_wmi_event", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 192, i32 1}
!30 = !{ptr @__tracepoint_ptr_ath11k_wmi_event, !29, !"__tracepoint_ptr_ath11k_wmi_event", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_ath11k_wmi_event, !29, !"__SCK__tp_func_ath11k_wmi_event", i1 false, i1 false}
!32 = !{ptr @__tracepoint_ath11k_log_dbg, !33, !"__tracepoint_ath11k_log_dbg", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 222, i32 1}
!34 = !{ptr @__tracepoint_ptr_ath11k_log_dbg, !33, !"__tracepoint_ptr_ath11k_log_dbg", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_ath11k_log_dbg, !33, !"__SCK__tp_func_ath11k_log_dbg", i1 false, i1 false}
!36 = !{ptr @__tracepoint_ath11k_log_dbg_dump, !37, !"__tracepoint_ath11k_log_dbg_dump", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 251, i32 1}
!38 = !{ptr @__tracepoint_ptr_ath11k_log_dbg_dump, !37, !"__tracepoint_ptr_ath11k_log_dbg_dump", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_ath11k_log_dbg_dump, !37, !"__SCK__tp_func_ath11k_log_dbg_dump", i1 false, i1 false}
!40 = !{ptr @__tracepoint_ath11k_wmi_diag, !41, !"__tracepoint_ath11k_wmi_diag", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 284, i32 1}
!42 = !{ptr @__tracepoint_ptr_ath11k_wmi_diag, !41, !"__tracepoint_ptr_ath11k_wmi_diag", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_ath11k_wmi_diag, !41, !"__SCK__tp_func_ath11k_wmi_diag", i1 false, i1 false}
!44 = !{ptr @event_class_ath11k_htt_pktlog, !1, !"event_class_ath11k_htt_pktlog", i1 false, i1 false}
!45 = !{ptr @event_ath11k_htt_pktlog, !1, !"event_ath11k_htt_pktlog", i1 false, i1 false}
!46 = !{ptr @__event_ath11k_htt_pktlog, !1, !"__event_ath11k_htt_pktlog", i1 false, i1 false}
!47 = !{ptr @event_class_ath11k_htt_ppdu_stats, !5, !"event_class_ath11k_htt_ppdu_stats", i1 false, i1 false}
!48 = !{ptr @event_ath11k_htt_ppdu_stats, !5, !"event_ath11k_htt_ppdu_stats", i1 false, i1 false}
!49 = !{ptr @__event_ath11k_htt_ppdu_stats, !5, !"__event_ath11k_htt_ppdu_stats", i1 false, i1 false}
!50 = !{ptr @event_class_ath11k_htt_rxdesc, !9, !"event_class_ath11k_htt_rxdesc", i1 false, i1 false}
!51 = !{ptr @event_ath11k_htt_rxdesc, !9, !"event_ath11k_htt_rxdesc", i1 false, i1 false}
!52 = !{ptr @__event_ath11k_htt_rxdesc, !9, !"__event_ath11k_htt_rxdesc", i1 false, i1 false}
!53 = !{ptr @event_class_ath11k_log_event, !54, !"event_class_ath11k_log_event", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath11k/./trace.h", i32 123, i32 1}
!55 = !{ptr @event_ath11k_log_err, !13, !"event_ath11k_log_err", i1 false, i1 false}
!56 = !{ptr @__event_ath11k_log_err, !13, !"__event_ath11k_log_err", i1 false, i1 false}
!57 = !{ptr @event_ath11k_log_warn, !17, !"event_ath11k_log_warn", i1 false, i1 false}
!58 = !{ptr @__event_ath11k_log_warn, !17, !"__event_ath11k_log_warn", i1 false, i1 false}
!59 = !{ptr @event_ath11k_log_info, !21, !"event_ath11k_log_info", i1 false, i1 false}
!60 = !{ptr @__event_ath11k_log_info, !21, !"__event_ath11k_log_info", i1 false, i1 false}
!61 = !{ptr @event_class_ath11k_wmi_cmd, !25, !"event_class_ath11k_wmi_cmd", i1 false, i1 false}
!62 = !{ptr @event_ath11k_wmi_cmd, !25, !"event_ath11k_wmi_cmd", i1 false, i1 false}
!63 = !{ptr @__event_ath11k_wmi_cmd, !25, !"__event_ath11k_wmi_cmd", i1 false, i1 false}
!64 = !{ptr @event_class_ath11k_wmi_event, !29, !"event_class_ath11k_wmi_event", i1 false, i1 false}
!65 = !{ptr @event_ath11k_wmi_event, !29, !"event_ath11k_wmi_event", i1 false, i1 false}
!66 = !{ptr @__event_ath11k_wmi_event, !29, !"__event_ath11k_wmi_event", i1 false, i1 false}
!67 = !{ptr @event_class_ath11k_log_dbg, !33, !"event_class_ath11k_log_dbg", i1 false, i1 false}
!68 = !{ptr @event_ath11k_log_dbg, !33, !"event_ath11k_log_dbg", i1 false, i1 false}
!69 = !{ptr @__event_ath11k_log_dbg, !33, !"__event_ath11k_log_dbg", i1 false, i1 false}
!70 = !{ptr @event_class_ath11k_log_dbg_dump, !37, !"event_class_ath11k_log_dbg_dump", i1 false, i1 false}
!71 = !{ptr @event_ath11k_log_dbg_dump, !37, !"event_ath11k_log_dbg_dump", i1 false, i1 false}
!72 = !{ptr @__event_ath11k_log_dbg_dump, !37, !"__event_ath11k_log_dbg_dump", i1 false, i1 false}
!73 = !{ptr @event_class_ath11k_wmi_diag, !41, !"event_class_ath11k_wmi_diag", i1 false, i1 false}
!74 = !{ptr @event_ath11k_wmi_diag, !41, !"event_ath11k_wmi_diag", i1 false, i1 false}
!75 = !{ptr @__event_ath11k_wmi_diag, !41, !"__event_ath11k_wmi_diag", i1 false, i1 false}
!76 = !{ptr @__bpf_trace_tp_map_ath11k_htt_pktlog, !1, !"__bpf_trace_tp_map_ath11k_htt_pktlog", i1 false, i1 false}
!77 = !{ptr @__bpf_trace_tp_map_ath11k_htt_ppdu_stats, !5, !"__bpf_trace_tp_map_ath11k_htt_ppdu_stats", i1 false, i1 false}
!78 = !{ptr @__bpf_trace_tp_map_ath11k_htt_rxdesc, !9, !"__bpf_trace_tp_map_ath11k_htt_rxdesc", i1 false, i1 false}
!79 = !{ptr @__bpf_trace_tp_map_ath11k_log_err, !13, !"__bpf_trace_tp_map_ath11k_log_err", i1 false, i1 false}
!80 = !{ptr @__bpf_trace_tp_map_ath11k_log_warn, !17, !"__bpf_trace_tp_map_ath11k_log_warn", i1 false, i1 false}
!81 = !{ptr @__bpf_trace_tp_map_ath11k_log_info, !21, !"__bpf_trace_tp_map_ath11k_log_info", i1 false, i1 false}
!82 = !{ptr @__bpf_trace_tp_map_ath11k_wmi_cmd, !25, !"__bpf_trace_tp_map_ath11k_wmi_cmd", i1 false, i1 false}
!83 = !{ptr @__bpf_trace_tp_map_ath11k_wmi_event, !29, !"__bpf_trace_tp_map_ath11k_wmi_event", i1 false, i1 false}
!84 = !{ptr @__bpf_trace_tp_map_ath11k_log_dbg, !33, !"__bpf_trace_tp_map_ath11k_log_dbg", i1 false, i1 false}
!85 = !{ptr @__bpf_trace_tp_map_ath11k_log_dbg_dump, !37, !"__bpf_trace_tp_map_ath11k_log_dbg_dump", i1 false, i1 false}
!86 = !{ptr @__bpf_trace_tp_map_ath11k_wmi_diag, !41, !"__bpf_trace_tp_map_ath11k_wmi_diag", i1 false, i1 false}
!87 = !{ptr @__ksymtab___tracepoint_ath11k_log_dbg, !88, !"__ksymtab___tracepoint_ath11k_log_dbg", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath11k/trace.c", i32 10, i32 1}
!89 = !{ptr @__tpstrtab_ath11k_htt_pktlog, !1, !"__tpstrtab_ath11k_htt_pktlog", i1 false, i1 false}
!90 = !{ptr @__tpstrtab_ath11k_htt_ppdu_stats, !5, !"__tpstrtab_ath11k_htt_ppdu_stats", i1 false, i1 false}
!91 = !{ptr @__tpstrtab_ath11k_htt_rxdesc, !9, !"__tpstrtab_ath11k_htt_rxdesc", i1 false, i1 false}
!92 = !{ptr @__tpstrtab_ath11k_log_err, !13, !"__tpstrtab_ath11k_log_err", i1 false, i1 false}
!93 = !{ptr @__tpstrtab_ath11k_log_warn, !17, !"__tpstrtab_ath11k_log_warn", i1 false, i1 false}
!94 = !{ptr @__tpstrtab_ath11k_log_info, !21, !"__tpstrtab_ath11k_log_info", i1 false, i1 false}
!95 = !{ptr @__tpstrtab_ath11k_wmi_cmd, !25, !"__tpstrtab_ath11k_wmi_cmd", i1 false, i1 false}
!96 = !{ptr @__tpstrtab_ath11k_wmi_event, !29, !"__tpstrtab_ath11k_wmi_event", i1 false, i1 false}
!97 = !{ptr @__tpstrtab_ath11k_log_dbg, !33, !"__tpstrtab_ath11k_log_dbg", i1 false, i1 false}
!98 = !{ptr @__tpstrtab_ath11k_log_dbg_dump, !37, !"__tpstrtab_ath11k_log_dbg_dump", i1 false, i1 false}
!99 = !{ptr @__tpstrtab_ath11k_wmi_diag, !41, !"__tpstrtab_ath11k_wmi_diag", i1 false, i1 false}
!100 = !{ptr @str__ath11k__trace_system_name, !101, !"str__ath11k__trace_system_name", i1 false, i1 false}
!101 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!102 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @trace_event_fields_ath11k_htt_pktlog, !1, !"trace_event_fields_ath11k_htt_pktlog", i1 false, i1 false}
!113 = !{ptr @trace_event_type_funcs_ath11k_htt_pktlog, !1, !"trace_event_type_funcs_ath11k_htt_pktlog", i1 false, i1 false}
!114 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @print_fmt_ath11k_htt_pktlog, !1, !"print_fmt_ath11k_htt_pktlog", i1 false, i1 false}
!116 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @trace_event_fields_ath11k_htt_ppdu_stats, !5, !"trace_event_fields_ath11k_htt_ppdu_stats", i1 false, i1 false}
!119 = !{ptr @trace_event_type_funcs_ath11k_htt_ppdu_stats, !5, !"trace_event_type_funcs_ath11k_htt_ppdu_stats", i1 false, i1 false}
!120 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @print_fmt_ath11k_htt_ppdu_stats, !5, !"print_fmt_ath11k_htt_ppdu_stats", i1 false, i1 false}
!122 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @trace_event_fields_ath11k_htt_rxdesc, !9, !"trace_event_fields_ath11k_htt_rxdesc", i1 false, i1 false}
!125 = !{ptr @trace_event_type_funcs_ath11k_htt_rxdesc, !9, !"trace_event_type_funcs_ath11k_htt_rxdesc", i1 false, i1 false}
!126 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @print_fmt_ath11k_htt_rxdesc, !9, !"print_fmt_ath11k_htt_rxdesc", i1 false, i1 false}
!128 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!129 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @trace_event_fields_ath11k_log_event, !54, !"trace_event_fields_ath11k_log_event", i1 false, i1 false}
!132 = !{ptr @trace_event_type_funcs_ath11k_log_event, !54, !"trace_event_type_funcs_ath11k_log_event", i1 false, i1 false}
!133 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @print_fmt_ath11k_log_event, !54, !"print_fmt_ath11k_log_event", i1 false, i1 false}
!135 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.21, !25, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.22, !25, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @trace_event_fields_ath11k_wmi_cmd, !25, !"trace_event_fields_ath11k_wmi_cmd", i1 false, i1 false}
!140 = !{ptr @trace_event_type_funcs_ath11k_wmi_cmd, !25, !"trace_event_type_funcs_ath11k_wmi_cmd", i1 false, i1 false}
!141 = !{ptr @.str.24, !25, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @print_fmt_ath11k_wmi_cmd, !25, !"print_fmt_ath11k_wmi_cmd", i1 false, i1 false}
!143 = !{ptr @trace_event_fields_ath11k_wmi_event, !29, !"trace_event_fields_ath11k_wmi_event", i1 false, i1 false}
!144 = !{ptr @trace_event_type_funcs_ath11k_wmi_event, !29, !"trace_event_type_funcs_ath11k_wmi_event", i1 false, i1 false}
!145 = !{ptr @print_fmt_ath11k_wmi_event, !29, !"print_fmt_ath11k_wmi_event", i1 false, i1 false}
!146 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!147 = !{ptr @.str.25, !33, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @trace_event_fields_ath11k_log_dbg, !33, !"trace_event_fields_ath11k_log_dbg", i1 false, i1 false}
!149 = !{ptr @trace_event_type_funcs_ath11k_log_dbg, !33, !"trace_event_type_funcs_ath11k_log_dbg", i1 false, i1 false}
!150 = !{ptr @print_fmt_ath11k_log_dbg, !33, !"print_fmt_ath11k_log_dbg", i1 false, i1 false}
!151 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @trace_event_fields_ath11k_log_dbg_dump, !37, !"trace_event_fields_ath11k_log_dbg_dump", i1 false, i1 false}
!153 = !{ptr @trace_event_type_funcs_ath11k_log_dbg_dump, !37, !"trace_event_type_funcs_ath11k_log_dbg_dump", i1 false, i1 false}
!154 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @print_fmt_ath11k_log_dbg_dump, !37, !"print_fmt_ath11k_log_dbg_dump", i1 false, i1 false}
!156 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @trace_event_fields_ath11k_wmi_diag, !41, !"trace_event_fields_ath11k_wmi_diag", i1 false, i1 false}
!158 = !{ptr @trace_event_type_funcs_ath11k_wmi_diag, !41, !"trace_event_type_funcs_ath11k_wmi_diag", i1 false, i1 false}
!159 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @print_fmt_ath11k_wmi_diag, !41, !"print_fmt_ath11k_wmi_diag", i1 false, i1 false}
!161 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!162 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{!"auto-init"}
