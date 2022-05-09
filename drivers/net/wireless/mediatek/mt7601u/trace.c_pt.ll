; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/trace.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.152, %struct.trace_event, ptr, ptr, %union.anon.153, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.152 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dev_reg_evtu = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mt_submit_urb = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.trace_event_raw_mt_mcu_msg_send = type { %struct.trace_entry, [32 x i8], i32, i32, i8, [0 x i8] }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.trace_event_raw_mt_vend_req = type { %struct.trace_entry, [32 x i8], i32, i8, i8, i16, i16, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_ee_read = type { %struct.trace_entry, [32 x i8], i32, i16, [0 x i8] }
%struct.trace_event_raw_dev_rf_reg_evt = type { %struct.trace_entry, [32 x i8], i8, i8, i8, [0 x i8] }
%struct.trace_event_raw_dev_bbp_reg_evt = type { %struct.trace_entry, [32 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_dev_simple_evt = type { %struct.trace_entry, [32 x i8], i8, [0 x i8] }
%struct.trace_event_raw_freq_cal_offset = type { %struct.trace_entry, [32 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_mt_rx = type { %struct.trace_entry, [32 x i8], %struct.mt7601u_rxwi, i32, [0 x i8] }
%struct.mt7601u_rxwi = type { i32, i32, i16, i16, i8, [3 x i8], i8, i8, i8, i8, i32, i32 }
%struct.trace_event_raw_mt_tx = type { %struct.trace_entry, [32 x i8], %struct.mt76_txwi, ptr, ptr, [0 x i8] }
%struct.mt76_txwi = type { i16, i16, i8, i8, i16, i32, i32, i8, i8, i16 }
%struct.trace_event_raw_mt_tx_dma_done = type { %struct.trace_entry, [32 x i8], ptr, [0 x i8] }
%struct.trace_event_raw_mt_tx_status_cleaned = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_mt_tx_status = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.trace_event_raw_mt_rx_dma_aggr = type { %struct.trace_entry, [32 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_set_shared_key = type { %struct.trace_entry, [32 x i8], i8, i8, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_reg_read = internal constant [9 x i8] c"reg_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_reg_read = dso_local global %struct.static_call_key { ptr @__traceiter_reg_read }, align 4
@__tracepoint_reg_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_reg_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_reg_read, ptr null, ptr @__traceiter_reg_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_reg_read = internal constant ptr @__tracepoint_reg_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_reg_write = internal constant [10 x i8] c"reg_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_reg_write = dso_local global %struct.static_call_key { ptr @__traceiter_reg_write }, align 4
@__tracepoint_reg_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_reg_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_reg_write, ptr null, ptr @__traceiter_reg_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_reg_write = internal constant ptr @__tracepoint_reg_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_submit_urb = internal constant [14 x i8] c"mt_submit_urb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_submit_urb = dso_local global %struct.static_call_key { ptr @__traceiter_mt_submit_urb }, align 4
@__tracepoint_mt_submit_urb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_submit_urb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_submit_urb, ptr null, ptr @__traceiter_mt_submit_urb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_submit_urb = internal constant ptr @__tracepoint_mt_submit_urb, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_mcu_msg_send = internal constant [16 x i8] c"mt_mcu_msg_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_mcu_msg_send = dso_local global %struct.static_call_key { ptr @__traceiter_mt_mcu_msg_send }, align 4
@__tracepoint_mt_mcu_msg_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_mcu_msg_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_mcu_msg_send, ptr null, ptr @__traceiter_mt_mcu_msg_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_mcu_msg_send = internal constant ptr @__tracepoint_mt_mcu_msg_send, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_vend_req = internal constant [12 x i8] c"mt_vend_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_vend_req = dso_local global %struct.static_call_key { ptr @__traceiter_mt_vend_req }, align 4
@__tracepoint_mt_vend_req = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_vend_req, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_vend_req, ptr null, ptr @__traceiter_mt_vend_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_vend_req = internal constant ptr @__tracepoint_mt_vend_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_ee_read = internal constant [8 x i8] c"ee_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ee_read = dso_local global %struct.static_call_key { ptr @__traceiter_ee_read }, align 4
@__tracepoint_ee_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ee_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ee_read, ptr null, ptr @__traceiter_ee_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ee_read = internal constant ptr @__tracepoint_ee_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_rf_read = internal constant [8 x i8] c"rf_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rf_read = dso_local global %struct.static_call_key { ptr @__traceiter_rf_read }, align 4
@__tracepoint_rf_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rf_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rf_read, ptr null, ptr @__traceiter_rf_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rf_read = internal constant ptr @__tracepoint_rf_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_rf_write = internal constant [9 x i8] c"rf_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rf_write = dso_local global %struct.static_call_key { ptr @__traceiter_rf_write }, align 4
@__tracepoint_rf_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rf_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rf_write, ptr null, ptr @__traceiter_rf_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rf_write = internal constant ptr @__tracepoint_rf_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_bbp_read = internal constant [9 x i8] c"bbp_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bbp_read = dso_local global %struct.static_call_key { ptr @__traceiter_bbp_read }, align 4
@__tracepoint_bbp_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bbp_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bbp_read, ptr null, ptr @__traceiter_bbp_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bbp_read = internal constant ptr @__tracepoint_bbp_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_bbp_write = internal constant [10 x i8] c"bbp_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bbp_write = dso_local global %struct.static_call_key { ptr @__traceiter_bbp_write }, align 4
@__tracepoint_bbp_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bbp_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bbp_write, ptr null, ptr @__traceiter_bbp_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bbp_write = internal constant ptr @__tracepoint_bbp_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_temp_mode = internal constant [10 x i8] c"temp_mode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_temp_mode = dso_local global %struct.static_call_key { ptr @__traceiter_temp_mode }, align 4
@__tracepoint_temp_mode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_temp_mode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_temp_mode, ptr null, ptr @__traceiter_temp_mode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_temp_mode = internal constant ptr @__tracepoint_temp_mode, section "__tracepoints_ptrs", align 4
@__tpstrtab_read_temp = internal constant [10 x i8] c"read_temp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_read_temp = dso_local global %struct.static_call_key { ptr @__traceiter_read_temp }, align 4
@__tracepoint_read_temp = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_read_temp, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_read_temp, ptr null, ptr @__traceiter_read_temp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_read_temp = internal constant ptr @__tracepoint_read_temp, section "__tracepoints_ptrs", align 4
@__tpstrtab_freq_cal_adjust = internal constant [16 x i8] c"freq_cal_adjust\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_freq_cal_adjust = dso_local global %struct.static_call_key { ptr @__traceiter_freq_cal_adjust }, align 4
@__tracepoint_freq_cal_adjust = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_freq_cal_adjust, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_freq_cal_adjust, ptr null, ptr @__traceiter_freq_cal_adjust, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_freq_cal_adjust = internal constant ptr @__tracepoint_freq_cal_adjust, section "__tracepoints_ptrs", align 4
@__tpstrtab_freq_cal_offset = internal constant [16 x i8] c"freq_cal_offset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_freq_cal_offset = dso_local global %struct.static_call_key { ptr @__traceiter_freq_cal_offset }, align 4
@__tracepoint_freq_cal_offset = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_freq_cal_offset, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_freq_cal_offset, ptr null, ptr @__traceiter_freq_cal_offset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_freq_cal_offset = internal constant ptr @__tracepoint_freq_cal_offset, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_rx = internal constant [6 x i8] c"mt_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_rx = dso_local global %struct.static_call_key { ptr @__traceiter_mt_rx }, align 4
@__tracepoint_mt_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_rx, ptr null, ptr @__traceiter_mt_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_rx = internal constant ptr @__tracepoint_mt_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_tx = internal constant [6 x i8] c"mt_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_tx = dso_local global %struct.static_call_key { ptr @__traceiter_mt_tx }, align 4
@__tracepoint_mt_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_tx, ptr null, ptr @__traceiter_mt_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_tx = internal constant ptr @__tracepoint_mt_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_tx_dma_done = internal constant [15 x i8] c"mt_tx_dma_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_tx_dma_done = dso_local global %struct.static_call_key { ptr @__traceiter_mt_tx_dma_done }, align 4
@__tracepoint_mt_tx_dma_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_tx_dma_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_tx_dma_done, ptr null, ptr @__traceiter_mt_tx_dma_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_tx_dma_done = internal constant ptr @__tracepoint_mt_tx_dma_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_tx_status_cleaned = internal constant [21 x i8] c"mt_tx_status_cleaned\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_tx_status_cleaned = dso_local global %struct.static_call_key { ptr @__traceiter_mt_tx_status_cleaned }, align 4
@__tracepoint_mt_tx_status_cleaned = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_tx_status_cleaned, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_tx_status_cleaned, ptr null, ptr @__traceiter_mt_tx_status_cleaned, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_tx_status_cleaned = internal constant ptr @__tracepoint_mt_tx_status_cleaned, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_tx_status = internal constant [13 x i8] c"mt_tx_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_tx_status = dso_local global %struct.static_call_key { ptr @__traceiter_mt_tx_status }, align 4
@__tracepoint_mt_tx_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_tx_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_tx_status, ptr null, ptr @__traceiter_mt_tx_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_tx_status = internal constant ptr @__tracepoint_mt_tx_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_mt_rx_dma_aggr = internal constant [15 x i8] c"mt_rx_dma_aggr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mt_rx_dma_aggr = dso_local global %struct.static_call_key { ptr @__traceiter_mt_rx_dma_aggr }, align 4
@__tracepoint_mt_rx_dma_aggr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mt_rx_dma_aggr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mt_rx_dma_aggr, ptr null, ptr @__traceiter_mt_rx_dma_aggr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mt_rx_dma_aggr = internal constant ptr @__tracepoint_mt_rx_dma_aggr, section "__tracepoints_ptrs", align 4
@__tpstrtab_set_key = internal constant [8 x i8] c"set_key\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_set_key = dso_local global %struct.static_call_key { ptr @__traceiter_set_key }, align 4
@__tracepoint_set_key = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_set_key, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_set_key, ptr null, ptr @__traceiter_set_key, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_set_key = internal constant ptr @__tracepoint_set_key, section "__tracepoints_ptrs", align 4
@__tpstrtab_set_shared_key = internal constant [15 x i8] c"set_shared_key\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_set_shared_key = dso_local global %struct.static_call_key { ptr @__traceiter_set_shared_key }, align 4
@__tracepoint_set_shared_key = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_set_shared_key, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_set_shared_key, ptr null, ptr @__traceiter_set_shared_key, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_set_shared_key = internal constant ptr @__tracepoint_set_shared_key, section "__tracepoints_ptrs", align 4
@str__mt7601u__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7601u\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_dev_reg_evtu = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dev_reg_evtu = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_dev_reg_evtu, ptr @perf_trace_dev_reg_evtu, ptr @trace_event_reg, ptr @trace_event_fields_dev_reg_evtu, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_reg_evtu, i64 24), ptr getelementptr (i8, ptr @event_class_dev_reg_evtu, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_reg_evtu = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dev_reg_evtu, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dev_reg_evtu = internal global { [52 x i8], [44 x i8] } { [52 x i8] c"\22%s %04x=%08x\22, REC->wiphy_name, REC->reg, REC->val\00", [44 x i8] zeroinitializer }, align 32
@event_reg_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_reg_evtu, %union.anon.152 { ptr @__tracepoint_reg_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_reg_evtu }, ptr @print_fmt_dev_reg_evtu, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_reg_read = internal global ptr @event_reg_read, section "_ftrace_events", align 4
@event_reg_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_reg_evtu, %union.anon.152 { ptr @__tracepoint_reg_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_reg_evtu }, ptr @print_fmt_dev_reg_evtu, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_reg_write = internal global ptr @event_reg_write, section "_ftrace_events", align 4
@trace_event_fields_mt_submit_urb = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.150 { %struct.anon.151 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mt_submit_urb = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_submit_urb, ptr @perf_trace_mt_submit_urb, ptr @trace_event_reg, ptr @trace_event_fields_mt_submit_urb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_submit_urb, i64 24), ptr getelementptr (i8, ptr @event_class_mt_submit_urb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_submit_urb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_submit_urb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_submit_urb = internal global { [57 x i8], [39 x i8] } { [57 x i8] c"\22%s p:%08x len:%u\22, REC->wiphy_name, REC->pipe, REC->len\00", [39 x i8] zeroinitializer }, align 32
@event_mt_submit_urb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_submit_urb, %union.anon.152 { ptr @__tracepoint_mt_submit_urb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_submit_urb }, ptr @print_fmt_mt_submit_urb, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_submit_urb = internal global ptr @event_mt_submit_urb, section "_ftrace_events", align 4
@trace_event_fields_mt_mcu_msg_send = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.150 { %struct.anon.151 { ptr @.str.13, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mt_mcu_msg_send = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_mcu_msg_send, ptr @perf_trace_mt_mcu_msg_send, ptr @trace_event_reg, ptr @trace_event_fields_mt_mcu_msg_send, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_mcu_msg_send, i64 24), ptr getelementptr (i8, ptr @event_class_mt_mcu_msg_send, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_mcu_msg_send = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_mcu_msg_send, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_mcu_msg_send = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22%s i:%08x c:%08x r:%d\22, REC->wiphy_name, REC->info, REC->csum, REC->resp\00", [54 x i8] zeroinitializer }, align 32
@event_mt_mcu_msg_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_mcu_msg_send, %union.anon.152 { ptr @__tracepoint_mt_mcu_msg_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_mcu_msg_send }, ptr @print_fmt_mt_mcu_msg_send, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_mcu_msg_send = internal global ptr @event_mt_mcu_msg_send, section "_ftrace_events", align 4
@trace_event_fields_mt_vend_req = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.150 { %struct.anon.151 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.16, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.150 { %struct.anon.151 { ptr @.str.4, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.150 { %struct.anon.151 { ptr @.str.19, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.150 { %struct.anon.151 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.150 { %struct.anon.151 { ptr @.str.23, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.150 { %struct.anon.151 { ptr @.str.24, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mt_vend_req = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_vend_req, ptr @perf_trace_mt_vend_req, ptr @trace_event_reg, ptr @trace_event_fields_mt_vend_req, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_vend_req, i64 24), ptr getelementptr (i8, ptr @event_class_mt_vend_req, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_vend_req = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_vend_req, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_vend_req = internal global { [170 x i8], [54 x i8] } { [170 x i8] c"\22%s %d p:%08x req:%02hhx %02hhx val:%04hx %04hx buf:%d %d\22, REC->wiphy_name, REC->ret, REC->pipe, REC->req, REC->req_type, REC->val, REC->offset, !!REC->buf, REC->buflen\00", [54 x i8] zeroinitializer }, align 32
@event_mt_vend_req = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_vend_req, %union.anon.152 { ptr @__tracepoint_mt_vend_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_vend_req }, ptr @print_fmt_mt_vend_req, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_vend_req = internal global ptr @event_mt_vend_req, section "_ftrace_events", align 4
@trace_event_fields_ee_read = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.150 { %struct.anon.151 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.150 { %struct.anon.151 { ptr @.str.27, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_ee_read = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_ee_read, ptr @perf_trace_ee_read, ptr @trace_event_reg, ptr @trace_event_fields_ee_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ee_read, i64 24), ptr getelementptr (i8, ptr @event_class_ee_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ee_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ee_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ee_read = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\22%s %04x=%04x\22, REC->wiphy_name, REC->o, REC->v\00", [48 x i8] zeroinitializer }, align 32
@event_ee_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ee_read, %union.anon.152 { ptr @__tracepoint_ee_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ee_read }, ptr @print_fmt_ee_read, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ee_read = internal global ptr @event_ee_read, section "_ftrace_events", align 4
@trace_event_fields_dev_rf_reg_evt = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.3, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.4, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_dev_rf_reg_evt = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_dev_rf_reg_evt, ptr @perf_trace_dev_rf_reg_evt, ptr @trace_event_reg, ptr @trace_event_fields_dev_rf_reg_evt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_rf_reg_evt, i64 24), ptr getelementptr (i8, ptr @event_class_dev_rf_reg_evt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_rf_reg_evt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dev_rf_reg_evt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dev_rf_reg_evt = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22%s %02hhx:%02hhx=%02hhx\22, REC->wiphy_name, REC->bank, REC->reg, REC->val\00", [54 x i8] zeroinitializer }, align 32
@event_rf_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_rf_reg_evt, %union.anon.152 { ptr @__tracepoint_rf_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_rf_reg_evt }, ptr @print_fmt_dev_rf_reg_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rf_read = internal global ptr @event_rf_read, section "_ftrace_events", align 4
@event_rf_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_rf_reg_evt, %union.anon.152 { ptr @__tracepoint_rf_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_rf_reg_evt }, ptr @print_fmt_dev_rf_reg_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rf_write = internal global ptr @event_rf_write, section "_ftrace_events", align 4
@trace_event_fields_dev_bbp_reg_evt = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.3, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.4, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dev_bbp_reg_evt = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_dev_bbp_reg_evt, ptr @perf_trace_dev_bbp_reg_evt, ptr @trace_event_reg, ptr @trace_event_fields_dev_bbp_reg_evt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_bbp_reg_evt, i64 24), ptr getelementptr (i8, ptr @event_class_dev_bbp_reg_evt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_bbp_reg_evt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dev_bbp_reg_evt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dev_bbp_reg_evt = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"\22%s %02hhx=%02hhx\22, REC->wiphy_name, REC->reg, REC->val\00", [40 x i8] zeroinitializer }, align 32
@event_bbp_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_bbp_reg_evt, %union.anon.152 { ptr @__tracepoint_bbp_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_bbp_reg_evt }, ptr @print_fmt_dev_bbp_reg_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bbp_read = internal global ptr @event_bbp_read, section "_ftrace_events", align 4
@event_bbp_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_bbp_reg_evt, %union.anon.152 { ptr @__tracepoint_bbp_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_bbp_reg_evt }, ptr @print_fmt_dev_bbp_reg_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bbp_write = internal global ptr @event_bbp_write, section "_ftrace_events", align 4
@trace_event_fields_dev_simple_evt = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.4, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_dev_simple_evt = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_dev_simple_evt, ptr @perf_trace_dev_simple_evt, ptr @trace_event_reg, ptr @trace_event_fields_dev_simple_evt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_simple_evt, i64 24), ptr getelementptr (i8, ptr @event_class_dev_simple_evt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_simple_evt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dev_simple_evt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dev_simple_evt = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\22%s %02hhx\22, REC->wiphy_name, REC->val\00", [57 x i8] zeroinitializer }, align 32
@event_temp_mode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_simple_evt, %union.anon.152 { ptr @__tracepoint_temp_mode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_simple_evt }, ptr @print_fmt_dev_simple_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_temp_mode = internal global ptr @event_temp_mode, section "_ftrace_events", align 4
@event_read_temp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_simple_evt, %union.anon.152 { ptr @__tracepoint_read_temp }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_simple_evt }, ptr @print_fmt_dev_simple_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_read_temp = internal global ptr @event_read_temp, section "_ftrace_events", align 4
@event_freq_cal_adjust = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_simple_evt, %union.anon.152 { ptr @__tracepoint_freq_cal_adjust }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_simple_evt }, ptr @print_fmt_dev_simple_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_freq_cal_adjust = internal global ptr @event_freq_cal_adjust, section "_ftrace_events", align 4
@trace_event_fields_freq_cal_offset = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.33, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.150 { %struct.anon.151 { ptr @.str.35, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_freq_cal_offset = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_freq_cal_offset, ptr @perf_trace_freq_cal_offset, ptr @trace_event_reg, ptr @trace_event_fields_freq_cal_offset, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_freq_cal_offset, i64 24), ptr getelementptr (i8, ptr @event_class_freq_cal_offset, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_freq_cal_offset = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_freq_cal_offset, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_freq_cal_offset = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22%s phy:%02hhx off:%02hhx\22, REC->wiphy_name, REC->phy_mode, REC->freq_off\00", [54 x i8] zeroinitializer }, align 32
@event_freq_cal_offset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_freq_cal_offset, %union.anon.152 { ptr @__tracepoint_freq_cal_offset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_freq_cal_offset }, ptr @print_fmt_freq_cal_offset, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_freq_cal_offset = internal global ptr @event_freq_cal_offset, section "_ftrace_events", align 4
@trace_event_fields_mt_rx = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.150 { %struct.anon.151 { ptr @.str.38, i32 28, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mt_rx = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_rx, ptr @perf_trace_mt_rx, ptr @trace_event_reg, ptr @trace_event_fields_mt_rx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_rx, i64 24), ptr getelementptr (i8, ptr @event_class_mt_rx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_rx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_rx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_rx = internal global { [646 x i8], [186 x i8] } { [646 x i8] c"\22%s rxi:%08x ctl:%08x frag_sn:%04hx rate:%04hx uknw:%02hhx z:%02hhx%02hhx%02hhx snr:%02hhx ant:%02hhx gain:%02hhx freq_o:%02hhx r:%08x ea:%08x fce:%08x\22, REC->wiphy_name, (__u32)__builtin_bswap32((__u32)(( __u32)(__le32)(REC->rxwi.rxinfo))), (__u32)__builtin_bswap32((__u32)(( __u32)(__le32)(REC->rxwi.ctl))), (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->rxwi.frag_sn))), (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->rxwi.rate))), REC->rxwi.unknown, REC->rxwi.zero[0], REC->rxwi.zero[1], REC->rxwi.zero[2], REC->rxwi.snr, REC->rxwi.ant, REC->rxwi.gain, REC->rxwi.freq_off, REC->rxwi.resv2, REC->rxwi.expert_ant, REC->fce_info\00", [186 x i8] zeroinitializer }, align 32
@event_mt_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_rx, %union.anon.152 { ptr @__tracepoint_mt_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_rx }, ptr @print_fmt_mt_rx, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_rx = internal global ptr @event_mt_rx, section "_ftrace_events", align 4
@trace_event_fields_mt_tx = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.150 { %struct.anon.151 { ptr @.str.42, i32 20, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.150 { %struct.anon.151 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.150 { %struct.anon.151 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mt_tx = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_tx, ptr @perf_trace_mt_tx, ptr @trace_event_reg, ptr @trace_event_fields_mt_tx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_tx, i64 24), ptr getelementptr (i8, ptr @event_class_mt_tx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_tx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_tx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_tx = internal global { [354 x i8], [94 x i8] } { [354 x i8] c"\22%s skb:%p sta:%p  flg:%04hx rate_ctl:%04hx ack:%02hhx wcid:%02hhx len_ctl:%05hx\22, REC->wiphy_name, REC->skb, REC->sta, (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->h.flags))), (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->h.rate_ctl))), REC->h.ack_ctl, REC->h.wcid, (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->h.len_ctl)))\00", [94 x i8] zeroinitializer }, align 32
@event_mt_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_tx, %union.anon.152 { ptr @__tracepoint_mt_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_tx }, ptr @print_fmt_mt_tx, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_tx = internal global ptr @event_mt_tx, section "_ftrace_events", align 4
@trace_event_fields_mt_tx_dma_done = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.150 { %struct.anon.151 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mt_tx_dma_done = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_tx_dma_done, ptr @perf_trace_mt_tx_dma_done, ptr @trace_event_reg, ptr @trace_event_fields_mt_tx_dma_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_tx_dma_done, i64 24), ptr getelementptr (i8, ptr @event_class_mt_tx_dma_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_tx_dma_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_tx_dma_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_tx_dma_done = internal global { [35 x i8], [61 x i8] } { [35 x i8] c"\22%s %p\22, REC->wiphy_name, REC->skb\00", [61 x i8] zeroinitializer }, align 32
@event_mt_tx_dma_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_tx_dma_done, %union.anon.152 { ptr @__tracepoint_mt_tx_dma_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_tx_dma_done }, ptr @print_fmt_mt_tx_dma_done, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_tx_dma_done = internal global ptr @event_mt_tx_dma_done, section "_ftrace_events", align 4
@trace_event_fields_mt_tx_status_cleaned = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.150 { %struct.anon.151 { ptr @.str.49, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mt_tx_status_cleaned = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_tx_status_cleaned, ptr @perf_trace_mt_tx_status_cleaned, ptr @trace_event_reg, ptr @trace_event_fields_mt_tx_status_cleaned, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_tx_status_cleaned, i64 24), ptr getelementptr (i8, ptr @event_class_mt_tx_status_cleaned, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_tx_status_cleaned = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_tx_status_cleaned, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_tx_status_cleaned = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\22%s %d\22, REC->wiphy_name, REC->cleaned\00", [57 x i8] zeroinitializer }, align 32
@event_mt_tx_status_cleaned = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_tx_status_cleaned, %union.anon.152 { ptr @__tracepoint_mt_tx_status_cleaned }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_tx_status_cleaned }, ptr @print_fmt_mt_tx_status_cleaned, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_tx_status_cleaned = internal global ptr @event_mt_tx_status_cleaned, section "_ftrace_events", align 4
@trace_event_fields_mt_tx_status = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.150 { %struct.anon.151 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mt_tx_status = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_tx_status, ptr @perf_trace_mt_tx_status, ptr @trace_event_reg, ptr @trace_event_fields_mt_tx_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_tx_status, i64 24), ptr getelementptr (i8, ptr @event_class_mt_tx_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_tx_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_tx_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_tx_status = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"\22%s %08x %08x\22, REC->wiphy_name, REC->stat1, REC->stat2\00", [40 x i8] zeroinitializer }, align 32
@event_mt_tx_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_tx_status, %union.anon.152 { ptr @__tracepoint_mt_tx_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_tx_status }, ptr @print_fmt_mt_tx_status, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_tx_status = internal global ptr @event_mt_tx_status, section "_ftrace_events", align 4
@trace_event_fields_mt_rx_dma_aggr = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.54, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.150 { %struct.anon.151 { ptr @.str.55, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mt_rx_dma_aggr = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_mt_rx_dma_aggr, ptr @perf_trace_mt_rx_dma_aggr, ptr @trace_event_reg, ptr @trace_event_fields_mt_rx_dma_aggr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mt_rx_dma_aggr, i64 24), ptr getelementptr (i8, ptr @event_class_mt_rx_dma_aggr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mt_rx_dma_aggr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mt_rx_dma_aggr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mt_rx_dma_aggr = internal global { [60 x i8], [36 x i8] } { [60 x i8] c"\22%s cnt:%d paged:%d\22, REC->wiphy_name, REC->cnt, REC->paged\00", [36 x i8] zeroinitializer }, align 32
@event_mt_rx_dma_aggr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mt_rx_dma_aggr, %union.anon.152 { ptr @__tracepoint_mt_rx_dma_aggr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mt_rx_dma_aggr }, ptr @print_fmt_mt_rx_dma_aggr, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mt_rx_dma_aggr = internal global ptr @event_mt_rx_dma_aggr, section "_ftrace_events", align 4
@event_set_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_simple_evt, %union.anon.152 { ptr @__tracepoint_set_key }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_simple_evt }, ptr @print_fmt_dev_simple_evt, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_set_key = internal global ptr @event_set_key, section "_ftrace_events", align 4
@trace_event_fields_set_shared_key = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.150 { %struct.anon.151 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.57, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.150 { %struct.anon.151 { ptr @.str.58, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_set_shared_key = internal global %struct.trace_event_class { ptr @str__mt7601u__trace_system_name, ptr @trace_event_raw_event_set_shared_key, ptr @perf_trace_set_shared_key, ptr @trace_event_reg, ptr @trace_event_fields_set_shared_key, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_set_shared_key, i64 24), ptr getelementptr (i8, ptr @event_class_set_shared_key, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_set_shared_key = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_set_shared_key, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_set_shared_key = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\22%s phy:%02hhx off:%02hhx\22, REC->wiphy_name, REC->vid, REC->key\00", [32 x i8] zeroinitializer }, align 32
@event_set_shared_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_set_shared_key, %union.anon.152 { ptr @__tracepoint_set_shared_key }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_set_shared_key }, ptr @print_fmt_set_shared_key, ptr null, %union.anon.153 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_set_shared_key = internal global ptr @event_set_shared_key, section "_ftrace_events", align 4
@__bpf_trace_tp_map_reg_read = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_reg_read, ptr @__bpf_trace_dev_reg_evtu, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_reg_write = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_reg_write, ptr @__bpf_trace_dev_reg_evtu, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_submit_urb = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_submit_urb, ptr @__bpf_trace_mt_submit_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_mcu_msg_send = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_mcu_msg_send, ptr @__bpf_trace_mt_mcu_msg_send, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_vend_req = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_vend_req, ptr @__bpf_trace_mt_vend_req, i32 9, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ee_read = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_ee_read, ptr @__bpf_trace_ee_read, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rf_read = internal global %union.anon.160 { %struct.bpf_raw_event_map { ptr @__tracepoint_rf_read, ptr @__bpf_trace_dev_rf_reg_evt, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rf_write = internal global %union.anon.161 { %struct.bpf_raw_event_map { ptr @__tracepoint_rf_write, ptr @__bpf_trace_dev_rf_reg_evt, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bbp_read = internal global %union.anon.162 { %struct.bpf_raw_event_map { ptr @__tracepoint_bbp_read, ptr @__bpf_trace_dev_bbp_reg_evt, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bbp_write = internal global %union.anon.163 { %struct.bpf_raw_event_map { ptr @__tracepoint_bbp_write, ptr @__bpf_trace_dev_bbp_reg_evt, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_temp_mode = internal global %union.anon.164 { %struct.bpf_raw_event_map { ptr @__tracepoint_temp_mode, ptr @__bpf_trace_dev_simple_evt, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_read_temp = internal global %union.anon.165 { %struct.bpf_raw_event_map { ptr @__tracepoint_read_temp, ptr @__bpf_trace_dev_simple_evt, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_freq_cal_adjust = internal global %union.anon.166 { %struct.bpf_raw_event_map { ptr @__tracepoint_freq_cal_adjust, ptr @__bpf_trace_dev_simple_evt, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_freq_cal_offset = internal global %union.anon.167 { %struct.bpf_raw_event_map { ptr @__tracepoint_freq_cal_offset, ptr @__bpf_trace_freq_cal_offset, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_rx = internal global %union.anon.168 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_rx, ptr @__bpf_trace_mt_rx, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_tx = internal global %union.anon.169 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_tx, ptr @__bpf_trace_mt_tx, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_tx_dma_done = internal global %union.anon.170 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_tx_dma_done, ptr @__bpf_trace_mt_tx_dma_done, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_tx_status_cleaned = internal global %union.anon.171 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_tx_status_cleaned, ptr @__bpf_trace_mt_tx_status_cleaned, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_tx_status = internal global %union.anon.172 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_tx_status, ptr @__bpf_trace_mt_tx_status, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mt_rx_dma_aggr = internal global %union.anon.173 { %struct.bpf_raw_event_map { ptr @__tracepoint_mt_rx_dma_aggr, ptr @__bpf_trace_mt_rx_dma_aggr, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_set_key = internal global %union.anon.174 { %struct.bpf_raw_event_map { ptr @__tracepoint_set_key, ptr @__bpf_trace_dev_simple_evt, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_set_shared_key = internal global %union.anon.175 { %struct.bpf_raw_event_map { ptr @__tracepoint_set_shared_key, ptr @__bpf_trace_set_shared_key, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wiphy_name\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %04x=%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s p:%08x len:%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csum\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"resp\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s i:%08x c:%08x r:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"req_type\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"void*\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"buflen\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s %d p:%08x req:%02hhx %02hhx val:%04hx %04hx buf:%d %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"v\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %04x=%04x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bank\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s %02hhx:%02hhx=%02hhx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s %02hhx=%02hhx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %02hhx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"freq_off\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s phy:%02hhx off:%02hhx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"struct mt7601u_rxwi\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxwi\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fce_info\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"%s rxi:%08x ctl:%08x frag_sn:%04hx rate:%04hx uknw:%02hhx z:%02hhx%02hhx%02hhx snr:%02hhx ant:%02hhx gain:%02hhx freq_o:%02hhx r:%08x ea:%08x fce:%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct mt76_txwi\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"h\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct sk_buff *\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"skb\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct mt76_sta *\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sta\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s skb:%p sta:%p  flg:%04hx rate_ctl:%04hx ack:%02hhx wcid:%02hhx len_ctl:%05hx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %p\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cleaned\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stat1\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stat2\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %08x %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cnt\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"paged\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s cnt:%d paged:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [32 x i8] c"str__mt7601u__trace_system_name\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [32 x i8] c"trace_event_fields_dev_reg_evtu\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_dev_reg_evtu\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"print_fmt_dev_reg_evtu\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"event_reg_read\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 46, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"event_reg_write\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 51, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [33 x i8] c"trace_event_fields_mt_submit_urb\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_mt_submit_urb\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"print_fmt_mt_submit_urb\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"event_mt_submit_urb\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [35 x i8] c"trace_event_fields_mt_mcu_msg_send\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_mt_mcu_msg_send\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"print_fmt_mt_mcu_msg_send\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"event_mt_mcu_msg_send\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [31 x i8] c"trace_event_fields_mt_vend_req\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_mt_vend_req\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"print_fmt_mt_vend_req\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"event_mt_vend_req\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"trace_event_fields_ee_read\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_ee_read\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"print_fmt_ee_read\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"event_ee_read\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [34 x i8] c"trace_event_fields_dev_rf_reg_evt\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_dev_rf_reg_evt\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"print_fmt_dev_rf_reg_evt\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"event_rf_read\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 161, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"event_rf_write\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 166, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [35 x i8] c"trace_event_fields_dev_bbp_reg_evt\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_dev_bbp_reg_evt\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"print_fmt_dev_bbp_reg_evt\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"event_bbp_read\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 189, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"event_bbp_write\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 194, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [34 x i8] c"trace_event_fields_dev_simple_evt\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_dev_simple_evt\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [25 x i8] c"print_fmt_dev_simple_evt\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"event_temp_mode\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 215, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"event_read_temp\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 220, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"event_freq_cal_adjust\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 225, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [35 x i8] c"trace_event_fields_freq_cal_offset\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_freq_cal_offset\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"print_fmt_freq_cal_offset\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [22 x i8] c"event_freq_cal_offset\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"trace_event_fields_mt_rx\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [29 x i8] c"trace_event_type_funcs_mt_rx\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"print_fmt_mt_rx\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"event_mt_rx\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"trace_event_fields_mt_tx\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [29 x i8] c"trace_event_type_funcs_mt_tx\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"print_fmt_mt_tx\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [12 x i8] c"event_mt_tx\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [34 x i8] c"trace_event_fields_mt_tx_dma_done\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_mt_tx_dma_done\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [25 x i8] c"print_fmt_mt_tx_dma_done\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"event_mt_tx_dma_done\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [40 x i8] c"trace_event_fields_mt_tx_status_cleaned\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_mt_tx_status_cleaned\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [31 x i8] c"print_fmt_mt_tx_status_cleaned\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [27 x i8] c"event_mt_tx_status_cleaned\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [32 x i8] c"trace_event_fields_mt_tx_status\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_mt_tx_status\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"print_fmt_mt_tx_status\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [19 x i8] c"event_mt_tx_status\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [34 x i8] c"trace_event_fields_mt_rx_dma_aggr\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_mt_rx_dma_aggr\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [25 x i8] c"print_fmt_mt_rx_dma_aggr\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"event_mt_rx_dma_aggr\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [14 x i8] c"event_set_key\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 363, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [34 x i8] c"trace_event_fields_set_shared_key\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_set_shared_key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [25 x i8] c"print_fmt_set_shared_key\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"event_set_shared_key\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 29, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 56, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 78, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 98, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 126, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 141, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 171, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 199, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 230, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 247, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 277, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 302, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 316, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 330, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 346, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [51 x i8] c"../drivers/net/wireless/mediatek/mt7601u/./trace.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 368, i32 1 }
@llvm.compiler.used = appending global [234 x ptr] [ptr @__bpf_trace_tp_map_bbp_read, ptr @__bpf_trace_tp_map_bbp_write, ptr @__bpf_trace_tp_map_ee_read, ptr @__bpf_trace_tp_map_freq_cal_adjust, ptr @__bpf_trace_tp_map_freq_cal_offset, ptr @__bpf_trace_tp_map_mt_mcu_msg_send, ptr @__bpf_trace_tp_map_mt_rx, ptr @__bpf_trace_tp_map_mt_rx_dma_aggr, ptr @__bpf_trace_tp_map_mt_submit_urb, ptr @__bpf_trace_tp_map_mt_tx, ptr @__bpf_trace_tp_map_mt_tx_dma_done, ptr @__bpf_trace_tp_map_mt_tx_status, ptr @__bpf_trace_tp_map_mt_tx_status_cleaned, ptr @__bpf_trace_tp_map_mt_vend_req, ptr @__bpf_trace_tp_map_read_temp, ptr @__bpf_trace_tp_map_reg_read, ptr @__bpf_trace_tp_map_reg_write, ptr @__bpf_trace_tp_map_rf_read, ptr @__bpf_trace_tp_map_rf_write, ptr @__bpf_trace_tp_map_set_key, ptr @__bpf_trace_tp_map_set_shared_key, ptr @__bpf_trace_tp_map_temp_mode, ptr @__event_bbp_read, ptr @__event_bbp_write, ptr @__event_ee_read, ptr @__event_freq_cal_adjust, ptr @__event_freq_cal_offset, ptr @__event_mt_mcu_msg_send, ptr @__event_mt_rx, ptr @__event_mt_rx_dma_aggr, ptr @__event_mt_submit_urb, ptr @__event_mt_tx, ptr @__event_mt_tx_dma_done, ptr @__event_mt_tx_status, ptr @__event_mt_tx_status_cleaned, ptr @__event_mt_vend_req, ptr @__event_read_temp, ptr @__event_reg_read, ptr @__event_reg_write, ptr @__event_rf_read, ptr @__event_rf_write, ptr @__event_set_key, ptr @__event_set_shared_key, ptr @__event_temp_mode, ptr @__tracepoint_bbp_read, ptr @__tracepoint_bbp_write, ptr @__tracepoint_ee_read, ptr @__tracepoint_freq_cal_adjust, ptr @__tracepoint_freq_cal_offset, ptr @__tracepoint_mt_mcu_msg_send, ptr @__tracepoint_mt_rx, ptr @__tracepoint_mt_rx_dma_aggr, ptr @__tracepoint_mt_submit_urb, ptr @__tracepoint_mt_tx, ptr @__tracepoint_mt_tx_dma_done, ptr @__tracepoint_mt_tx_status, ptr @__tracepoint_mt_tx_status_cleaned, ptr @__tracepoint_mt_vend_req, ptr @__tracepoint_ptr_bbp_read, ptr @__tracepoint_ptr_bbp_write, ptr @__tracepoint_ptr_ee_read, ptr @__tracepoint_ptr_freq_cal_adjust, ptr @__tracepoint_ptr_freq_cal_offset, ptr @__tracepoint_ptr_mt_mcu_msg_send, ptr @__tracepoint_ptr_mt_rx, ptr @__tracepoint_ptr_mt_rx_dma_aggr, ptr @__tracepoint_ptr_mt_submit_urb, ptr @__tracepoint_ptr_mt_tx, ptr @__tracepoint_ptr_mt_tx_dma_done, ptr @__tracepoint_ptr_mt_tx_status, ptr @__tracepoint_ptr_mt_tx_status_cleaned, ptr @__tracepoint_ptr_mt_vend_req, ptr @__tracepoint_ptr_read_temp, ptr @__tracepoint_ptr_reg_read, ptr @__tracepoint_ptr_reg_write, ptr @__tracepoint_ptr_rf_read, ptr @__tracepoint_ptr_rf_write, ptr @__tracepoint_ptr_set_key, ptr @__tracepoint_ptr_set_shared_key, ptr @__tracepoint_ptr_temp_mode, ptr @__tracepoint_read_temp, ptr @__tracepoint_reg_read, ptr @__tracepoint_reg_write, ptr @__tracepoint_rf_read, ptr @__tracepoint_rf_write, ptr @__tracepoint_set_key, ptr @__tracepoint_set_shared_key, ptr @__tracepoint_temp_mode, ptr @event_bbp_read, ptr @event_bbp_write, ptr @event_class_dev_bbp_reg_evt, ptr @event_class_dev_reg_evtu, ptr @event_class_dev_rf_reg_evt, ptr @event_class_dev_simple_evt, ptr @event_class_ee_read, ptr @event_class_freq_cal_offset, ptr @event_class_mt_mcu_msg_send, ptr @event_class_mt_rx, ptr @event_class_mt_rx_dma_aggr, ptr @event_class_mt_submit_urb, ptr @event_class_mt_tx, ptr @event_class_mt_tx_dma_done, ptr @event_class_mt_tx_status, ptr @event_class_mt_tx_status_cleaned, ptr @event_class_mt_vend_req, ptr @event_class_set_shared_key, ptr @event_ee_read, ptr @event_freq_cal_adjust, ptr @event_freq_cal_offset, ptr @event_mt_mcu_msg_send, ptr @event_mt_rx, ptr @event_mt_rx_dma_aggr, ptr @event_mt_submit_urb, ptr @event_mt_tx, ptr @event_mt_tx_dma_done, ptr @event_mt_tx_status, ptr @event_mt_tx_status_cleaned, ptr @event_mt_vend_req, ptr @event_read_temp, ptr @event_reg_read, ptr @event_reg_write, ptr @event_rf_read, ptr @event_rf_write, ptr @event_set_key, ptr @event_set_shared_key, ptr @event_temp_mode, ptr @str__mt7601u__trace_system_name, ptr @trace_event_fields_dev_reg_evtu, ptr @trace_event_type_funcs_dev_reg_evtu, ptr @print_fmt_dev_reg_evtu, ptr @trace_event_fields_mt_submit_urb, ptr @trace_event_type_funcs_mt_submit_urb, ptr @print_fmt_mt_submit_urb, ptr @trace_event_fields_mt_mcu_msg_send, ptr @trace_event_type_funcs_mt_mcu_msg_send, ptr @print_fmt_mt_mcu_msg_send, ptr @trace_event_fields_mt_vend_req, ptr @trace_event_type_funcs_mt_vend_req, ptr @print_fmt_mt_vend_req, ptr @trace_event_fields_ee_read, ptr @trace_event_type_funcs_ee_read, ptr @print_fmt_ee_read, ptr @trace_event_fields_dev_rf_reg_evt, ptr @trace_event_type_funcs_dev_rf_reg_evt, ptr @print_fmt_dev_rf_reg_evt, ptr @trace_event_fields_dev_bbp_reg_evt, ptr @trace_event_type_funcs_dev_bbp_reg_evt, ptr @print_fmt_dev_bbp_reg_evt, ptr @trace_event_fields_dev_simple_evt, ptr @trace_event_type_funcs_dev_simple_evt, ptr @print_fmt_dev_simple_evt, ptr @trace_event_fields_freq_cal_offset, ptr @trace_event_type_funcs_freq_cal_offset, ptr @print_fmt_freq_cal_offset, ptr @trace_event_fields_mt_rx, ptr @trace_event_type_funcs_mt_rx, ptr @print_fmt_mt_rx, ptr @trace_event_fields_mt_tx, ptr @trace_event_type_funcs_mt_tx, ptr @print_fmt_mt_tx, ptr @trace_event_fields_mt_tx_dma_done, ptr @trace_event_type_funcs_mt_tx_dma_done, ptr @print_fmt_mt_tx_dma_done, ptr @trace_event_fields_mt_tx_status_cleaned, ptr @trace_event_type_funcs_mt_tx_status_cleaned, ptr @print_fmt_mt_tx_status_cleaned, ptr @trace_event_fields_mt_tx_status, ptr @trace_event_type_funcs_mt_tx_status, ptr @print_fmt_mt_tx_status, ptr @trace_event_fields_mt_rx_dma_aggr, ptr @trace_event_type_funcs_mt_rx_dma_aggr, ptr @print_fmt_mt_rx_dma_aggr, ptr @trace_event_fields_set_shared_key, ptr @trace_event_type_funcs_set_shared_key, ptr @print_fmt_set_shared_key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mt7601u__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dev_reg_evtu to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dev_reg_evtu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dev_reg_evtu to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_reg_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_reg_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_submit_urb to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_submit_urb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_submit_urb to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_submit_urb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_mcu_msg_send to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_mcu_msg_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_mcu_msg_send to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_mcu_msg_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_vend_req to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_vend_req to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_vend_req to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_vend_req to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ee_read to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ee_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ee_read to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ee_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dev_rf_reg_evt to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dev_rf_reg_evt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dev_rf_reg_evt to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rf_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rf_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dev_bbp_reg_evt to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dev_bbp_reg_evt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dev_bbp_reg_evt to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bbp_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bbp_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dev_simple_evt to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dev_simple_evt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dev_simple_evt to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_temp_mode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_read_temp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_freq_cal_adjust to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_freq_cal_offset to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_freq_cal_offset to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_freq_cal_offset to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_freq_cal_offset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_rx to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_rx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_rx to i32), i32 646, i32 832, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_tx to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_tx to i32), i32 354, i32 448, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_tx_dma_done to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_tx_dma_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_tx_dma_done to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_tx_dma_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_tx_status_cleaned to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_tx_status_cleaned to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_tx_status_cleaned to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_tx_status_cleaned to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_tx_status to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_tx_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_tx_status to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_tx_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mt_rx_dma_aggr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mt_rx_dma_aggr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mt_rx_dma_aggr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mt_rx_dma_aggr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_set_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_set_shared_key to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_set_shared_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_set_shared_key to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_set_shared_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_reg_read(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_reg_read, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #7
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
define dso_local i32 @__traceiter_reg_write(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_reg_write, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #7
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
define dso_local i32 @__traceiter_mt_submit_urb(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %u) #7
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
define dso_local i32 @__traceiter_mt_mcu_msg_send(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %skb, i32 noundef %csum, i1 noundef zeroext %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_mcu_msg_send, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %skb, i32 noundef %csum, i1 noundef zeroext %resp) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_mt_vend_req(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_vend_req, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) #7
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
define dso_local i32 @__traceiter_ee_read(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ee_read, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i16 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_rf_read(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rf_read, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_rf_write(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rf_write, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_bbp_read(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bbp_read, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_bbp_write(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bbp_write, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_temp_mode(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_temp_mode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_read_temp(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_read_temp, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_freq_cal_adjust(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_freq_cal_adjust, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_freq_cal_offset(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_freq_cal_offset, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) #7
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
define dso_local i32 @__traceiter_mt_rx(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %rxwi, i32 noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_rx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %rxwi, i32 noundef %f) #7
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
define dso_local i32 @__traceiter_mt_tx(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %skb, ptr noundef %sta, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_tx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %skb, ptr noundef %sta, ptr noundef %h) #7
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
define dso_local i32 @__traceiter_mt_tx_dma_done(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_tx_dma_done, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %skb) #7
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
define dso_local i32 @__traceiter_mt_tx_status_cleaned(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %cleaned) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_tx_status_cleaned, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %cleaned) #7
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
define dso_local i32 @__traceiter_mt_tx_status(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %stat1, i32 noundef %stat2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_tx_status, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %stat1, i32 noundef %stat2) #7
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
define dso_local i32 @__traceiter_mt_rx_dma_aggr(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %cnt, i1 noundef zeroext %paged) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mt_rx_dma_aggr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %cnt, i1 noundef zeroext %paged) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_set_key(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_set_key, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %val) #7
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
define dso_local i32 @__traceiter_set_shared_key(ptr nocapture readnone %__data, ptr noundef %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_set_shared_key, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) #7
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
define internal void @trace_event_raw_event_dev_reg_evtu(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %reg8 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %reg8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %reg, ptr %reg8, align 4
  %val9 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %val9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %val, ptr %val9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dev_reg_evtu(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %reg19 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %reg19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %reg, ptr %reg19, align 4
  %val20 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %val, ptr %val20, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_submit_urb(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %u) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %pipe = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 10
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe, align 4
  %pipe8 = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %pipe8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pipe8, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_buffer_length, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_submit_urb(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %pipe = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 10
  %35 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe, align 4
  %pipe19 = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %pipe19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pipe19, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transfer_buffer_length, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %len, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_mcu_msg_send(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %skb, i32 noundef %csum, i1 noundef zeroext %resp) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %resp to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 52) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wiphy_name.exit_crit_edge

if.end6.wiphy_name.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end6.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end6.wiphy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %info = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call3, i32 0, i32 2
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %info, align 4
  %csum9 = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %csum9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %csum, ptr %csum9, align 4
  %resp11 = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %resp11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %resp11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_mcu_msg_send(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %skb, i32 noundef %csum, i1 noundef zeroext %resp) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %resp to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wiphy_name.exit_crit_edge

if.end17.wiphy_name.exit_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end17.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end17.wiphy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %info = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call14, i32 0, i32 2
  %39 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %info, align 4
  %csum20 = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call14, i32 0, i32 3
  %40 = ptrtoint ptr %csum20 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %csum, ptr %csum20, align 4
  %resp22 = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %call14, i32 0, i32 4
  %41 = ptrtoint ptr %resp22 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool, ptr %resp22, align 4
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 52, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_vend_req(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 64) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %pipe8 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %pipe8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pipe, ptr %pipe8, align 4
  %req9 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %req9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %req, ptr %req9, align 4
  %req_type10 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %req_type10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %req_type, ptr %req_type10, align 1
  %val11 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %val11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %val, ptr %val11, align 2
  %offset12 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 6
  %15 = ptrtoint ptr %offset12 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %offset, ptr %offset12, align 4
  %buf13 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 7
  %16 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf13, align 4
  %buflen14 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 8
  %17 = ptrtoint ptr %buflen14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %buflen, ptr %buflen14, align 4
  %ret15 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call3, i32 0, i32 9
  %18 = ptrtoint ptr %ret15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ret, ptr %ret15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_vend_req(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %pipe19 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %pipe19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %pipe, ptr %pipe19, align 4
  %req20 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %req20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %req, ptr %req20, align 4
  %req_type21 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %req_type21 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %req_type, ptr %req_type21, align 1
  %val22 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %val22 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %val, ptr %val22, align 2
  %offset23 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 6
  %39 = ptrtoint ptr %offset23 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %offset, ptr %offset23, align 4
  %buf24 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 7
  %40 = ptrtoint ptr %buf24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf, ptr %buf24, align 4
  %buflen25 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 8
  %41 = ptrtoint ptr %buflen25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %buflen, ptr %buflen25, align 4
  %ret26 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %call13, i32 0, i32 9
  %42 = ptrtoint ptr %ret26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %ret, ptr %ret26, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ee_read(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %offset, i16 noundef zeroext %val) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %o = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %offset, ptr %o, align 4
  %v = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %val, ptr %v, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ee_read(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %offset, i16 noundef zeroext %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %o = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %offset, ptr %o, align 4
  %v = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %val, ptr %v, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dev_rf_reg_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %reg8 = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg, ptr %reg8, align 1
  %val9 = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %val9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %val, ptr %val9, align 2
  %bank10 = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %bank10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bank, ptr %bank10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dev_rf_reg_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %reg19 = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %reg19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %reg, ptr %reg19, align 1
  %val20 = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %val20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %val, ptr %val20, align 2
  %bank21 = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %bank21 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bank, ptr %bank21, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dev_bbp_reg_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %reg8 = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg, ptr %reg8, align 4
  %val9 = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %val9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %val, ptr %val9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dev_bbp_reg_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %reg19 = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %reg19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %reg, ptr %reg19, align 4
  %val20 = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %val20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %val, ptr %val20, align 1
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dev_simple_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %val) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_simple_evt, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %val8 = getelementptr inbounds %struct.trace_event_raw_dev_simple_evt, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %val, ptr %val8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dev_simple_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_simple_evt, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %val19 = getelementptr inbounds %struct.trace_event_raw_dev_simple_evt, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %val, ptr %val19, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_freq_cal_offset(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %phy_mode8 = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %phy_mode8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %phy_mode, ptr %phy_mode8, align 4
  %freq_off9 = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %freq_off9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %freq_off, ptr %freq_off9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_freq_cal_offset(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %phy_mode19 = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %phy_mode19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %phy_mode, ptr %phy_mode19, align 4
  %freq_off20 = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %freq_off20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %freq_off, ptr %freq_off20, align 1
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_rx(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rxwi, i32 noundef %f) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %rxwi8 = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %call3, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %rxwi8, ptr %rxwi, i32 28)
  %fce_info = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %fce_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %f, ptr %fce_info, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_rx(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rxwi, i32 noundef %f) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %rxwi19 = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %call13, i32 0, i32 2
  %35 = call ptr @memcpy(ptr %rxwi19, ptr %rxwi, i32 28)
  %fce_info = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %fce_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %f, ptr %fce_info, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 76, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_tx(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %skb, ptr noundef %sta, ptr nocapture noundef readonly %h) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 68) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %h8 = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call3, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %h8, ptr %h, i32 20)
  %skb9 = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %skb9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %skb, ptr %skb9, align 4
  %sta10 = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %sta10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sta, ptr %sta10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_tx(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %skb, ptr noundef %sta, ptr nocapture noundef readonly %h) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %h19 = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call13, i32 0, i32 2
  %35 = call ptr @memcpy(ptr %h19, ptr %h, i32 20)
  %skb20 = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %skb20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %skb, ptr %skb20, align 4
  %sta21 = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %sta21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sta, ptr %sta21, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_tx_dma_done(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_dma_done, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %skb8 = getelementptr inbounds %struct.trace_event_raw_mt_tx_dma_done, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %skb8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %skb8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_tx_dma_done(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_dma_done, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %skb19 = getelementptr inbounds %struct.trace_event_raw_mt_tx_dma_done, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %skb19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %skb, ptr %skb19, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_tx_status_cleaned(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %cleaned) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_status_cleaned, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %cleaned8 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status_cleaned, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %cleaned8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cleaned, ptr %cleaned8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_tx_status_cleaned(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %cleaned) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_status_cleaned, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %cleaned19 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status_cleaned, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %cleaned19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cleaned, ptr %cleaned19, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_tx_status(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %stat1, i32 noundef %stat2) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %stat18 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %stat18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %stat1, ptr %stat18, align 4
  %stat29 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %stat29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %stat2, ptr %stat29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_tx_status(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %stat1, i32 noundef %stat2) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %stat119 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %stat119 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %stat1, ptr %stat119, align 4
  %stat220 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %stat220 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %stat2, ptr %stat220, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mt_rx_dma_aggr(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %cnt, i1 noundef zeroext %paged) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %paged to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wiphy_name.exit_crit_edge

if.end6.wiphy_name.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end6.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end6.wiphy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %conv = trunc i32 %cnt to i8
  %cnt9 = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %cnt9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %cnt9, align 4
  %paged11 = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %paged11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %paged11, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mt_rx_dma_aggr(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %cnt, i1 noundef zeroext %paged) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %paged to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wiphy_name.exit_crit_edge

if.end17.wiphy_name.exit_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end17.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end17.wiphy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %conv = trunc i32 %cnt to i8
  %cnt20 = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %call14, i32 0, i32 2
  %35 = ptrtoint ptr %cnt20 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %cnt20, align 4
  %paged22 = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %call14, i32 0, i32 3
  %36 = ptrtoint ptr %paged22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %paged22, align 1
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_set_shared_key(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %vid8 = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %vid8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %vid, ptr %vid8, align 4
  %key9 = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %key9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %key, ptr %key9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_set_shared_key(ptr noundef %__data, ptr nocapture noundef readonly %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !305) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !305) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %vid19 = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %vid19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %vid, ptr %vid19, align 4
  %key20 = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %key20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %key, ptr %key20, align 1
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dev_reg_evtu(ptr noundef %__data, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %reg to i64
  %conv8 = zext i32 %val to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_submit_urb(ptr noundef %__data, ptr noundef %dev, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %u to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_mcu_msg_send(ptr noundef %__data, ptr noundef %dev, ptr noundef %skb, i32 noundef %csum, i1 noundef zeroext %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %csum to i64
  %conv13 = zext i1 %resp to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv13) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_vend_req(ptr noundef %__data, ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %pipe to i64
  %conv8 = zext i8 %req to i64
  %conv12 = zext i8 %req_type to i64
  %conv16 = zext i16 %val to i64
  %conv20 = zext i16 %offset to i64
  %1 = ptrtoint ptr %buf to i32
  %conv24 = zext i32 %1 to i64
  %conv28 = zext i32 %buflen to i64
  %conv32 = zext i32 %ret to i64
  tail call void @bpf_trace_run9(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24, i64 noundef %conv28, i64 noundef %conv32) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ee_read(ptr noundef %__data, ptr noundef %dev, i32 noundef %offset, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %offset to i64
  %conv8 = zext i16 %val to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dev_rf_reg_evt(ptr noundef %__data, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %bank to i64
  %conv8 = zext i8 %reg to i64
  %conv12 = zext i8 %val to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dev_bbp_reg_evt(ptr noundef %__data, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %reg to i64
  %conv8 = zext i8 %val to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dev_simple_evt(ptr noundef %__data, ptr noundef %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %val to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_freq_cal_offset(ptr noundef %__data, ptr noundef %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %phy_mode to i64
  %conv8 = zext i8 %freq_off to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_rx(ptr noundef %__data, ptr noundef %dev, ptr noundef %rxwi, i32 noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %rxwi to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %f to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_tx(ptr noundef %__data, ptr noundef %dev, ptr noundef %skb, ptr noundef %sta, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %sta to i32
  %conv8 = zext i32 %2 to i64
  %3 = ptrtoint ptr %h to i32
  %conv12 = zext i32 %3 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_tx_dma_done(ptr noundef %__data, ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_tx_status_cleaned(ptr noundef %__data, ptr noundef %dev, i32 noundef %cleaned) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %cleaned to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_tx_status(ptr noundef %__data, ptr noundef %dev, i32 noundef %stat1, i32 noundef %stat2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %stat1 to i64
  %conv8 = zext i32 %stat2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mt_rx_dma_aggr(ptr noundef %__data, ptr noundef %dev, i32 noundef %cnt, i1 noundef zeroext %paged) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %cnt to i64
  %conv9 = zext i1 %paged to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_set_shared_key(ptr noundef %__data, ptr noundef %dev, i8 noundef zeroext %vid, i8 noundef zeroext %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %vid to i64
  %conv8 = zext i8 %key to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dev_reg_evtu(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %1, i32 0, i32 1
  %reg = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %val = getelementptr inbounds %struct.trace_event_raw_dev_reg_evtu, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5) #7
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
define internal i32 @trace_raw_output_mt_submit_urb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %1, i32 0, i32 1
  %pipe = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_mt_submit_urb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_mcu_msg_send(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %1, i32 0, i32 1
  %info = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %csum = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csum, align 4
  %resp = getelementptr inbounds %struct.trace_event_raw_mt_mcu_msg_send, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %resp, align 4, !range !318
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5, i32 noundef %8) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_vend_req(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 1
  %ret1 = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret1, align 4
  %pipe = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %req = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %req, align 4
  %conv = zext i8 %7 to i32
  %req_type = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %req_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_type, align 1
  %conv2 = zext i8 %9 to i32
  %val = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val, align 2
  %conv3 = zext i16 %11 to i32
  %offset = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %conv4 = zext i16 %13 to i32
  %buf = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %tobool = icmp ne ptr %15, null
  %lnot.ext = zext i1 %tobool to i32
  %buflen = getelementptr inbounds %struct.trace_event_raw_mt_vend_req, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buflen, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %lnot.ext, i32 noundef %17) #7
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ee_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %1, i32 0, i32 1
  %o = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %o to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %o, align 4
  %v = getelementptr inbounds %struct.trace_event_raw_ee_read, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %v, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %conv) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dev_rf_reg_evt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %1, i32 0, i32 1
  %bank = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank, align 4
  %conv = zext i8 %3 to i32
  %reg = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg, align 1
  %conv1 = zext i8 %5 to i32
  %val = getelementptr inbounds %struct.trace_event_raw_dev_rf_reg_evt, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 2
  %conv2 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, ptr noundef %wiphy_name, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dev_bbp_reg_evt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %1, i32 0, i32 1
  %reg = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg, align 4
  %conv = zext i8 %3 to i32
  %val = getelementptr inbounds %struct.trace_event_raw_dev_bbp_reg_evt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %conv1 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %wiphy_name, i32 noundef %conv, i32 noundef %conv1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dev_simple_evt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_simple_evt, ptr %1, i32 0, i32 1
  %val = getelementptr inbounds %struct.trace_event_raw_dev_simple_evt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.32, ptr noundef %wiphy_name, i32 noundef %conv) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_freq_cal_offset(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %1, i32 0, i32 1
  %phy_mode = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_mode, align 4
  %conv = zext i8 %3 to i32
  %freq_off = getelementptr inbounds %struct.trace_event_raw_freq_cal_offset, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %freq_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %freq_off, align 1
  %conv1 = sext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, ptr noundef %wiphy_name, i32 noundef %conv, i32 noundef %conv1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_rx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 1
  %rxwi = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rxwi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxwi, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %ctl = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %frag_sn = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %frag_sn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %frag_sn, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %rate = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rate, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv4 = zext i16 %13 to i32
  %unknown = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %unknown to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %unknown, align 4
  %conv6 = zext i8 %15 to i32
  %zero = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %zero to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %zero, align 1
  %conv8 = zext i8 %17 to i32
  %arrayidx11 = getelementptr %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  %arrayidx15 = getelementptr %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 5, i32 2
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %snr = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %snr, align 4
  %conv18 = zext i8 %23 to i32
  %ant = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 7
  %24 = ptrtoint ptr %ant to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ant, align 1
  %conv20 = zext i8 %25 to i32
  %gain = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 8
  %26 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gain, align 2
  %conv22 = zext i8 %27 to i32
  %freq_off = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 9
  %28 = ptrtoint ptr %freq_off to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %freq_off, align 1
  %conv24 = zext i8 %29 to i32
  %resv2 = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 10
  %30 = ptrtoint ptr %resv2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resv2, align 4
  %expert_ant = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %expert_ant to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %expert_ant, align 4
  %fce_info = getelementptr inbounds %struct.trace_event_raw_mt_rx, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %fce_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fce_info, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, ptr noundef %wiphy_name, i32 noundef %4, i32 noundef %7, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv12, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %31, i32 noundef %33, i32 noundef %35) #7
  %call27 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_tx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 1
  %skb = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %sta = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta, align 4
  %h = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %h, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %rate_ctl = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %rate_ctl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rate_ctl, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv3 = zext i16 %11 to i32
  %ack_ctl = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %ack_ctl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ack_ctl, align 4
  %conv5 = zext i8 %13 to i32
  %wcid = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %wcid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wcid, align 1
  %conv7 = zext i8 %15 to i32
  %len_ctl = getelementptr inbounds %struct.trace_event_raw_mt_tx, ptr %1, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %len_ctl to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len_ctl, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv9 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, ptr noundef %wiphy_name, ptr noundef %3, ptr noundef %5, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9) #7
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_tx_dma_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_dma_done, ptr %1, i32 0, i32 1
  %skb = getelementptr inbounds %struct.trace_event_raw_mt_tx_dma_done, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.48, ptr noundef %wiphy_name, ptr noundef %3) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_tx_status_cleaned(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_status_cleaned, ptr %1, i32 0, i32 1
  %cleaned = getelementptr inbounds %struct.trace_event_raw_mt_tx_status_cleaned, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cleaned, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.50, ptr noundef %wiphy_name, i32 noundef %3) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_tx_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %1, i32 0, i32 1
  %stat1 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stat1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stat1, align 4
  %stat2 = getelementptr inbounds %struct.trace_event_raw_mt_tx_status, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stat2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat2, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.53, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mt_rx_dma_aggr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %1, i32 0, i32 1
  %cnt = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 4
  %conv = zext i8 %3 to i32
  %paged = getelementptr inbounds %struct.trace_event_raw_mt_rx_dma_aggr, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %paged to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %paged, align 1, !range !318
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.56, ptr noundef %wiphy_name, i32 noundef %conv, i32 noundef %6) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_set_shared_key(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %1, i32 0, i32 1
  %vid = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid, align 4
  %conv = zext i8 %3 to i32
  %key = getelementptr inbounds %struct.trace_event_raw_set_shared_key, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %key, align 1
  %conv1 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, ptr noundef %wiphy_name, i32 noundef %conv, i32 noundef %conv1) #7
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run9(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!llvm.named.register.sp = !{!305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__tracepoint_reg_read, !1, !"__tracepoint_reg_read", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 46, i32 1}
!2 = !{ptr @__tracepoint_ptr_reg_read, !1, !"__tracepoint_ptr_reg_read", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_reg_read, !1, !"__SCK__tp_func_reg_read", i1 false, i1 false}
!4 = !{ptr @__tracepoint_reg_write, !5, !"__tracepoint_reg_write", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 51, i32 1}
!6 = !{ptr @__tracepoint_ptr_reg_write, !5, !"__tracepoint_ptr_reg_write", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_reg_write, !5, !"__SCK__tp_func_reg_write", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mt_submit_urb, !9, !"__tracepoint_mt_submit_urb", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 56, i32 1}
!10 = !{ptr @__tracepoint_ptr_mt_submit_urb, !9, !"__tracepoint_ptr_mt_submit_urb", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mt_submit_urb, !9, !"__SCK__tp_func_mt_submit_urb", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mt_mcu_msg_send, !13, !"__tracepoint_mt_mcu_msg_send", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 78, i32 1}
!14 = !{ptr @__tracepoint_ptr_mt_mcu_msg_send, !13, !"__tracepoint_ptr_mt_mcu_msg_send", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mt_mcu_msg_send, !13, !"__SCK__tp_func_mt_mcu_msg_send", i1 false, i1 false}
!16 = !{ptr @__tracepoint_mt_vend_req, !17, !"__tracepoint_mt_vend_req", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 98, i32 1}
!18 = !{ptr @__tracepoint_ptr_mt_vend_req, !17, !"__tracepoint_ptr_mt_vend_req", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_mt_vend_req, !17, !"__SCK__tp_func_mt_vend_req", i1 false, i1 false}
!20 = !{ptr @__tracepoint_ee_read, !21, !"__tracepoint_ee_read", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 126, i32 1}
!22 = !{ptr @__tracepoint_ptr_ee_read, !21, !"__tracepoint_ptr_ee_read", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_ee_read, !21, !"__SCK__tp_func_ee_read", i1 false, i1 false}
!24 = !{ptr @__tracepoint_rf_read, !25, !"__tracepoint_rf_read", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 161, i32 1}
!26 = !{ptr @__tracepoint_ptr_rf_read, !25, !"__tracepoint_ptr_rf_read", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_rf_read, !25, !"__SCK__tp_func_rf_read", i1 false, i1 false}
!28 = !{ptr @__tracepoint_rf_write, !29, !"__tracepoint_rf_write", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 166, i32 1}
!30 = !{ptr @__tracepoint_ptr_rf_write, !29, !"__tracepoint_ptr_rf_write", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_rf_write, !29, !"__SCK__tp_func_rf_write", i1 false, i1 false}
!32 = !{ptr @__tracepoint_bbp_read, !33, !"__tracepoint_bbp_read", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 189, i32 1}
!34 = !{ptr @__tracepoint_ptr_bbp_read, !33, !"__tracepoint_ptr_bbp_read", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_bbp_read, !33, !"__SCK__tp_func_bbp_read", i1 false, i1 false}
!36 = !{ptr @__tracepoint_bbp_write, !37, !"__tracepoint_bbp_write", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 194, i32 1}
!38 = !{ptr @__tracepoint_ptr_bbp_write, !37, !"__tracepoint_ptr_bbp_write", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_bbp_write, !37, !"__SCK__tp_func_bbp_write", i1 false, i1 false}
!40 = !{ptr @__tracepoint_temp_mode, !41, !"__tracepoint_temp_mode", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 215, i32 1}
!42 = !{ptr @__tracepoint_ptr_temp_mode, !41, !"__tracepoint_ptr_temp_mode", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_temp_mode, !41, !"__SCK__tp_func_temp_mode", i1 false, i1 false}
!44 = !{ptr @__tracepoint_read_temp, !45, !"__tracepoint_read_temp", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 220, i32 1}
!46 = !{ptr @__tracepoint_ptr_read_temp, !45, !"__tracepoint_ptr_read_temp", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_read_temp, !45, !"__SCK__tp_func_read_temp", i1 false, i1 false}
!48 = !{ptr @__tracepoint_freq_cal_adjust, !49, !"__tracepoint_freq_cal_adjust", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 225, i32 1}
!50 = !{ptr @__tracepoint_ptr_freq_cal_adjust, !49, !"__tracepoint_ptr_freq_cal_adjust", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_freq_cal_adjust, !49, !"__SCK__tp_func_freq_cal_adjust", i1 false, i1 false}
!52 = !{ptr @__tracepoint_freq_cal_offset, !53, !"__tracepoint_freq_cal_offset", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 230, i32 1}
!54 = !{ptr @__tracepoint_ptr_freq_cal_offset, !53, !"__tracepoint_ptr_freq_cal_offset", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_freq_cal_offset, !53, !"__SCK__tp_func_freq_cal_offset", i1 false, i1 false}
!56 = !{ptr @__tracepoint_mt_rx, !57, !"__tracepoint_mt_rx", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 247, i32 1}
!58 = !{ptr @__tracepoint_ptr_mt_rx, !57, !"__tracepoint_ptr_mt_rx", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_mt_rx, !57, !"__SCK__tp_func_mt_rx", i1 false, i1 false}
!60 = !{ptr @__tracepoint_mt_tx, !61, !"__tracepoint_mt_tx", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 277, i32 1}
!62 = !{ptr @__tracepoint_ptr_mt_tx, !61, !"__tracepoint_ptr_mt_tx", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_mt_tx, !61, !"__SCK__tp_func_mt_tx", i1 false, i1 false}
!64 = !{ptr @__tracepoint_mt_tx_dma_done, !65, !"__tracepoint_mt_tx_dma_done", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 302, i32 1}
!66 = !{ptr @__tracepoint_ptr_mt_tx_dma_done, !65, !"__tracepoint_ptr_mt_tx_dma_done", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_mt_tx_dma_done, !65, !"__SCK__tp_func_mt_tx_dma_done", i1 false, i1 false}
!68 = !{ptr @__tracepoint_mt_tx_status_cleaned, !69, !"__tracepoint_mt_tx_status_cleaned", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 316, i32 1}
!70 = !{ptr @__tracepoint_ptr_mt_tx_status_cleaned, !69, !"__tracepoint_ptr_mt_tx_status_cleaned", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_mt_tx_status_cleaned, !69, !"__SCK__tp_func_mt_tx_status_cleaned", i1 false, i1 false}
!72 = !{ptr @__tracepoint_mt_tx_status, !73, !"__tracepoint_mt_tx_status", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 330, i32 1}
!74 = !{ptr @__tracepoint_ptr_mt_tx_status, !73, !"__tracepoint_ptr_mt_tx_status", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_mt_tx_status, !73, !"__SCK__tp_func_mt_tx_status", i1 false, i1 false}
!76 = !{ptr @__tracepoint_mt_rx_dma_aggr, !77, !"__tracepoint_mt_rx_dma_aggr", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 346, i32 1}
!78 = !{ptr @__tracepoint_ptr_mt_rx_dma_aggr, !77, !"__tracepoint_ptr_mt_rx_dma_aggr", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_mt_rx_dma_aggr, !77, !"__SCK__tp_func_mt_rx_dma_aggr", i1 false, i1 false}
!80 = !{ptr @__tracepoint_set_key, !81, !"__tracepoint_set_key", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 363, i32 1}
!82 = !{ptr @__tracepoint_ptr_set_key, !81, !"__tracepoint_ptr_set_key", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_set_key, !81, !"__SCK__tp_func_set_key", i1 false, i1 false}
!84 = !{ptr @__tracepoint_set_shared_key, !85, !"__tracepoint_set_shared_key", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 368, i32 1}
!86 = !{ptr @__tracepoint_ptr_set_shared_key, !85, !"__tracepoint_ptr_set_shared_key", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_set_shared_key, !85, !"__SCK__tp_func_set_shared_key", i1 false, i1 false}
!88 = !{ptr @event_class_dev_reg_evtu, !89, !"event_class_dev_reg_evtu", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 29, i32 1}
!90 = !{ptr @event_reg_read, !1, !"event_reg_read", i1 false, i1 false}
!91 = !{ptr @__event_reg_read, !1, !"__event_reg_read", i1 false, i1 false}
!92 = !{ptr @event_reg_write, !5, !"event_reg_write", i1 false, i1 false}
!93 = !{ptr @__event_reg_write, !5, !"__event_reg_write", i1 false, i1 false}
!94 = !{ptr @event_class_mt_submit_urb, !9, !"event_class_mt_submit_urb", i1 false, i1 false}
!95 = !{ptr @event_mt_submit_urb, !9, !"event_mt_submit_urb", i1 false, i1 false}
!96 = !{ptr @__event_mt_submit_urb, !9, !"__event_mt_submit_urb", i1 false, i1 false}
!97 = !{ptr @event_class_mt_mcu_msg_send, !13, !"event_class_mt_mcu_msg_send", i1 false, i1 false}
!98 = !{ptr @event_mt_mcu_msg_send, !13, !"event_mt_mcu_msg_send", i1 false, i1 false}
!99 = !{ptr @__event_mt_mcu_msg_send, !13, !"__event_mt_mcu_msg_send", i1 false, i1 false}
!100 = !{ptr @event_class_mt_vend_req, !17, !"event_class_mt_vend_req", i1 false, i1 false}
!101 = !{ptr @event_mt_vend_req, !17, !"event_mt_vend_req", i1 false, i1 false}
!102 = !{ptr @__event_mt_vend_req, !17, !"__event_mt_vend_req", i1 false, i1 false}
!103 = !{ptr @event_class_ee_read, !21, !"event_class_ee_read", i1 false, i1 false}
!104 = !{ptr @event_ee_read, !21, !"event_ee_read", i1 false, i1 false}
!105 = !{ptr @__event_ee_read, !21, !"__event_ee_read", i1 false, i1 false}
!106 = !{ptr @event_class_dev_rf_reg_evt, !107, !"event_class_dev_rf_reg_evt", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 141, i32 1}
!108 = !{ptr @event_rf_read, !25, !"event_rf_read", i1 false, i1 false}
!109 = !{ptr @__event_rf_read, !25, !"__event_rf_read", i1 false, i1 false}
!110 = !{ptr @event_rf_write, !29, !"event_rf_write", i1 false, i1 false}
!111 = !{ptr @__event_rf_write, !29, !"__event_rf_write", i1 false, i1 false}
!112 = !{ptr @event_class_dev_bbp_reg_evt, !113, !"event_class_dev_bbp_reg_evt", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 171, i32 1}
!114 = !{ptr @event_bbp_read, !33, !"event_bbp_read", i1 false, i1 false}
!115 = !{ptr @__event_bbp_read, !33, !"__event_bbp_read", i1 false, i1 false}
!116 = !{ptr @event_bbp_write, !37, !"event_bbp_write", i1 false, i1 false}
!117 = !{ptr @__event_bbp_write, !37, !"__event_bbp_write", i1 false, i1 false}
!118 = !{ptr @event_class_dev_simple_evt, !119, !"event_class_dev_simple_evt", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/mediatek/mt7601u/./trace.h", i32 199, i32 1}
!120 = !{ptr @event_temp_mode, !41, !"event_temp_mode", i1 false, i1 false}
!121 = !{ptr @__event_temp_mode, !41, !"__event_temp_mode", i1 false, i1 false}
!122 = !{ptr @event_read_temp, !45, !"event_read_temp", i1 false, i1 false}
!123 = !{ptr @__event_read_temp, !45, !"__event_read_temp", i1 false, i1 false}
!124 = !{ptr @event_freq_cal_adjust, !49, !"event_freq_cal_adjust", i1 false, i1 false}
!125 = !{ptr @__event_freq_cal_adjust, !49, !"__event_freq_cal_adjust", i1 false, i1 false}
!126 = !{ptr @event_class_freq_cal_offset, !53, !"event_class_freq_cal_offset", i1 false, i1 false}
!127 = !{ptr @event_freq_cal_offset, !53, !"event_freq_cal_offset", i1 false, i1 false}
!128 = !{ptr @__event_freq_cal_offset, !53, !"__event_freq_cal_offset", i1 false, i1 false}
!129 = !{ptr @event_class_mt_rx, !57, !"event_class_mt_rx", i1 false, i1 false}
!130 = !{ptr @event_mt_rx, !57, !"event_mt_rx", i1 false, i1 false}
!131 = !{ptr @__event_mt_rx, !57, !"__event_mt_rx", i1 false, i1 false}
!132 = !{ptr @event_class_mt_tx, !61, !"event_class_mt_tx", i1 false, i1 false}
!133 = !{ptr @event_mt_tx, !61, !"event_mt_tx", i1 false, i1 false}
!134 = !{ptr @__event_mt_tx, !61, !"__event_mt_tx", i1 false, i1 false}
!135 = !{ptr @event_class_mt_tx_dma_done, !65, !"event_class_mt_tx_dma_done", i1 false, i1 false}
!136 = !{ptr @event_mt_tx_dma_done, !65, !"event_mt_tx_dma_done", i1 false, i1 false}
!137 = !{ptr @__event_mt_tx_dma_done, !65, !"__event_mt_tx_dma_done", i1 false, i1 false}
!138 = !{ptr @event_class_mt_tx_status_cleaned, !69, !"event_class_mt_tx_status_cleaned", i1 false, i1 false}
!139 = !{ptr @event_mt_tx_status_cleaned, !69, !"event_mt_tx_status_cleaned", i1 false, i1 false}
!140 = !{ptr @__event_mt_tx_status_cleaned, !69, !"__event_mt_tx_status_cleaned", i1 false, i1 false}
!141 = !{ptr @event_class_mt_tx_status, !73, !"event_class_mt_tx_status", i1 false, i1 false}
!142 = !{ptr @event_mt_tx_status, !73, !"event_mt_tx_status", i1 false, i1 false}
!143 = !{ptr @__event_mt_tx_status, !73, !"__event_mt_tx_status", i1 false, i1 false}
!144 = !{ptr @event_class_mt_rx_dma_aggr, !77, !"event_class_mt_rx_dma_aggr", i1 false, i1 false}
!145 = !{ptr @event_mt_rx_dma_aggr, !77, !"event_mt_rx_dma_aggr", i1 false, i1 false}
!146 = !{ptr @__event_mt_rx_dma_aggr, !77, !"__event_mt_rx_dma_aggr", i1 false, i1 false}
!147 = !{ptr @event_set_key, !81, !"event_set_key", i1 false, i1 false}
!148 = !{ptr @__event_set_key, !81, !"__event_set_key", i1 false, i1 false}
!149 = !{ptr @event_class_set_shared_key, !85, !"event_class_set_shared_key", i1 false, i1 false}
!150 = !{ptr @event_set_shared_key, !85, !"event_set_shared_key", i1 false, i1 false}
!151 = !{ptr @__event_set_shared_key, !85, !"__event_set_shared_key", i1 false, i1 false}
!152 = !{ptr @__bpf_trace_tp_map_reg_read, !1, !"__bpf_trace_tp_map_reg_read", i1 false, i1 false}
!153 = !{ptr @__bpf_trace_tp_map_reg_write, !5, !"__bpf_trace_tp_map_reg_write", i1 false, i1 false}
!154 = !{ptr @__bpf_trace_tp_map_mt_submit_urb, !9, !"__bpf_trace_tp_map_mt_submit_urb", i1 false, i1 false}
!155 = !{ptr @__bpf_trace_tp_map_mt_mcu_msg_send, !13, !"__bpf_trace_tp_map_mt_mcu_msg_send", i1 false, i1 false}
!156 = !{ptr @__bpf_trace_tp_map_mt_vend_req, !17, !"__bpf_trace_tp_map_mt_vend_req", i1 false, i1 false}
!157 = !{ptr @__bpf_trace_tp_map_ee_read, !21, !"__bpf_trace_tp_map_ee_read", i1 false, i1 false}
!158 = !{ptr @__bpf_trace_tp_map_rf_read, !25, !"__bpf_trace_tp_map_rf_read", i1 false, i1 false}
!159 = !{ptr @__bpf_trace_tp_map_rf_write, !29, !"__bpf_trace_tp_map_rf_write", i1 false, i1 false}
!160 = !{ptr @__bpf_trace_tp_map_bbp_read, !33, !"__bpf_trace_tp_map_bbp_read", i1 false, i1 false}
!161 = !{ptr @__bpf_trace_tp_map_bbp_write, !37, !"__bpf_trace_tp_map_bbp_write", i1 false, i1 false}
!162 = !{ptr @__bpf_trace_tp_map_temp_mode, !41, !"__bpf_trace_tp_map_temp_mode", i1 false, i1 false}
!163 = !{ptr @__bpf_trace_tp_map_read_temp, !45, !"__bpf_trace_tp_map_read_temp", i1 false, i1 false}
!164 = !{ptr @__bpf_trace_tp_map_freq_cal_adjust, !49, !"__bpf_trace_tp_map_freq_cal_adjust", i1 false, i1 false}
!165 = !{ptr @__bpf_trace_tp_map_freq_cal_offset, !53, !"__bpf_trace_tp_map_freq_cal_offset", i1 false, i1 false}
!166 = !{ptr @__bpf_trace_tp_map_mt_rx, !57, !"__bpf_trace_tp_map_mt_rx", i1 false, i1 false}
!167 = !{ptr @__bpf_trace_tp_map_mt_tx, !61, !"__bpf_trace_tp_map_mt_tx", i1 false, i1 false}
!168 = !{ptr @__bpf_trace_tp_map_mt_tx_dma_done, !65, !"__bpf_trace_tp_map_mt_tx_dma_done", i1 false, i1 false}
!169 = !{ptr @__bpf_trace_tp_map_mt_tx_status_cleaned, !69, !"__bpf_trace_tp_map_mt_tx_status_cleaned", i1 false, i1 false}
!170 = !{ptr @__bpf_trace_tp_map_mt_tx_status, !73, !"__bpf_trace_tp_map_mt_tx_status", i1 false, i1 false}
!171 = !{ptr @__bpf_trace_tp_map_mt_rx_dma_aggr, !77, !"__bpf_trace_tp_map_mt_rx_dma_aggr", i1 false, i1 false}
!172 = !{ptr @__bpf_trace_tp_map_set_key, !81, !"__bpf_trace_tp_map_set_key", i1 false, i1 false}
!173 = !{ptr @__bpf_trace_tp_map_set_shared_key, !85, !"__bpf_trace_tp_map_set_shared_key", i1 false, i1 false}
!174 = !{ptr @__tpstrtab_reg_read, !1, !"__tpstrtab_reg_read", i1 false, i1 false}
!175 = !{ptr @__tpstrtab_reg_write, !5, !"__tpstrtab_reg_write", i1 false, i1 false}
!176 = !{ptr @__tpstrtab_mt_submit_urb, !9, !"__tpstrtab_mt_submit_urb", i1 false, i1 false}
!177 = !{ptr @__tpstrtab_mt_mcu_msg_send, !13, !"__tpstrtab_mt_mcu_msg_send", i1 false, i1 false}
!178 = !{ptr @__tpstrtab_mt_vend_req, !17, !"__tpstrtab_mt_vend_req", i1 false, i1 false}
!179 = !{ptr @__tpstrtab_ee_read, !21, !"__tpstrtab_ee_read", i1 false, i1 false}
!180 = !{ptr @__tpstrtab_rf_read, !25, !"__tpstrtab_rf_read", i1 false, i1 false}
!181 = !{ptr @__tpstrtab_rf_write, !29, !"__tpstrtab_rf_write", i1 false, i1 false}
!182 = !{ptr @__tpstrtab_bbp_read, !33, !"__tpstrtab_bbp_read", i1 false, i1 false}
!183 = !{ptr @__tpstrtab_bbp_write, !37, !"__tpstrtab_bbp_write", i1 false, i1 false}
!184 = !{ptr @__tpstrtab_temp_mode, !41, !"__tpstrtab_temp_mode", i1 false, i1 false}
!185 = !{ptr @__tpstrtab_read_temp, !45, !"__tpstrtab_read_temp", i1 false, i1 false}
!186 = !{ptr @__tpstrtab_freq_cal_adjust, !49, !"__tpstrtab_freq_cal_adjust", i1 false, i1 false}
!187 = !{ptr @__tpstrtab_freq_cal_offset, !53, !"__tpstrtab_freq_cal_offset", i1 false, i1 false}
!188 = !{ptr @__tpstrtab_mt_rx, !57, !"__tpstrtab_mt_rx", i1 false, i1 false}
!189 = !{ptr @__tpstrtab_mt_tx, !61, !"__tpstrtab_mt_tx", i1 false, i1 false}
!190 = !{ptr @__tpstrtab_mt_tx_dma_done, !65, !"__tpstrtab_mt_tx_dma_done", i1 false, i1 false}
!191 = !{ptr @__tpstrtab_mt_tx_status_cleaned, !69, !"__tpstrtab_mt_tx_status_cleaned", i1 false, i1 false}
!192 = !{ptr @__tpstrtab_mt_tx_status, !73, !"__tpstrtab_mt_tx_status", i1 false, i1 false}
!193 = !{ptr @__tpstrtab_mt_rx_dma_aggr, !77, !"__tpstrtab_mt_rx_dma_aggr", i1 false, i1 false}
!194 = !{ptr @__tpstrtab_set_key, !81, !"__tpstrtab_set_key", i1 false, i1 false}
!195 = !{ptr @__tpstrtab_set_shared_key, !85, !"__tpstrtab_set_shared_key", i1 false, i1 false}
!196 = !{ptr @str__mt7601u__trace_system_name, !197, !"str__mt7601u__trace_system_name", i1 false, i1 false}
!197 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!198 = !{ptr @.str, !89, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.1, !89, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.2, !89, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.3, !89, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.4, !89, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @trace_event_fields_dev_reg_evtu, !89, !"trace_event_fields_dev_reg_evtu", i1 false, i1 false}
!204 = !{ptr @trace_event_type_funcs_dev_reg_evtu, !89, !"trace_event_type_funcs_dev_reg_evtu", i1 false, i1 false}
!205 = !{ptr @.str.5, !89, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @print_fmt_dev_reg_evtu, !89, !"print_fmt_dev_reg_evtu", i1 false, i1 false}
!207 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @trace_event_fields_mt_submit_urb, !9, !"trace_event_fields_mt_submit_urb", i1 false, i1 false}
!211 = !{ptr @trace_event_type_funcs_mt_submit_urb, !9, !"trace_event_type_funcs_mt_submit_urb", i1 false, i1 false}
!212 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @print_fmt_mt_submit_urb, !9, !"print_fmt_mt_submit_urb", i1 false, i1 false}
!214 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.12, !13, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.13, !13, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @trace_event_fields_mt_mcu_msg_send, !13, !"trace_event_fields_mt_mcu_msg_send", i1 false, i1 false}
!219 = !{ptr @trace_event_type_funcs_mt_mcu_msg_send, !13, !"trace_event_type_funcs_mt_mcu_msg_send", i1 false, i1 false}
!220 = !{ptr @.str.14, !13, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @print_fmt_mt_mcu_msg_send, !13, !"print_fmt_mt_mcu_msg_send", i1 false, i1 false}
!222 = !{ptr @.str.15, !17, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.16, !17, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.17, !17, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.18, !17, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.19, !17, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.20, !17, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.21, !17, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.22, !17, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.23, !17, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.24, !17, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @trace_event_fields_mt_vend_req, !17, !"trace_event_fields_mt_vend_req", i1 false, i1 false}
!233 = !{ptr @trace_event_type_funcs_mt_vend_req, !17, !"trace_event_type_funcs_mt_vend_req", i1 false, i1 false}
!234 = !{ptr @.str.25, !17, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @print_fmt_mt_vend_req, !17, !"print_fmt_mt_vend_req", i1 false, i1 false}
!236 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.27, !21, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @trace_event_fields_ee_read, !21, !"trace_event_fields_ee_read", i1 false, i1 false}
!239 = !{ptr @trace_event_type_funcs_ee_read, !21, !"trace_event_type_funcs_ee_read", i1 false, i1 false}
!240 = !{ptr @.str.28, !21, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @print_fmt_ee_read, !21, !"print_fmt_ee_read", i1 false, i1 false}
!242 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @trace_event_fields_dev_rf_reg_evt, !107, !"trace_event_fields_dev_rf_reg_evt", i1 false, i1 false}
!244 = !{ptr @trace_event_type_funcs_dev_rf_reg_evt, !107, !"trace_event_type_funcs_dev_rf_reg_evt", i1 false, i1 false}
!245 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @print_fmt_dev_rf_reg_evt, !107, !"print_fmt_dev_rf_reg_evt", i1 false, i1 false}
!247 = !{ptr @trace_event_fields_dev_bbp_reg_evt, !113, !"trace_event_fields_dev_bbp_reg_evt", i1 false, i1 false}
!248 = !{ptr @trace_event_type_funcs_dev_bbp_reg_evt, !113, !"trace_event_type_funcs_dev_bbp_reg_evt", i1 false, i1 false}
!249 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @print_fmt_dev_bbp_reg_evt, !113, !"print_fmt_dev_bbp_reg_evt", i1 false, i1 false}
!251 = !{ptr @trace_event_fields_dev_simple_evt, !119, !"trace_event_fields_dev_simple_evt", i1 false, i1 false}
!252 = !{ptr @trace_event_type_funcs_dev_simple_evt, !119, !"trace_event_type_funcs_dev_simple_evt", i1 false, i1 false}
!253 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @print_fmt_dev_simple_evt, !119, !"print_fmt_dev_simple_evt", i1 false, i1 false}
!255 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @trace_event_fields_freq_cal_offset, !53, !"trace_event_fields_freq_cal_offset", i1 false, i1 false}
!259 = !{ptr @trace_event_type_funcs_freq_cal_offset, !53, !"trace_event_type_funcs_freq_cal_offset", i1 false, i1 false}
!260 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @print_fmt_freq_cal_offset, !53, !"print_fmt_freq_cal_offset", i1 false, i1 false}
!262 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @trace_event_fields_mt_rx, !57, !"trace_event_fields_mt_rx", i1 false, i1 false}
!266 = !{ptr @trace_event_type_funcs_mt_rx, !57, !"trace_event_type_funcs_mt_rx", i1 false, i1 false}
!267 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @print_fmt_mt_rx, !57, !"print_fmt_mt_rx", i1 false, i1 false}
!269 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.43, !61, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.44, !61, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.45, !61, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.46, !61, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @trace_event_fields_mt_tx, !61, !"trace_event_fields_mt_tx", i1 false, i1 false}
!276 = !{ptr @trace_event_type_funcs_mt_tx, !61, !"trace_event_type_funcs_mt_tx", i1 false, i1 false}
!277 = !{ptr @.str.47, !61, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @print_fmt_mt_tx, !61, !"print_fmt_mt_tx", i1 false, i1 false}
!279 = !{ptr @trace_event_fields_mt_tx_dma_done, !65, !"trace_event_fields_mt_tx_dma_done", i1 false, i1 false}
!280 = !{ptr @trace_event_type_funcs_mt_tx_dma_done, !65, !"trace_event_type_funcs_mt_tx_dma_done", i1 false, i1 false}
!281 = !{ptr @.str.48, !65, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @print_fmt_mt_tx_dma_done, !65, !"print_fmt_mt_tx_dma_done", i1 false, i1 false}
!283 = !{ptr @.str.49, !69, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @trace_event_fields_mt_tx_status_cleaned, !69, !"trace_event_fields_mt_tx_status_cleaned", i1 false, i1 false}
!285 = !{ptr @trace_event_type_funcs_mt_tx_status_cleaned, !69, !"trace_event_type_funcs_mt_tx_status_cleaned", i1 false, i1 false}
!286 = !{ptr @.str.50, !69, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @print_fmt_mt_tx_status_cleaned, !69, !"print_fmt_mt_tx_status_cleaned", i1 false, i1 false}
!288 = !{ptr @.str.51, !73, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.52, !73, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @trace_event_fields_mt_tx_status, !73, !"trace_event_fields_mt_tx_status", i1 false, i1 false}
!291 = !{ptr @trace_event_type_funcs_mt_tx_status, !73, !"trace_event_type_funcs_mt_tx_status", i1 false, i1 false}
!292 = !{ptr @.str.53, !73, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @print_fmt_mt_tx_status, !73, !"print_fmt_mt_tx_status", i1 false, i1 false}
!294 = !{ptr @.str.54, !77, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.55, !77, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @trace_event_fields_mt_rx_dma_aggr, !77, !"trace_event_fields_mt_rx_dma_aggr", i1 false, i1 false}
!297 = !{ptr @trace_event_type_funcs_mt_rx_dma_aggr, !77, !"trace_event_type_funcs_mt_rx_dma_aggr", i1 false, i1 false}
!298 = !{ptr @.str.56, !77, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @print_fmt_mt_rx_dma_aggr, !77, !"print_fmt_mt_rx_dma_aggr", i1 false, i1 false}
!300 = !{ptr @.str.57, !85, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.58, !85, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @trace_event_fields_set_shared_key, !85, !"trace_event_fields_set_shared_key", i1 false, i1 false}
!303 = !{ptr @trace_event_type_funcs_set_shared_key, !85, !"trace_event_type_funcs_set_shared_key", i1 false, i1 false}
!304 = !{ptr @print_fmt_set_shared_key, !85, !"print_fmt_set_shared_key", i1 false, i1 false}
!305 = !{!"sp"}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{!"branch_weights", i32 1, i32 2000}
!317 = !{!"auto-init"}
!318 = !{i8 0, i8 2}
