; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/usb_trace.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/usb_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.167, %struct.trace_event, ptr, ptr, %union.anon.168, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.167 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.170 = type { %struct.bpf_raw_event_map }
%union.anon.171 = type { %struct.bpf_raw_event_map }
%union.anon.172 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dev_reg_evt = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_urb_transfer = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_usb_reg_rr = internal constant [11 x i8] c"usb_reg_rr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_reg_rr = dso_local global %struct.static_call_key { ptr @__traceiter_usb_reg_rr }, align 4
@__tracepoint_usb_reg_rr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_reg_rr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_reg_rr, ptr null, ptr @__traceiter_usb_reg_rr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_reg_rr = internal constant ptr @__tracepoint_usb_reg_rr, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_reg_wr = internal constant [11 x i8] c"usb_reg_wr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_reg_wr = dso_local global %struct.static_call_key { ptr @__traceiter_usb_reg_wr }, align 4
@__tracepoint_usb_reg_wr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_reg_wr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_reg_wr, ptr null, ptr @__traceiter_usb_reg_wr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_reg_wr = internal constant ptr @__tracepoint_usb_reg_wr, section "__tracepoints_ptrs", align 4
@__tpstrtab_submit_urb = internal constant [11 x i8] c"submit_urb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_submit_urb = dso_local global %struct.static_call_key { ptr @__traceiter_submit_urb }, align 4
@__tracepoint_submit_urb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_submit_urb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_submit_urb, ptr null, ptr @__traceiter_submit_urb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_submit_urb = internal constant ptr @__tracepoint_submit_urb, section "__tracepoints_ptrs", align 4
@__tpstrtab_rx_urb = internal constant [7 x i8] c"rx_urb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rx_urb = dso_local global %struct.static_call_key { ptr @__traceiter_rx_urb }, align 4
@__tracepoint_rx_urb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rx_urb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rx_urb, ptr null, ptr @__traceiter_rx_urb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rx_urb = internal constant ptr @__tracepoint_rx_urb, section "__tracepoints_ptrs", align 4
@str__mt76_usb__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mt76_usb\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_dev_reg_evt = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.165 { %struct.anon.166 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.165 { %struct.anon.166 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.165 { %struct.anon.166 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dev_reg_evt = internal global %struct.trace_event_class { ptr @str__mt76_usb__trace_system_name, ptr @trace_event_raw_event_dev_reg_evt, ptr @perf_trace_dev_reg_evt, ptr @trace_event_reg, ptr @trace_event_fields_dev_reg_evt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_reg_evt, i64 24), ptr getelementptr (i8, ptr @event_class_dev_reg_evt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_reg_evt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dev_reg_evt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dev_reg_evt = internal global { [60 x i8], [36 x i8] } { [60 x i8] c"\22%s reg:0x%04x=0x%08x\22, REC->wiphy_name, REC->reg, REC->val\00", [36 x i8] zeroinitializer }, align 32
@event_usb_reg_rr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_reg_evt, %union.anon.167 { ptr @__tracepoint_usb_reg_rr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_reg_evt }, ptr @print_fmt_dev_reg_evt, ptr null, %union.anon.168 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_reg_rr = internal global ptr @event_usb_reg_rr, section "_ftrace_events", align 4
@event_usb_reg_wr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_reg_evt, %union.anon.167 { ptr @__tracepoint_usb_reg_wr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_reg_evt }, ptr @print_fmt_dev_reg_evt, ptr null, %union.anon.168 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_reg_wr = internal global ptr @event_usb_reg_wr, section "_ftrace_events", align 4
@trace_event_fields_urb_transfer = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.165 { %struct.anon.166 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.165 { %struct.anon.166 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.165 { %struct.anon.166 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_urb_transfer = internal global %struct.trace_event_class { ptr @str__mt76_usb__trace_system_name, ptr @trace_event_raw_event_urb_transfer, ptr @perf_trace_urb_transfer, ptr @trace_event_reg, ptr @trace_event_fields_urb_transfer, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_urb_transfer, i64 24), ptr getelementptr (i8, ptr @event_class_urb_transfer, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_urb_transfer = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_urb_transfer, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_urb_transfer = internal global { [57 x i8], [39 x i8] } { [57 x i8] c"\22%s p:%08x len:%u\22, REC->wiphy_name, REC->pipe, REC->len\00", [39 x i8] zeroinitializer }, align 32
@event_submit_urb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_urb_transfer, %union.anon.167 { ptr @__tracepoint_submit_urb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_urb_transfer }, ptr @print_fmt_urb_transfer, ptr null, %union.anon.168 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_submit_urb = internal global ptr @event_submit_urb, section "_ftrace_events", align 4
@event_rx_urb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_urb_transfer, %union.anon.167 { ptr @__tracepoint_rx_urb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_urb_transfer }, ptr @print_fmt_urb_transfer, ptr null, %union.anon.168 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rx_urb = internal global ptr @event_rx_urb, section "_ftrace_events", align 4
@__bpf_trace_tp_map_usb_reg_rr = internal global %union.anon.169 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_reg_rr, ptr @__bpf_trace_dev_reg_evt, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_reg_wr = internal global %union.anon.170 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_reg_wr, ptr @__bpf_trace_dev_reg_evt, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_submit_urb = internal global %union.anon.171 { %struct.bpf_raw_event_map { ptr @__tracepoint_submit_urb, ptr @__bpf_trace_urb_transfer, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rx_urb = internal global %union.anon.172 { %struct.bpf_raw_event_map { ptr @__tracepoint_rx_urb, ptr @__bpf_trace_urb_transfer, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wiphy_name\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s reg:0x%04x=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s p:%08x len:%u\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [50 x i8] c"../drivers/net/wireless/mediatek/mt76/usb_trace.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [33 x i8] c"str__mt76_usb__trace_system_name\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 36, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"trace_event_fields_dev_reg_evt\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_dev_reg_evt\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"print_fmt_dev_reg_evt\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"event_usb_reg_rr\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 44, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"event_usb_reg_wr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 49, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [32 x i8] c"trace_event_fields_urb_transfer\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_urb_transfer\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"print_fmt_urb_transfer\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"event_submit_urb\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 69, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"event_rx_urb\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 74, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 27, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/./usb_trace.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 54, i32 1 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__bpf_trace_tp_map_rx_urb, ptr @__bpf_trace_tp_map_submit_urb, ptr @__bpf_trace_tp_map_usb_reg_rr, ptr @__bpf_trace_tp_map_usb_reg_wr, ptr @__event_rx_urb, ptr @__event_submit_urb, ptr @__event_usb_reg_rr, ptr @__event_usb_reg_wr, ptr @__tracepoint_ptr_rx_urb, ptr @__tracepoint_ptr_submit_urb, ptr @__tracepoint_ptr_usb_reg_rr, ptr @__tracepoint_ptr_usb_reg_wr, ptr @__tracepoint_rx_urb, ptr @__tracepoint_submit_urb, ptr @__tracepoint_usb_reg_rr, ptr @__tracepoint_usb_reg_wr, ptr @event_class_dev_reg_evt, ptr @event_class_urb_transfer, ptr @event_rx_urb, ptr @event_submit_urb, ptr @event_usb_reg_rr, ptr @event_usb_reg_wr, ptr @str__mt76_usb__trace_system_name, ptr @trace_event_fields_dev_reg_evt, ptr @trace_event_type_funcs_dev_reg_evt, ptr @print_fmt_dev_reg_evt, ptr @trace_event_fields_urb_transfer, ptr @trace_event_type_funcs_urb_transfer, ptr @print_fmt_urb_transfer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mt76_usb__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dev_reg_evt to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dev_reg_evt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dev_reg_evt to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_reg_rr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_reg_wr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_urb_transfer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_urb_transfer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_urb_transfer to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_submit_urb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_urb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_reg_rr(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_reg_rr, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_reg_wr(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_reg_wr, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_submit_urb(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_submit_urb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %u) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rx_urb(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rx_urb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %u) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dev_reg_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !64

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !65

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %call3, i32 0, i32 1
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %reg8 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %reg8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %reg, ptr %reg8, align 4
  %val9 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %val9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %val, ptr %val9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dev_reg_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !66
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !54) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !54) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %call13, i32 0, i32 1
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %reg19 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %reg19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %reg, ptr %reg19, align 4
  %val20 = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %val, ptr %val20, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_urb_transfer(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !64

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !65

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %call3, i32 0, i32 1
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %pipe = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 10
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe, align 4
  %pipe8 = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %pipe8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pipe8, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_buffer_length, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_urb_transfer(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %u) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !66
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !54) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !54) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %call13, i32 0, i32 1
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %pipe = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 10
  %35 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe, align 4
  %pipe19 = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %pipe19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pipe19, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transfer_buffer_length, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %len, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dev_reg_evt(ptr noundef %__data, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %reg to i64
  %conv8 = zext i32 %val to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_urb_transfer(ptr noundef %__data, ptr noundef %dev, ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %u to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #6
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
define internal i32 @trace_raw_output_dev_reg_evt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %1, i32 0, i32 1
  %reg = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %val = getelementptr inbounds %struct.trace_event_raw_dev_reg_evt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
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
define internal i32 @trace_raw_output_urb_transfer(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %1, i32 0, i32 1
  %pipe = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_urb_transfer, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %wiphy_name, i32 noundef %3, i32 noundef %5) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__tracepoint_usb_reg_rr, !1, !"__tracepoint_usb_reg_rr", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/./usb_trace.h", i32 44, i32 1}
!2 = !{ptr @__tracepoint_ptr_usb_reg_rr, !1, !"__tracepoint_ptr_usb_reg_rr", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_usb_reg_rr, !1, !"__SCK__tp_func_usb_reg_rr", i1 false, i1 false}
!4 = !{ptr @__tracepoint_usb_reg_wr, !5, !"__tracepoint_usb_reg_wr", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/./usb_trace.h", i32 49, i32 1}
!6 = !{ptr @__tracepoint_ptr_usb_reg_wr, !5, !"__tracepoint_ptr_usb_reg_wr", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_usb_reg_wr, !5, !"__SCK__tp_func_usb_reg_wr", i1 false, i1 false}
!8 = !{ptr @__tracepoint_submit_urb, !9, !"__tracepoint_submit_urb", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/./usb_trace.h", i32 69, i32 1}
!10 = !{ptr @__tracepoint_ptr_submit_urb, !9, !"__tracepoint_ptr_submit_urb", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_submit_urb, !9, !"__SCK__tp_func_submit_urb", i1 false, i1 false}
!12 = !{ptr @__tracepoint_rx_urb, !13, !"__tracepoint_rx_urb", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/./usb_trace.h", i32 74, i32 1}
!14 = !{ptr @__tracepoint_ptr_rx_urb, !13, !"__tracepoint_ptr_rx_urb", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_rx_urb, !13, !"__SCK__tp_func_rx_urb", i1 false, i1 false}
!16 = !{ptr @event_class_dev_reg_evt, !17, !"event_class_dev_reg_evt", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/./usb_trace.h", i32 27, i32 1}
!18 = !{ptr @event_usb_reg_rr, !1, !"event_usb_reg_rr", i1 false, i1 false}
!19 = !{ptr @__event_usb_reg_rr, !1, !"__event_usb_reg_rr", i1 false, i1 false}
!20 = !{ptr @event_usb_reg_wr, !5, !"event_usb_reg_wr", i1 false, i1 false}
!21 = !{ptr @__event_usb_reg_wr, !5, !"__event_usb_reg_wr", i1 false, i1 false}
!22 = !{ptr @event_class_urb_transfer, !23, !"event_class_urb_transfer", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/./usb_trace.h", i32 54, i32 1}
!24 = !{ptr @event_submit_urb, !9, !"event_submit_urb", i1 false, i1 false}
!25 = !{ptr @__event_submit_urb, !9, !"__event_submit_urb", i1 false, i1 false}
!26 = !{ptr @event_rx_urb, !13, !"event_rx_urb", i1 false, i1 false}
!27 = !{ptr @__event_rx_urb, !13, !"__event_rx_urb", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_usb_reg_rr, !1, !"__bpf_trace_tp_map_usb_reg_rr", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_usb_reg_wr, !5, !"__bpf_trace_tp_map_usb_reg_wr", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_submit_urb, !9, !"__bpf_trace_tp_map_submit_urb", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_rx_urb, !13, !"__bpf_trace_tp_map_rx_urb", i1 false, i1 false}
!32 = !{ptr @__tpstrtab_usb_reg_rr, !1, !"__tpstrtab_usb_reg_rr", i1 false, i1 false}
!33 = !{ptr @__tpstrtab_usb_reg_wr, !5, !"__tpstrtab_usb_reg_wr", i1 false, i1 false}
!34 = !{ptr @__tpstrtab_submit_urb, !9, !"__tpstrtab_submit_urb", i1 false, i1 false}
!35 = !{ptr @__tpstrtab_rx_urb, !13, !"__tpstrtab_rx_urb", i1 false, i1 false}
!36 = !{ptr @str__mt76_usb__trace_system_name, !37, !"str__mt76_usb__trace_system_name", i1 false, i1 false}
!37 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!38 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @trace_event_fields_dev_reg_evt, !17, !"trace_event_fields_dev_reg_evt", i1 false, i1 false}
!44 = !{ptr @trace_event_type_funcs_dev_reg_evt, !17, !"trace_event_type_funcs_dev_reg_evt", i1 false, i1 false}
!45 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @print_fmt_dev_reg_evt, !17, !"print_fmt_dev_reg_evt", i1 false, i1 false}
!47 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @trace_event_fields_urb_transfer, !23, !"trace_event_fields_urb_transfer", i1 false, i1 false}
!51 = !{ptr @trace_event_type_funcs_urb_transfer, !23, !"trace_event_type_funcs_urb_transfer", i1 false, i1 false}
!52 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @print_fmt_urb_transfer, !23, !"print_fmt_urb_transfer", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"auto-init"}
