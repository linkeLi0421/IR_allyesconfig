; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/trace.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.148 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.150, %struct.trace_event, ptr, ptr, %union.anon.151, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.150 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_wil6210_wmi = type { %struct.trace_entry, i8, i16, i32, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.wmi_cmd_hdr = type { i8, i8, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_wil6210_log_event = type { %struct.trace_entry, i32, [0 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.trace_event_raw_wil6210_irq_pseudo = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_wil6210_irq = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_wil6210_rx = type { %struct.trace_entry, i16, i32, i8, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.vring_rx_desc = type { %struct.vring_rx_mac, %struct.vring_rx_dma }
%struct.vring_rx_mac = type { i32, i32, i16, i16, i32 }
%struct.vring_rx_dma = type { i32, %struct.wil_ring_dma_addr, i8, i8, i8, i8, i16 }
%struct.wil_ring_dma_addr = type <{ i32, i16 }>
%struct.trace_event_raw_wil6210_rx_status = type { %struct.trace_entry, i8, i16, i32, i8, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.wil_rx_status_compressed = type { i32, i32, i16, i16, i32 }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wil_rx_status_extended = type { %struct.wil_rx_status_compressed, %struct.wil_rx_status_extension }
%struct.wil_rx_status_extension = type { i32, i32, i16, i16, i32 }
%struct.trace_event_raw_wil6210_tx = type { %struct.trace_entry, i8, i8, i16, i32, [0 x i8] }
%struct.trace_event_raw_wil6210_tx_done = type { %struct.trace_entry, i8, i8, i16, i32, [0 x i8] }
%struct.trace_event_raw_wil6210_tx_status = type { %struct.trace_entry, i16, i32, i8, i8, i8, i8, [0 x i8] }
%struct.wil_ring_tx_status = type { i8, i8, i8, i8, i32, i32, i16, i16 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_wil6210_wmi_cmd = internal constant [16 x i8] c"wil6210_wmi_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_wmi_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_wmi_cmd }, align 4
@__tracepoint_wil6210_wmi_cmd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_wmi_cmd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_wmi_cmd, ptr null, ptr @__traceiter_wil6210_wmi_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_wmi_cmd = internal constant ptr @__tracepoint_wil6210_wmi_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_wmi_event = internal constant [18 x i8] c"wil6210_wmi_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_wmi_event = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_wmi_event }, align 4
@__tracepoint_wil6210_wmi_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_wmi_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_wmi_event, ptr null, ptr @__traceiter_wil6210_wmi_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_wmi_event = internal constant ptr @__tracepoint_wil6210_wmi_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_log_err = internal constant [16 x i8] c"wil6210_log_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_log_err = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_log_err }, align 4
@__tracepoint_wil6210_log_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_log_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_log_err, ptr null, ptr @__traceiter_wil6210_log_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_log_err = internal constant ptr @__tracepoint_wil6210_log_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_log_info = internal constant [17 x i8] c"wil6210_log_info\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_log_info = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_log_info }, align 4
@__tracepoint_wil6210_log_info = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_log_info, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_log_info, ptr null, ptr @__traceiter_wil6210_log_info, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_log_info = internal constant ptr @__tracepoint_wil6210_log_info, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_log_dbg = internal constant [16 x i8] c"wil6210_log_dbg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_log_dbg = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_log_dbg }, align 4
@__tracepoint_wil6210_log_dbg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_log_dbg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_log_dbg, ptr null, ptr @__traceiter_wil6210_log_dbg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_log_dbg = internal constant ptr @__tracepoint_wil6210_log_dbg, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_irq_pseudo = internal constant [19 x i8] c"wil6210_irq_pseudo\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_irq_pseudo = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_irq_pseudo }, align 4
@__tracepoint_wil6210_irq_pseudo = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_irq_pseudo, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_irq_pseudo, ptr null, ptr @__traceiter_wil6210_irq_pseudo, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_irq_pseudo = internal constant ptr @__tracepoint_wil6210_irq_pseudo, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_irq_rx = internal constant [15 x i8] c"wil6210_irq_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_irq_rx = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_irq_rx }, align 4
@__tracepoint_wil6210_irq_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_irq_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_irq_rx, ptr null, ptr @__traceiter_wil6210_irq_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_irq_rx = internal constant ptr @__tracepoint_wil6210_irq_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_irq_tx = internal constant [15 x i8] c"wil6210_irq_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_irq_tx = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_irq_tx }, align 4
@__tracepoint_wil6210_irq_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_irq_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_irq_tx, ptr null, ptr @__traceiter_wil6210_irq_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_irq_tx = internal constant ptr @__tracepoint_wil6210_irq_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_irq_misc = internal constant [17 x i8] c"wil6210_irq_misc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_irq_misc = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_irq_misc }, align 4
@__tracepoint_wil6210_irq_misc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_irq_misc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_irq_misc, ptr null, ptr @__traceiter_wil6210_irq_misc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_irq_misc = internal constant ptr @__tracepoint_wil6210_irq_misc, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_irq_misc_thread = internal constant [24 x i8] c"wil6210_irq_misc_thread\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_irq_misc_thread = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_irq_misc_thread }, align 4
@__tracepoint_wil6210_irq_misc_thread = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_irq_misc_thread, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_irq_misc_thread, ptr null, ptr @__traceiter_wil6210_irq_misc_thread, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_irq_misc_thread = internal constant ptr @__tracepoint_wil6210_irq_misc_thread, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_rx = internal constant [11 x i8] c"wil6210_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_rx = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_rx }, align 4
@__tracepoint_wil6210_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_rx, ptr null, ptr @__traceiter_wil6210_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_rx = internal constant ptr @__tracepoint_wil6210_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_rx_status = internal constant [18 x i8] c"wil6210_rx_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_rx_status = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_rx_status }, align 4
@__tracepoint_wil6210_rx_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_rx_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_rx_status, ptr null, ptr @__traceiter_wil6210_rx_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_rx_status = internal constant ptr @__tracepoint_wil6210_rx_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_tx = internal constant [11 x i8] c"wil6210_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_tx = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_tx }, align 4
@__tracepoint_wil6210_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_tx, ptr null, ptr @__traceiter_wil6210_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_tx = internal constant ptr @__tracepoint_wil6210_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_tx_done = internal constant [16 x i8] c"wil6210_tx_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_tx_done = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_tx_done }, align 4
@__tracepoint_wil6210_tx_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_tx_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_tx_done, ptr null, ptr @__traceiter_wil6210_tx_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_tx_done = internal constant ptr @__tracepoint_wil6210_tx_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_wil6210_tx_status = internal constant [18 x i8] c"wil6210_tx_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wil6210_tx_status = dso_local global %struct.static_call_key { ptr @__traceiter_wil6210_tx_status }, align 4
@__tracepoint_wil6210_tx_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wil6210_tx_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wil6210_tx_status, ptr null, ptr @__traceiter_wil6210_tx_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wil6210_tx_status = internal constant ptr @__tracepoint_wil6210_tx_status, section "__tracepoints_ptrs", align 4
@str__wil6210__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_wil6210_wmi = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.1, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.3, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.148 { %struct.anon.149 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.148 { %struct.anon.149 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wil6210_wmi = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_wmi, ptr @perf_trace_wil6210_wmi, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_wmi, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_wmi, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_wmi, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_wmi = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_wmi, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_wmi = internal global { [99 x i8], [61 x i8] } { [99 x i8] c"\22MID %d id 0x%04x len %d timestamp %d\22, REC->mid, REC->command_id, REC->buf_len, REC->fw_timestamp\00", [61 x i8] zeroinitializer }, align 32
@event_wil6210_wmi_cmd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_wmi, %union.anon.150 { ptr @__tracepoint_wil6210_wmi_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_wmi }, ptr @print_fmt_wil6210_wmi, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_wmi_cmd = internal global ptr @event_wil6210_wmi_cmd, section "_ftrace_events", align 4
@event_wil6210_wmi_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_wmi, %union.anon.150 { ptr @__tracepoint_wil6210_wmi_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_wmi }, ptr @print_fmt_wil6210_wmi, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_wmi_event = internal global ptr @event_wil6210_wmi_event, section "_ftrace_events", align 4
@trace_event_fields_wil6210_log_event = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.148 { %struct.anon.149 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wil6210_log_event = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_log_event, ptr @perf_trace_wil6210_log_event, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_log_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_log_event, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_log_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_log_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_log_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_log_event = internal global { [21 x i8], [43 x i8] } { [21 x i8] c"\22%s\22, __get_str(msg)\00", [43 x i8] zeroinitializer }, align 32
@event_wil6210_log_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_log_event, %union.anon.150 { ptr @__tracepoint_wil6210_log_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_log_event }, ptr @print_fmt_wil6210_log_event, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_log_err = internal global ptr @event_wil6210_log_err, section "_ftrace_events", align 4
@event_wil6210_log_info = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_log_event, %union.anon.150 { ptr @__tracepoint_wil6210_log_info }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_log_event }, ptr @print_fmt_wil6210_log_event, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_log_info = internal global ptr @event_wil6210_log_info, section "_ftrace_events", align 4
@event_wil6210_log_dbg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_log_event, %union.anon.150 { ptr @__tracepoint_wil6210_log_dbg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_log_event }, ptr @print_fmt_wil6210_log_event, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_log_dbg = internal global ptr @event_wil6210_log_dbg, section "_ftrace_events", align 4
@trace_event_fields_wil6210_irq_pseudo = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.148 { %struct.anon.149 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wil6210_irq_pseudo = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_irq_pseudo, ptr @perf_trace_wil6210_irq_pseudo, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_irq_pseudo, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_irq_pseudo, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_irq_pseudo, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_irq_pseudo = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_irq_pseudo, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_irq_pseudo = internal global { [145 x i8], [47 x i8] } { [145 x i8] c"\22cause 0x%08x : %s\22, REC->x, __print_flags(REC->x, \22|\22, {((((1UL))) << (0)), \22Rx\22 }, {((((1UL))) << (1)), \22Tx\22 }, {((((1UL))) << (2)), \22Misc\22 })\00", [47 x i8] zeroinitializer }, align 32
@event_wil6210_irq_pseudo = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_irq_pseudo, %union.anon.150 { ptr @__tracepoint_wil6210_irq_pseudo }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_irq_pseudo }, ptr @print_fmt_wil6210_irq_pseudo, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_irq_pseudo = internal global ptr @event_wil6210_irq_pseudo, section "_ftrace_events", align 4
@trace_event_fields_wil6210_irq = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.148 { %struct.anon.149 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wil6210_irq = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_irq, ptr @perf_trace_wil6210_irq, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_irq, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_irq = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22cause 0x%08x\22, REC->x\00", [41 x i8] zeroinitializer }, align 32
@event_wil6210_irq_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_irq, %union.anon.150 { ptr @__tracepoint_wil6210_irq_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_irq }, ptr @print_fmt_wil6210_irq, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_irq_rx = internal global ptr @event_wil6210_irq_rx, section "_ftrace_events", align 4
@event_wil6210_irq_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_irq, %union.anon.150 { ptr @__tracepoint_wil6210_irq_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_irq }, ptr @print_fmt_wil6210_irq, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_irq_tx = internal global ptr @event_wil6210_irq_tx, section "_ftrace_events", align 4
@event_wil6210_irq_misc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_irq, %union.anon.150 { ptr @__tracepoint_wil6210_irq_misc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_irq }, ptr @print_fmt_wil6210_irq, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_irq_misc = internal global ptr @event_wil6210_irq_misc, section "_ftrace_events", align 4
@event_wil6210_irq_misc_thread = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_irq, %union.anon.150 { ptr @__tracepoint_wil6210_irq_misc_thread }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_irq }, ptr @print_fmt_wil6210_irq, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_irq_misc_thread = internal global ptr @event_wil6210_irq_misc_thread, section "_ftrace_events", align 4
@trace_event_fields_wil6210_rx = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.21, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.148 { %struct.anon.149 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.1, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.24, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.25, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.26, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.28, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wil6210_rx = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_rx, ptr @perf_trace_wil6210_rx, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_rx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_rx, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_rx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_rx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_rx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_rx = internal global { [185 x i8], [39 x i8] } { [185 x i8] c"\22index %d len %d mid %d cid (%%8) %d tid %d mcs %d seq 0x%03x type 0x%1x subtype 0x%1x\22, REC->index, REC->len, REC->mid, REC->cid, REC->tid, REC->mcs, REC->seq, REC->type, REC->subtype\00", [39 x i8] zeroinitializer }, align 32
@event_wil6210_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_rx, %union.anon.150 { ptr @__tracepoint_wil6210_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_rx }, ptr @print_fmt_wil6210_rx, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_rx = internal global ptr @event_wil6210_rx, section "_ftrace_events", align 4
@trace_event_fields_wil6210_rx_status = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.31, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.32, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.148 { %struct.anon.149 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.1, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.24, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.25, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.26, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.28, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_wil6210_rx_status = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_rx_status, ptr @perf_trace_wil6210_rx_status, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_rx_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_rx_status, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_rx_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_rx_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_rx_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_rx_status = internal global { [218 x i8], [38 x i8] } { [218 x i8] c"\22compressed %d buff_id %d len %d mid %d cid %d tid %d mcs %d seq 0x%03x type 0x%1x subtype 0x%1x\22, REC->use_compressed, REC->buff_id, REC->len, REC->mid, REC->cid, REC->tid, REC->mcs, REC->seq, REC->type, REC->subtype\00", [38 x i8] zeroinitializer }, align 32
@event_wil6210_rx_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_rx_status, %union.anon.150 { ptr @__tracepoint_wil6210_rx_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_rx_status }, ptr @print_fmt_wil6210_rx_status, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_rx_status = internal global ptr @event_wil6210_rx_status, section "_ftrace_events", align 4
@trace_event_fields_wil6210_tx = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.34, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.35, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.21, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.148 { %struct.anon.149 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_wil6210_tx = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_tx, ptr @perf_trace_wil6210_tx, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_tx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_tx, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_tx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_tx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_tx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_tx = internal global { [82 x i8], [46 x i8] } { [82 x i8] c"\22vring %d index %d len %d frags %d\22, REC->vring, REC->index, REC->len, REC->frags\00", [46 x i8] zeroinitializer }, align 32
@event_wil6210_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_tx, %union.anon.150 { ptr @__tracepoint_wil6210_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_tx }, ptr @print_fmt_wil6210_tx, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_tx = internal global ptr @event_wil6210_tx, section "_ftrace_events", align 4
@trace_event_fields_wil6210_tx_done = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.34, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.37, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.21, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.148 { %struct.anon.149 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_wil6210_tx_done = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_tx_done, ptr @perf_trace_wil6210_tx_done, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_tx_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_tx_done, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_tx_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_tx_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_tx_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_tx_done = internal global { [82 x i8], [46 x i8] } { [82 x i8] c"\22vring %d index %d len %d err 0x%02x\22, REC->vring, REC->index, REC->len, REC->err\00", [46 x i8] zeroinitializer }, align 32
@event_wil6210_tx_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_tx_done, %union.anon.150 { ptr @__tracepoint_wil6210_tx_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_tx_done }, ptr @print_fmt_wil6210_tx_done, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_tx_done = internal global ptr @event_wil6210_tx_done, section "_ftrace_events", align 4
@trace_event_fields_wil6210_tx_status = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.148 { %struct.anon.149 { ptr @.str.21, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.148 { %struct.anon.149 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.39, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.40, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.41, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.148 { %struct.anon.149 { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_wil6210_tx_status = internal global %struct.trace_event_class { ptr @str__wil6210__trace_system_name, ptr @trace_event_raw_event_wil6210_tx_status, ptr @perf_trace_wil6210_tx_status, ptr @trace_event_reg, ptr @trace_event_fields_wil6210_tx_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wil6210_tx_status, i64 24), ptr getelementptr (i8, ptr @event_class_wil6210_tx_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wil6210_tx_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wil6210_tx_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wil6210_tx_status = internal global { [139 x i8], [53 x i8] } { [139 x i8] c"\22ring_id %d swtail 0x%x len %d num_descs %d status 0x%x mcs %d\22, REC->ring_id, REC->index, REC->len, REC->num_descs, REC->status, REC->mcs\00", [53 x i8] zeroinitializer }, align 32
@event_wil6210_tx_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wil6210_tx_status, %union.anon.150 { ptr @__tracepoint_wil6210_tx_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wil6210_tx_status }, ptr @print_fmt_wil6210_tx_status, ptr null, %union.anon.151 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wil6210_tx_status = internal global ptr @event_wil6210_tx_status, section "_ftrace_events", align 4
@__bpf_trace_tp_map_wil6210_wmi_cmd = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_wmi_cmd, ptr @__bpf_trace_wil6210_wmi, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_wmi_event = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_wmi_event, ptr @__bpf_trace_wil6210_wmi, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_log_err = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_log_err, ptr @__bpf_trace_wil6210_log_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_log_info = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_log_info, ptr @__bpf_trace_wil6210_log_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_log_dbg = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_log_dbg, ptr @__bpf_trace_wil6210_log_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_irq_pseudo = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_irq_pseudo, ptr @__bpf_trace_wil6210_irq_pseudo, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_irq_rx = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_irq_rx, ptr @__bpf_trace_wil6210_irq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_irq_tx = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_irq_tx, ptr @__bpf_trace_wil6210_irq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_irq_misc = internal global %union.anon.160 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_irq_misc, ptr @__bpf_trace_wil6210_irq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_irq_misc_thread = internal global %union.anon.161 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_irq_misc_thread, ptr @__bpf_trace_wil6210_irq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_rx = internal global %union.anon.162 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_rx, ptr @__bpf_trace_wil6210_rx, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_rx_status = internal global %union.anon.163 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_rx_status, ptr @__bpf_trace_wil6210_rx_status, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_tx = internal global %union.anon.164 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_tx, ptr @__bpf_trace_wil6210_tx, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_tx_done = internal global %union.anon.165 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_tx_done, ptr @__bpf_trace_wil6210_tx_done, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wil6210_tx_status = internal global %union.anon.166 { %struct.bpf_raw_event_map { ptr @__tracepoint_wil6210_tx_status, ptr @__bpf_trace_wil6210_tx_status, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mid\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"command_id\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_timestamp\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"buf_len\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MID %d id 0x%04x len %d timestamp %d\0A\00", [58 x i8] zeroinitializer }, align 32
@trace_event_raw_event_wil6210_log_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/wil6210/./trace.h\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cause 0x%08x : %s\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_raw_output_wil6210_irq_pseudo.__flags = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.16 }, %struct.trace_print_flags { i32 2, ptr @.str.17 }, %struct.trace_print_flags { i32 4, ptr @.str.18 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Rx\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Tx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Misc\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cause 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cid\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tid\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"subtype\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"seq\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mcs\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"index %d len %d mid %d cid (%%8) %d tid %d mcs %d seq 0x%03x type 0x%1x subtype 0x%1x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"use_compressed\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"buff_id\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"compressed %d buff_id %d len %d mid %d cid %d tid %d mcs %d seq 0x%03x type 0x%1x subtype 0x%1x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vring\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"frags\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vring %d index %d len %d frags %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vring %d index %d len %d err 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num_descs\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ring_id\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ring_id %d swtail 0x%x len %d num_descs %d status 0x%x mcs %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@perf_trace_wil6210_log_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_ = private constant [44 x i8] c"../drivers/net/wireless/ath/wil6210/trace.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [32 x i8] c"str__wil6210__trace_system_name\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 36, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"trace_event_fields_wil6210_wmi\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_wil6210_wmi\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"print_fmt_wil6210_wmi\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"event_wil6210_wmi_cmd\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 57, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"event_wil6210_wmi_event\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 62, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [37 x i8] c"trace_event_fields_wil6210_log_event\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_wil6210_log_event\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"print_fmt_wil6210_log_event\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"event_wil6210_log_err\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 84, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"event_wil6210_log_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 89, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"event_wil6210_log_dbg\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 94, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [38 x i8] c"trace_event_fields_wil6210_irq_pseudo\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_wil6210_irq_pseudo\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [29 x i8] c"print_fmt_wil6210_irq_pseudo\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"event_wil6210_irq_pseudo\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"trace_event_fields_wil6210_irq\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_wil6210_irq\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"print_fmt_wil6210_irq\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"event_wil6210_irq_rx\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 129, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"event_wil6210_irq_tx\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 134, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"event_wil6210_irq_misc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 139, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"event_wil6210_irq_misc_thread\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 144, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"trace_event_fields_wil6210_rx\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_wil6210_rx\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"print_fmt_wil6210_rx\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"event_wil6210_rx\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [37 x i8] c"trace_event_fields_wil6210_rx_status\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_wil6210_rx_status\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"print_fmt_wil6210_rx_status\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"event_wil6210_rx_status\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"trace_event_fields_wil6210_tx\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_wil6210_tx\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"print_fmt_wil6210_tx\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"event_wil6210_tx\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [35 x i8] c"trace_event_fields_wil6210_tx_done\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_wil6210_tx_done\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"print_fmt_wil6210_tx_done\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"event_wil6210_tx_done\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [37 x i8] c"trace_event_fields_wil6210_tx_status\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_wil6210_tx_status\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"print_fmt_wil6210_tx_status\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [24 x i8] c"event_wil6210_tx_status\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 29, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 69, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 104, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 117, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 149, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 180, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 214, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 233, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [46 x i8] c"../drivers/net/wireless/ath/wil6210/./trace.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 253, i32 1 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @__bpf_trace_tp_map_wil6210_irq_misc, ptr @__bpf_trace_tp_map_wil6210_irq_misc_thread, ptr @__bpf_trace_tp_map_wil6210_irq_pseudo, ptr @__bpf_trace_tp_map_wil6210_irq_rx, ptr @__bpf_trace_tp_map_wil6210_irq_tx, ptr @__bpf_trace_tp_map_wil6210_log_dbg, ptr @__bpf_trace_tp_map_wil6210_log_err, ptr @__bpf_trace_tp_map_wil6210_log_info, ptr @__bpf_trace_tp_map_wil6210_rx, ptr @__bpf_trace_tp_map_wil6210_rx_status, ptr @__bpf_trace_tp_map_wil6210_tx, ptr @__bpf_trace_tp_map_wil6210_tx_done, ptr @__bpf_trace_tp_map_wil6210_tx_status, ptr @__bpf_trace_tp_map_wil6210_wmi_cmd, ptr @__bpf_trace_tp_map_wil6210_wmi_event, ptr @__event_wil6210_irq_misc, ptr @__event_wil6210_irq_misc_thread, ptr @__event_wil6210_irq_pseudo, ptr @__event_wil6210_irq_rx, ptr @__event_wil6210_irq_tx, ptr @__event_wil6210_log_dbg, ptr @__event_wil6210_log_err, ptr @__event_wil6210_log_info, ptr @__event_wil6210_rx, ptr @__event_wil6210_rx_status, ptr @__event_wil6210_tx, ptr @__event_wil6210_tx_done, ptr @__event_wil6210_tx_status, ptr @__event_wil6210_wmi_cmd, ptr @__event_wil6210_wmi_event, ptr @__tracepoint_ptr_wil6210_irq_misc, ptr @__tracepoint_ptr_wil6210_irq_misc_thread, ptr @__tracepoint_ptr_wil6210_irq_pseudo, ptr @__tracepoint_ptr_wil6210_irq_rx, ptr @__tracepoint_ptr_wil6210_irq_tx, ptr @__tracepoint_ptr_wil6210_log_dbg, ptr @__tracepoint_ptr_wil6210_log_err, ptr @__tracepoint_ptr_wil6210_log_info, ptr @__tracepoint_ptr_wil6210_rx, ptr @__tracepoint_ptr_wil6210_rx_status, ptr @__tracepoint_ptr_wil6210_tx, ptr @__tracepoint_ptr_wil6210_tx_done, ptr @__tracepoint_ptr_wil6210_tx_status, ptr @__tracepoint_ptr_wil6210_wmi_cmd, ptr @__tracepoint_ptr_wil6210_wmi_event, ptr @__tracepoint_wil6210_irq_misc, ptr @__tracepoint_wil6210_irq_misc_thread, ptr @__tracepoint_wil6210_irq_pseudo, ptr @__tracepoint_wil6210_irq_rx, ptr @__tracepoint_wil6210_irq_tx, ptr @__tracepoint_wil6210_log_dbg, ptr @__tracepoint_wil6210_log_err, ptr @__tracepoint_wil6210_log_info, ptr @__tracepoint_wil6210_rx, ptr @__tracepoint_wil6210_rx_status, ptr @__tracepoint_wil6210_tx, ptr @__tracepoint_wil6210_tx_done, ptr @__tracepoint_wil6210_tx_status, ptr @__tracepoint_wil6210_wmi_cmd, ptr @__tracepoint_wil6210_wmi_event, ptr @event_class_wil6210_irq, ptr @event_class_wil6210_irq_pseudo, ptr @event_class_wil6210_log_event, ptr @event_class_wil6210_rx, ptr @event_class_wil6210_rx_status, ptr @event_class_wil6210_tx, ptr @event_class_wil6210_tx_done, ptr @event_class_wil6210_tx_status, ptr @event_class_wil6210_wmi, ptr @event_wil6210_irq_misc, ptr @event_wil6210_irq_misc_thread, ptr @event_wil6210_irq_pseudo, ptr @event_wil6210_irq_rx, ptr @event_wil6210_irq_tx, ptr @event_wil6210_log_dbg, ptr @event_wil6210_log_err, ptr @event_wil6210_log_info, ptr @event_wil6210_rx, ptr @event_wil6210_rx_status, ptr @event_wil6210_tx, ptr @event_wil6210_tx_done, ptr @event_wil6210_tx_status, ptr @event_wil6210_wmi_cmd, ptr @event_wil6210_wmi_event, ptr @str__wil6210__trace_system_name, ptr @trace_event_fields_wil6210_wmi, ptr @trace_event_type_funcs_wil6210_wmi, ptr @print_fmt_wil6210_wmi, ptr @trace_event_fields_wil6210_log_event, ptr @trace_event_type_funcs_wil6210_log_event, ptr @print_fmt_wil6210_log_event, ptr @trace_event_fields_wil6210_irq_pseudo, ptr @trace_event_type_funcs_wil6210_irq_pseudo, ptr @print_fmt_wil6210_irq_pseudo, ptr @trace_event_fields_wil6210_irq, ptr @trace_event_type_funcs_wil6210_irq, ptr @print_fmt_wil6210_irq, ptr @trace_event_fields_wil6210_rx, ptr @trace_event_type_funcs_wil6210_rx, ptr @print_fmt_wil6210_rx, ptr @trace_event_fields_wil6210_rx_status, ptr @trace_event_type_funcs_wil6210_rx_status, ptr @print_fmt_wil6210_rx_status, ptr @trace_event_fields_wil6210_tx, ptr @trace_event_type_funcs_wil6210_tx, ptr @print_fmt_wil6210_tx, ptr @trace_event_fields_wil6210_tx_done, ptr @trace_event_type_funcs_wil6210_tx_done, ptr @print_fmt_wil6210_tx_done, ptr @trace_event_fields_wil6210_tx_status, ptr @trace_event_type_funcs_wil6210_tx_status, ptr @print_fmt_wil6210_tx_status, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @trace_raw_output_wil6210_irq_pseudo.__flags, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__wil6210__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_wmi to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_wmi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_wmi to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_wmi_cmd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_wmi_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_log_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_log_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_log_event to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_log_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_log_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_log_dbg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_irq_pseudo to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_irq_pseudo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_irq_pseudo to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_irq_pseudo to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_irq to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_irq to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_irq_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_irq_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_irq_misc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_irq_misc_thread to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_rx to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_rx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_rx to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_rx_status to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_rx_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_rx_status to i32), i32 218, i32 256, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_rx_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_tx to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_tx to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_tx_done to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_tx_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_tx_done to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_tx_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wil6210_tx_status to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wil6210_tx_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wil6210_tx_status to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wil6210_tx_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_wil6210_irq_pseudo.__flags to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wil6210_wmi_cmd(ptr nocapture readnone %__data, ptr noundef %wmi, ptr noundef %buf, i16 noundef zeroext %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_wmi_cmd, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wmi, ptr noundef %buf, i16 noundef zeroext %buf_len) #7
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
define dso_local i32 @__traceiter_wil6210_wmi_event(ptr nocapture readnone %__data, ptr noundef %wmi, ptr noundef %buf, i16 noundef zeroext %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_wmi_event, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wmi, ptr noundef %buf, i16 noundef zeroext %buf_len) #7
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
define dso_local i32 @__traceiter_wil6210_log_err(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_log_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
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
define dso_local i32 @__traceiter_wil6210_log_info(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_log_info, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
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
define dso_local i32 @__traceiter_wil6210_log_dbg(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_log_dbg, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
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
define dso_local i32 @__traceiter_wil6210_irq_pseudo(ptr nocapture readnone %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_irq_pseudo, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %x) #7
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
define dso_local i32 @__traceiter_wil6210_irq_rx(ptr nocapture readnone %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_irq_rx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %x) #7
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
define dso_local i32 @__traceiter_wil6210_irq_tx(ptr nocapture readnone %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_irq_tx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %x) #7
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
define dso_local i32 @__traceiter_wil6210_irq_misc(ptr nocapture readnone %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_irq_misc, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %x) #7
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
define dso_local i32 @__traceiter_wil6210_irq_misc_thread(ptr nocapture readnone %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_irq_misc_thread, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %x) #7
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
define dso_local i32 @__traceiter_wil6210_rx(ptr nocapture readnone %__data, i16 noundef zeroext %index, ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_rx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i16 noundef zeroext %index, ptr noundef %d) #7
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
define dso_local i32 @__traceiter_wil6210_rx_status(ptr nocapture readnone %__data, ptr noundef %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_rx_status, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr noundef %msg) #7
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
define dso_local i32 @__traceiter_wil6210_tx(ptr nocapture readnone %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_tx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) #7
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
define dso_local i32 @__traceiter_wil6210_tx_done(ptr nocapture readnone %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_tx_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) #7
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
define dso_local i32 @__traceiter_wil6210_tx_status(ptr nocapture readnone %__data, ptr noundef %msg, i16 noundef zeroext %index, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wil6210_tx_status, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %msg, i16 noundef zeroext %index, i32 noundef %len) #7
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
define internal void @trace_event_raw_event_wil6210_wmi(ptr noundef %__data, ptr nocapture noundef readonly %wmi, ptr nocapture noundef readonly %buf, i16 noundef zeroext %buf_len) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %conv.i = zext i16 %buf_len to i32
  %add = add nuw nsw i32 %conv.i, 24
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 24
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_buf, align 4
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wmi, align 1
  %mid7 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %mid7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %mid7, align 4
  %command_id = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %wmi, i32 0, i32 2
  %7 = ptrtoint ptr %command_id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %command_id, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %command_id8 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %command_id8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %command_id8, align 2
  %fw_timestamp = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %wmi, i32 0, i32 3
  %11 = ptrtoint ptr %fw_timestamp to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %fw_timestamp, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %fw_timestamp9 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %fw_timestamp9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fw_timestamp9, align 4
  %buf_len10 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call3, i32 0, i32 4
  %15 = ptrtoint ptr %buf_len10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %buf_len, ptr %buf_len10, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %conv.i)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_wmi(ptr noundef %__data, ptr nocapture noundef readonly %wmi, ptr nocapture noundef readonly %buf, i16 noundef zeroext %buf_len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %conv.i = zext i16 %buf_len to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 24
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %add12 = add nuw nsw i32 %conv.i, 35
  %and = and i32 %add12, 131064
  %sub = add nsw i32 %and, -4
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call13, i32 0, i32 5
  %27 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_buf, align 4
  %28 = ptrtoint ptr %wmi to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wmi, align 1
  %mid18 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %mid18 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %mid18, align 4
  %command_id = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %wmi, i32 0, i32 2
  %31 = ptrtoint ptr %command_id to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %command_id, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %command_id19 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %command_id19 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %command_id19, align 2
  %fw_timestamp = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %wmi, i32 0, i32 3
  %35 = ptrtoint ptr %fw_timestamp to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %fw_timestamp, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %fw_timestamp20 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %fw_timestamp20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fw_timestamp20, align 4
  %buf_len21 = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %buf_len21 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %buf_len, ptr %buf_len21, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %conv.i)
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #7
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
define internal void @trace_event_raw_event_wil6210_log_event(ptr noundef %__data, ptr nocapture noundef readonly %vaf) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 212) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_wil6210_log_event, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 13107212, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %7, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef 200, ptr noundef %5, [1 x i32] %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %call7)
  %cmp = icmp sgt i32 %call7, 199
  br i1 %cmp, label %land.rhs, label %if.end5.if.end37_crit_edge

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.rhs:                                         ; preds = %if.end5
  %.b57 = load i1, ptr @trace_event_raw_event_wil6210_log_event.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !217

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_event_raw_event_wil6210_log_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 79, i32 noundef 9, ptr noundef null) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_log_event(ptr noundef %__data, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 212, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_wil6210_log_event, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 13107212, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %28 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %31, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef 200, ptr noundef %29, [1 x i32] %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %call19)
  %cmp = icmp sgt i32 %call19, 199
  br i1 %cmp, label %land.rhs, label %if.end16.if.end59_crit_edge

if.end16.if.end59_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.rhs:                                         ; preds = %if.end16
  %.b91 = load i1, ptr @perf_trace_wil6210_log_event.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.end59_crit_edge, label %if.then33, !prof !217

land.rhs.if.end59_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @perf_trace_wil6210_log_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 79, i32 noundef 9, ptr noundef null) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then33, %land.rhs.if.end59_crit_edge, %if.end16.if.end59_crit_edge
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 212, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_irq_pseudo(ptr noundef %__data, i32 noundef %x) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %x6 = getelementptr inbounds %struct.trace_event_raw_wil6210_irq_pseudo, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %x6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %x, ptr %x6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_irq_pseudo(ptr noundef %__data, i32 noundef %x) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %x17 = getelementptr inbounds %struct.trace_event_raw_wil6210_irq_pseudo, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %x17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %x, ptr %x17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_irq(ptr noundef %__data, i32 noundef %x) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %x6 = getelementptr inbounds %struct.trace_event_raw_wil6210_irq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %x6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %x, ptr %x6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_irq(ptr noundef %__data, i32 noundef %x) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %x17 = getelementptr inbounds %struct.trace_event_raw_wil6210_irq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %x17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %x, ptr %x17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_rx(ptr noundef %__data, i16 noundef zeroext %index, ptr nocapture noundef readonly %d) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  call void @__sanitizer_cov_trace_pc() #9
  %index6 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %index6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %index, ptr %index6, align 4
  %length = getelementptr inbounds %struct.vring_rx_desc, ptr %d, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %length, align 1
  %conv = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %len, align 4
  %7 = ptrtoint ptr %d to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %d, align 1
  %and.i44 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  %shr.i.i = lshr i32 %8, 8
  %9 = trunc i32 %shr.i.i to i8
  %10 = and i8 %9, 3
  %conv8 = select i1 %tobool.not.i45, i8 0, i8 %10
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %mid, align 4
  %12 = ptrtoint ptr %d to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %d, align 1
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 4
  %conv10 = and i8 %15, 7
  %cid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %cid, align 1
  %17 = load i32, ptr %d, align 1
  %18 = trunc i32 %17 to i8
  %conv12 = and i8 %18, 15
  %tid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv12, ptr %tid, align 2
  %20 = load i32, ptr %d, align 1
  %shr.i.i49 = lshr i32 %20, 10
  %21 = trunc i32 %shr.i.i49 to i8
  %conv14 = and i8 %21, 3
  %type = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv14, ptr %type, align 1
  %23 = load i32, ptr %d, align 1
  %shr.i.i51 = lshr i32 %23, 12
  %24 = trunc i32 %shr.i.i51 to i8
  %conv16 = and i8 %24, 15
  %subtype = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 7
  %25 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv16, ptr %subtype, align 4
  %26 = load i32, ptr %d, align 1
  %shr.i.i53 = lshr i32 %26, 16
  %27 = trunc i32 %shr.i.i53 to i16
  %conv18 = and i16 %27, 4095
  %seq = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 8
  %28 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv18, ptr %seq, align 2
  %d1.i = getelementptr inbounds %struct.vring_rx_mac, ptr %d, i32 0, i32 1
  %29 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %d1.i, align 1
  %shr.i.i55 = lshr i32 %30, 21
  %31 = trunc i32 %shr.i.i55 to i8
  %conv20 = and i8 %31, 15
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call3, i32 0, i32 9
  %32 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv20, ptr %mcs, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_rx(ptr noundef %__data, i16 noundef zeroext %index, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %index17 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %index17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %index, ptr %index17, align 4
  %length = getelementptr inbounds %struct.vring_rx_desc, ptr %d, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %length, align 1
  %conv = zext i16 %29 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %len, align 4
  %31 = ptrtoint ptr %d to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %d, align 1
  %and.i67 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  %shr.i.i = lshr i32 %32, 8
  %33 = trunc i32 %shr.i.i to i8
  %34 = and i8 %33, 3
  %conv19 = select i1 %tobool.not.i68, i8 0, i8 %34
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv19, ptr %mid, align 4
  %36 = ptrtoint ptr %d to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %d, align 1
  %38 = trunc i32 %37 to i8
  %39 = lshr i8 %38, 4
  %conv21 = and i8 %39, 7
  %cid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv21, ptr %cid, align 1
  %41 = load i32, ptr %d, align 1
  %42 = trunc i32 %41 to i8
  %conv23 = and i8 %42, 15
  %tid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv23, ptr %tid, align 2
  %44 = load i32, ptr %d, align 1
  %shr.i.i72 = lshr i32 %44, 10
  %45 = trunc i32 %shr.i.i72 to i8
  %conv25 = and i8 %45, 3
  %type = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv25, ptr %type, align 1
  %47 = load i32, ptr %d, align 1
  %shr.i.i74 = lshr i32 %47, 12
  %48 = trunc i32 %shr.i.i74 to i8
  %conv27 = and i8 %48, 15
  %subtype = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 7
  %49 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv27, ptr %subtype, align 4
  %50 = load i32, ptr %d, align 1
  %shr.i.i76 = lshr i32 %50, 16
  %51 = trunc i32 %shr.i.i76 to i16
  %conv29 = and i16 %51, 4095
  %seq = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 8
  %52 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv29, ptr %seq, align 2
  %d1.i = getelementptr inbounds %struct.vring_rx_mac, ptr %d, i32 0, i32 1
  %53 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %d1.i, align 1
  %shr.i.i78 = lshr i32 %54, 21
  %55 = trunc i32 %shr.i.i78 to i8
  %conv31 = and i8 %55, 15
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %call13, i32 0, i32 9
  %56 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv31, ptr %mcs, align 4
  %57 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rctx, align 4
  %59 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %58, ptr noundef %__data, i64 noundef 1, ptr noundef %60, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_rx_status(ptr noundef %__data, ptr nocapture noundef readonly %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr nocapture noundef readonly %msg) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %use_compressed6 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %use_compressed6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %use_compressed, ptr %use_compressed6, align 4
  %buff_id7 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %buff_id7 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %buff_id, ptr %buff_id7, align 2
  %length.i = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %length.i, align 1
  %conv = zext i16 %6 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %len, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %msg, align 1
  %and.i47 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  %shr.i.i = lshr i32 %9, 21
  %10 = trunc i32 %shr.i.i to i8
  %11 = and i8 %10, 3
  %conv10 = select i1 %tobool.not.i48, i8 0, i8 %11
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %mid, align 4
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %msg, align 1
  %shr.i.i.i = lshr i32 %14, 8
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i50 = icmp eq i32 %15, 0
  %16 = trunc i32 %shr.i.i.i to i8
  %17 = lshr i8 %16, 2
  %conv3.i = and i8 %17, 7
  %18 = lshr i8 %16, 4
  %retval.0.i51 = select i1 %tobool.not.i50, i8 %18, i8 %conv3.i
  %cid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %retval.0.i51, ptr %cid, align 1
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %msg, align 1
  %shr.i.i.i52 = lshr i32 %21, 8
  %22 = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i53 = icmp eq i32 %22, 0
  %23 = trunc i32 %shr.i.i.i52 to i8
  %24 = lshr i8 %23, 5
  %conv6.i = and i8 %23, 7
  %retval.0.i54 = select i1 %tobool.not.i53, i8 %conv6.i, i8 %24
  %tid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 6
  %25 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %retval.0.i54, ptr %tid, align 2
  %use_compressed_rx_status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 100
  %26 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i55 = icmp eq i8 %27, 0
  br i1 %tobool.not.i55, label %if.end.i57, label %if.end5.wil_rx_status_get_frame_type.exit_crit_edge

if.end5.wil_rx_status_get_frame_type.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_rx_status_get_frame_type.exit

if.end.i57:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %d1.i = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %d1.i, align 1
  %.tr = trunc i32 %29 to i8
  %30 = shl i8 %.tr, 2
  %phi.cast = and i8 %30, 12
  br label %wil_rx_status_get_frame_type.exit

wil_rx_status_get_frame_type.exit:                ; preds = %if.end.i57, %if.end5.wil_rx_status_get_frame_type.exit_crit_edge
  %retval.0.i58 = phi i8 [ %phi.cast, %if.end.i57 ], [ 8, %if.end5.wil_rx_status_get_frame_type.exit_crit_edge ]
  %type = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 7
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.i58, ptr %type, align 1
  %32 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i60 = icmp eq i8 %33, 0
  br i1 %tobool.not.i60, label %if.end.i64, label %wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge

wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge: ; preds = %wil_rx_status_get_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_rx_status_get_fc1.exit

if.end.i64:                                       ; preds = %wil_rx_status_get_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %d1.i61 = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %d1.i61 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %d1.i61, align 1
  %.tr74 = trunc i32 %35 to i8
  %phi.cast73 = shl i8 %.tr74, 2
  br label %wil_rx_status_get_fc1.exit

wil_rx_status_get_fc1.exit:                       ; preds = %if.end.i64, %wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge
  %retval.0.i65 = phi i8 [ %phi.cast73, %if.end.i64 ], [ 0, %wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge ]
  %subtype = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 8
  %36 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i65, ptr %subtype, align 4
  %37 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i67 = icmp eq i8 %38, 0
  br i1 %tobool.not.i67, label %if.end.i68, label %wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge

wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge: ; preds = %wil_rx_status_get_fc1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_rx_status_get_seq.exit

if.end.i68:                                       ; preds = %wil_rx_status_get_fc1.exit
  call void @__sanitizer_cov_trace_pc() #9
  %seq_num.i = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %seq_num.i, align 1
  br label %wil_rx_status_get_seq.exit

wil_rx_status_get_seq.exit:                       ; preds = %if.end.i68, %wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge
  %retval.0.i69 = phi i16 [ %40, %if.end.i68 ], [ 0, %wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge ]
  %seq = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 9
  %41 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %retval.0.i69, ptr %seq, align 2
  %d1.i70 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg, i32 0, i32 1
  %42 = ptrtoint ptr %d1.i70 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %d1.i70, align 1
  %shr.i.i71 = lshr i32 %43, 16
  %44 = trunc i32 %shr.i.i71 to i8
  %conv.i = and i8 %44, 63
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call3, i32 0, i32 10
  %45 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %mcs, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wil_rx_status_get_seq.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_rx_status(ptr noundef %__data, ptr nocapture noundef readonly %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %use_compressed17 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %use_compressed17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %use_compressed, ptr %use_compressed17, align 4
  %buff_id18 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %buff_id18 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %buff_id, ptr %buff_id18, align 2
  %length.i = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg, i32 0, i32 3
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %length.i, align 1
  %conv = zext i16 %30 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %len, align 4
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %msg, align 1
  %and.i70 = and i32 %33, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  %shr.i.i = lshr i32 %33, 21
  %34 = trunc i32 %shr.i.i to i8
  %35 = and i8 %34, 3
  %conv21 = select i1 %tobool.not.i71, i8 0, i8 %35
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv21, ptr %mid, align 4
  %37 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %msg, align 1
  %shr.i.i.i = lshr i32 %38, 8
  %39 = and i32 %38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i72 = icmp eq i32 %39, 0
  %40 = trunc i32 %shr.i.i.i to i8
  %41 = lshr i8 %40, 2
  %conv3.i = and i8 %41, 7
  %42 = lshr i8 %40, 4
  %retval.0.i73 = select i1 %tobool.not.i72, i8 %42, i8 %conv3.i
  %cid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %retval.0.i73, ptr %cid, align 1
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %msg, align 1
  %shr.i.i.i74 = lshr i32 %45, 8
  %46 = and i32 %45, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i75 = icmp eq i32 %46, 0
  %47 = trunc i32 %shr.i.i.i74 to i8
  %48 = lshr i8 %47, 5
  %conv6.i = and i8 %47, 7
  %retval.0.i76 = select i1 %tobool.not.i75, i8 %conv6.i, i8 %48
  %tid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 6
  %49 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %retval.0.i76, ptr %tid, align 2
  %use_compressed_rx_status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 100
  %50 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i77 = icmp eq i8 %51, 0
  br i1 %tobool.not.i77, label %if.end.i, label %if.end16.wil_rx_status_get_frame_type.exit_crit_edge

if.end16.wil_rx_status_get_frame_type.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_rx_status_get_frame_type.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %d1.i = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %d1.i, align 1
  %.tr = trunc i32 %53 to i8
  %54 = shl i8 %.tr, 2
  %phi.cast = and i8 %54, 12
  br label %wil_rx_status_get_frame_type.exit

wil_rx_status_get_frame_type.exit:                ; preds = %if.end.i, %if.end16.wil_rx_status_get_frame_type.exit_crit_edge
  %retval.0.i79 = phi i8 [ %phi.cast, %if.end.i ], [ 8, %if.end16.wil_rx_status_get_frame_type.exit_crit_edge ]
  %type = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 7
  %55 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %retval.0.i79, ptr %type, align 1
  %56 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i81 = icmp eq i8 %57, 0
  br i1 %tobool.not.i81, label %if.end.i85, label %wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge

wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge: ; preds = %wil_rx_status_get_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_rx_status_get_fc1.exit

if.end.i85:                                       ; preds = %wil_rx_status_get_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %d1.i82 = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %d1.i82 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %d1.i82, align 1
  %.tr94 = trunc i32 %59 to i8
  %phi.cast93 = shl i8 %.tr94, 2
  br label %wil_rx_status_get_fc1.exit

wil_rx_status_get_fc1.exit:                       ; preds = %if.end.i85, %wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge
  %retval.0.i86 = phi i8 [ %phi.cast93, %if.end.i85 ], [ 0, %wil_rx_status_get_frame_type.exit.wil_rx_status_get_fc1.exit_crit_edge ]
  %subtype = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 8
  %60 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %retval.0.i86, ptr %subtype, align 4
  %61 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i88 = icmp eq i8 %62, 0
  br i1 %tobool.not.i88, label %if.end.i89, label %wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge

wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge: ; preds = %wil_rx_status_get_fc1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_rx_status_get_seq.exit

if.end.i89:                                       ; preds = %wil_rx_status_get_fc1.exit
  call void @__sanitizer_cov_trace_pc() #9
  %seq_num.i = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %seq_num.i, align 1
  br label %wil_rx_status_get_seq.exit

wil_rx_status_get_seq.exit:                       ; preds = %if.end.i89, %wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge
  %retval.0.i90 = phi i16 [ %64, %if.end.i89 ], [ 0, %wil_rx_status_get_fc1.exit.wil_rx_status_get_seq.exit_crit_edge ]
  %seq = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 9
  %65 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %retval.0.i90, ptr %seq, align 2
  %d1.i91 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg, i32 0, i32 1
  %66 = ptrtoint ptr %d1.i91 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %d1.i91, align 1
  %shr.i.i92 = lshr i32 %67, 16
  %68 = trunc i32 %shr.i.i92 to i8
  %conv.i = and i8 %68, 63
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %call13, i32 0, i32 10
  %69 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i, ptr %mcs, align 4
  %70 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rctx, align 4
  %72 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %71, ptr noundef %__data, i64 noundef 1, ptr noundef %73, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wil_rx_status_get_seq.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_tx(ptr noundef %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %vring6 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %vring6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %vring, ptr %vring6, align 4
  %frags7 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %frags7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frags, ptr %frags7, align 1
  %index8 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %index8 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %index, ptr %index8, align 2
  %len9 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %len9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_tx(ptr noundef %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vring17 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %vring17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %vring, ptr %vring17, align 4
  %frags18 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %frags18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frags, ptr %frags18, align 1
  %index19 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %index19 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %index, ptr %index19, align 2
  %len20 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %len, ptr %len20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_tx_done(ptr noundef %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %vring6 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %vring6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %vring, ptr %vring6, align 4
  %index7 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %index7 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %index, ptr %index7, align 2
  %len8 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %len8, align 4
  %err9 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %err9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %err, ptr %err9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_tx_done(ptr noundef %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vring17 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %vring17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %vring, ptr %vring17, align 4
  %index18 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %index18 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %index, ptr %index18, align 2
  %len19 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %len, ptr %len19, align 4
  %err20 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %err20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %err, ptr %err20, align 1
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wil6210_tx_status(ptr noundef %__data, ptr nocapture noundef readonly %msg, i16 noundef zeroext %index, i32 noundef %len) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !218

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
  %index6 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %index6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %index, ptr %index6, align 4
  %len7 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %len7, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg, align 1
  %num_descs = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %num_descs to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %num_descs, align 4
  %ring_id = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %ring_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ring_id, align 1
  %ring_id8 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %ring_id8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ring_id8, align 1
  %status = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status, align 1
  %status9 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %status9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %status9, align 2
  %d2.i = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 5
  %14 = ptrtoint ptr %d2.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %d2.i, align 1
  %16 = trunc i32 %15 to i8
  %conv.i = and i8 %16, 31
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %mcs, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wil6210_tx_status(ptr noundef %__data, ptr nocapture noundef readonly %msg, i16 noundef zeroext %index, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !219
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !207) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %index17 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %index17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %index, ptr %index17, align 4
  %len18 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len, ptr %len18, align 4
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %msg, align 1
  %num_descs = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %num_descs to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %num_descs, align 4
  %ring_id = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 1
  %32 = ptrtoint ptr %ring_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ring_id, align 1
  %ring_id19 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %ring_id19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ring_id19, align 1
  %status = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 2
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status, align 1
  %status20 = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %status20 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %status20, align 2
  %d2.i = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 5
  %38 = ptrtoint ptr %d2.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %d2.i, align 1
  %40 = trunc i32 %39 to i8
  %conv.i = and i8 %40, 31
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i, ptr %mcs, align 1
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_wmi(ptr noundef %__data, ptr noundef %wmi, ptr noundef %buf, i16 noundef zeroext %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %wmi to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %buf to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i16 %buf_len to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_log_event(ptr noundef %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %vaf to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_irq_pseudo(ptr noundef %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %x to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_irq(ptr noundef %__data, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %x to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_rx(ptr noundef %__data, i16 noundef zeroext %index, ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %index to i64
  %0 = ptrtoint ptr %d to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_rx_status(ptr noundef %__data, ptr noundef %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %wil to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %use_compressed to i64
  %conv8 = zext i16 %buff_id to i64
  %1 = ptrtoint ptr %msg to i32
  %conv12 = zext i32 %1 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_tx(ptr noundef %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %vring to i64
  %conv4 = zext i16 %index to i64
  %conv8 = zext i32 %len to i64
  %conv12 = zext i8 %frags to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_tx_done(ptr noundef %__data, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %vring to i64
  %conv4 = zext i16 %index to i64
  %conv8 = zext i32 %len to i64
  %conv12 = zext i8 %err to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wil6210_tx_status(ptr noundef %__data, ptr noundef %msg, i16 noundef zeroext %index, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %msg to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %index to i64
  %conv8 = zext i32 %len to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_wmi(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mid, align 4
  %conv = zext i8 %3 to i32
  %command_id = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %command_id, align 2
  %conv1 = zext i16 %5 to i32
  %buf_len = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf_len, align 4
  %conv2 = zext i16 %7 to i32
  %fw_timestamp = getelementptr inbounds %struct.trace_event_raw_wil6210_wmi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %fw_timestamp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_timestamp, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %9) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_log_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_wil6210_log_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_msg, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_irq_pseudo(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %x = getelementptr inbounds %struct.trace_event_raw_wil6210_irq_pseudo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %x, align 4
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.19, i32 noundef %3, ptr noundef nonnull @trace_raw_output_wil6210_irq_pseudo.__flags) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef %call2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %x = getelementptr inbounds %struct.trace_event_raw_wil6210_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %x, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i32 noundef %3) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_rx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %index = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 4
  %conv = zext i16 %3 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  %conv1 = zext i8 %7 to i32
  %cid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cid, align 1
  %conv2 = zext i8 %9 to i32
  %tid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tid, align 2
  %conv3 = zext i8 %11 to i32
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mcs, align 4
  %conv4 = zext i8 %13 to i32
  %seq5 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %seq5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %seq5, align 2
  %conv6 = zext i16 %15 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type, align 1
  %conv7 = zext i8 %17 to i32
  %subtype = getelementptr inbounds %struct.trace_event_raw_wil6210_rx, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %subtype, align 4
  %conv8 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %5, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #7
  %call9 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_rx_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %use_compressed = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %use_compressed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_compressed, align 4
  %conv = zext i8 %3 to i32
  %buff_id = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buff_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %buff_id, align 2
  %conv1 = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %mid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mid, align 4
  %conv2 = zext i8 %9 to i32
  %cid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cid, align 1
  %conv3 = zext i8 %11 to i32
  %tid = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tid, align 2
  %conv4 = zext i8 %13 to i32
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mcs, align 4
  %conv5 = zext i8 %15 to i32
  %seq6 = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %seq6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %seq6, align 2
  %conv7 = zext i16 %17 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 1
  %conv8 = zext i8 %19 to i32
  %subtype = getelementptr inbounds %struct.trace_event_raw_wil6210_rx_status, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %subtype, align 4
  %conv9 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv1, i32 noundef %7, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #7
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_tx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %vring = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vring to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vring, align 4
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv1 = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %frags = getelementptr inbounds %struct.trace_event_raw_wil6210_tx, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %frags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frags, align 1
  %conv2 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv1, i32 noundef %7, i32 noundef %conv2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_tx_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %vring = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vring to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vring, align 4
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv1 = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_done, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %err, align 1
  %conv2 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv1, i32 noundef %7, i32 noundef %conv2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wil6210_tx_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ring_id = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ring_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ring_id, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv1 = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %num_descs = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %num_descs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_descs, align 4
  %conv2 = zext i8 %9 to i32
  %status = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 2
  %conv3 = zext i8 %11 to i32
  %mcs = getelementptr inbounds %struct.trace_event_raw_wil6210_tx_status, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mcs, align 1
  %conv4 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv1, i32 noundef %7, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #7
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__tracepoint_wil6210_wmi_cmd, !1, !"__tracepoint_wil6210_wmi_cmd", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 57, i32 1}
!2 = !{ptr @__tracepoint_ptr_wil6210_wmi_cmd, !1, !"__tracepoint_ptr_wil6210_wmi_cmd", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_wil6210_wmi_cmd, !1, !"__SCK__tp_func_wil6210_wmi_cmd", i1 false, i1 false}
!4 = !{ptr @__tracepoint_wil6210_wmi_event, !5, !"__tracepoint_wil6210_wmi_event", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 62, i32 1}
!6 = !{ptr @__tracepoint_ptr_wil6210_wmi_event, !5, !"__tracepoint_ptr_wil6210_wmi_event", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_wil6210_wmi_event, !5, !"__SCK__tp_func_wil6210_wmi_event", i1 false, i1 false}
!8 = !{ptr @__tracepoint_wil6210_log_err, !9, !"__tracepoint_wil6210_log_err", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 84, i32 1}
!10 = !{ptr @__tracepoint_ptr_wil6210_log_err, !9, !"__tracepoint_ptr_wil6210_log_err", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_wil6210_log_err, !9, !"__SCK__tp_func_wil6210_log_err", i1 false, i1 false}
!12 = !{ptr @__tracepoint_wil6210_log_info, !13, !"__tracepoint_wil6210_log_info", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 89, i32 1}
!14 = !{ptr @__tracepoint_ptr_wil6210_log_info, !13, !"__tracepoint_ptr_wil6210_log_info", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_wil6210_log_info, !13, !"__SCK__tp_func_wil6210_log_info", i1 false, i1 false}
!16 = !{ptr @__tracepoint_wil6210_log_dbg, !17, !"__tracepoint_wil6210_log_dbg", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 94, i32 1}
!18 = !{ptr @__tracepoint_ptr_wil6210_log_dbg, !17, !"__tracepoint_ptr_wil6210_log_dbg", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_wil6210_log_dbg, !17, !"__SCK__tp_func_wil6210_log_dbg", i1 false, i1 false}
!20 = !{ptr @__tracepoint_wil6210_irq_pseudo, !21, !"__tracepoint_wil6210_irq_pseudo", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 104, i32 1}
!22 = !{ptr @__tracepoint_ptr_wil6210_irq_pseudo, !21, !"__tracepoint_ptr_wil6210_irq_pseudo", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_wil6210_irq_pseudo, !21, !"__SCK__tp_func_wil6210_irq_pseudo", i1 false, i1 false}
!24 = !{ptr @__tracepoint_wil6210_irq_rx, !25, !"__tracepoint_wil6210_irq_rx", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 129, i32 1}
!26 = !{ptr @__tracepoint_ptr_wil6210_irq_rx, !25, !"__tracepoint_ptr_wil6210_irq_rx", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_wil6210_irq_rx, !25, !"__SCK__tp_func_wil6210_irq_rx", i1 false, i1 false}
!28 = !{ptr @__tracepoint_wil6210_irq_tx, !29, !"__tracepoint_wil6210_irq_tx", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 134, i32 1}
!30 = !{ptr @__tracepoint_ptr_wil6210_irq_tx, !29, !"__tracepoint_ptr_wil6210_irq_tx", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_wil6210_irq_tx, !29, !"__SCK__tp_func_wil6210_irq_tx", i1 false, i1 false}
!32 = !{ptr @__tracepoint_wil6210_irq_misc, !33, !"__tracepoint_wil6210_irq_misc", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 139, i32 1}
!34 = !{ptr @__tracepoint_ptr_wil6210_irq_misc, !33, !"__tracepoint_ptr_wil6210_irq_misc", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_wil6210_irq_misc, !33, !"__SCK__tp_func_wil6210_irq_misc", i1 false, i1 false}
!36 = !{ptr @__tracepoint_wil6210_irq_misc_thread, !37, !"__tracepoint_wil6210_irq_misc_thread", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 144, i32 1}
!38 = !{ptr @__tracepoint_ptr_wil6210_irq_misc_thread, !37, !"__tracepoint_ptr_wil6210_irq_misc_thread", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_wil6210_irq_misc_thread, !37, !"__SCK__tp_func_wil6210_irq_misc_thread", i1 false, i1 false}
!40 = !{ptr @__tracepoint_wil6210_rx, !41, !"__tracepoint_wil6210_rx", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 149, i32 1}
!42 = !{ptr @__tracepoint_ptr_wil6210_rx, !41, !"__tracepoint_ptr_wil6210_rx", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_wil6210_rx, !41, !"__SCK__tp_func_wil6210_rx", i1 false, i1 false}
!44 = !{ptr @__tracepoint_wil6210_rx_status, !45, !"__tracepoint_wil6210_rx_status", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 180, i32 1}
!46 = !{ptr @__tracepoint_ptr_wil6210_rx_status, !45, !"__tracepoint_ptr_wil6210_rx_status", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_wil6210_rx_status, !45, !"__SCK__tp_func_wil6210_rx_status", i1 false, i1 false}
!48 = !{ptr @__tracepoint_wil6210_tx, !49, !"__tracepoint_wil6210_tx", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 214, i32 1}
!50 = !{ptr @__tracepoint_ptr_wil6210_tx, !49, !"__tracepoint_ptr_wil6210_tx", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_wil6210_tx, !49, !"__SCK__tp_func_wil6210_tx", i1 false, i1 false}
!52 = !{ptr @__tracepoint_wil6210_tx_done, !53, !"__tracepoint_wil6210_tx_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 233, i32 1}
!54 = !{ptr @__tracepoint_ptr_wil6210_tx_done, !53, !"__tracepoint_ptr_wil6210_tx_done", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_wil6210_tx_done, !53, !"__SCK__tp_func_wil6210_tx_done", i1 false, i1 false}
!56 = !{ptr @__tracepoint_wil6210_tx_status, !57, !"__tracepoint_wil6210_tx_status", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 253, i32 1}
!58 = !{ptr @__tracepoint_ptr_wil6210_tx_status, !57, !"__tracepoint_ptr_wil6210_tx_status", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_wil6210_tx_status, !57, !"__SCK__tp_func_wil6210_tx_status", i1 false, i1 false}
!60 = !{ptr @event_class_wil6210_wmi, !61, !"event_class_wil6210_wmi", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 29, i32 1}
!62 = !{ptr @event_wil6210_wmi_cmd, !1, !"event_wil6210_wmi_cmd", i1 false, i1 false}
!63 = !{ptr @__event_wil6210_wmi_cmd, !1, !"__event_wil6210_wmi_cmd", i1 false, i1 false}
!64 = !{ptr @event_wil6210_wmi_event, !5, !"event_wil6210_wmi_event", i1 false, i1 false}
!65 = !{ptr @__event_wil6210_wmi_event, !5, !"__event_wil6210_wmi_event", i1 false, i1 false}
!66 = !{ptr @event_class_wil6210_log_event, !67, !"event_class_wil6210_log_event", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 69, i32 1}
!68 = !{ptr @event_wil6210_log_err, !9, !"event_wil6210_log_err", i1 false, i1 false}
!69 = !{ptr @__event_wil6210_log_err, !9, !"__event_wil6210_log_err", i1 false, i1 false}
!70 = !{ptr @event_wil6210_log_info, !13, !"event_wil6210_log_info", i1 false, i1 false}
!71 = !{ptr @__event_wil6210_log_info, !13, !"__event_wil6210_log_info", i1 false, i1 false}
!72 = !{ptr @event_wil6210_log_dbg, !17, !"event_wil6210_log_dbg", i1 false, i1 false}
!73 = !{ptr @__event_wil6210_log_dbg, !17, !"__event_wil6210_log_dbg", i1 false, i1 false}
!74 = !{ptr @event_class_wil6210_irq_pseudo, !21, !"event_class_wil6210_irq_pseudo", i1 false, i1 false}
!75 = !{ptr @event_wil6210_irq_pseudo, !21, !"event_wil6210_irq_pseudo", i1 false, i1 false}
!76 = !{ptr @__event_wil6210_irq_pseudo, !21, !"__event_wil6210_irq_pseudo", i1 false, i1 false}
!77 = !{ptr @event_class_wil6210_irq, !78, !"event_class_wil6210_irq", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/wil6210/./trace.h", i32 117, i32 1}
!79 = !{ptr @event_wil6210_irq_rx, !25, !"event_wil6210_irq_rx", i1 false, i1 false}
!80 = !{ptr @__event_wil6210_irq_rx, !25, !"__event_wil6210_irq_rx", i1 false, i1 false}
!81 = !{ptr @event_wil6210_irq_tx, !29, !"event_wil6210_irq_tx", i1 false, i1 false}
!82 = !{ptr @__event_wil6210_irq_tx, !29, !"__event_wil6210_irq_tx", i1 false, i1 false}
!83 = !{ptr @event_wil6210_irq_misc, !33, !"event_wil6210_irq_misc", i1 false, i1 false}
!84 = !{ptr @__event_wil6210_irq_misc, !33, !"__event_wil6210_irq_misc", i1 false, i1 false}
!85 = !{ptr @event_wil6210_irq_misc_thread, !37, !"event_wil6210_irq_misc_thread", i1 false, i1 false}
!86 = !{ptr @__event_wil6210_irq_misc_thread, !37, !"__event_wil6210_irq_misc_thread", i1 false, i1 false}
!87 = !{ptr @event_class_wil6210_rx, !41, !"event_class_wil6210_rx", i1 false, i1 false}
!88 = !{ptr @event_wil6210_rx, !41, !"event_wil6210_rx", i1 false, i1 false}
!89 = !{ptr @__event_wil6210_rx, !41, !"__event_wil6210_rx", i1 false, i1 false}
!90 = !{ptr @event_class_wil6210_rx_status, !45, !"event_class_wil6210_rx_status", i1 false, i1 false}
!91 = !{ptr @event_wil6210_rx_status, !45, !"event_wil6210_rx_status", i1 false, i1 false}
!92 = !{ptr @__event_wil6210_rx_status, !45, !"__event_wil6210_rx_status", i1 false, i1 false}
!93 = !{ptr @event_class_wil6210_tx, !49, !"event_class_wil6210_tx", i1 false, i1 false}
!94 = !{ptr @event_wil6210_tx, !49, !"event_wil6210_tx", i1 false, i1 false}
!95 = !{ptr @__event_wil6210_tx, !49, !"__event_wil6210_tx", i1 false, i1 false}
!96 = !{ptr @event_class_wil6210_tx_done, !53, !"event_class_wil6210_tx_done", i1 false, i1 false}
!97 = !{ptr @event_wil6210_tx_done, !53, !"event_wil6210_tx_done", i1 false, i1 false}
!98 = !{ptr @__event_wil6210_tx_done, !53, !"__event_wil6210_tx_done", i1 false, i1 false}
!99 = !{ptr @event_class_wil6210_tx_status, !57, !"event_class_wil6210_tx_status", i1 false, i1 false}
!100 = !{ptr @event_wil6210_tx_status, !57, !"event_wil6210_tx_status", i1 false, i1 false}
!101 = !{ptr @__event_wil6210_tx_status, !57, !"__event_wil6210_tx_status", i1 false, i1 false}
!102 = !{ptr @__bpf_trace_tp_map_wil6210_wmi_cmd, !1, !"__bpf_trace_tp_map_wil6210_wmi_cmd", i1 false, i1 false}
!103 = !{ptr @__bpf_trace_tp_map_wil6210_wmi_event, !5, !"__bpf_trace_tp_map_wil6210_wmi_event", i1 false, i1 false}
!104 = !{ptr @__bpf_trace_tp_map_wil6210_log_err, !9, !"__bpf_trace_tp_map_wil6210_log_err", i1 false, i1 false}
!105 = !{ptr @__bpf_trace_tp_map_wil6210_log_info, !13, !"__bpf_trace_tp_map_wil6210_log_info", i1 false, i1 false}
!106 = !{ptr @__bpf_trace_tp_map_wil6210_log_dbg, !17, !"__bpf_trace_tp_map_wil6210_log_dbg", i1 false, i1 false}
!107 = !{ptr @__bpf_trace_tp_map_wil6210_irq_pseudo, !21, !"__bpf_trace_tp_map_wil6210_irq_pseudo", i1 false, i1 false}
!108 = !{ptr @__bpf_trace_tp_map_wil6210_irq_rx, !25, !"__bpf_trace_tp_map_wil6210_irq_rx", i1 false, i1 false}
!109 = !{ptr @__bpf_trace_tp_map_wil6210_irq_tx, !29, !"__bpf_trace_tp_map_wil6210_irq_tx", i1 false, i1 false}
!110 = !{ptr @__bpf_trace_tp_map_wil6210_irq_misc, !33, !"__bpf_trace_tp_map_wil6210_irq_misc", i1 false, i1 false}
!111 = !{ptr @__bpf_trace_tp_map_wil6210_irq_misc_thread, !37, !"__bpf_trace_tp_map_wil6210_irq_misc_thread", i1 false, i1 false}
!112 = !{ptr @__bpf_trace_tp_map_wil6210_rx, !41, !"__bpf_trace_tp_map_wil6210_rx", i1 false, i1 false}
!113 = !{ptr @__bpf_trace_tp_map_wil6210_rx_status, !45, !"__bpf_trace_tp_map_wil6210_rx_status", i1 false, i1 false}
!114 = !{ptr @__bpf_trace_tp_map_wil6210_tx, !49, !"__bpf_trace_tp_map_wil6210_tx", i1 false, i1 false}
!115 = !{ptr @__bpf_trace_tp_map_wil6210_tx_done, !53, !"__bpf_trace_tp_map_wil6210_tx_done", i1 false, i1 false}
!116 = !{ptr @__bpf_trace_tp_map_wil6210_tx_status, !57, !"__bpf_trace_tp_map_wil6210_tx_status", i1 false, i1 false}
!117 = !{ptr @__tpstrtab_wil6210_wmi_cmd, !1, !"__tpstrtab_wil6210_wmi_cmd", i1 false, i1 false}
!118 = !{ptr @__tpstrtab_wil6210_wmi_event, !5, !"__tpstrtab_wil6210_wmi_event", i1 false, i1 false}
!119 = !{ptr @__tpstrtab_wil6210_log_err, !9, !"__tpstrtab_wil6210_log_err", i1 false, i1 false}
!120 = !{ptr @__tpstrtab_wil6210_log_info, !13, !"__tpstrtab_wil6210_log_info", i1 false, i1 false}
!121 = !{ptr @__tpstrtab_wil6210_log_dbg, !17, !"__tpstrtab_wil6210_log_dbg", i1 false, i1 false}
!122 = !{ptr @__tpstrtab_wil6210_irq_pseudo, !21, !"__tpstrtab_wil6210_irq_pseudo", i1 false, i1 false}
!123 = !{ptr @__tpstrtab_wil6210_irq_rx, !25, !"__tpstrtab_wil6210_irq_rx", i1 false, i1 false}
!124 = !{ptr @__tpstrtab_wil6210_irq_tx, !29, !"__tpstrtab_wil6210_irq_tx", i1 false, i1 false}
!125 = !{ptr @__tpstrtab_wil6210_irq_misc, !33, !"__tpstrtab_wil6210_irq_misc", i1 false, i1 false}
!126 = !{ptr @__tpstrtab_wil6210_irq_misc_thread, !37, !"__tpstrtab_wil6210_irq_misc_thread", i1 false, i1 false}
!127 = !{ptr @__tpstrtab_wil6210_rx, !41, !"__tpstrtab_wil6210_rx", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_wil6210_rx_status, !45, !"__tpstrtab_wil6210_rx_status", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_wil6210_tx, !49, !"__tpstrtab_wil6210_tx", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_wil6210_tx_done, !53, !"__tpstrtab_wil6210_tx_done", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_wil6210_tx_status, !57, !"__tpstrtab_wil6210_tx_status", i1 false, i1 false}
!132 = !{ptr @str__wil6210__trace_system_name, !133, !"str__wil6210__trace_system_name", i1 false, i1 false}
!133 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!134 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.2, !61, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.3, !61, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @trace_event_fields_wil6210_wmi, !61, !"trace_event_fields_wil6210_wmi", i1 false, i1 false}
!144 = !{ptr @trace_event_type_funcs_wil6210_wmi, !61, !"trace_event_type_funcs_wil6210_wmi", i1 false, i1 false}
!145 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @print_fmt_wil6210_wmi, !61, !"print_fmt_wil6210_wmi", i1 false, i1 false}
!147 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!148 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @trace_event_fields_wil6210_log_event, !67, !"trace_event_fields_wil6210_log_event", i1 false, i1 false}
!152 = !{ptr @trace_event_type_funcs_wil6210_log_event, !67, !"trace_event_type_funcs_wil6210_log_event", i1 false, i1 false}
!153 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @print_fmt_wil6210_log_event, !67, !"print_fmt_wil6210_log_event", i1 false, i1 false}
!155 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @trace_event_fields_wil6210_irq_pseudo, !21, !"trace_event_fields_wil6210_irq_pseudo", i1 false, i1 false}
!157 = !{ptr @trace_event_type_funcs_wil6210_irq_pseudo, !21, !"trace_event_type_funcs_wil6210_irq_pseudo", i1 false, i1 false}
!158 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.17, !21, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.18, !21, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @trace_raw_output_wil6210_irq_pseudo.__flags, !21, !"__flags", i1 false, i1 false}
!163 = !{ptr @.str.19, !21, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @print_fmt_wil6210_irq_pseudo, !21, !"print_fmt_wil6210_irq_pseudo", i1 false, i1 false}
!165 = !{ptr @trace_event_fields_wil6210_irq, !78, !"trace_event_fields_wil6210_irq", i1 false, i1 false}
!166 = !{ptr @trace_event_type_funcs_wil6210_irq, !78, !"trace_event_type_funcs_wil6210_irq", i1 false, i1 false}
!167 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @print_fmt_wil6210_irq, !78, !"print_fmt_wil6210_irq", i1 false, i1 false}
!169 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @trace_event_fields_wil6210_rx, !41, !"trace_event_fields_wil6210_rx", i1 false, i1 false}
!179 = !{ptr @trace_event_type_funcs_wil6210_rx, !41, !"trace_event_type_funcs_wil6210_rx", i1 false, i1 false}
!180 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @print_fmt_wil6210_rx, !41, !"print_fmt_wil6210_rx", i1 false, i1 false}
!182 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @trace_event_fields_wil6210_rx_status, !45, !"trace_event_fields_wil6210_rx_status", i1 false, i1 false}
!185 = !{ptr @trace_event_type_funcs_wil6210_rx_status, !45, !"trace_event_type_funcs_wil6210_rx_status", i1 false, i1 false}
!186 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @print_fmt_wil6210_rx_status, !45, !"print_fmt_wil6210_rx_status", i1 false, i1 false}
!188 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @trace_event_fields_wil6210_tx, !49, !"trace_event_fields_wil6210_tx", i1 false, i1 false}
!191 = !{ptr @trace_event_type_funcs_wil6210_tx, !49, !"trace_event_type_funcs_wil6210_tx", i1 false, i1 false}
!192 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @print_fmt_wil6210_tx, !49, !"print_fmt_wil6210_tx", i1 false, i1 false}
!194 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @trace_event_fields_wil6210_tx_done, !53, !"trace_event_fields_wil6210_tx_done", i1 false, i1 false}
!196 = !{ptr @trace_event_type_funcs_wil6210_tx_done, !53, !"trace_event_type_funcs_wil6210_tx_done", i1 false, i1 false}
!197 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @print_fmt_wil6210_tx_done, !53, !"print_fmt_wil6210_tx_done", i1 false, i1 false}
!199 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @trace_event_fields_wil6210_tx_status, !57, !"trace_event_fields_wil6210_tx_status", i1 false, i1 false}
!203 = !{ptr @trace_event_type_funcs_wil6210_tx_status, !57, !"trace_event_type_funcs_wil6210_tx_status", i1 false, i1 false}
!204 = !{ptr @.str.42, !57, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @print_fmt_wil6210_tx_status, !57, !"print_fmt_wil6210_tx_status", i1 false, i1 false}
!206 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"branch_weights", i32 2000, i32 1}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{!"auto-init"}
!220 = !{i8 0, i8 2}
