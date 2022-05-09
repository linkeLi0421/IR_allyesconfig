; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/debug.c_pt.bc'
source_filename = "../drivers/staging/wfx/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.154, %struct.trace_event, ptr, ptr, %union.anon.155, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.154 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.155 = type { ptr }
%union.anon.156 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.157 = type { %struct.bpf_raw_event_map }
%union.anon.158 = type { %struct.bpf_raw_event_map }
%union.anon.159 = type { %struct.bpf_raw_event_map }
%union.anon.160 = type { %struct.bpf_raw_event_map }
%union.anon.161 = type { %struct.bpf_raw_event_map }
%union.anon.162 = type { %struct.bpf_raw_event_map }
%union.anon.163 = type { %struct.bpf_raw_event_map }
%union.anon.164 = type { %struct.bpf_raw_event_map }
%union.anon.165 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_hif_data = type { %struct.trace_entry, i32, i32, ptr, i32, i32, i32, i32, [128 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.hif_msg = type { i16, i8, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_io_data = type { %struct.trace_entry, i32, i32, i32, i32, [32 x i8], [10 x i8], [0 x i8] }
%struct.trace_event_raw_io_data32 = type { %struct.trace_entry, i32, i32, i32, [10 x i8], [0 x i8] }
%struct.trace_event_raw_piggyback = type { %struct.trace_entry, i32, i8, [0 x i8] }
%struct.trace_event_raw_bh_stats = type { %struct.trace_entry, i32, i32, i32, i32, i8, [0 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hif_cnf_tx = type { i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.trace_event_raw_tx_stats = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [0 x i8] }
%struct.trace_event_raw_queues_stats = type { %struct.trace_entry, i32, i32, [8 x i32], [8 x i32], [8 x i32], [0 x i8] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.124, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.125, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.126, ptr, %struct.address_space, %struct.list_head, %union.anon.127, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.125 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.127 = type { ptr }
%struct.hif_mib_extended_count_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dbgfs_hif_msg = type { ptr, %struct.completion, [1024 x i8], i32 }

@__tpstrtab_hif_send = internal constant [9 x i8] c"hif_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hif_send = dso_local global %struct.static_call_key { ptr @__traceiter_hif_send }, align 4
@__tracepoint_hif_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hif_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hif_send, ptr null, ptr @__traceiter_hif_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hif_send = internal constant ptr @__tracepoint_hif_send, section "__tracepoints_ptrs", align 4
@__tpstrtab_hif_recv = internal constant [9 x i8] c"hif_recv\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hif_recv = dso_local global %struct.static_call_key { ptr @__traceiter_hif_recv }, align 4
@__tracepoint_hif_recv = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hif_recv, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hif_recv, ptr null, ptr @__traceiter_hif_recv, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hif_recv = internal constant ptr @__tracepoint_hif_recv, section "__tracepoints_ptrs", align 4
@__tpstrtab_io_write = internal constant [9 x i8] c"io_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_io_write = dso_local global %struct.static_call_key { ptr @__traceiter_io_write }, align 4
@__tracepoint_io_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_io_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_io_write, ptr null, ptr @__traceiter_io_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_io_write = internal constant ptr @__tracepoint_io_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_io_read = internal constant [8 x i8] c"io_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_io_read = dso_local global %struct.static_call_key { ptr @__traceiter_io_read }, align 4
@__tracepoint_io_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_io_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_io_read, ptr null, ptr @__traceiter_io_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_io_read = internal constant ptr @__tracepoint_io_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_io_write32 = internal constant [11 x i8] c"io_write32\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_io_write32 = dso_local global %struct.static_call_key { ptr @__traceiter_io_write32 }, align 4
@__tracepoint_io_write32 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_io_write32, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_io_write32, ptr null, ptr @__traceiter_io_write32, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_io_write32 = internal constant ptr @__tracepoint_io_write32, section "__tracepoints_ptrs", align 4
@__tpstrtab_io_read32 = internal constant [10 x i8] c"io_read32\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_io_read32 = dso_local global %struct.static_call_key { ptr @__traceiter_io_read32 }, align 4
@__tracepoint_io_read32 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_io_read32, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_io_read32, ptr null, ptr @__traceiter_io_read32, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_io_read32 = internal constant ptr @__tracepoint_io_read32, section "__tracepoints_ptrs", align 4
@__tpstrtab_piggyback = internal constant [10 x i8] c"piggyback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_piggyback = dso_local global %struct.static_call_key { ptr @__traceiter_piggyback }, align 4
@__tracepoint_piggyback = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_piggyback, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_piggyback, ptr null, ptr @__traceiter_piggyback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_piggyback = internal constant ptr @__tracepoint_piggyback, section "__tracepoints_ptrs", align 4
@__tpstrtab_bh_stats = internal constant [9 x i8] c"bh_stats\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bh_stats = dso_local global %struct.static_call_key { ptr @__traceiter_bh_stats }, align 4
@__tracepoint_bh_stats = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bh_stats, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bh_stats, ptr null, ptr @__traceiter_bh_stats, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bh_stats = internal constant ptr @__tracepoint_bh_stats, section "__tracepoints_ptrs", align 4
@__tpstrtab_tx_stats = internal constant [9 x i8] c"tx_stats\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tx_stats = dso_local global %struct.static_call_key { ptr @__traceiter_tx_stats }, align 4
@__tracepoint_tx_stats = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tx_stats, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tx_stats, ptr null, ptr @__traceiter_tx_stats, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tx_stats = internal constant ptr @__tracepoint_tx_stats, section "__tracepoints_ptrs", align 4
@__tpstrtab_queues_stats = internal constant [13 x i8] c"queues_stats\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_queues_stats = dso_local global %struct.static_call_key { ptr @__traceiter_queues_stats }, align 4
@__tracepoint_queues_stats = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_queues_stats, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_queues_stats, ptr null, ptr @__traceiter_queues_stats, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_queues_stats = internal constant ptr @__tracepoint_queues_stats, section "__tracepoints_ptrs", align 4
@str__wfx__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIF_CNF_ID_ADD_KEY\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HIF_CNF_ID_BEACON_TRANSMIT\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.1, i32 24 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HIF_CNF_ID_EDCA_QUEUE_PARAMS\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.2, i32 19 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HIF_CNF_ID_JOIN\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_JOIN = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.3, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_JOIN = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_JOIN, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_CNF_ID_MAP_LINK\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.4, i32 28 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_CNF_ID_READ_MIB\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_READ_MIB = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_READ_MIB = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_READ_MIB, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HIF_CNF_ID_REMOVE_KEY\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.6, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_CNF_ID_RESET\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_RESET = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.7, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_RESET = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_RESET, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HIF_CNF_ID_SET_BSS_PARAMS\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.8, i32 17 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HIF_CNF_ID_SET_PM_MODE\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.9, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_CNF_ID_START\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_START = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.10, i32 23 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_START = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_START, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HIF_CNF_ID_START_SCAN\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_START_SCAN = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.11, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_START_SCAN = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_START_SCAN, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_CNF_ID_STOP_SCAN\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.12, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_CNF_ID_TX\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_TX = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.13, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_TX = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_TX, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HIF_CNF_ID_MULTI_TRANSMIT\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.14, i32 30 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_CNF_ID_UPDATE_IE\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.15, i32 27 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE, section "_ftrace_eval_map", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_CNF_ID_WRITE_MIB\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.16, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB, section "_ftrace_eval_map", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HIF_CNF_ID_CONFIGURATION\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.17, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION, section "_ftrace_eval_map", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HIF_CNF_ID_CONTROL_GPIO\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.18, i32 38 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO, section "_ftrace_eval_map", align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HIF_CNF_ID_PREVENT_ROLLBACK\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.19, i32 42 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK, section "_ftrace_eval_map", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HIF_CNF_ID_SET_SL_MAC_KEY\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.20, i32 39 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY, section "_ftrace_eval_map", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HIF_CNF_ID_SL_CONFIGURE\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.21, i32 41 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE, section "_ftrace_eval_map", align 4
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.22, i32 40 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS, section "_ftrace_eval_map", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_CNF_ID_SHUT_DOWN\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.23, i32 50 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN = internal global ptr @__TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN, section "_ftrace_eval_map", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_IND_ID_EVENT\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_EVENT = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.24, i32 133 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_EVENT = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_EVENT, section "_ftrace_eval_map", align 4
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HIF_IND_ID_JOIN_COMPLETE\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.25, i32 143 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE, section "_ftrace_eval_map", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_IND_ID_RX\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_RX = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.26, i32 132 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_RX = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_RX, section "_ftrace_eval_map", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_IND_ID_SCAN_CMPL\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.27, i32 134 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL, section "_ftrace_eval_map", align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HIF_IND_ID_SET_PM_MODE_CMPL\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.28, i32 137 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL, section "_ftrace_eval_map", align 4
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HIF_IND_ID_SUSPEND_RESUME_TX\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.29, i32 140 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX, section "_ftrace_eval_map", align 4
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HIF_IND_ID_SL_EXCHANGE_PUB_KEYS\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.30, i32 229 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS, section "_ftrace_eval_map", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_IND_ID_ERROR\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_ERROR = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.31, i32 228 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_ERROR = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_ERROR, section "_ftrace_eval_map", align 4
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_IND_ID_EXCEPTION\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_EXCEPTION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.32, i32 224 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_EXCEPTION = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_EXCEPTION, section "_ftrace_eval_map", align 4
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIF_IND_ID_GENERIC\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_GENERIC = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.33, i32 227 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_GENERIC = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_GENERIC, section "_ftrace_eval_map", align 4
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_IND_ID_WAKEUP\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_WAKEUP = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.34, i32 226 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_WAKEUP = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_WAKEUP, section "_ftrace_eval_map", align 4
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIF_IND_ID_STARTUP\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_IND_ID_STARTUP = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.35, i32 225 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_IND_ID_STARTUP = internal global ptr @__TRACE_SYSTEM_HIF_IND_ID_STARTUP, section "_ftrace_eval_map", align 4
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE\00", [62 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.36, i32 8217 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE, section "_ftrace_eval_map", align 4
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.37, i32 8275 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD, section "_ftrace_eval_map", align 4
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HIF_MIB_ID_BEACON_FILTER_ENABLE\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.38, i32 8221 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE, section "_ftrace_eval_map", align 4
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HIF_MIB_ID_BEACON_FILTER_TABLE\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.39, i32 8220 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE, section "_ftrace_eval_map", align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HIF_MIB_ID_BEACON_STATS\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.40, i32 8278 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS, section "_ftrace_eval_map", align 4
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HIF_MIB_ID_BEACON_WAKEUP_PERIOD\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.41, i32 8265 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD, section "_ftrace_eval_map", align 4
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HIF_MIB_ID_BLOCK_ACK_POLICY\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.42, i32 8267 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY, section "_ftrace_eval_map", align 4
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HIF_MIB_ID_CCA_CONFIG\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.43, i32 8195 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG, section "_ftrace_eval_map", align 4
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HIF_MIB_ID_CONFIG_DATA_FILTER\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.44, i32 8215 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER, section "_ftrace_eval_map", align 4
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HIF_MIB_ID_COUNTERS_TABLE\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.45, i32 8243 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE, section "_ftrace_eval_map", align 4
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HIF_MIB_ID_CURRENT_TX_POWER_LEVEL\00", [62 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.46, i32 8262 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL, section "_ftrace_eval_map", align 4
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HIF_MIB_ID_DOT11_MAC_ADDRESS\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.47, i32 8256 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS, section "_ftrace_eval_map", align 4
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME\00", [58 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.48, i32 8258 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME, section "_ftrace_eval_map", align 4
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME\00", [52 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.49, i32 8257 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME, section "_ftrace_eval_map", align 4
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HIF_MIB_ID_DOT11_RTS_THRESHOLD\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.50, i32 8260 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD, section "_ftrace_eval_map", align 4
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID\00", [60 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.51, i32 8259 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID, section "_ftrace_eval_map", align 4
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION\00", [55 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.52, i32 8208 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HIF_MIB_ID_EXTENDED_COUNTERS_TABLE\00", [61 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.53, i32 8245 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, section "_ftrace_eval_map", align 4
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HIF_MIB_ID_GL_BLOCK_ACK_INFO\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.54, i32 8193 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO, section "_ftrace_eval_map", align 4
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE\00", [59 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.55, i32 8192 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE, section "_ftrace_eval_map", align 4
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HIF_MIB_ID_GL_SET_MULTI_MSG\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.56, i32 8194 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG, section "_ftrace_eval_map", align 4
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HIF_MIB_ID_GRP_SEQ_COUNTER\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.57, i32 8240 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER, section "_ftrace_eval_map", align 4
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HIF_MIB_ID_INACTIVITY_TIMER\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.58, i32 8276 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER, section "_ftrace_eval_map", align 4
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HIF_MIB_ID_INTERFACE_PROTECTION\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.59, i32 8277 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION, section "_ftrace_eval_map", align 4
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION\00", [55 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.60, i32 8212 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION\00", [55 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.61, i32 8213 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HIF_MIB_ID_KEEP_ALIVE_PERIOD\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.62, i32 8274 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD, section "_ftrace_eval_map", align 4
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION\00", [56 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.63, i32 8211 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION\00", [59 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.64, i32 8210 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HIF_MIB_ID_MAX_TX_POWER_LEVEL\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.65, i32 8244 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL, section "_ftrace_eval_map", align 4
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HIF_MIB_ID_NON_ERP_PROTECTION\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.66, i32 8263 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION, section "_ftrace_eval_map", align 4
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HIF_MIB_ID_NS_IP_ADDRESSES_TABLE\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.67, i32 8218 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE, section "_ftrace_eval_map", align 4
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE\00", [59 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.68, i32 8268 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, section "_ftrace_eval_map", align 4
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HIF_MIB_ID_PORT_DATAFRAME_CONDITION\00", [60 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.69, i32 8209 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HIF_MIB_ID_PROTECTED_MGMT_POLICY\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.70, i32 8272 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY, section "_ftrace_eval_map", align 4
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HIF_MIB_ID_RCPI_RSSI_THRESHOLD\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.71, i32 8266 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD, section "_ftrace_eval_map", align 4
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_MIB_ID_RX_FILTER\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.72, i32 8219 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER, section "_ftrace_eval_map", align 4
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HIF_MIB_ID_SET_ASSOCIATION_MODE\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.73, i32 8269 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE, section "_ftrace_eval_map", align 4
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HIF_MIB_ID_SET_DATA_FILTERING\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.74, i32 8216 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING, section "_ftrace_eval_map", align 4
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HIF_MIB_ID_SET_HT_PROTECTION\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.75, i32 8273 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION, section "_ftrace_eval_map", align 4
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY\00", [60 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.76, i32 8271 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY, section "_ftrace_eval_map", align 4
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HIF_MIB_ID_SET_UAPSD_INFORMATION\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.77, i32 8270 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION, section "_ftrace_eval_map", align 4
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_MIB_ID_SLOT_TIME\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.78, i32 8261 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME, section "_ftrace_eval_map", align 4
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HIF_MIB_ID_STATISTICS_TABLE\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.79, i32 8242 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE, section "_ftrace_eval_map", align 4
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HIF_MIB_ID_TEMPLATE_FRAME\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.80, i32 8264 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME, section "_ftrace_eval_map", align 4
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HIF_MIB_ID_TSF_COUNTER\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.81, i32 8241 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER, section "_ftrace_eval_map", align 4
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION\00", [56 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.82, i32 8214 }, section ".init.data", align 4
@TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION = internal global ptr @__TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION, section "_ftrace_eval_map", align 4
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x0\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x0 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.83, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_0x0 = internal global ptr @__TRACE_SYSTEM_0x0, section "_ftrace_eval_map", align 4
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x1\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x1 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.84, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_0x1 = internal global ptr @__TRACE_SYSTEM_0x1, section "_ftrace_eval_map", align 4
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x2\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x2 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.85, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_0x2 = internal global ptr @__TRACE_SYSTEM_0x2, section "_ftrace_eval_map", align 4
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x3\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x3 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.86, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_0x3 = internal global ptr @__TRACE_SYSTEM_0x3, section "_ftrace_eval_map", align 4
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x4\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x4 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.87, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_0x4 = internal global ptr @__TRACE_SYSTEM_0x4, section "_ftrace_eval_map", align 4
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x5\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x5 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.88, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_0x5 = internal global ptr @__TRACE_SYSTEM_0x5, section "_ftrace_eval_map", align 4
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x6\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x6 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.89, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_0x6 = internal global ptr @__TRACE_SYSTEM_0x6, section "_ftrace_eval_map", align 4
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x7\00", [28 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_0x7 = internal global %struct.trace_eval_map { ptr @str__wfx__trace_system_name, ptr @.str.90, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_0x7 = internal global ptr @__TRACE_SYSTEM_0x7, section "_ftrace_eval_map", align 4
@trace_event_fields_hif_data = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.102, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.103, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.104, %union.anon.152 { %struct.anon.153 { ptr @.str.105, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.106, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.107, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.108, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.109, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.110, %union.anon.152 { %struct.anon.153 { ptr @.str.111, i32 128, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_hif_data = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_hif_data, ptr @perf_trace_hif_data, ptr @trace_event_reg, ptr @trace_event_fields_hif_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hif_data, i64 24), ptr getelementptr (i8, ptr @event_class_hif_data, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hif_data = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hif_data, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hif_data = internal global { [4679 x i8], [1177 x i8] } { [4679 x i8] c"\22%d:%d:%s_%s%s%s: %s%s (%d bytes)\22, REC->tx_fill_level, REC->if_id, REC->msg_type, __print_symbolic(REC->msg_id, { HIF_CNF_ID_ADD_KEY, \22ADD_KEY\22 }, { HIF_CNF_ID_BEACON_TRANSMIT, \22BEACON_TRANSMIT\22 }, { HIF_CNF_ID_EDCA_QUEUE_PARAMS, \22EDCA_QUEUE_PARAMS\22 }, { HIF_CNF_ID_JOIN, \22JOIN\22 }, { HIF_CNF_ID_MAP_LINK, \22MAP_LINK\22 }, { HIF_CNF_ID_READ_MIB, \22READ_MIB\22 }, { HIF_CNF_ID_REMOVE_KEY, \22REMOVE_KEY\22 }, { HIF_CNF_ID_RESET, \22RESET\22 }, { HIF_CNF_ID_SET_BSS_PARAMS, \22SET_BSS_PARAMS\22 }, { HIF_CNF_ID_SET_PM_MODE, \22SET_PM_MODE\22 }, { HIF_CNF_ID_START, \22START\22 }, { HIF_CNF_ID_START_SCAN, \22START_SCAN\22 }, { HIF_CNF_ID_STOP_SCAN, \22STOP_SCAN\22 }, { HIF_CNF_ID_TX, \22TX\22 }, { HIF_CNF_ID_MULTI_TRANSMIT, \22MULTI_TRANSMIT\22 }, { HIF_CNF_ID_UPDATE_IE, \22UPDATE_IE\22 }, { HIF_CNF_ID_WRITE_MIB, \22WRITE_MIB\22 }, { HIF_CNF_ID_CONFIGURATION, \22CONFIGURATION\22 }, { HIF_CNF_ID_CONTROL_GPIO, \22CONTROL_GPIO\22 }, { HIF_CNF_ID_PREVENT_ROLLBACK, \22PREVENT_ROLLBACK\22 }, { HIF_CNF_ID_SET_SL_MAC_KEY, \22SET_SL_MAC_KEY\22 }, { HIF_CNF_ID_SL_CONFIGURE, \22SL_CONFIGURE\22 }, { HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS, \22SL_EXCHANGE_PUB_KEYS\22 }, { HIF_CNF_ID_SHUT_DOWN, \22SHUT_DOWN\22 }, { HIF_IND_ID_EVENT, \22EVENT\22 }, { HIF_IND_ID_JOIN_COMPLETE, \22JOIN_COMPLETE\22 }, { HIF_IND_ID_RX, \22RX\22 }, { HIF_IND_ID_SCAN_CMPL, \22SCAN_CMPL\22 }, { HIF_IND_ID_SET_PM_MODE_CMPL, \22SET_PM_MODE_CMPL\22 }, { HIF_IND_ID_SUSPEND_RESUME_TX, \22SUSPEND_RESUME_TX\22 }, { HIF_IND_ID_SL_EXCHANGE_PUB_KEYS, \22SL_EXCHANGE_PUB_KEYS\22 }, { HIF_IND_ID_ERROR, \22ERROR\22 }, { HIF_IND_ID_EXCEPTION, \22EXCEPTION\22 }, { HIF_IND_ID_GENERIC, \22GENERIC\22 }, { HIF_IND_ID_WAKEUP, \22WAKEUP\22 }, { HIF_IND_ID_STARTUP, \22STARTUP\22 }, { -1, ((void *)0) }), REC->mib != -1 ? \22/\22 : \22\22, REC->mib != -1 ? __print_symbolic(REC->mib, { HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE, \22ARP_IP_ADDRESSES_TABLE\22 }, { HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD, \22ARP_KEEP_ALIVE_PERIOD\22 }, { HIF_MIB_ID_BEACON_FILTER_ENABLE, \22BEACON_FILTER_ENABLE\22 }, { HIF_MIB_ID_BEACON_FILTER_TABLE, \22BEACON_FILTER_TABLE\22 }, { HIF_MIB_ID_BEACON_STATS, \22BEACON_STATS\22 }, { HIF_MIB_ID_BEACON_WAKEUP_PERIOD, \22BEACON_WAKEUP_PERIOD\22 }, { HIF_MIB_ID_BLOCK_ACK_POLICY, \22BLOCK_ACK_POLICY\22 }, { HIF_MIB_ID_CCA_CONFIG, \22CCA_CONFIG\22 }, { HIF_MIB_ID_CONFIG_DATA_FILTER, \22CONFIG_DATA_FILTER\22 }, { HIF_MIB_ID_COUNTERS_TABLE, \22COUNTERS_TABLE\22 }, { HIF_MIB_ID_CURRENT_TX_POWER_LEVEL, \22CURRENT_TX_POWER_LEVEL\22 }, { HIF_MIB_ID_DOT11_MAC_ADDRESS, \22DOT11_MAC_ADDRESS\22 }, { HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME, \22DOT11_MAX_RECEIVE_LIFETIME\22 }, { HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME, \22DOT11_MAX_TRANSMIT_MSDU_LIFETIME\22 }, { HIF_MIB_ID_DOT11_RTS_THRESHOLD, \22DOT11_RTS_THRESHOLD\22 }, { HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID, \22DOT11_WEP_DEFAULT_KEY_ID\22 }, { HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION, \22ETHERTYPE_DATAFRAME_CONDITION\22 }, { HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, \22EXTENDED_COUNTERS_TABLE\22 }, { HIF_MIB_ID_GL_BLOCK_ACK_INFO, \22GL_BLOCK_ACK_INFO\22 }, { HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE, \22GL_OPERATIONAL_POWER_MODE\22 }, { HIF_MIB_ID_GL_SET_MULTI_MSG, \22GL_SET_MULTI_MSG\22 }, { HIF_MIB_ID_GRP_SEQ_COUNTER, \22GRP_SEQ_COUNTER\22 }, { HIF_MIB_ID_INACTIVITY_TIMER, \22INACTIVITY_TIMER\22 }, { HIF_MIB_ID_INTERFACE_PROTECTION, \22INTERFACE_PROTECTION\22 }, { HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION, \22IPV4_ADDR_DATAFRAME_CONDITION\22 }, { HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION, \22IPV6_ADDR_DATAFRAME_CONDITION\22 }, { HIF_MIB_ID_KEEP_ALIVE_PERIOD, \22KEEP_ALIVE_PERIOD\22 }, { HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION, \22MAC_ADDR_DATAFRAME_CONDITION\22 }, { HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION, \22MAGIC_DATAFRAME_CONDITION\22 }, { HIF_MIB_ID_MAX_TX_POWER_LEVEL, \22MAX_TX_POWER_LEVEL\22 }, { HIF_MIB_ID_NON_ERP_PROTECTION, \22NON_ERP_PROTECTION\22 }, { HIF_MIB_ID_NS_IP_ADDRESSES_TABLE, \22NS_IP_ADDRESSES_TABLE\22 }, { HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, \22OVERRIDE_INTERNAL_TX_RATE\22 }, { HIF_MIB_ID_PORT_DATAFRAME_CONDITION, \22PORT_DATAFRAME_CONDITION\22 }, { HIF_MIB_ID_PROTECTED_MGMT_POLICY, \22PROTECTED_MGMT_POLICY\22 }, { HIF_MIB_ID_RCPI_RSSI_THRESHOLD, \22RCPI_RSSI_THRESHOLD\22 }, { HIF_MIB_ID_RX_FILTER, \22RX_FILTER\22 }, { HIF_MIB_ID_SET_ASSOCIATION_MODE, \22SET_ASSOCIATION_MODE\22 }, { HIF_MIB_ID_SET_DATA_FILTERING, \22SET_DATA_FILTERING\22 }, { HIF_MIB_ID_SET_HT_PROTECTION, \22SET_HT_PROTECTION\22 }, { HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY, \22SET_TX_RATE_RETRY_POLICY\22 }, { HIF_MIB_ID_SET_UAPSD_INFORMATION, \22SET_UAPSD_INFORMATION\22 }, { HIF_MIB_ID_SLOT_TIME, \22SLOT_TIME\22 }, { HIF_MIB_ID_STATISTICS_TABLE, \22STATISTICS_TABLE\22 }, { HIF_MIB_ID_TEMPLATE_FRAME, \22TEMPLATE_FRAME\22 }, { HIF_MIB_ID_TSF_COUNTER, \22TSF_COUNTER\22 }, { HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION, \22UC_MC_BC_DATAFRAME_CONDITION\22 }, { -1, ((void *)0) }) : \22\22, __print_hex(REC->buf, REC->buf_len), REC->msg_len > sizeof(REC->buf) ? \22 ...\22 : \22\22, REC->msg_len\00", [1177 x i8] zeroinitializer }, align 32
@event_hif_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hif_data, %union.anon.154 { ptr @__tracepoint_hif_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hif_data }, ptr @print_fmt_hif_data, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hif_send = internal global ptr @event_hif_send, section "_ftrace_events", align 4
@event_hif_recv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hif_data, %union.anon.154 { ptr @__tracepoint_hif_recv }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hif_data }, ptr @print_fmt_hif_data, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hif_recv = internal global ptr @event_hif_recv, section "_ftrace_events", align 4
@trace_event_fields_io_data = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.200, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.201, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.106, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.107, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.202, %union.anon.152 { %struct.anon.153 { ptr @.str.111, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.203, %union.anon.152 { %struct.anon.153 { ptr @.str.204, i32 10, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_io_data = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_io_data, ptr @perf_trace_io_data, ptr @trace_event_reg, ptr @trace_event_fields_io_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_io_data, i64 24), ptr getelementptr (i8, ptr @event_class_io_data, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_io_data = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_io_data, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_io_data = internal global { [344 x i8], [72 x i8] } { [344 x i8] c"\22%s%s: %s%s (%d bytes)\22, __print_symbolic(REC->reg, { 0x0, \22CONFIG\22 }, { 0x1, \22CONTROL\22 }, { 0x2, \22QUEUE\22 }, { 0x3, \22AHB\22 }, { 0x4, \22BASE_ADDR\22 }, { 0x5, \22SRAM\22 }, { 0x6, \22SET_GEN_R_W\22 }, { 0x7, \22FRAME_OUT\22 }, { -1, ((void *)0) }), REC->addr_str, __print_hex(REC->buf, REC->buf_len), REC->msg_len > sizeof(REC->buf) ? \22 ...\22 : \22\22, REC->msg_len\00", [72 x i8] zeroinitializer }, align 32
@event_io_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_io_data, %union.anon.154 { ptr @__tracepoint_io_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_io_data }, ptr @print_fmt_io_data, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_io_write = internal global ptr @event_io_write, section "_ftrace_events", align 4
@event_io_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_io_data, %union.anon.154 { ptr @__tracepoint_io_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_io_data }, ptr @print_fmt_io_data, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_io_read = internal global ptr @event_io_read, section "_ftrace_events", align 4
@trace_event_fields_io_data32 = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.200, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.201, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.214, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.203, %union.anon.152 { %struct.anon.153 { ptr @.str.204, i32 10, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_io_data32 = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_io_data32, ptr @perf_trace_io_data32, ptr @trace_event_reg, ptr @trace_event_fields_io_data32, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_io_data32, i64 24), ptr getelementptr (i8, ptr @event_class_io_data32, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_io_data32 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_io_data32, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_io_data32 = internal global { [245 x i8], [43 x i8] } { [245 x i8] c"\22%s%s: %08x\22, __print_symbolic(REC->reg, { 0x0, \22CONFIG\22 }, { 0x1, \22CONTROL\22 }, { 0x2, \22QUEUE\22 }, { 0x3, \22AHB\22 }, { 0x4, \22BASE_ADDR\22 }, { 0x5, \22SRAM\22 }, { 0x6, \22SET_GEN_R_W\22 }, { 0x7, \22FRAME_OUT\22 }, { -1, ((void *)0) }), REC->addr_str, REC->val\00", [43 x i8] zeroinitializer }, align 32
@event_io_write32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_io_data32, %union.anon.154 { ptr @__tracepoint_io_write32 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_io_data32 }, ptr @print_fmt_io_data32, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_io_write32 = internal global ptr @event_io_write32, section "_ftrace_events", align 4
@event_io_read32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_io_data32, %union.anon.154 { ptr @__tracepoint_io_read32 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_io_data32 }, ptr @print_fmt_io_data32, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_io_read32 = internal global ptr @event_io_read32, section "_ftrace_events", align 4
@trace_event_fields_piggyback = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.214, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.216, %union.anon.152 { %struct.anon.153 { ptr @.str.217, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_piggyback = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_piggyback, ptr @perf_trace_piggyback, ptr @trace_event_reg, ptr @trace_event_fields_piggyback, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_piggyback, i64 24), ptr getelementptr (i8, ptr @event_class_piggyback, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_piggyback = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_piggyback, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_piggyback = internal global { [62 x i8], [34 x i8] } { [62 x i8] c"\22CONTROL: %08x%s\22, REC->val, REC->ignored ? \22 (ignored)\22 : \22\22\00", [34 x i8] zeroinitializer }, align 32
@event_piggyback = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_piggyback, %union.anon.154 { ptr @__tracepoint_piggyback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_piggyback }, ptr @print_fmt_piggyback, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_piggyback = internal global ptr @event_piggyback, section "_ftrace_events", align 4
@trace_event_fields_bh_stats = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.220, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.221, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.222, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.223, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.216, %union.anon.152 { %struct.anon.153 { ptr @.str.224, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_bh_stats = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_bh_stats, ptr @perf_trace_bh_stats, ptr @trace_event_reg, ptr @trace_event_fields_bh_stats, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bh_stats, i64 24), ptr getelementptr (i8, ptr @event_class_bh_stats, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bh_stats = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bh_stats, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bh_stats = internal global { [132 x i8], [60 x i8] } { [132 x i8] c"\22IND/REQ/CNF:%3d/%3d/%3d, REQ in progress:%3d, WUP: %s\22, REC->ind, REC->req, REC->cnf, REC->busy, REC->release ? \22release\22 : \22keep\22\00", [60 x i8] zeroinitializer }, align 32
@event_bh_stats = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bh_stats, %union.anon.154 { ptr @__tracepoint_bh_stats }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bh_stats }, ptr @print_fmt_bh_stats, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bh_stats = internal global ptr @event_bh_stats, section "_ftrace_events", align 4
@trace_event_fields_tx_stats = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.227, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.228, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.229, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.230, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.231, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.232, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.233, %union.anon.152 { %struct.anon.153 { ptr @.str.234, i32 16, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.233, %union.anon.152 { %struct.anon.153 { ptr @.str.235, i32 16, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_tx_stats = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_tx_stats, ptr @perf_trace_tx_stats, ptr @trace_event_reg, ptr @trace_event_fields_tx_stats, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tx_stats, i64 24), ptr getelementptr (i8, ptr @event_class_tx_stats, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tx_stats = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tx_stats, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tx_stats = internal global { [474 x i8], [102 x i8] } { [474 x i8] c"\22packet ID: %08x, rate policy: %s %d|%d %d|%d %d|%d %d|%d -> %d attempt, Delays media/queue/total: %4dus/%4dus/%4dus\22, REC->pkt_id, __print_flags(REC->flags, ((void *)0), { 0x01, \22M\22 }, { 0x02, \22S\22 }, { 0x04, \22G\22 }, { 0x08, \22R\22 }, { 0x10, \22D\22 }, { 0x20, \22F\22 }, { 0x40, \22Q\22 }), REC->rate[0], REC->tx_count[0], REC->rate[1], REC->tx_count[1], REC->rate[2], REC->tx_count[2], REC->rate[3], REC->tx_count[3], REC->ack_failures, REC->delay_media, REC->delay_queue, REC->delay_fw\00", [102 x i8] zeroinitializer }, align 32
@event_tx_stats = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tx_stats, %union.anon.154 { ptr @__tracepoint_tx_stats }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tx_stats }, ptr @print_fmt_tx_stats, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tx_stats = internal global ptr @event_tx_stats, section "_ftrace_events", align 4
@trace_event_fields_queues_stats = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.248, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.152 { %struct.anon.153 { ptr @.str.249, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.250, %union.anon.152 { %struct.anon.153 { ptr @.str.251, i32 32, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.250, %union.anon.152 { %struct.anon.153 { ptr @.str.252, i32 32, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.250, %union.anon.152 { %struct.anon.153 { ptr @.str.253, i32 32, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_queues_stats = internal global %struct.trace_event_class { ptr @str__wfx__trace_system_name, ptr @trace_event_raw_event_queues_stats, ptr @perf_trace_queues_stats, ptr @trace_event_reg, ptr @trace_event_fields_queues_stats, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_queues_stats, i64 24), ptr getelementptr (i8, ptr @event_class_queues_stats, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_queues_stats = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_queues_stats, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_queues_stats = internal global { [453 x i8], [123 x i8] } { [453 x i8] c"\22got skb from %d/%d, pend. hw/norm/cab: [ %d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d ] [ %d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d ]\22, REC->vif_id, REC->queue_id, REC->hw[0], REC->drv[0], REC->cab[0], REC->hw[1], REC->drv[1], REC->cab[1], REC->hw[2], REC->drv[2], REC->cab[2], REC->hw[3], REC->drv[3], REC->cab[3], REC->hw[4], REC->drv[4], REC->cab[4], REC->hw[5], REC->drv[5], REC->cab[5], REC->hw[6], REC->drv[6], REC->cab[6], REC->hw[7], REC->drv[7], REC->cab[7]\00", [123 x i8] zeroinitializer }, align 32
@event_queues_stats = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_queues_stats, %union.anon.154 { ptr @__tracepoint_queues_stats }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_queues_stats }, ptr @print_fmt_queues_stats, ptr null, %union.anon.155 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_queues_stats = internal global ptr @event_queues_stats, section "_ftrace_events", align 4
@__bpf_trace_tp_map_hif_send = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_hif_send, ptr @__bpf_trace_hif_data, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hif_recv = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_hif_recv, ptr @__bpf_trace_hif_data, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_io_write = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_io_write, ptr @__bpf_trace_io_data, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_io_read = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_io_read, ptr @__bpf_trace_io_data, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_io_write32 = internal global %union.anon.160 { %struct.bpf_raw_event_map { ptr @__tracepoint_io_write32, ptr @__bpf_trace_io_data32, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_io_read32 = internal global %union.anon.161 { %struct.bpf_raw_event_map { ptr @__tracepoint_io_read32, ptr @__bpf_trace_io_data32, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_piggyback = internal global %union.anon.162 { %struct.bpf_raw_event_map { ptr @__tracepoint_piggyback, ptr @__bpf_trace_piggyback, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bh_stats = internal global %union.anon.163 { %struct.bpf_raw_event_map { ptr @__tracepoint_bh_stats, ptr @__bpf_trace_bh_stats, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tx_stats = internal global %union.anon.164 { %struct.bpf_raw_event_map { ptr @__tracepoint_tx_stats, ptr @__bpf_trace_tx_stats, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_queues_stats = internal global %union.anon.165 { %struct.bpf_raw_event_map { ptr @__tracepoint_queues_stats, ptr @__bpf_trace_queues_stats, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@hif_msg_print_map = internal constant { [37 x %struct.trace_print_flags], [88 x i8] } { [37 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 12, ptr @.str.113 }, %struct.trace_print_flags { i32 24, ptr @.str.114 }, %struct.trace_print_flags { i32 19, ptr @.str.115 }, %struct.trace_print_flags { i32 11, ptr @.str.116 }, %struct.trace_print_flags { i32 28, ptr @.str.117 }, %struct.trace_print_flags { i32 5, ptr @.str.118 }, %struct.trace_print_flags { i32 13, ptr @.str.119 }, %struct.trace_print_flags { i32 10, ptr @.str.120 }, %struct.trace_print_flags { i32 17, ptr @.str.121 }, %struct.trace_print_flags { i32 16, ptr @.str.122 }, %struct.trace_print_flags { i32 23, ptr @.str.123 }, %struct.trace_print_flags { i32 7, ptr @.str.124 }, %struct.trace_print_flags { i32 8, ptr @.str.125 }, %struct.trace_print_flags { i32 4, ptr @.str.126 }, %struct.trace_print_flags { i32 30, ptr @.str.127 }, %struct.trace_print_flags { i32 27, ptr @.str.128 }, %struct.trace_print_flags { i32 6, ptr @.str.129 }, %struct.trace_print_flags { i32 9, ptr @.str.130 }, %struct.trace_print_flags { i32 38, ptr @.str.131 }, %struct.trace_print_flags { i32 42, ptr @.str.132 }, %struct.trace_print_flags { i32 39, ptr @.str.133 }, %struct.trace_print_flags { i32 41, ptr @.str.134 }, %struct.trace_print_flags { i32 40, ptr @.str.135 }, %struct.trace_print_flags { i32 50, ptr @.str.136 }, %struct.trace_print_flags { i32 133, ptr @.str.137 }, %struct.trace_print_flags { i32 143, ptr @.str.138 }, %struct.trace_print_flags { i32 132, ptr @.str.139 }, %struct.trace_print_flags { i32 134, ptr @.str.140 }, %struct.trace_print_flags { i32 137, ptr @.str.141 }, %struct.trace_print_flags { i32 140, ptr @.str.142 }, %struct.trace_print_flags { i32 229, ptr @.str.135 }, %struct.trace_print_flags { i32 228, ptr @.str.143 }, %struct.trace_print_flags { i32 224, ptr @.str.144 }, %struct.trace_print_flags { i32 227, ptr @.str.145 }, %struct.trace_print_flags { i32 226, ptr @.str.146 }, %struct.trace_print_flags { i32 225, ptr @.str.147 }, %struct.trace_print_flags { i32 -1, ptr null }], [88 x i8] zeroinitializer }, align 32
@hif_mib_print_map = internal constant { [48 x %struct.trace_print_flags], [96 x i8] } { [48 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 8217, ptr @.str.151 }, %struct.trace_print_flags { i32 8275, ptr @.str.152 }, %struct.trace_print_flags { i32 8221, ptr @.str.153 }, %struct.trace_print_flags { i32 8220, ptr @.str.154 }, %struct.trace_print_flags { i32 8278, ptr @.str.155 }, %struct.trace_print_flags { i32 8265, ptr @.str.156 }, %struct.trace_print_flags { i32 8267, ptr @.str.157 }, %struct.trace_print_flags { i32 8195, ptr @.str.158 }, %struct.trace_print_flags { i32 8215, ptr @.str.159 }, %struct.trace_print_flags { i32 8243, ptr @.str.160 }, %struct.trace_print_flags { i32 8262, ptr @.str.161 }, %struct.trace_print_flags { i32 8256, ptr @.str.162 }, %struct.trace_print_flags { i32 8258, ptr @.str.163 }, %struct.trace_print_flags { i32 8257, ptr @.str.164 }, %struct.trace_print_flags { i32 8260, ptr @.str.165 }, %struct.trace_print_flags { i32 8259, ptr @.str.166 }, %struct.trace_print_flags { i32 8208, ptr @.str.167 }, %struct.trace_print_flags { i32 8245, ptr @.str.168 }, %struct.trace_print_flags { i32 8193, ptr @.str.169 }, %struct.trace_print_flags { i32 8192, ptr @.str.170 }, %struct.trace_print_flags { i32 8194, ptr @.str.171 }, %struct.trace_print_flags { i32 8240, ptr @.str.172 }, %struct.trace_print_flags { i32 8276, ptr @.str.173 }, %struct.trace_print_flags { i32 8277, ptr @.str.174 }, %struct.trace_print_flags { i32 8212, ptr @.str.175 }, %struct.trace_print_flags { i32 8213, ptr @.str.176 }, %struct.trace_print_flags { i32 8274, ptr @.str.177 }, %struct.trace_print_flags { i32 8211, ptr @.str.178 }, %struct.trace_print_flags { i32 8210, ptr @.str.179 }, %struct.trace_print_flags { i32 8244, ptr @.str.180 }, %struct.trace_print_flags { i32 8263, ptr @.str.181 }, %struct.trace_print_flags { i32 8218, ptr @.str.182 }, %struct.trace_print_flags { i32 8268, ptr @.str.183 }, %struct.trace_print_flags { i32 8209, ptr @.str.184 }, %struct.trace_print_flags { i32 8272, ptr @.str.185 }, %struct.trace_print_flags { i32 8266, ptr @.str.186 }, %struct.trace_print_flags { i32 8219, ptr @.str.187 }, %struct.trace_print_flags { i32 8269, ptr @.str.188 }, %struct.trace_print_flags { i32 8216, ptr @.str.189 }, %struct.trace_print_flags { i32 8273, ptr @.str.190 }, %struct.trace_print_flags { i32 8271, ptr @.str.191 }, %struct.trace_print_flags { i32 8270, ptr @.str.192 }, %struct.trace_print_flags { i32 8261, ptr @.str.193 }, %struct.trace_print_flags { i32 8242, ptr @.str.194 }, %struct.trace_print_flags { i32 8264, ptr @.str.195 }, %struct.trace_print_flags { i32 8241, ptr @.str.196 }, %struct.trace_print_flags { i32 8214, ptr @.str.197 }, %struct.trace_print_flags { i32 -1, ptr null }], [96 x i8] zeroinitializer }, align 32
@wfx_reg_print_map = internal constant { [9 x %struct.trace_print_flags], [56 x i8] } { [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.206 }, %struct.trace_print_flags { i32 1, ptr @.str.207 }, %struct.trace_print_flags { i32 2, ptr @.str.208 }, %struct.trace_print_flags { i32 3, ptr @.str.209 }, %struct.trace_print_flags { i32 4, ptr @.str.210 }, %struct.trace_print_flags { i32 5, ptr @.str.211 }, %struct.trace_print_flags { i32 6, ptr @.str.212 }, %struct.trace_print_flags { i32 7, ptr @.str.213 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"counters\00", [23 x i8] zeroinitializer }, align 32
@wfx_counters_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wfx_counters_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_stats\00", [23 x i8] zeroinitializer }, align 32
@wfx_rx_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wfx_rx_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_power_loop\00", [18 x i8] zeroinitializer }, align 32
@wfx_tx_power_loop_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wfx_tx_power_loop_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send_pds\00", [23 x i8] zeroinitializer }, align 32
@wfx_send_pds_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @wfx_send_pds_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_hif_msg\00", [19 x i8] zeroinitializer }, align 32
@wfx_send_hif_msg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wfx_send_hif_msg_read, ptr @wfx_send_hif_msg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wfx_send_hif_msg_open, ptr null, ptr @wfx_send_hif_msg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ps_timeout\00", [21 x i8] zeroinitializer }, align 32
@wfx_ps_timeout_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wfx_ps_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IND\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CNF\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"REQ\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_fill_level\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msg_id\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msg_type\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msg_len\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"buf_len\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"if_id\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mib\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u8[128]\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:%d:%s_%s%s%s: %s%s (%d bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@trace_raw_output_hif_data.symbols = internal constant { [38 x %struct.trace_print_flags], [80 x i8] } { [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 12, ptr @.str.113 }, %struct.trace_print_flags { i32 24, ptr @.str.114 }, %struct.trace_print_flags { i32 19, ptr @.str.115 }, %struct.trace_print_flags { i32 11, ptr @.str.116 }, %struct.trace_print_flags { i32 28, ptr @.str.117 }, %struct.trace_print_flags { i32 5, ptr @.str.118 }, %struct.trace_print_flags { i32 13, ptr @.str.119 }, %struct.trace_print_flags { i32 10, ptr @.str.120 }, %struct.trace_print_flags { i32 17, ptr @.str.121 }, %struct.trace_print_flags { i32 16, ptr @.str.122 }, %struct.trace_print_flags { i32 23, ptr @.str.123 }, %struct.trace_print_flags { i32 7, ptr @.str.124 }, %struct.trace_print_flags { i32 8, ptr @.str.125 }, %struct.trace_print_flags { i32 4, ptr @.str.126 }, %struct.trace_print_flags { i32 30, ptr @.str.127 }, %struct.trace_print_flags { i32 27, ptr @.str.128 }, %struct.trace_print_flags { i32 6, ptr @.str.129 }, %struct.trace_print_flags { i32 9, ptr @.str.130 }, %struct.trace_print_flags { i32 38, ptr @.str.131 }, %struct.trace_print_flags { i32 42, ptr @.str.132 }, %struct.trace_print_flags { i32 39, ptr @.str.133 }, %struct.trace_print_flags { i32 41, ptr @.str.134 }, %struct.trace_print_flags { i32 40, ptr @.str.135 }, %struct.trace_print_flags { i32 50, ptr @.str.136 }, %struct.trace_print_flags { i32 133, ptr @.str.137 }, %struct.trace_print_flags { i32 143, ptr @.str.138 }, %struct.trace_print_flags { i32 132, ptr @.str.139 }, %struct.trace_print_flags { i32 134, ptr @.str.140 }, %struct.trace_print_flags { i32 137, ptr @.str.141 }, %struct.trace_print_flags { i32 140, ptr @.str.142 }, %struct.trace_print_flags { i32 229, ptr @.str.135 }, %struct.trace_print_flags { i32 228, ptr @.str.143 }, %struct.trace_print_flags { i32 224, ptr @.str.144 }, %struct.trace_print_flags { i32 227, ptr @.str.145 }, %struct.trace_print_flags { i32 226, ptr @.str.146 }, %struct.trace_print_flags { i32 225, ptr @.str.147 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [80 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADD_KEY\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BEACON_TRANSMIT\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EDCA_QUEUE_PARAMS\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JOIN\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAP_LINK\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READ_MIB\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REMOVE_KEY\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESET\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_BSS_PARAMS\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_PM_MODE\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"START\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"START_SCAN\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STOP_SCAN\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MULTI_TRANSMIT\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UPDATE_IE\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WRITE_MIB\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CONFIGURATION\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CONTROL_GPIO\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PREVENT_ROLLBACK\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_SL_MAC_KEY\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SL_CONFIGURE\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SL_EXCHANGE_PUB_KEYS\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SHUT_DOWN\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EVENT\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"JOIN_COMPLETE\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCAN_CMPL\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SET_PM_MODE_CMPL\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SUSPEND_RESUME_TX\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EXCEPTION\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GENERIC\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WAKEUP\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STARTUP\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@trace_raw_output_hif_data.symbols.150 = internal constant { [49 x %struct.trace_print_flags], [120 x i8] } { [49 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 8217, ptr @.str.151 }, %struct.trace_print_flags { i32 8275, ptr @.str.152 }, %struct.trace_print_flags { i32 8221, ptr @.str.153 }, %struct.trace_print_flags { i32 8220, ptr @.str.154 }, %struct.trace_print_flags { i32 8278, ptr @.str.155 }, %struct.trace_print_flags { i32 8265, ptr @.str.156 }, %struct.trace_print_flags { i32 8267, ptr @.str.157 }, %struct.trace_print_flags { i32 8195, ptr @.str.158 }, %struct.trace_print_flags { i32 8215, ptr @.str.159 }, %struct.trace_print_flags { i32 8243, ptr @.str.160 }, %struct.trace_print_flags { i32 8262, ptr @.str.161 }, %struct.trace_print_flags { i32 8256, ptr @.str.162 }, %struct.trace_print_flags { i32 8258, ptr @.str.163 }, %struct.trace_print_flags { i32 8257, ptr @.str.164 }, %struct.trace_print_flags { i32 8260, ptr @.str.165 }, %struct.trace_print_flags { i32 8259, ptr @.str.166 }, %struct.trace_print_flags { i32 8208, ptr @.str.167 }, %struct.trace_print_flags { i32 8245, ptr @.str.168 }, %struct.trace_print_flags { i32 8193, ptr @.str.169 }, %struct.trace_print_flags { i32 8192, ptr @.str.170 }, %struct.trace_print_flags { i32 8194, ptr @.str.171 }, %struct.trace_print_flags { i32 8240, ptr @.str.172 }, %struct.trace_print_flags { i32 8276, ptr @.str.173 }, %struct.trace_print_flags { i32 8277, ptr @.str.174 }, %struct.trace_print_flags { i32 8212, ptr @.str.175 }, %struct.trace_print_flags { i32 8213, ptr @.str.176 }, %struct.trace_print_flags { i32 8274, ptr @.str.177 }, %struct.trace_print_flags { i32 8211, ptr @.str.178 }, %struct.trace_print_flags { i32 8210, ptr @.str.179 }, %struct.trace_print_flags { i32 8244, ptr @.str.180 }, %struct.trace_print_flags { i32 8263, ptr @.str.181 }, %struct.trace_print_flags { i32 8218, ptr @.str.182 }, %struct.trace_print_flags { i32 8268, ptr @.str.183 }, %struct.trace_print_flags { i32 8209, ptr @.str.184 }, %struct.trace_print_flags { i32 8272, ptr @.str.185 }, %struct.trace_print_flags { i32 8266, ptr @.str.186 }, %struct.trace_print_flags { i32 8219, ptr @.str.187 }, %struct.trace_print_flags { i32 8269, ptr @.str.188 }, %struct.trace_print_flags { i32 8216, ptr @.str.189 }, %struct.trace_print_flags { i32 8273, ptr @.str.190 }, %struct.trace_print_flags { i32 8271, ptr @.str.191 }, %struct.trace_print_flags { i32 8270, ptr @.str.192 }, %struct.trace_print_flags { i32 8261, ptr @.str.193 }, %struct.trace_print_flags { i32 8242, ptr @.str.194 }, %struct.trace_print_flags { i32 8264, ptr @.str.195 }, %struct.trace_print_flags { i32 8241, ptr @.str.196 }, %struct.trace_print_flags { i32 8214, ptr @.str.197 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [120 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ARP_IP_ADDRESSES_TABLE\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ARP_KEEP_ALIVE_PERIOD\00", [42 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BEACON_FILTER_ENABLE\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BEACON_FILTER_TABLE\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BEACON_STATS\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BEACON_WAKEUP_PERIOD\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BLOCK_ACK_POLICY\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CCA_CONFIG\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CONFIG_DATA_FILTER\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"COUNTERS_TABLE\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CURRENT_TX_POWER_LEVEL\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DOT11_MAC_ADDRESS\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DOT11_MAX_RECEIVE_LIFETIME\00", [37 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DOT11_MAX_TRANSMIT_MSDU_LIFETIME\00", [63 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DOT11_RTS_THRESHOLD\00", [44 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DOT11_WEP_DEFAULT_KEY_ID\00", [39 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ETHERTYPE_DATAFRAME_CONDITION\00", [34 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EXTENDED_COUNTERS_TABLE\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GL_BLOCK_ACK_INFO\00", [46 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GL_OPERATIONAL_POWER_MODE\00", [38 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GL_SET_MULTI_MSG\00", [47 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GRP_SEQ_COUNTER\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INACTIVITY_TIMER\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERFACE_PROTECTION\00", [43 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IPV4_ADDR_DATAFRAME_CONDITION\00", [34 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IPV6_ADDR_DATAFRAME_CONDITION\00", [34 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"KEEP_ALIVE_PERIOD\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAC_ADDR_DATAFRAME_CONDITION\00", [35 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MAGIC_DATAFRAME_CONDITION\00", [38 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAX_TX_POWER_LEVEL\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NON_ERP_PROTECTION\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NS_IP_ADDRESSES_TABLE\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"OVERRIDE_INTERNAL_TX_RATE\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PORT_DATAFRAME_CONDITION\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PROTECTED_MGMT_POLICY\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RCPI_RSSI_THRESHOLD\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RX_FILTER\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_ASSOCIATION_MODE\00", [43 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_DATA_FILTERING\00", [45 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SET_HT_PROTECTION\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SET_TX_RATE_RETRY_POLICY\00", [39 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SET_UAPSD_INFORMATION\00", [42 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SLOT_TIME\00", [22 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STATISTICS_TABLE\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEMPLATE_FRAME\00", [17 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TSF_COUNTER\00", [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UC_MC_BC_DATAFRAME_CONDITION\00", [35 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ...\00", [27 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/%08x\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u8[32]\00", [25 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u8[10]\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"addr_str\00", [23 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s%s: %s%s (%d bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@trace_raw_output_io_data.symbols = internal constant { [10 x %struct.trace_print_flags], [48 x i8] } { [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.206 }, %struct.trace_print_flags { i32 1, ptr @.str.207 }, %struct.trace_print_flags { i32 2, ptr @.str.208 }, %struct.trace_print_flags { i32 3, ptr @.str.209 }, %struct.trace_print_flags { i32 4, ptr @.str.210 }, %struct.trace_print_flags { i32 5, ptr @.str.211 }, %struct.trace_print_flags { i32 6, ptr @.str.212 }, %struct.trace_print_flags { i32 7, ptr @.str.213 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONFIG\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CONTROL\00", [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUEUE\00", [26 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AHB\00", [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BASE_ADDR\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_GEN_R_W\00", [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FRAME_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s%s: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@trace_raw_output_io_data32.symbols = internal constant { [10 x %struct.trace_print_flags], [48 x i8] } { [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.206 }, %struct.trace_print_flags { i32 1, ptr @.str.207 }, %struct.trace_print_flags { i32 2, ptr @.str.208 }, %struct.trace_print_flags { i32 3, ptr @.str.209 }, %struct.trace_print_flags { i32 4, ptr @.str.210 }, %struct.trace_print_flags { i32 5, ptr @.str.211 }, %struct.trace_print_flags { i32 6, ptr @.str.212 }, %struct.trace_print_flags { i32 7, ptr @.str.213 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ignored\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CONTROL: %08x%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (ignored)\00", [21 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ind\00", [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cnf\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"IND/REQ/CNF:%3d/%3d/%3d, REQ in progress:%3d, WUP: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@trace_event_raw_event_tx_stats.hw_rate = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 1, i32 2, i32 3, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13], [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pkt_id\00", [25 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"delay_media\00", [20 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"delay_queue\00", [20 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"delay_fw\00", [23 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_failures\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"int[4]\00", [25 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_count\00", [23 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"packet ID: %08x, rate policy: %s %d|%d %d|%d %d|%d %d|%d -> %d attempt, Delays media/queue/total: %4dus/%4dus/%4dus\0A\00", [43 x i8] zeroinitializer }, align 32
@trace_raw_output_tx_stats.__flags = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.237 }, %struct.trace_print_flags { i32 2, ptr @.str.238 }, %struct.trace_print_flags { i32 4, ptr @.str.239 }, %struct.trace_print_flags { i32 8, ptr @.str.240 }, %struct.trace_print_flags { i32 16, ptr @.str.241 }, %struct.trace_print_flags { i32 32, ptr @.str.242 }, %struct.trace_print_flags { i32 64, ptr @.str.243 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Q\00", [30 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/wfx/./traces.h\00", [33 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vif_id\00", [25 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"queue_id\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"int[4 * 2]\00", [21 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drv\00", [28 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cab\00", [28 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"got skb from %d/%d, pend. hw/norm/cab: [ %d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d ] [ %d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d ]\0A\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@perf_trace_tx_stats.hw_rate = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 1, i32 2, i32 3, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13], [48 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%-24s %12s %12s %12s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iface 0\00", [24 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iface 1\00", [24 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%-24s %12d %12d %12d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_frames\00", [22 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_frames_multicast\00", [44 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_frames_success\00", [46 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_frames_retried\00", [46 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_frames_multi_retried\00", [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_frames_failed\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ack_failed\00", [21 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rts_success\00", [20 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rts_failed\00", [21 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_frames\00", [22 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_frames_multicast\00", [44 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_frames_success\00", [46 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_frames_failed\00", [47 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drop_plcp\00", [22 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"drop_fcs\00", [23 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drop_no_key\00", [20 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drop_decryption\00", [16 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drop_tkip_mic\00", [18 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drop_bip_mic\00", [19 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drop_cmac_icv\00", [18 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drop_cmac_replay\00", [47 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drop_ccmp_replay\00", [47 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drop_duplicate\00", [17 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_bcn_miss\00", [20 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_bcn_success\00", [17 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_bcn_dtim\00", [20 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_bcn_dtim_aid0_clr\00", [43 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_bcn_dtim_aid0_set\00", [43 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reserved[%02d]%12s %12d %12d %12d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Timestamp: %dus\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Low power clock: frequency %uHz, external %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Num. of frames: %d, PER (x10e4): %d, Throughput: %dKbps/s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"       Num. of      PER     RSSI      SNR      CFO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"        frames  (x10e4)    (dBm)     (dB)    (kHz)\0A\00", [44 x i8] zeroinitializer }, align 32
@channel_names = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr null, ptr null, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317], [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%5s %8d %8d %8d %8d %8d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1M\00", [29 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2M\00", [29 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5.5M\00", [27 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11M\00", [28 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6M\00", [29 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9M\00", [29 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12M\00", [28 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"18M\00", [28 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24M\00", [28 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"36M\00", [28 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"48M\00", [28 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"54M\00", [28 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS0\00", [27 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS1\00", [27 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS2\00", [27 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS3\00", [27 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS4\00", [27 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS5\00", [27 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS6\00", [27 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS7\00", [27 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx gain digital: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tx gain PA: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Target Pout: %d.%02d dBm\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FEM Pout: %d.%02d dBm\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Vpdet: %d mV\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Measure index: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wfx_send_pds_write.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.91, ptr @.str.324, ptr @.str.325, ptr @.str.326, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wfx_send_pds_write\00", [45 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/staging/wfx/debug.c\00", [36 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PDS data must be written in one transaction\00", [52 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wfx_send_hif_msg_write.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.91, ptr @.str.330, ptr @.str.325, ptr @.str.331, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.330 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wfx_send_hif_msg_write\00", [41 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"read previous result before start a new one\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.332 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.334 = private unnamed_addr constant [28 x i8] c"str__wfx__trace_system_name\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 36, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 95, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 155, i32 1 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 233, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant [28 x i8] c"trace_event_fields_hif_data\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_hif_data\00", align 1
@___asan_gen_.616 = private unnamed_addr constant [19 x i8] c"print_fmt_hif_data\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [15 x i8] c"event_hif_send\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 210, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant [15 x i8] c"event_hif_recv\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 215, i32 1 }
@___asan_gen_.625 = private unnamed_addr constant [27 x i8] c"trace_event_fields_io_data\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_io_data\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [18 x i8] c"print_fmt_io_data\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [15 x i8] c"event_io_write\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 269, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant [14 x i8] c"event_io_read\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 275, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant [29 x i8] c"trace_event_fields_io_data32\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_io_data32\00", align 1
@___asan_gen_.646 = private unnamed_addr constant [20 x i8] c"print_fmt_io_data32\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [17 x i8] c"event_io_write32\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 306, i32 1 }
@___asan_gen_.652 = private unnamed_addr constant [16 x i8] c"event_io_read32\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 311, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant [29 x i8] c"trace_event_fields_piggyback\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_piggyback\00", align 1
@___asan_gen_.661 = private unnamed_addr constant [20 x i8] c"print_fmt_piggyback\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [16 x i8] c"event_piggyback\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 333, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant [28 x i8] c"trace_event_fields_bh_stats\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_bh_stats\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [19 x i8] c"print_fmt_bh_stats\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [15 x i8] c"event_bh_stats\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [28 x i8] c"trace_event_fields_tx_stats\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_tx_stats\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [19 x i8] c"print_fmt_tx_stats\00", align 1
@___asan_gen_.688 = private unnamed_addr constant [15 x i8] c"event_tx_stats\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [32 x i8] c"trace_event_fields_queues_stats\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_queues_stats\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [23 x i8] c"print_fmt_queues_stats\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [19 x i8] c"event_queues_stats\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [18 x i8] c"hif_msg_print_map\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 22, i32 39 }
@___asan_gen_.706 = private unnamed_addr constant [18 x i8] c"hif_mib_print_map\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 26, i32 39 }
@___asan_gen_.709 = private unnamed_addr constant [18 x i8] c"wfx_reg_print_map\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 30, i32 39 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 354, i32 25 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 355, i32 22 }
@___asan_gen_.718 = private unnamed_addr constant [18 x i8] c"wfx_counters_fops\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 127, i32 1 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 356, i32 22 }
@___asan_gen_.724 = private unnamed_addr constant [18 x i8] c"wfx_rx_stats_fops\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 183, i32 1 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 357, i32 22 }
@___asan_gen_.730 = private unnamed_addr constant [23 x i8] c"wfx_tx_power_loop_fops\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 207, i32 1 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 359, i32 22 }
@___asan_gen_.736 = private unnamed_addr constant [18 x i8] c"wfx_send_pds_fops\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 232, i32 37 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 360, i32 22 }
@___asan_gen_.742 = private unnamed_addr constant [22 x i8] c"wfx_send_hif_msg_fops\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 321, i32 37 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 362, i32 22 }
@___asan_gen_.748 = private unnamed_addr constant [20 x i8] c"wfx_ps_timeout_fops\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 160, i32 1 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 238, i32 1 }
@___asan_gen_.1111 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 282, i32 1 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 317, i32 1 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 338, i32 1 }
@___asan_gen_.1180 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 442, i32 1 }
@___asan_gen_.1228 = private unnamed_addr constant [8 x i8] c"hw_rate\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant [34 x i8] c"../drivers/staging/wfx/./traces.h\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1229, i32 366, i32 1 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 44, i32 9 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 76, i32 18 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 77, i32 10 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 77, i32 20 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 77, i32 31 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 85, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 86, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 87, i32 2 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 88, i32 2 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 89, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 90, i32 2 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 92, i32 2 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 93, i32 2 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 94, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 96, i32 2 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 97, i32 2 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 98, i32 2 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 99, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 100, i32 2 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 101, i32 2 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 102, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 103, i32 2 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 104, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 105, i32 2 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 106, i32 2 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 107, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 108, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 109, i32 2 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 111, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 112, i32 2 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 113, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 114, i32 2 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 115, i32 2 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 120, i32 19 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 160, i32 18 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 161, i32 18 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 163, i32 27 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 163, i32 35 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 165, i32 6 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 167, i32 16 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 168, i32 16 }
@___asan_gen_.1357 = private unnamed_addr constant [14 x i8] c"channel_names\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 129, i32 27 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 171, i32 20 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 130, i32 8 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 131, i32 8 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 132, i32 8 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 133, i32 8 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 135, i32 8 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 136, i32 8 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 137, i32 8 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 138, i32 8 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 139, i32 9 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 140, i32 9 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 141, i32 9 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 142, i32 9 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 143, i32 9 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 144, i32 9 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 145, i32 9 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 146, i32 9 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 147, i32 9 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 148, i32 9 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 149, i32 9 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 150, i32 9 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 193, i32 18 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 195, i32 18 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 197, i32 18 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 199, i32 18 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 201, i32 18 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 202, i32 18 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 218, i32 3 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1454, i32 230, i32 6 }
@___asan_gen_.1454 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1454, i32 214, i32 2 }
@___asan_gen_.1457 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1457, i32 174, i32 2 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 253, i32 3 }
@___asan_gen_.1465 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1469 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1469, i32 87, i32 2 }
@___asan_gen_.1471 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1472 = private constant [31 x i8] c"../drivers/staging/wfx/debug.c\00", align 1
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1472, i32 348, i32 1 }
@llvm.compiler.used = appending global [609 x ptr] [ptr @TRACE_SYSTEM_0x0, ptr @TRACE_SYSTEM_0x1, ptr @TRACE_SYSTEM_0x2, ptr @TRACE_SYSTEM_0x3, ptr @TRACE_SYSTEM_0x4, ptr @TRACE_SYSTEM_0x5, ptr @TRACE_SYSTEM_0x6, ptr @TRACE_SYSTEM_0x7, ptr @TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY, ptr @TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT, ptr @TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION, ptr @TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO, ptr @TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS, ptr @TRACE_SYSTEM_HIF_CNF_ID_JOIN, ptr @TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK, ptr @TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT, ptr @TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK, ptr @TRACE_SYSTEM_HIF_CNF_ID_READ_MIB, ptr @TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY, ptr @TRACE_SYSTEM_HIF_CNF_ID_RESET, ptr @TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS, ptr @TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE, ptr @TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY, ptr @TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN, ptr @TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE, ptr @TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS, ptr @TRACE_SYSTEM_HIF_CNF_ID_START, ptr @TRACE_SYSTEM_HIF_CNF_ID_START_SCAN, ptr @TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN, ptr @TRACE_SYSTEM_HIF_CNF_ID_TX, ptr @TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE, ptr @TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB, ptr @TRACE_SYSTEM_HIF_IND_ID_ERROR, ptr @TRACE_SYSTEM_HIF_IND_ID_EVENT, ptr @TRACE_SYSTEM_HIF_IND_ID_EXCEPTION, ptr @TRACE_SYSTEM_HIF_IND_ID_GENERIC, ptr @TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE, ptr @TRACE_SYSTEM_HIF_IND_ID_RX, ptr @TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL, ptr @TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL, ptr @TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS, ptr @TRACE_SYSTEM_HIF_IND_ID_STARTUP, ptr @TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX, ptr @TRACE_SYSTEM_HIF_IND_ID_WAKEUP, ptr @TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD, ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS, ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD, ptr @TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY, ptr @TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG, ptr @TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER, ptr @TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL, ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS, ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME, ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME, ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD, ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID, ptr @TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION, ptr @TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO, ptr @TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE, ptr @TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG, ptr @TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER, ptr @TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER, ptr @TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION, ptr @TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION, ptr @TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION, ptr @TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD, ptr @TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION, ptr @TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION, ptr @TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL, ptr @TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION, ptr @TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, ptr @TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION, ptr @TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY, ptr @TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD, ptr @TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER, ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE, ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING, ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION, ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY, ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION, ptr @TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME, ptr @TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE, ptr @TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME, ptr @TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER, ptr @TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_0x0, ptr @__TRACE_SYSTEM_0x1, ptr @__TRACE_SYSTEM_0x2, ptr @__TRACE_SYSTEM_0x3, ptr @__TRACE_SYSTEM_0x4, ptr @__TRACE_SYSTEM_0x5, ptr @__TRACE_SYSTEM_0x6, ptr @__TRACE_SYSTEM_0x7, ptr @__TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY, ptr @__TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT, ptr @__TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION, ptr @__TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO, ptr @__TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS, ptr @__TRACE_SYSTEM_HIF_CNF_ID_JOIN, ptr @__TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK, ptr @__TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT, ptr @__TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK, ptr @__TRACE_SYSTEM_HIF_CNF_ID_READ_MIB, ptr @__TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY, ptr @__TRACE_SYSTEM_HIF_CNF_ID_RESET, ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS, ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE, ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY, ptr @__TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN, ptr @__TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE, ptr @__TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS, ptr @__TRACE_SYSTEM_HIF_CNF_ID_START, ptr @__TRACE_SYSTEM_HIF_CNF_ID_START_SCAN, ptr @__TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN, ptr @__TRACE_SYSTEM_HIF_CNF_ID_TX, ptr @__TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE, ptr @__TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB, ptr @__TRACE_SYSTEM_HIF_IND_ID_ERROR, ptr @__TRACE_SYSTEM_HIF_IND_ID_EVENT, ptr @__TRACE_SYSTEM_HIF_IND_ID_EXCEPTION, ptr @__TRACE_SYSTEM_HIF_IND_ID_GENERIC, ptr @__TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE, ptr @__TRACE_SYSTEM_HIF_IND_ID_RX, ptr @__TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL, ptr @__TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL, ptr @__TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS, ptr @__TRACE_SYSTEM_HIF_IND_ID_STARTUP, ptr @__TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX, ptr @__TRACE_SYSTEM_HIF_IND_ID_WAKEUP, ptr @__TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD, ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS, ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD, ptr @__TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY, ptr @__TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG, ptr @__TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER, ptr @__TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL, ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS, ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME, ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME, ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD, ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID, ptr @__TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO, ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG, ptr @__TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER, ptr @__TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER, ptr @__TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD, ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL, ptr @__TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY, ptr @__TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD, ptr @__TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER, ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING, ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY, ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION, ptr @__TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME, ptr @__TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE, ptr @__TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME, ptr @__TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER, ptr @__TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION, ptr @__bpf_trace_tp_map_bh_stats, ptr @__bpf_trace_tp_map_hif_recv, ptr @__bpf_trace_tp_map_hif_send, ptr @__bpf_trace_tp_map_io_read, ptr @__bpf_trace_tp_map_io_read32, ptr @__bpf_trace_tp_map_io_write, ptr @__bpf_trace_tp_map_io_write32, ptr @__bpf_trace_tp_map_piggyback, ptr @__bpf_trace_tp_map_queues_stats, ptr @__bpf_trace_tp_map_tx_stats, ptr @__event_bh_stats, ptr @__event_hif_recv, ptr @__event_hif_send, ptr @__event_io_read, ptr @__event_io_read32, ptr @__event_io_write, ptr @__event_io_write32, ptr @__event_piggyback, ptr @__event_queues_stats, ptr @__event_tx_stats, ptr @__tracepoint_bh_stats, ptr @__tracepoint_hif_recv, ptr @__tracepoint_hif_send, ptr @__tracepoint_io_read, ptr @__tracepoint_io_read32, ptr @__tracepoint_io_write, ptr @__tracepoint_io_write32, ptr @__tracepoint_piggyback, ptr @__tracepoint_ptr_bh_stats, ptr @__tracepoint_ptr_hif_recv, ptr @__tracepoint_ptr_hif_send, ptr @__tracepoint_ptr_io_read, ptr @__tracepoint_ptr_io_read32, ptr @__tracepoint_ptr_io_write, ptr @__tracepoint_ptr_io_write32, ptr @__tracepoint_ptr_piggyback, ptr @__tracepoint_ptr_queues_stats, ptr @__tracepoint_ptr_tx_stats, ptr @__tracepoint_queues_stats, ptr @__tracepoint_tx_stats, ptr @event_bh_stats, ptr @event_class_bh_stats, ptr @event_class_hif_data, ptr @event_class_io_data, ptr @event_class_io_data32, ptr @event_class_piggyback, ptr @event_class_queues_stats, ptr @event_class_tx_stats, ptr @event_hif_recv, ptr @event_hif_send, ptr @event_io_read, ptr @event_io_read32, ptr @event_io_write, ptr @event_io_write32, ptr @event_piggyback, ptr @event_queues_stats, ptr @event_tx_stats, ptr @str__wfx__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @trace_event_fields_hif_data, ptr @trace_event_type_funcs_hif_data, ptr @print_fmt_hif_data, ptr @trace_event_fields_io_data, ptr @trace_event_type_funcs_io_data, ptr @print_fmt_io_data, ptr @trace_event_fields_io_data32, ptr @trace_event_type_funcs_io_data32, ptr @print_fmt_io_data32, ptr @trace_event_fields_piggyback, ptr @trace_event_type_funcs_piggyback, ptr @print_fmt_piggyback, ptr @trace_event_fields_bh_stats, ptr @trace_event_type_funcs_bh_stats, ptr @print_fmt_bh_stats, ptr @trace_event_fields_tx_stats, ptr @trace_event_type_funcs_tx_stats, ptr @print_fmt_tx_stats, ptr @trace_event_fields_queues_stats, ptr @trace_event_type_funcs_queues_stats, ptr @print_fmt_queues_stats, ptr @hif_msg_print_map, ptr @hif_mib_print_map, ptr @wfx_reg_print_map, ptr @.str.91, ptr @.str.92, ptr @wfx_counters_fops, ptr @.str.93, ptr @wfx_rx_stats_fops, ptr @.str.94, ptr @wfx_tx_power_loop_fops, ptr @.str.95, ptr @wfx_send_pds_fops, ptr @.str.96, ptr @wfx_send_hif_msg_fops, ptr @.str.97, ptr @wfx_ps_timeout_fops, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @trace_raw_output_hif_data.symbols, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @trace_raw_output_hif_data.symbols.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @trace_raw_output_io_data.symbols, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @trace_raw_output_io_data32.symbols, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @trace_event_raw_event_tx_stats.hw_rate, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @trace_raw_output_tx_stats.__flags, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @perf_trace_tx_stats.hw_rate, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @channel_names, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @init_completion.__key, ptr @.str.332, ptr @.str.333], section "llvm.metadata"
@0 = internal global [380 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__wfx__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hif_data to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hif_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hif_data to i32), i32 4679, i32 5856, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hif_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hif_recv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_io_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_io_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_io_data to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_io_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_io_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_io_data32 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_io_data32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_io_data32 to i32), i32 245, i32 288, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_io_write32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_io_read32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_piggyback to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_piggyback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_piggyback to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_piggyback to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bh_stats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bh_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bh_stats to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bh_stats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tx_stats to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tx_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tx_stats to i32), i32 474, i32 576, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tx_stats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_queues_stats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_queues_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_queues_stats to i32), i32 453, i32 576, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_queues_stats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_msg_print_map to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_mib_print_map to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_reg_print_map to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_counters_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_rx_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx_power_loop_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_pds_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_send_hif_msg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_ps_timeout_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_hif_data.symbols to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_hif_data.symbols.150 to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_io_data.symbols to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_io_data32.symbols to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_raw_event_tx_stats.hw_rate to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tx_stats.__flags to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_trace_tx_stats.hw_rate to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_names to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hif_send(ptr nocapture readnone %__data, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hif_send, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hif_recv(ptr nocapture readnone %__data, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hif_recv, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_io_write(ptr nocapture readnone %__data, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_io_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_io_read(ptr nocapture readnone %__data, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_io_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_io_write32(ptr nocapture readnone %__data, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_io_write32, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_io_read32(ptr nocapture readnone %__data, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_io_read32, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_piggyback(ptr nocapture readnone %__data, i32 noundef %val, i1 noundef zeroext %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_piggyback, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, i32 noundef %val, i1 noundef zeroext %ignored) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bh_stats(ptr nocapture readnone %__data, i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bh_stats, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tx_stats(ptr nocapture readnone %__data, ptr noundef %tx_cnf, ptr noundef %skb, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tx_stats, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %tx_cnf, ptr noundef %skb, i32 noundef %delay) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_queues_stats(ptr nocapture readnone %__data, ptr noundef %wdev, ptr noundef %elected_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_queues_stats, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %wdev, ptr noundef %elected_queue) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hif_data(ptr noundef %__data, ptr nocapture noundef readonly %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 164) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tx_fill_level7 = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %tx_fill_level7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tx_fill_level, ptr %tx_fill_level7, align 4
  %4 = ptrtoint ptr %hif to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %hif, align 1
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %msg_len = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %msg_len, align 4
  %id = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 1
  %conv8 = zext i8 %9 to i32
  %msg_id = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %msg_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8, ptr %msg_id, align 4
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv9 = zext i8 %bf.clear to i32
  %if_id = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 6
  %12 = ptrtoint ptr %if_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv9, ptr %if_id, align 4
  br i1 %is_recv, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %conv8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool13.not, ptr @.str.99, ptr @.str.98
  %msg_type = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %msg_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond, ptr %msg_type, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end6
  %msg_type14 = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %msg_type14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.100, ptr %msg_type14, align 4
  %.off = add nsw i32 %conv8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then22, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %body = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 3
  %15 = ptrtoint ptr %body to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %body, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #10
  %conv24 = zext i16 %17 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.else.if.end27_crit_edge, %if.then11
  %.sink = phi i32 [ %conv24, %if.then22 ], [ -1, %if.else.if.end27_crit_edge ], [ -1, %if.then11 ]
  %header_len.0 = phi i32 [ 4, %if.then22 ], [ 0, %if.else.if.end27_crit_edge ], [ 0, %if.then11 ]
  %mib26 = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 7
  %18 = ptrtoint ptr %mib26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %mib26, align 4
  %19 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %20)
  %cmp29 = icmp slt i32 %20, 128
  %phi.bo = add i32 %20, -4
  %cond31 = select i1 %cmp29, i32 %phi.bo, i32 124
  %sub32 = sub i32 %cond31, %header_len.0
  %buf_len = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub32, ptr %buf_len, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call3, i32 0, i32 8
  %body34 = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %body34, i32 %header_len.0
  %22 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %sub32)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hif_data(ptr noundef %__data, ptr nocapture noundef readonly %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 164, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tx_fill_level18 = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %tx_fill_level18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %tx_fill_level, ptr %tx_fill_level18, align 4
  %28 = ptrtoint ptr %hif to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %hif, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv = zext i16 %30 to i32
  %msg_len = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 4
  %31 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %msg_len, align 4
  %id = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 1
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id, align 1
  %conv19 = zext i8 %33 to i32
  %msg_id = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 2
  %34 = ptrtoint ptr %msg_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv19, ptr %msg_id, align 4
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %35 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv20 = zext i8 %bf.clear to i32
  %if_id = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 6
  %36 = ptrtoint ptr %if_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv20, ptr %if_id, align 4
  br i1 %is_recv, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %and24 = and i32 %conv19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond = select i1 %tobool25.not, ptr @.str.99, ptr @.str.98
  %msg_type = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 3
  %37 = ptrtoint ptr %msg_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cond, ptr %msg_type, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end17
  %msg_type26 = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 3
  %38 = ptrtoint ptr %msg_type26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.100, ptr %msg_type26, align 4
  %.off = add nsw i32 %conv19, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then35, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %body = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 3
  %39 = ptrtoint ptr %body to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %body, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #10
  %conv37 = zext i16 %41 to i32
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.else.if.end40_crit_edge, %if.then22
  %.sink = phi i32 [ %conv37, %if.then35 ], [ -1, %if.else.if.end40_crit_edge ], [ -1, %if.then22 ]
  %header_len.0 = phi i32 [ 4, %if.then35 ], [ 0, %if.else.if.end40_crit_edge ], [ 0, %if.then22 ]
  %mib39 = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 7
  %42 = ptrtoint ptr %mib39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %mib39, align 4
  %43 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %44)
  %cmp43 = icmp slt i32 %44, 128
  %phi.bo = add i32 %44, -4
  %cond45 = select i1 %cmp43, i32 %phi.bo, i32 124
  %sub47 = sub i32 %cond45, %header_len.0
  %buf_len = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 5
  %45 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub47, ptr %buf_len, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %call14, i32 0, i32 8
  %body49 = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %body49, i32 %header_len.0
  %46 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %sub47)
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 164, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_io_data(ptr noundef %__data, i32 noundef %reg, i32 noundef %addr, ptr nocapture noundef readonly %io_buf, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 68) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %reg6 = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reg, ptr %reg6, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %addr, ptr %addr7, align 4
  %msg_len = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %msg_len, align 4
  %6 = call i32 @llvm.smin.i32(i32 %len, i32 32)
  %buf_len = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf_len, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call3, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %buf, ptr %io_buf, i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp10 = icmp sgt i32 %addr, -1
  %addr_str = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call3, i32 0, i32 6
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %addr_str, i32 noundef 10, ptr noundef nonnull @.str.199, i32 noundef %addr)
  br label %if.end15

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %addr_str to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %addr_str, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_io_data(ptr noundef %__data, i32 noundef %reg, i32 noundef %addr, ptr nocapture noundef readonly %io_buf, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %reg17 = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %reg17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %reg, ptr %reg17, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %addr18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %addr, ptr %addr18, align 4
  %msg_len = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %len, ptr %msg_len, align 4
  %30 = call i32 @llvm.smin.i32(i32 %len, i32 32)
  %buf_len = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call13, i32 0, i32 4
  %31 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %buf_len, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call13, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %buf, ptr %io_buf, i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp22 = icmp sgt i32 %addr, -1
  %addr_str = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %call13, i32 0, i32 6
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %addr_str, i32 noundef 10, ptr noundef nonnull @.str.199, i32 noundef %addr)
  br label %if.end28

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %addr_str to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %addr_str, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_io_data32(ptr noundef %__data, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %reg6 = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reg, ptr %reg6, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %addr, ptr %addr7, align 4
  %val8 = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %val8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp = icmp sgt i32 %addr, -1
  %addr_str = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call3, i32 0, i32 4
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %addr_str, i32 noundef 10, ptr noundef nonnull @.str.199, i32 noundef %addr)
  br label %if.end12

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %addr_str to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr_str, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_io_data32(ptr noundef %__data, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %reg17 = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %reg17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %reg, ptr %reg17, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %addr18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %addr, ptr %addr18, align 4
  %val19 = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %val19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %val, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp = icmp sgt i32 %addr, -1
  %addr_str = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %call13, i32 0, i32 4
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %addr_str, i32 noundef 10, ptr noundef nonnull @.str.199, i32 noundef %addr)
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %addr_str to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %addr_str, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_piggyback(ptr noundef %__data, i32 noundef %val, i1 noundef zeroext %ignored) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %ignored to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %val7 = getelementptr inbounds %struct.trace_event_raw_piggyback, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %val, ptr %val7, align 4
  %ignored9 = getelementptr inbounds %struct.trace_event_raw_piggyback, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ignored9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %ignored9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_piggyback(ptr noundef %__data, i32 noundef %val, i1 noundef zeroext %ignored) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %ignored to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %val18 = getelementptr inbounds %struct.trace_event_raw_piggyback, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %val18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %val, ptr %val18, align 4
  %ignored20 = getelementptr inbounds %struct.trace_event_raw_piggyback, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %ignored20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %ignored20, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bh_stats(ptr noundef %__data, i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %release to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ind7 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ind7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ind, ptr %ind7, align 4
  %req8 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %req8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %req, ptr %req8, align 4
  %cnf9 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %cnf9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cnf, ptr %cnf9, align 4
  %busy10 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %busy10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %busy, ptr %busy10, align 4
  %release12 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %release12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %release12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bh_stats(ptr noundef %__data, i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %release to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ind18 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %ind18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ind, ptr %ind18, align 4
  %req19 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %req19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %req, ptr %req19, align 4
  %cnf20 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %cnf20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cnf, ptr %cnf20, align 4
  %busy21 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %busy21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %busy, ptr %busy21, align 4
  %release23 = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %call14, i32 0, i32 5
  %31 = ptrtoint ptr %release23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %release23, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tx_stats(ptr noundef %__data, ptr nocapture noundef readonly %tx_cnf, ptr nocapture noundef readonly %skb, i32 noundef %delay) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %packet_id = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 1
  %4 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %packet_id, align 1
  %pkt_id = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %pkt_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pkt_id, align 4
  %media_delay = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 6
  %7 = ptrtoint ptr %media_delay to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %media_delay, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %delay_media = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %delay_media to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %delay_media, align 4
  %tx_queue_delay = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 7
  %11 = ptrtoint ptr %tx_queue_delay to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %tx_queue_delay, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %delay_queue = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %delay_queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %delay_queue, align 4
  %delay_fw = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 4
  %15 = ptrtoint ptr %delay_fw to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %delay, ptr %delay_fw, align 4
  %ack_failures = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 3
  %16 = ptrtoint ptr %ack_failures to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ack_failures, align 1
  %conv = zext i8 %17 to i32
  %ack_failures7 = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %ack_failures7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %ack_failures7, align 4
  %19 = ptrtoint ptr %tx_cnf to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %tx_cnf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.end5.if.end14_crit_edge, label %if.then11

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %add13 = add nuw nsw i32 %conv, 1
  %21 = ptrtoint ptr %ack_failures7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add13, ptr %ack_failures7, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end5.if.end14_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %23 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not = icmp eq i16 %23, 0
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %idxprom = sext i8 %25 to i32
  br i1 %tobool17.not, label %if.else, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24 = getelementptr [12 x i32], ptr @trace_event_raw_event_tx_stats.hw_rate, i32 0, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end14.if.end27_crit_edge
  %conv20.sink = phi i32 [ %27, %if.else ], [ %idxprom, %if.end14.if.end27_crit_edge ]
  %28 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 7, i32 0
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv20.sink, ptr %28, align 4
  %count = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %30 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load29 = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load29, 11
  %conv30 = zext i16 %bf.lshr to i32
  %arrayidx31 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 8, i32 0
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv30, ptr %arrayidx31, align 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %bf.load.1 = load i16, ptr %flags, align 1
  %33 = and i16 %bf.load.1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool17.not.1 = icmp eq i16 %33, 0
  %arrayidx22.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %34 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx22.1, align 1
  %idxprom.1 = sext i8 %35 to i32
  br i1 %tobool17.not.1, label %if.else.1, label %if.end27.if.end27.1_crit_edge

if.end27.if.end27.1_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.1

if.else.1:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.1 = getelementptr [12 x i32], ptr @trace_event_raw_event_tx_stats.hw_rate, i32 0, i32 %idxprom.1
  %36 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24.1, align 4
  br label %if.end27.1

if.end27.1:                                       ; preds = %if.else.1, %if.end27.if.end27.1_crit_edge
  %conv20.1.sink = phi i32 [ %37, %if.else.1 ], [ %idxprom.1, %if.end27.if.end27.1_crit_edge ]
  %38 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv20.1.sink, ptr %38, align 4
  %count.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %count.1 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %bf.load29.1 = load i16, ptr %count.1, align 1
  %bf.lshr.1 = lshr i16 %bf.load29.1, 11
  %conv30.1 = zext i16 %bf.lshr.1 to i32
  %arrayidx31.1 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv30.1, ptr %arrayidx31.1, align 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.2 = load i16, ptr %flags, align 1
  %43 = and i16 %bf.load.2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool17.not.2 = icmp eq i16 %43, 0
  %arrayidx22.2 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %44 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx22.2, align 1
  %idxprom.2 = sext i8 %45 to i32
  br i1 %tobool17.not.2, label %if.else.2, label %if.end27.1.if.end27.2_crit_edge

if.end27.1.if.end27.2_crit_edge:                  ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.2

if.else.2:                                        ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.2 = getelementptr [12 x i32], ptr @trace_event_raw_event_tx_stats.hw_rate, i32 0, i32 %idxprom.2
  %46 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx24.2, align 4
  br label %if.end27.2

if.end27.2:                                       ; preds = %if.else.2, %if.end27.1.if.end27.2_crit_edge
  %conv20.2.sink = phi i32 [ %47, %if.else.2 ], [ %idxprom.2, %if.end27.1.if.end27.2_crit_edge ]
  %48 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv20.2.sink, ptr %48, align 4
  %count.2 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %50 = ptrtoint ptr %count.2 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load29.2 = load i16, ptr %count.2, align 1
  %bf.lshr.2 = lshr i16 %bf.load29.2, 11
  %conv30.2 = zext i16 %bf.lshr.2 to i32
  %arrayidx31.2 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 8, i32 2
  %51 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv30.2, ptr %arrayidx31.2, align 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load.3 = load i16, ptr %flags, align 1
  %53 = and i16 %bf.load.3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool17.not.3 = icmp eq i16 %53, 0
  %arrayidx22.3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %54 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx22.3, align 1
  %idxprom.3 = sext i8 %55 to i32
  br i1 %tobool17.not.3, label %if.else.3, label %if.end27.2.if.end27.3_crit_edge

if.end27.2.if.end27.3_crit_edge:                  ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.3

if.else.3:                                        ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.3 = getelementptr [12 x i32], ptr @trace_event_raw_event_tx_stats.hw_rate, i32 0, i32 %idxprom.3
  %56 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx24.3, align 4
  br label %if.end27.3

if.end27.3:                                       ; preds = %if.else.3, %if.end27.2.if.end27.3_crit_edge
  %conv20.3.sink = phi i32 [ %57, %if.else.3 ], [ %idxprom.3, %if.end27.2.if.end27.3_crit_edge ]
  %58 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 7, i32 3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv20.3.sink, ptr %58, align 4
  %count.3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %60 = ptrtoint ptr %count.3 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %bf.load29.3 = load i16, ptr %count.3, align 1
  %bf.lshr.3 = lshr i16 %bf.load29.3, 11
  %conv30.3 = zext i16 %bf.lshr.3 to i32
  %arrayidx31.3 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 8, i32 3
  %61 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv30.3, ptr %arrayidx31.3, align 4
  %flags32 = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call3, i32 0, i32 6
  %62 = ptrtoint ptr %flags32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flags32, align 4
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load35 = load i16, ptr %flags, align 1
  %64 = lshr i16 %bf.load35, 3
  %.lobit = and i16 %64, 1
  %65 = zext i16 %.lobit to i32
  store i32 %65, ptr %flags32, align 4
  %bf.load45 = load i16, ptr %flags, align 1
  %66 = and i16 %bf.load45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool49.not = icmp eq i16 %66, 0
  br i1 %tobool49.not, label %if.end27.3.if.end53_crit_edge, label %if.then50

if.end27.3.if.end53_crit_edge:                    ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then50:                                        ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #12
  %or52 = or i32 %65, 2
  %67 = ptrtoint ptr %flags32 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or52, ptr %flags32, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end27.3.if.end53_crit_edge
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %bf.load56 = load i16, ptr %flags, align 1
  %69 = and i16 %bf.load56, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool60.not = icmp eq i16 %69, 0
  br i1 %tobool60.not, label %if.end53.if.end64_crit_edge, label %if.then61

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags32, align 4
  %or63 = or i32 %71, 4
  store i32 %or63, ptr %flags32, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end53.if.end64_crit_edge
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %bf.load67 = load i16, ptr %flags, align 1
  %73 = and i16 %bf.load67, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool71.not = icmp eq i16 %73, 0
  br i1 %tobool71.not, label %if.end64.if.end75_crit_edge, label %if.then72

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags32, align 4
  %or74 = or i32 %75, 8
  store i32 %or74, ptr %flags32, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end64.if.end75_crit_edge
  %76 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cb, align 8
  %and77 = and i32 %77, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end82_crit_edge, label %if.then79

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags32, align 4
  %or81 = or i32 %79, 16
  store i32 %or81, ptr %flags32, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end75.if.end82_crit_edge
  %80 = ptrtoint ptr %tx_cnf to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %tx_cnf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool84.not = icmp eq i32 %81, 0
  br i1 %tobool84.not, label %if.end82.if.end95_crit_edge, label %if.end88

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.end88:                                         ; preds = %if.end82
  %82 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags32, align 4
  %or87 = or i32 %83, 32
  store i32 %or87, ptr %flags32, align 4
  %84 = ptrtoint ptr %tx_cnf to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %.pr = load i32, ptr %tx_cnf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 352321536, i32 %.pr)
  %cmp90 = icmp eq i32 %.pr, 352321536
  br i1 %cmp90, label %if.then92, label %if.end88.if.end95_crit_edge

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags32, align 4
  %or94 = or i32 %86, 64
  store i32 %or94, ptr %flags32, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end88.if.end95_crit_edge, %if.end82.if.end95_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tx_stats(ptr noundef %__data, ptr nocapture noundef readonly %tx_cnf, ptr nocapture noundef readonly %skb, i32 noundef %delay) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %packet_id = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 1
  %28 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %packet_id, align 1
  %pkt_id = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %pkt_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pkt_id, align 4
  %media_delay = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 6
  %31 = ptrtoint ptr %media_delay to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %media_delay, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %delay_media = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %delay_media to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %delay_media, align 4
  %tx_queue_delay = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 7
  %35 = ptrtoint ptr %tx_queue_delay to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %tx_queue_delay, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %delay_queue = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %delay_queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %delay_queue, align 4
  %delay_fw = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %delay_fw to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %delay, ptr %delay_fw, align 4
  %ack_failures = getelementptr inbounds %struct.hif_cnf_tx, ptr %tx_cnf, i32 0, i32 3
  %40 = ptrtoint ptr %ack_failures to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ack_failures, align 1
  %conv = zext i8 %41 to i32
  %ack_failures18 = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %ack_failures18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %ack_failures18, align 4
  %43 = ptrtoint ptr %tx_cnf to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %tx_cnf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool19.not = icmp ne i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool21.not = icmp eq i8 %41, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %if.end16.if.end25_crit_edge, label %if.then22

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %add24 = add nuw nsw i32 %conv, 1
  %45 = ptrtoint ptr %ack_failures18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add24, ptr %ack_failures18, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end16.if.end25_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %47 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool30.not = icmp eq i16 %47, 0
  %48 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %27, align 1
  %idxprom = sext i8 %49 to i32
  br i1 %tobool30.not, label %if.else, label %if.end25.if.end40_crit_edge

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37 = getelementptr [12 x i32], ptr @perf_trace_tx_stats.hw_rate, i32 0, i32 %idxprom
  %50 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx37, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end25.if.end40_crit_edge
  %conv33.sink = phi i32 [ %51, %if.else ], [ %idxprom, %if.end25.if.end40_crit_edge ]
  %52 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 7, i32 0
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv33.sink, ptr %52, align 4
  %count = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %54 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load42 = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load42, 11
  %conv43 = zext i16 %bf.lshr to i32
  %arrayidx44 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 8, i32 0
  %55 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv43, ptr %arrayidx44, align 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %bf.load.1 = load i16, ptr %flags, align 1
  %57 = and i16 %bf.load.1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool30.not.1 = icmp eq i16 %57, 0
  %arrayidx35.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %58 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx35.1, align 1
  %idxprom.1 = sext i8 %59 to i32
  br i1 %tobool30.not.1, label %if.else.1, label %if.end40.if.end40.1_crit_edge

if.end40.if.end40.1_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.1

if.else.1:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37.1 = getelementptr [12 x i32], ptr @perf_trace_tx_stats.hw_rate, i32 0, i32 %idxprom.1
  %60 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx37.1, align 4
  br label %if.end40.1

if.end40.1:                                       ; preds = %if.else.1, %if.end40.if.end40.1_crit_edge
  %conv33.1.sink = phi i32 [ %61, %if.else.1 ], [ %idxprom.1, %if.end40.if.end40.1_crit_edge ]
  %62 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv33.1.sink, ptr %62, align 4
  %count.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %64 = ptrtoint ptr %count.1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %bf.load42.1 = load i16, ptr %count.1, align 1
  %bf.lshr.1 = lshr i16 %bf.load42.1, 11
  %conv43.1 = zext i16 %bf.lshr.1 to i32
  %arrayidx44.1 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv43.1, ptr %arrayidx44.1, align 4
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %bf.load.2 = load i16, ptr %flags, align 1
  %67 = and i16 %bf.load.2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool30.not.2 = icmp eq i16 %67, 0
  %arrayidx35.2 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %68 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx35.2, align 1
  %idxprom.2 = sext i8 %69 to i32
  br i1 %tobool30.not.2, label %if.else.2, label %if.end40.1.if.end40.2_crit_edge

if.end40.1.if.end40.2_crit_edge:                  ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.2

if.else.2:                                        ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37.2 = getelementptr [12 x i32], ptr @perf_trace_tx_stats.hw_rate, i32 0, i32 %idxprom.2
  %70 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx37.2, align 4
  br label %if.end40.2

if.end40.2:                                       ; preds = %if.else.2, %if.end40.1.if.end40.2_crit_edge
  %conv33.2.sink = phi i32 [ %71, %if.else.2 ], [ %idxprom.2, %if.end40.1.if.end40.2_crit_edge ]
  %72 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 7, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv33.2.sink, ptr %72, align 4
  %count.2 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %74 = ptrtoint ptr %count.2 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %bf.load42.2 = load i16, ptr %count.2, align 1
  %bf.lshr.2 = lshr i16 %bf.load42.2, 11
  %conv43.2 = zext i16 %bf.lshr.2 to i32
  %arrayidx44.2 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 8, i32 2
  %75 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv43.2, ptr %arrayidx44.2, align 4
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %bf.load.3 = load i16, ptr %flags, align 1
  %77 = and i16 %bf.load.3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool30.not.3 = icmp eq i16 %77, 0
  %arrayidx35.3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %78 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx35.3, align 1
  %idxprom.3 = sext i8 %79 to i32
  br i1 %tobool30.not.3, label %if.else.3, label %if.end40.2.if.end40.3_crit_edge

if.end40.2.if.end40.3_crit_edge:                  ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.3

if.else.3:                                        ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37.3 = getelementptr [12 x i32], ptr @perf_trace_tx_stats.hw_rate, i32 0, i32 %idxprom.3
  %80 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx37.3, align 4
  br label %if.end40.3

if.end40.3:                                       ; preds = %if.else.3, %if.end40.2.if.end40.3_crit_edge
  %conv33.3.sink = phi i32 [ %81, %if.else.3 ], [ %idxprom.3, %if.end40.2.if.end40.3_crit_edge ]
  %82 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 7, i32 3
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv33.3.sink, ptr %82, align 4
  %count.3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %84 = ptrtoint ptr %count.3 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %bf.load42.3 = load i16, ptr %count.3, align 1
  %bf.lshr.3 = lshr i16 %bf.load42.3, 11
  %conv43.3 = zext i16 %bf.lshr.3 to i32
  %arrayidx44.3 = getelementptr %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 8, i32 3
  %85 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv43.3, ptr %arrayidx44.3, align 4
  %flags45 = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %call13, i32 0, i32 6
  %86 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %flags45, align 4
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %bf.load48 = load i16, ptr %flags, align 1
  %88 = lshr i16 %bf.load48, 3
  %.lobit = and i16 %88, 1
  %89 = zext i16 %.lobit to i32
  store i32 %89, ptr %flags45, align 4
  %bf.load58 = load i16, ptr %flags, align 1
  %90 = and i16 %bf.load58, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool62.not = icmp eq i16 %90, 0
  br i1 %tobool62.not, label %if.end40.3.if.end66_crit_edge, label %if.then63

if.end40.3.if.end66_crit_edge:                    ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then63:                                        ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #12
  %or65 = or i32 %89, 2
  %91 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or65, ptr %flags45, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end40.3.if.end66_crit_edge
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %bf.load69 = load i16, ptr %flags, align 1
  %93 = and i16 %bf.load69, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool73.not = icmp eq i16 %93, 0
  br i1 %tobool73.not, label %if.end66.if.end77_crit_edge, label %if.then74

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags45, align 4
  %or76 = or i32 %95, 4
  store i32 %or76, ptr %flags45, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end66.if.end77_crit_edge
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %bf.load80 = load i16, ptr %flags, align 1
  %97 = and i16 %bf.load80, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool84.not = icmp eq i16 %97, 0
  br i1 %tobool84.not, label %if.end77.if.end88_crit_edge, label %if.then85

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags45, align 4
  %or87 = or i32 %99, 8
  store i32 %or87, ptr %flags45, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end77.if.end88_crit_edge
  %100 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cb, align 8
  %and90 = and i32 %101, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end95_crit_edge, label %if.then92

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags45, align 4
  %or94 = or i32 %103, 16
  store i32 %or94, ptr %flags45, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end88.if.end95_crit_edge
  %104 = ptrtoint ptr %tx_cnf to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %tx_cnf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool97.not = icmp eq i32 %105, 0
  br i1 %tobool97.not, label %if.end95.if.end108_crit_edge, label %if.end101

if.end95.if.end108_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end101:                                        ; preds = %if.end95
  %106 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags45, align 4
  %or100 = or i32 %107, 32
  store i32 %or100, ptr %flags45, align 4
  %108 = ptrtoint ptr %tx_cnf to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %.pr = load i32, ptr %tx_cnf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 352321536, i32 %.pr)
  %cmp103 = icmp eq i32 %.pr, 352321536
  br i1 %cmp103, label %if.then105, label %if.end101.if.end108_crit_edge

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags45, align 4
  %or107 = or i32 %110, 64
  store i32 %or107, ptr %flags45, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end101.if.end108_crit_edge, %if.end95.if.end108_crit_edge
  %111 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rctx, align 4
  %113 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %112, ptr noundef %__data, i64 noundef 1, ptr noundef %114, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_queues_stats(ptr noundef %__data, ptr nocapture noundef readonly %wdev, ptr noundef readnone %elected_queue) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !756

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !757

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 112) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %vif_id = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 1
  %queue_id = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 2
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 0
  %3 = call ptr @memset(ptr %vif_id, i32 255, i32 104)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %for.body.preheader
  %wvif.0 = phi ptr [ null, %for.body.preheader ], [ %retval.0.i93, %while.cond.backedge ]
  %tobool.not.i92 = icmp eq ptr %wvif.0, null
  %4 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !759
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %6, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %6, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i92, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %retval.0.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %retval.0.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i92, %cmp5.i
  %7 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !759
  %and.i.1.i = and i32 %7, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i.1.i
  %8 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %9, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %9, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %10 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %10, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i93 = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp9.not = icmp eq ptr %retval.0.i93, null
  br i1 %cmp9.not, label %wvif_iterate.exit.while.end_crit_edge, label %for.cond10.preheader

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.cond10.preheader:                             ; preds = %wvif_iterate.exit
  %id = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 3
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %mul = shl i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mul)
  %cmp14 = icmp sgt i32 %mul, 7
  br i1 %cmp14, label %do.end, label %for.cond10.preheader.if.end29_crit_edge, !prof !757

for.cond10.preheader.if.end29_crit_edge:          ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end:                                           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end, %for.cond10.preheader.if.end29_crit_edge
  %arrayidx36 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 0
  %pending_frames = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #10
  %13 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %pending_frames, align 4
  %arrayidx39 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 3, i32 %mul
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx39, align 4
  %qlen.i = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %arrayidx42 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 4, i32 %mul
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx42, align 4
  %qlen.i94 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %qlen.i94 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i94, align 4
  %arrayidx46 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 5, i32 %mul
  %21 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx46, align 4
  %cmp47 = icmp eq ptr %arrayidx36, %elected_queue
  br i1 %cmp47, label %if.then48, label %if.end29.for.inc53_crit_edge

if.end29.for.inc53_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53

if.then48:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %24 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vif_id, align 4
  %25 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %queue_id, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.then48, %if.end29.for.inc53_crit_edge
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %mul.1 = shl i32 %27, 2
  %add13.1 = or i32 %mul.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add13.1)
  %cmp14.1 = icmp sgt i32 %add13.1, 7
  br i1 %cmp14.1, label %do.end.1, label %for.inc53.if.end29.1_crit_edge, !prof !757

for.inc53.if.end29.1_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.1

do.end.1:                                         ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end29.1

if.end29.1:                                       ; preds = %do.end.1, %for.inc53.if.end29.1_crit_edge
  %arrayidx36.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 1
  %pending_frames.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 1, i32 2
  %call.i.i.1 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.1, i32 noundef 4) #10
  %28 = ptrtoint ptr %pending_frames.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %pending_frames.1, align 4
  %arrayidx39.1 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 3, i32 %add13.1
  %30 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx39.1, align 4
  %qlen.i.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.1, align 4
  %arrayidx42.1 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 4, i32 %add13.1
  %33 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx42.1, align 4
  %qlen.i94.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %qlen.i94.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i94.1, align 4
  %arrayidx46.1 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 5, i32 %add13.1
  %36 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx46.1, align 4
  %cmp47.1 = icmp eq ptr %arrayidx36.1, %elected_queue
  br i1 %cmp47.1, label %if.then48.1, label %if.end29.1.for.inc53.1_crit_edge

if.end29.1.for.inc53.1_crit_edge:                 ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.1

if.then48.1:                                      ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 4
  %39 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %vif_id, align 4
  %40 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %queue_id, align 4
  br label %for.inc53.1

for.inc53.1:                                      ; preds = %if.then48.1, %if.end29.1.for.inc53.1_crit_edge
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %mul.2 = shl i32 %42, 2
  %add13.2 = or i32 %mul.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add13.2)
  %cmp14.2 = icmp sgt i32 %add13.2, 7
  br i1 %cmp14.2, label %do.end.2, label %for.inc53.1.if.end29.2_crit_edge, !prof !757

for.inc53.1.if.end29.2_crit_edge:                 ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.2

do.end.2:                                         ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end29.2

if.end29.2:                                       ; preds = %do.end.2, %for.inc53.1.if.end29.2_crit_edge
  %arrayidx36.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 2
  %pending_frames.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 2, i32 2
  %call.i.i.2 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.2, i32 noundef 4) #10
  %43 = ptrtoint ptr %pending_frames.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %pending_frames.2, align 4
  %arrayidx39.2 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 3, i32 %add13.2
  %45 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx39.2, align 4
  %qlen.i.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.2, align 4
  %arrayidx42.2 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 4, i32 %add13.2
  %48 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx42.2, align 4
  %qlen.i94.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 2, i32 1, i32 1
  %49 = ptrtoint ptr %qlen.i94.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qlen.i94.2, align 4
  %arrayidx46.2 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 5, i32 %add13.2
  %51 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx46.2, align 4
  %cmp47.2 = icmp eq ptr %arrayidx36.2, %elected_queue
  br i1 %cmp47.2, label %if.then48.2, label %if.end29.2.for.inc53.2_crit_edge

if.end29.2.for.inc53.2_crit_edge:                 ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.2

if.then48.2:                                      ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  %54 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %vif_id, align 4
  %55 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %queue_id, align 4
  br label %for.inc53.2

for.inc53.2:                                      ; preds = %if.then48.2, %if.end29.2.for.inc53.2_crit_edge
  %56 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id, align 4
  %mul.3 = shl i32 %57, 2
  %add13.3 = or i32 %mul.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add13.3)
  %cmp14.3 = icmp sgt i32 %add13.3, 7
  br i1 %cmp14.3, label %do.end.3, label %for.inc53.2.if.end29.3_crit_edge, !prof !757

for.inc53.2.if.end29.3_crit_edge:                 ; preds = %for.inc53.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.3

do.end.3:                                         ; preds = %for.inc53.2
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end29.3

if.end29.3:                                       ; preds = %do.end.3, %for.inc53.2.if.end29.3_crit_edge
  %arrayidx36.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 3
  %pending_frames.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 3, i32 2
  %call.i.i.3 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.3, i32 noundef 4) #10
  %58 = ptrtoint ptr %pending_frames.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %pending_frames.3, align 4
  %arrayidx39.3 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 3, i32 %add13.3
  %60 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx39.3, align 4
  %qlen.i.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 3, i32 0, i32 1
  %61 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen.i.3, align 4
  %arrayidx42.3 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 4, i32 %add13.3
  %63 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx42.3, align 4
  %qlen.i94.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i93, i32 0, i32 8, i32 3, i32 1, i32 1
  %64 = ptrtoint ptr %qlen.i94.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i94.3, align 4
  %arrayidx46.3 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call3, i32 0, i32 5, i32 %add13.3
  %66 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx46.3, align 4
  %cmp47.3 = icmp eq ptr %arrayidx36.3, %elected_queue
  br i1 %cmp47.3, label %if.then48.3, label %if.end29.3.while.cond.backedge_crit_edge

if.end29.3.while.cond.backedge_crit_edge:         ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then48.3:                                      ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id, align 4
  %69 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %vif_id, align 4
  %70 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %queue_id, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then48.3, %if.end29.3.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_queues_stats(ptr noundef %__data, ptr nocapture noundef readonly %wdev, ptr noundef readnone %elected_queue) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !758
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !758
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !746) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 116, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !746) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vif_id = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 1
  %queue_id = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 2
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 0
  %27 = call ptr @memset(ptr %vif_id, i32 255, i32 104)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end16
  %wvif.0 = phi ptr [ null, %if.end16 ], [ %retval.0.i, %while.cond.backedge ]
  %tobool.not.i123 = icmp eq ptr %wvif.0, null
  %28 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !759
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %30, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %30, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i123, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %retval.0.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %retval.0.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i123, %cmp5.i
  %31 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !759
  %and.i.1.i = and i32 %31, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i.1.i
  %32 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %33, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %33, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %34 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %34, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp21.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp21.not, label %wvif_iterate.exit.while.end_crit_edge, label %for.cond22.preheader

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.cond22.preheader:                             ; preds = %wvif_iterate.exit
  %id = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 3
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  %mul = shl i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mul)
  %cmp26 = icmp sgt i32 %mul, 7
  br i1 %cmp26, label %do.end41, label %for.cond22.preheader.if.end47_crit_edge, !prof !757

for.cond22.preheader.if.end47_crit_edge:          ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end41:                                         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %for.cond22.preheader.if.end47_crit_edge
  %arrayidx55 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 0
  %pending_frames = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #10
  %37 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %pending_frames, align 4
  %arrayidx58 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 3, i32 %mul
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx58, align 4
  %qlen.i = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i, align 4
  %arrayidx61 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 4, i32 %mul
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx61, align 4
  %qlen.i124 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %qlen.i124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i124, align 4
  %arrayidx65 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 5, i32 %mul
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx65, align 4
  %cmp66 = icmp eq ptr %arrayidx55, %elected_queue
  br i1 %cmp66, label %if.then67, label %if.end47.for.inc72_crit_edge

if.end47.for.inc72_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72

if.then67:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %48 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %vif_id, align 4
  %49 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %queue_id, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %if.then67, %if.end47.for.inc72_crit_edge
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %mul.1 = shl i32 %51, 2
  %add25.1 = or i32 %mul.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add25.1)
  %cmp26.1 = icmp sgt i32 %add25.1, 7
  br i1 %cmp26.1, label %do.end41.1, label %for.inc72.if.end47.1_crit_edge, !prof !757

for.inc72.if.end47.1_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.1

do.end41.1:                                       ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.1

if.end47.1:                                       ; preds = %do.end41.1, %for.inc72.if.end47.1_crit_edge
  %arrayidx55.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 1
  %pending_frames.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 1, i32 2
  %call.i.i.1 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.1, i32 noundef 4) #10
  %52 = ptrtoint ptr %pending_frames.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %pending_frames.1, align 4
  %arrayidx58.1 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 3, i32 %add25.1
  %54 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx58.1, align 4
  %qlen.i.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qlen.i.1, align 4
  %arrayidx61.1 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 4, i32 %add25.1
  %57 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx61.1, align 4
  %qlen.i124.1 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 1, i32 1, i32 1
  %58 = ptrtoint ptr %qlen.i124.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen.i124.1, align 4
  %arrayidx65.1 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 5, i32 %add25.1
  %60 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx65.1, align 4
  %cmp66.1 = icmp eq ptr %arrayidx55.1, %elected_queue
  br i1 %cmp66.1, label %if.then67.1, label %if.end47.1.for.inc72.1_crit_edge

if.end47.1.for.inc72.1_crit_edge:                 ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72.1

if.then67.1:                                      ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id, align 4
  %63 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %vif_id, align 4
  %64 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %queue_id, align 4
  br label %for.inc72.1

for.inc72.1:                                      ; preds = %if.then67.1, %if.end47.1.for.inc72.1_crit_edge
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id, align 4
  %mul.2 = shl i32 %66, 2
  %add25.2 = or i32 %mul.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add25.2)
  %cmp26.2 = icmp sgt i32 %add25.2, 7
  br i1 %cmp26.2, label %do.end41.2, label %for.inc72.1.if.end47.2_crit_edge, !prof !757

for.inc72.1.if.end47.2_crit_edge:                 ; preds = %for.inc72.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.2

do.end41.2:                                       ; preds = %for.inc72.1
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.2

if.end47.2:                                       ; preds = %do.end41.2, %for.inc72.1.if.end47.2_crit_edge
  %arrayidx55.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 2
  %pending_frames.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 2, i32 2
  %call.i.i.2 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.2, i32 noundef 4) #10
  %67 = ptrtoint ptr %pending_frames.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %pending_frames.2, align 4
  %arrayidx58.2 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 3, i32 %add25.2
  %69 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx58.2, align 4
  %qlen.i.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 2, i32 0, i32 1
  %70 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qlen.i.2, align 4
  %arrayidx61.2 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 4, i32 %add25.2
  %72 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx61.2, align 4
  %qlen.i124.2 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 2, i32 1, i32 1
  %73 = ptrtoint ptr %qlen.i124.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i124.2, align 4
  %arrayidx65.2 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 5, i32 %add25.2
  %75 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx65.2, align 4
  %cmp66.2 = icmp eq ptr %arrayidx55.2, %elected_queue
  br i1 %cmp66.2, label %if.then67.2, label %if.end47.2.for.inc72.2_crit_edge

if.end47.2.for.inc72.2_crit_edge:                 ; preds = %if.end47.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72.2

if.then67.2:                                      ; preds = %if.end47.2
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id, align 4
  %78 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %vif_id, align 4
  %79 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %queue_id, align 4
  br label %for.inc72.2

for.inc72.2:                                      ; preds = %if.then67.2, %if.end47.2.for.inc72.2_crit_edge
  %80 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id, align 4
  %mul.3 = shl i32 %81, 2
  %add25.3 = or i32 %mul.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add25.3)
  %cmp26.3 = icmp sgt i32 %add25.3, 7
  br i1 %cmp26.3, label %do.end41.3, label %for.inc72.2.if.end47.3_crit_edge, !prof !757

for.inc72.2.if.end47.3_crit_edge:                 ; preds = %for.inc72.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.3

do.end41.3:                                       ; preds = %for.inc72.2
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.244, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.3

if.end47.3:                                       ; preds = %do.end41.3, %for.inc72.2.if.end47.3_crit_edge
  %arrayidx55.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 3
  %pending_frames.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 3, i32 2
  %call.i.i.3 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames.3, i32 noundef 4) #10
  %82 = ptrtoint ptr %pending_frames.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %pending_frames.3, align 4
  %arrayidx58.3 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 3, i32 %add25.3
  %84 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx58.3, align 4
  %qlen.i.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 3, i32 0, i32 1
  %85 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qlen.i.3, align 4
  %arrayidx61.3 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 4, i32 %add25.3
  %87 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx61.3, align 4
  %qlen.i124.3 = getelementptr %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 8, i32 3, i32 1, i32 1
  %88 = ptrtoint ptr %qlen.i124.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i124.3, align 4
  %arrayidx65.3 = getelementptr %struct.trace_event_raw_queues_stats, ptr %call13, i32 0, i32 5, i32 %add25.3
  %90 = ptrtoint ptr %arrayidx65.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx65.3, align 4
  %cmp66.3 = icmp eq ptr %arrayidx55.3, %elected_queue
  br i1 %cmp66.3, label %if.then67.3, label %if.end47.3.while.cond.backedge_crit_edge

if.end47.3.while.cond.backedge_crit_edge:         ; preds = %if.end47.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then67.3:                                      ; preds = %if.end47.3
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id, align 4
  %93 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %vif_id, align 4
  %94 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %queue_id, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then67.3, %if.end47.3.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  %95 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rctx, align 4
  %97 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 116, i32 noundef %96, ptr noundef %__data, i64 noundef 1, ptr noundef %98, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hif_data(ptr noundef %__data, ptr noundef %hif, i32 noundef %tx_fill_level, i1 noundef zeroext %is_recv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %hif to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %tx_fill_level to i64
  %conv9 = zext i1 %is_recv to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_io_data(ptr noundef %__data, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %reg to i64
  %conv4 = zext i32 %addr to i64
  %0 = ptrtoint ptr %io_buf to i32
  %conv8 = zext i32 %0 to i64
  %conv12 = zext i32 %len to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_io_data32(ptr noundef %__data, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %reg to i64
  %conv4 = zext i32 %addr to i64
  %conv8 = zext i32 %val to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_piggyback(ptr noundef %__data, i32 noundef %val, i1 noundef zeroext %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %val to i64
  %conv5 = zext i1 %ignored to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bh_stats(ptr noundef %__data, i32 noundef %ind, i32 noundef %req, i32 noundef %cnf, i32 noundef %busy, i1 noundef zeroext %release) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %ind to i64
  %conv4 = zext i32 %req to i64
  %conv8 = zext i32 %cnf to i64
  %conv12 = zext i32 %busy to i64
  %conv17 = zext i1 %release to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv17) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tx_stats(ptr noundef %__data, ptr noundef %tx_cnf, ptr noundef %skb, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %tx_cnf to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %delay to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_queues_stats(ptr noundef %__data, ptr noundef %wdev, ptr noundef %elected_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %wdev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %elected_queue to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_hif_name(i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %0 = phi i32 [ %4, %for.inc.i.for.body.i_crit_edge ], [ 12, %entry ]
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry ]
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %id)
  %cmp3.i = icmp eq i32 %0, %id
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr %struct.trace_print_flags, ptr @hif_msg_print_map, i32 %i.012.i, i32 1
  %1 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.i, align 4
  br label %get_symbol.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %arrayidx.i = getelementptr %struct.trace_print_flags, ptr @hif_msg_print_map, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %exitcond = icmp eq i32 %inc.i, 36
  br i1 %exitcond, label %for.inc.i.get_symbol.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.get_symbol.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_symbol.exit

get_symbol.exit:                                  ; preds = %for.inc.i.get_symbol.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %2, %if.then.i ], [ @.str.255, %for.inc.i.get_symbol.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_mib_name(i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %0 = phi i32 [ %4, %for.inc.i.for.body.i_crit_edge ], [ 8217, %entry ]
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry ]
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %id)
  %cmp3.i = icmp eq i32 %0, %id
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr %struct.trace_print_flags, ptr @hif_mib_print_map, i32 %i.012.i, i32 1
  %1 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.i, align 4
  br label %get_symbol.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %arrayidx.i = getelementptr %struct.trace_print_flags, ptr @hif_mib_print_map, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %exitcond = icmp eq i32 %inc.i, 47
  br i1 %exitcond, label %for.inc.i.get_symbol.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.get_symbol.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_symbol.exit

get_symbol.exit:                                  ; preds = %for.inc.i.get_symbol.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %2, %if.then.i ], [ @.str.255, %for.inc.i.get_symbol.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_reg_name(i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %id)
  %switch = icmp ult i32 %id, 8
  br i1 %switch, label %if.then.i, label %entry.get_symbol.exit_crit_edge

entry.get_symbol.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_symbol.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr %struct.trace_print_flags, ptr @wfx_reg_print_map, i32 %id, i32 1
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 4
  br label %get_symbol.exit

get_symbol.exit:                                  ; preds = %if.then.i, %entry.get_symbol.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.then.i ], [ @.str.255, %entry.get_symbol.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_debug_init(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.91, ptr noundef %5) #10
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.92, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %wdev, ptr noundef nonnull @wfx_counters_fops) #10
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.93, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %wdev, ptr noundef nonnull @wfx_rx_stats_fops) #10
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.94, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %wdev, ptr noundef nonnull @wfx_tx_power_loop_fops) #10
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.95, i16 noundef zeroext 128, ptr noundef %call, ptr noundef %wdev, ptr noundef nonnull @wfx_send_pds_fops) #10
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.96, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %wdev, ptr noundef nonnull @wfx_send_hif_msg_fops) #10
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.97, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %wdev, ptr noundef nonnull @wfx_ps_timeout_fops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hif_data(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_fill_level = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tx_fill_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_fill_level, align 4
  %if_id = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_id, align 4
  %msg_type = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %msg_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_type, align 4
  %msg_id = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_id, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_hif_data.symbols) #10
  %mib = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mib, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp2.not = icmp eq i32 %11, -1
  %cond = select i1 %cmp2.not, ptr @.str.149, ptr @.str.148
  br i1 %cmp2.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %11, ptr noundef nonnull @trace_raw_output_hif_data.symbols.150) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond8 = phi ptr [ %call7, %cond.true ], [ @.str.149, %if.end.cond.end_crit_edge ]
  %buf = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 8
  %buf_len = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_len, align 4
  %call9 = tail call ptr @trace_print_hex_seq(ptr noundef %tmp_seq, ptr noundef %buf, i32 noundef %13, i1 noundef zeroext false) #10
  %msg_len = getelementptr inbounds %struct.trace_event_raw_hif_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %15)
  %cmp10 = icmp ugt i32 %15, 128
  %cond11 = select i1 %cmp10, ptr @.str.198, ptr @.str.149
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.112, i32 noundef %3, i32 noundef %5, ptr noundef %7, ptr noundef %call1, ptr noundef nonnull %cond, ptr noundef %cond8, ptr noundef %call9, ptr noundef nonnull %cond11, i32 noundef %15) #10
  %call13 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_hex_seq(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_io_data(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %reg = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_io_data.symbols) #10
  %addr_str = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %1, i32 0, i32 6
  %buf = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %1, i32 0, i32 5
  %buf_len = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_len, align 4
  %call3 = tail call ptr @trace_print_hex_seq(ptr noundef %tmp_seq, ptr noundef %buf, i32 noundef %5, i1 noundef zeroext false) #10
  %msg_len = getelementptr inbounds %struct.trace_event_raw_io_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp4 = icmp ugt i32 %7, 32
  %cond = select i1 %cmp4, ptr @.str.198, ptr @.str.149
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.205, ptr noundef %call1, ptr noundef %addr_str, ptr noundef %call3, ptr noundef nonnull %cond, i32 noundef %7) #10
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_io_data32(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %reg = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_io_data32.symbols) #10
  %addr_str = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %1, i32 0, i32 4
  %val = getelementptr inbounds %struct.trace_event_raw_io_data32, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.215, ptr noundef %call1, ptr noundef %addr_str, i32 noundef %5) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_piggyback(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %val = getelementptr inbounds %struct.trace_event_raw_piggyback, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %ignored = getelementptr inbounds %struct.trace_event_raw_piggyback, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ignored to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ignored, align 4, !range !760
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.149, ptr @.str.219
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.218, i32 noundef %3, ptr noundef nonnull %cond) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bh_stats(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ind = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ind, align 4
  %req = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %cnf = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cnf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnf, align 4
  %busy = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %busy, align 4
  %release = getelementptr inbounds %struct.trace_event_raw_bh_stats, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %release to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %release, align 4, !range !760
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.226, ptr @.str.224
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.225, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %cond) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tx_stats(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pkt_id = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pkt_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkt_id, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 4
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef null, i32 noundef %5, ptr noundef nonnull @trace_raw_output_tx_stats.__flags) #10
  %rate = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %tx_count = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_count, align 4
  %arrayidx5 = getelementptr %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  %ack_failures = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ack_failures to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ack_failures, align 4
  %delay_media = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %delay_media to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay_media, align 4
  %delay_queue = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %delay_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay_queue, align 4
  %delay_fw = getelementptr inbounds %struct.trace_event_raw_tx_stats, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %delay_fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delay_fw, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.236, i32 noundef %3, ptr noundef %call2, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #10
  %call16 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_queues_stats(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vif_id = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vif_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif_id, align 4
  %queue_id = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %queue_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_id, align 4
  %hw = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw, align 4
  %drv = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drv, align 4
  %cab = getelementptr inbounds %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %cab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cab, align 4
  %arrayidx4 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 5
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 5
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 6
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %arrayidx38 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 6
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 4, i32 7
  %50 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr %struct.trace_event_raw_queues_stats, ptr %1, i32 0, i32 5, i32 7
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx44, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.254, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #10
  %call45 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_counters_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wfx_counters_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_counters_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %counters = alloca [3 x %struct.hif_mib_extended_count_table], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %counters) #10
  %2 = call ptr @memset(ptr %counters, i32 255, i32 480)
  %call = call i32 @hif_get_counters_table(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %counters) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %add.ptr.1 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 1
  %call.1 = call i32 @hif_get_counters_table(ptr noundef %1, i32 noundef 1, ptr noundef %add.ptr.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.not.1, label %for.cond.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %add.ptr.2 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 2
  %call.2 = call i32 @hif_get_counters_table(ptr noundef %1, i32 noundef 2, ptr noundef %add.ptr.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp2.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.not.2, label %for.cond.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259) #10
  %count_tx_frames = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %count_tx_frames to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count_tx_frames, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %count_tx_frames6 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 2
  %6 = ptrtoint ptr %count_tx_frames6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_tx_frames6, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %count_tx_frames8 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count_tx_frames8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count_tx_frames8, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.261, i32 noundef %5, i32 noundef %8, i32 noundef %11) #10
  %count_tx_frames_multicast = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %count_tx_frames_multicast to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_tx_frames_multicast, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %count_tx_frames_multicast11 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 8
  %15 = ptrtoint ptr %count_tx_frames_multicast11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_tx_frames_multicast11, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %count_tx_frames_multicast13 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %count_tx_frames_multicast13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count_tx_frames_multicast13, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.262, i32 noundef %14, i32 noundef %17, i32 noundef %20) #10
  %count_tx_frames_success = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %count_tx_frames_success to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_tx_frames_success, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %count_tx_frames_success16 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 9
  %24 = ptrtoint ptr %count_tx_frames_success16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count_tx_frames_success16, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %count_tx_frames_success18 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %count_tx_frames_success18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_tx_frames_success18, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.263, i32 noundef %23, i32 noundef %26, i32 noundef %29) #10
  %count_tx_frames_retried = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 11
  %30 = ptrtoint ptr %count_tx_frames_retried to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_tx_frames_retried, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %count_tx_frames_retried21 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 11
  %33 = ptrtoint ptr %count_tx_frames_retried21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count_tx_frames_retried21, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %count_tx_frames_retried23 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 11
  %36 = ptrtoint ptr %count_tx_frames_retried23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_tx_frames_retried23, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.264, i32 noundef %32, i32 noundef %35, i32 noundef %38) #10
  %count_tx_frames_multi_retried = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 12
  %39 = ptrtoint ptr %count_tx_frames_multi_retried to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_tx_frames_multi_retried, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %count_tx_frames_multi_retried26 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 12
  %42 = ptrtoint ptr %count_tx_frames_multi_retried26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count_tx_frames_multi_retried26, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %count_tx_frames_multi_retried28 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 12
  %45 = ptrtoint ptr %count_tx_frames_multi_retried28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_tx_frames_multi_retried28, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.265, i32 noundef %41, i32 noundef %44, i32 noundef %47) #10
  %count_tx_frames_failed = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 10
  %48 = ptrtoint ptr %count_tx_frames_failed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_tx_frames_failed, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %count_tx_frames_failed31 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 10
  %51 = ptrtoint ptr %count_tx_frames_failed31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count_tx_frames_failed31, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %count_tx_frames_failed33 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 10
  %54 = ptrtoint ptr %count_tx_frames_failed33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_tx_frames_failed33, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.266, i32 noundef %50, i32 noundef %53, i32 noundef %56) #10
  %count_ack_failed = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 16
  %57 = ptrtoint ptr %count_ack_failed to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_ack_failed, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %count_ack_failed36 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 16
  %60 = ptrtoint ptr %count_ack_failed36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count_ack_failed36, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %count_ack_failed38 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 16
  %63 = ptrtoint ptr %count_ack_failed38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count_ack_failed38, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.267, i32 noundef %59, i32 noundef %62, i32 noundef %65) #10
  %count_rts_success = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 14
  %66 = ptrtoint ptr %count_rts_success to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_rts_success, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %count_rts_success41 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 14
  %69 = ptrtoint ptr %count_rts_success41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_rts_success41, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %count_rts_success43 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 14
  %72 = ptrtoint ptr %count_rts_success43 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_rts_success43, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.268, i32 noundef %68, i32 noundef %71, i32 noundef %74) #10
  %count_rts_failed = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 15
  %75 = ptrtoint ptr %count_rts_failed to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_rts_failed, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %count_rts_failed46 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 15
  %78 = ptrtoint ptr %count_rts_failed46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_rts_failed46, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %count_rts_failed48 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 15
  %81 = ptrtoint ptr %count_rts_failed48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_rts_failed48, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.269, i32 noundef %77, i32 noundef %80, i32 noundef %83) #10
  %count_rx_frames = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %count_rx_frames to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_rx_frames, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %count_rx_frames51 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 3
  %87 = ptrtoint ptr %count_rx_frames51 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count_rx_frames51, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %count_rx_frames53 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %count_rx_frames53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count_rx_frames53, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.270, i32 noundef %86, i32 noundef %89, i32 noundef %92) #10
  %count_rx_frames_multicast = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 17
  %93 = ptrtoint ptr %count_rx_frames_multicast to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_rx_frames_multicast, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %count_rx_frames_multicast56 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 17
  %96 = ptrtoint ptr %count_rx_frames_multicast56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count_rx_frames_multicast56, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97)
  %count_rx_frames_multicast58 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 17
  %99 = ptrtoint ptr %count_rx_frames_multicast58 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %count_rx_frames_multicast58, align 4
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.271, i32 noundef %95, i32 noundef %98, i32 noundef %101) #10
  %count_rx_frames_success = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 18
  %102 = ptrtoint ptr %count_rx_frames_success to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count_rx_frames_success, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103)
  %count_rx_frames_success61 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 18
  %105 = ptrtoint ptr %count_rx_frames_success61 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count_rx_frames_success61, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %count_rx_frames_success63 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 18
  %108 = ptrtoint ptr %count_rx_frames_success63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count_rx_frames_success63, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.272, i32 noundef %104, i32 noundef %107, i32 noundef %110) #10
  %count_rx_frames_failed = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 4
  %111 = ptrtoint ptr %count_rx_frames_failed to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count_rx_frames_failed, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112)
  %count_rx_frames_failed66 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 4
  %114 = ptrtoint ptr %count_rx_frames_failed66 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %count_rx_frames_failed66, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115)
  %count_rx_frames_failed68 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 4
  %117 = ptrtoint ptr %count_rx_frames_failed68 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_rx_frames_failed68, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.273, i32 noundef %113, i32 noundef %116, i32 noundef %119) #10
  %120 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.2, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %123 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %counters, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124)
  %126 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.1, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.274, i32 noundef %122, i32 noundef %125, i32 noundef %128) #10
  %count_drop_fcs = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %count_drop_fcs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %count_drop_fcs, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %count_drop_fcs76 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 1
  %132 = ptrtoint ptr %count_drop_fcs76 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %count_drop_fcs76, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133)
  %count_drop_fcs78 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 1
  %135 = ptrtoint ptr %count_drop_fcs78 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %count_drop_fcs78, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.275, i32 noundef %131, i32 noundef %134, i32 noundef %137) #10
  %count_drop_no_key = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 7
  %138 = ptrtoint ptr %count_drop_no_key to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count_drop_no_key, align 4
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  %count_drop_no_key81 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 7
  %141 = ptrtoint ptr %count_drop_no_key81 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %count_drop_no_key81, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142)
  %count_drop_no_key83 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 7
  %144 = ptrtoint ptr %count_drop_no_key83 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count_drop_no_key83, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.276, i32 noundef %140, i32 noundef %143, i32 noundef %146) #10
  %count_drop_decryption = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 5
  %147 = ptrtoint ptr %count_drop_decryption to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %count_drop_decryption, align 4
  %149 = call i32 @llvm.bswap.i32(i32 %148)
  %count_drop_decryption86 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 5
  %150 = ptrtoint ptr %count_drop_decryption86 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count_drop_decryption86, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %151)
  %count_drop_decryption88 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 5
  %153 = ptrtoint ptr %count_drop_decryption88 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %count_drop_decryption88, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.277, i32 noundef %149, i32 noundef %152, i32 noundef %155) #10
  %count_drop_tkip_mic = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 6
  %156 = ptrtoint ptr %count_drop_tkip_mic to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %count_drop_tkip_mic, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157)
  %count_drop_tkip_mic91 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 6
  %159 = ptrtoint ptr %count_drop_tkip_mic91 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %count_drop_tkip_mic91, align 4
  %161 = call i32 @llvm.bswap.i32(i32 %160)
  %count_drop_tkip_mic93 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 6
  %162 = ptrtoint ptr %count_drop_tkip_mic93 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count_drop_tkip_mic93, align 4
  %164 = call i32 @llvm.bswap.i32(i32 %163)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.278, i32 noundef %158, i32 noundef %161, i32 noundef %164) #10
  %count_drop_bip_mic = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 22
  %165 = ptrtoint ptr %count_drop_bip_mic to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %count_drop_bip_mic, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  %count_drop_bip_mic96 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 22
  %168 = ptrtoint ptr %count_drop_bip_mic96 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %count_drop_bip_mic96, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169)
  %count_drop_bip_mic98 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 22
  %171 = ptrtoint ptr %count_drop_bip_mic98 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %count_drop_bip_mic98, align 4
  %173 = call i32 @llvm.bswap.i32(i32 %172)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.279, i32 noundef %167, i32 noundef %170, i32 noundef %173) #10
  %count_drop_cmac_icv = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 19
  %174 = ptrtoint ptr %count_drop_cmac_icv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %count_drop_cmac_icv, align 4
  %176 = call i32 @llvm.bswap.i32(i32 %175)
  %count_drop_cmac_icv101 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 19
  %177 = ptrtoint ptr %count_drop_cmac_icv101 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %count_drop_cmac_icv101, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178)
  %count_drop_cmac_icv103 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 19
  %180 = ptrtoint ptr %count_drop_cmac_icv103 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %count_drop_cmac_icv103, align 4
  %182 = call i32 @llvm.bswap.i32(i32 %181)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.280, i32 noundef %176, i32 noundef %179, i32 noundef %182) #10
  %count_drop_cmac_replay = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 20
  %183 = ptrtoint ptr %count_drop_cmac_replay to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %count_drop_cmac_replay, align 4
  %185 = call i32 @llvm.bswap.i32(i32 %184)
  %count_drop_cmac_replay106 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 20
  %186 = ptrtoint ptr %count_drop_cmac_replay106 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %count_drop_cmac_replay106, align 4
  %188 = call i32 @llvm.bswap.i32(i32 %187)
  %count_drop_cmac_replay108 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 20
  %189 = ptrtoint ptr %count_drop_cmac_replay108 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %count_drop_cmac_replay108, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.281, i32 noundef %185, i32 noundef %188, i32 noundef %191) #10
  %count_drop_ccmp_replay = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 21
  %192 = ptrtoint ptr %count_drop_ccmp_replay to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %count_drop_ccmp_replay, align 4
  %194 = call i32 @llvm.bswap.i32(i32 %193)
  %count_drop_ccmp_replay111 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 21
  %195 = ptrtoint ptr %count_drop_ccmp_replay111 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %count_drop_ccmp_replay111, align 4
  %197 = call i32 @llvm.bswap.i32(i32 %196)
  %count_drop_ccmp_replay113 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 21
  %198 = ptrtoint ptr %count_drop_ccmp_replay113 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %count_drop_ccmp_replay113, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.282, i32 noundef %194, i32 noundef %197, i32 noundef %200) #10
  %count_drop_duplicate = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 13
  %201 = ptrtoint ptr %count_drop_duplicate to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %count_drop_duplicate, align 4
  %203 = call i32 @llvm.bswap.i32(i32 %202)
  %count_drop_duplicate116 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 13
  %204 = ptrtoint ptr %count_drop_duplicate116 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %count_drop_duplicate116, align 4
  %206 = call i32 @llvm.bswap.i32(i32 %205)
  %count_drop_duplicate118 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 13
  %207 = ptrtoint ptr %count_drop_duplicate118 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %count_drop_duplicate118, align 4
  %209 = call i32 @llvm.bswap.i32(i32 %208)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.283, i32 noundef %203, i32 noundef %206, i32 noundef %209) #10
  %count_rx_bcn_miss = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 24
  %210 = ptrtoint ptr %count_rx_bcn_miss to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %count_rx_bcn_miss, align 4
  %212 = call i32 @llvm.bswap.i32(i32 %211)
  %count_rx_bcn_miss121 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 24
  %213 = ptrtoint ptr %count_rx_bcn_miss121 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %count_rx_bcn_miss121, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214)
  %count_rx_bcn_miss123 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 24
  %216 = ptrtoint ptr %count_rx_bcn_miss123 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %count_rx_bcn_miss123, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %217)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.284, i32 noundef %212, i32 noundef %215, i32 noundef %218) #10
  %count_rx_bcn_success = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 23
  %219 = ptrtoint ptr %count_rx_bcn_success to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %count_rx_bcn_success, align 4
  %221 = call i32 @llvm.bswap.i32(i32 %220)
  %count_rx_bcn_success126 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 23
  %222 = ptrtoint ptr %count_rx_bcn_success126 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %count_rx_bcn_success126, align 4
  %224 = call i32 @llvm.bswap.i32(i32 %223)
  %count_rx_bcn_success128 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 23
  %225 = ptrtoint ptr %count_rx_bcn_success128 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %count_rx_bcn_success128, align 4
  %227 = call i32 @llvm.bswap.i32(i32 %226)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.285, i32 noundef %221, i32 noundef %224, i32 noundef %227) #10
  %count_rx_bcn_dtim = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 25
  %228 = ptrtoint ptr %count_rx_bcn_dtim to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %count_rx_bcn_dtim, align 4
  %230 = call i32 @llvm.bswap.i32(i32 %229)
  %count_rx_bcn_dtim131 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 25
  %231 = ptrtoint ptr %count_rx_bcn_dtim131 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %count_rx_bcn_dtim131, align 4
  %233 = call i32 @llvm.bswap.i32(i32 %232)
  %count_rx_bcn_dtim133 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 25
  %234 = ptrtoint ptr %count_rx_bcn_dtim133 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %count_rx_bcn_dtim133, align 4
  %236 = call i32 @llvm.bswap.i32(i32 %235)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.286, i32 noundef %230, i32 noundef %233, i32 noundef %236) #10
  %count_rx_bcn_dtim_aid0_clr = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 26
  %237 = ptrtoint ptr %count_rx_bcn_dtim_aid0_clr to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %count_rx_bcn_dtim_aid0_clr, align 4
  %239 = call i32 @llvm.bswap.i32(i32 %238)
  %count_rx_bcn_dtim_aid0_clr136 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 26
  %240 = ptrtoint ptr %count_rx_bcn_dtim_aid0_clr136 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %count_rx_bcn_dtim_aid0_clr136, align 4
  %242 = call i32 @llvm.bswap.i32(i32 %241)
  %count_rx_bcn_dtim_aid0_clr138 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 26
  %243 = ptrtoint ptr %count_rx_bcn_dtim_aid0_clr138 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %count_rx_bcn_dtim_aid0_clr138, align 4
  %245 = call i32 @llvm.bswap.i32(i32 %244)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.287, i32 noundef %239, i32 noundef %242, i32 noundef %245) #10
  %count_rx_bcn_dtim_aid0_set = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 27
  %246 = ptrtoint ptr %count_rx_bcn_dtim_aid0_set to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %count_rx_bcn_dtim_aid0_set, align 4
  %248 = call i32 @llvm.bswap.i32(i32 %247)
  %count_rx_bcn_dtim_aid0_set141 = getelementptr inbounds %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 27
  %249 = ptrtoint ptr %count_rx_bcn_dtim_aid0_set141 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %count_rx_bcn_dtim_aid0_set141, align 4
  %251 = call i32 @llvm.bswap.i32(i32 %250)
  %count_rx_bcn_dtim_aid0_set143 = getelementptr inbounds [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 27
  %252 = ptrtoint ptr %count_rx_bcn_dtim_aid0_set143 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %count_rx_bcn_dtim_aid0_set143, align 4
  %254 = call i32 @llvm.bswap.i32(i32 %253)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.288, i32 noundef %248, i32 noundef %251, i32 noundef %254) #10
  br label %for.body146

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body146:                                      ; preds = %for.body146.for.body146_crit_edge, %for.cond.2
  %i.1204 = phi i32 [ 0, %for.cond.2 ], [ %inc156, %for.body146.for.body146_crit_edge ]
  %arrayidx148 = getelementptr [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 2, i32 28, i32 %i.1204
  %255 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx148, align 4
  %257 = call i32 @llvm.bswap.i32(i32 %256)
  %arrayidx151 = getelementptr %struct.hif_mib_extended_count_table, ptr %counters, i32 0, i32 28, i32 %i.1204
  %258 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx151, align 4
  %260 = call i32 @llvm.bswap.i32(i32 %259)
  %arrayidx154 = getelementptr [3 x %struct.hif_mib_extended_count_table], ptr %counters, i32 0, i32 1, i32 28, i32 %i.1204
  %261 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx154, align 4
  %263 = call i32 @llvm.bswap.i32(i32 %262)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.289, i32 noundef %i.1204, ptr noundef nonnull @.str.149, i32 noundef %257, i32 noundef %260, i32 noundef %263) #10
  %inc156 = add nuw nsw i32 %i.1204, 1
  %exitcond.not = icmp eq i32 %inc156, 12
  br i1 %exitcond.not, label %for.body146.cleanup_crit_edge, label %for.body146.for.body146_crit_edge

for.body146.for.body146_crit_edge:                ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body146

for.body146.cleanup_crit_edge:                    ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body146.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ -5, %if.end.1.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ -5, %if.end.2.cleanup_crit_edge ], [ 0, %for.body146.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %counters) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_get_counters_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_rx_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wfx_rx_stats_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_rx_stats_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rx_stats = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 21
  %rx_stats_lock = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %rx_stats_lock, i32 noundef 0) #10
  %date = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 9
  %2 = ptrtoint ptr %date to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %date, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.290, i32 noundef %3) #10
  %pwr_clk_freq = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 10
  %4 = ptrtoint ptr %pwr_clk_freq to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pwr_clk_freq, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %is_ext_pwr_clk = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 11
  %7 = ptrtoint ptr %is_ext_pwr_clk to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_ext_pwr_clk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, ptr @.str.293, ptr @.str.292
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.291, i32 noundef %6, ptr noundef nonnull %cond) #10
  %9 = ptrtoint ptr %rx_stats to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %rx_stats, align 1
  %per_total = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 2
  %11 = ptrtoint ptr %per_total to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %per_total, align 1
  %throughput = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 3
  %13 = ptrtoint ptr %throughput to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %throughput, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.294, i32 noundef %10, i32 noundef %12, i32 noundef %14) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.295) #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.296) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = and i32 %i.041, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [22 x ptr], ptr @channel_names, i32 0, i32 %i.041
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 4, i32 %i.041
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx4, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx5 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 5, i32 %i.041
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx5, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv6 = zext i16 %24 to i32
  %arrayidx7 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 7, i32 %i.041
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx7, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = sdiv i16 %27, 100
  %div = sext i16 %28 to i32
  %arrayidx9 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 6, i32 %i.041
  %29 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx9, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = sdiv i16 %31, 100
  %div11 = sext i16 %32 to i32
  %arrayidx12 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 21, i32 8, i32 %i.041
  %33 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx12, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv13 = sext i16 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.297, ptr noundef %18, i32 noundef %21, i32 noundef %conv6, i32 noundef %div, i32 noundef %div11, i32 noundef %conv13) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %rx_stats_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_tx_power_loop_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wfx_tx_power_loop_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_tx_power_loop_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tx_power_loop_info = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 23
  %tx_power_loop_info_lock = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %tx_power_loop_info_lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %tx_power_loop_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %tx_power_loop_info, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.318, i32 noundef %conv) #10
  %tx_gain_pa = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 23, i32 1
  %5 = ptrtoint ptr %tx_gain_pa to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %tx_gain_pa, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv1 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.319, i32 noundef %conv1) #10
  %target_pout = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 23, i32 2
  %8 = ptrtoint ptr %target_pout to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %target_pout, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %.frozen = freeze i16 %10
  %div29 = sdiv i16 %.frozen, 4
  %div.sext = sext i16 %div29 to i32
  %11 = mul i16 %div29, 4
  %rem30.decomposed = sub i16 %.frozen, %11
  %narrow = mul nsw i16 %rem30.decomposed, 25
  %mul = sext i16 %narrow to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.320, i32 noundef %div.sext, i32 noundef %mul) #10
  %p_estimation = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 23, i32 3
  %12 = ptrtoint ptr %p_estimation to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %p_estimation, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %.frozen34 = freeze i16 %14
  %div431 = sdiv i16 %.frozen34, 4
  %div4.sext = sext i16 %div431 to i32
  %15 = mul i16 %div431, 4
  %rem532.decomposed = sub i16 %.frozen34, %15
  %narrow33 = mul nsw i16 %rem532.decomposed, 25
  %mul6 = sext i16 %narrow33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.321, i32 noundef %div4.sext, i32 noundef %mul6) #10
  %vpdet = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 23, i32 4
  %16 = ptrtoint ptr %vpdet to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %vpdet, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv7 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.322, i32 noundef %conv7) #10
  %measurement_index = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 23, i32 5
  %19 = ptrtoint ptr %measurement_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %measurement_index, align 1
  %conv8 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.323, i32 noundef %conv8) #10
  tail call void @mutex_unlock(ptr noundef %tx_power_loop_info_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_send_pds_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_send_pds_write.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_send_pds_write, %if.then3)) #10
          to label %cleanup [label %if.then3], !srcloc !761

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_send_pds_write.__UNIQUE_ID_ddebug422, ptr noundef %5, ptr noundef nonnull @.str.326) #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = tail call ptr @memdup_user(ptr noundef %user_buf, i32 noundef %count) #10
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  %conv = zext i32 %count to i64
  %add = add i64 %8, %conv
  store i64 %add, ptr %ppos, align 8
  %call10 = tail call i32 @wfx_send_pds(ptr noundef %1, ptr noundef %call5, i32 noundef %count) #10
  tail call void @kfree(ptr noundef %call5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %call10.count = select i1 %cmp11, i32 %call10, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %do.body
  %retval.0 = phi i32 [ %6, %if.then7 ], [ -16, %if.then3 ], [ %call10.count, %if.end9 ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_send_pds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_send_hif_msg_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %count)
  %cmp = icmp ugt i32 %count, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %complete = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %1, i32 0, i32 1
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %complete) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ret3 = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ret3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %reply = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %1, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef %reply, i32 noundef %count, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.329, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end7.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end7.copy_to_user.exit_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end7
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #13, !srcloc !762
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %reply, i32 noundef %count) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef %reply, i32 noundef %count) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end7.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count, %if.end7.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool9.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool9.not, i32 %count, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %3, %if.end2.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_send_hif_msg_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %complete = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @completion_done(ptr noundef %complete) #10
  br i1 %call, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_send_hif_msg_write.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_send_hif_msg_write, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !761

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_send_hif_msg_write.__UNIQUE_ID_ddebug423, ptr noundef %5, ptr noundef nonnull @.str.331) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %reply = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %1, i32 0, i32 2
  %6 = call ptr @memset(ptr %reply, i32 255, i32 1024)
  %call9 = tail call ptr @memdup_user(ptr noundef %user_buf, i32 noundef %count) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %call9 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %call9, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %count)
  %cmp14.not = icmp eq i32 %conv, %count
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %call9) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 @wfx_cmd_send(ptr noundef %3, ptr noundef %call9, ptr noundef %reply, i32 noundef 1024, i1 noundef zeroext false) #10
  %ret = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call20, ptr %ret, align 4
  tail call void @kfree(ptr noundef %call9) #10
  tail call void @complete(ptr noundef %complete) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then11, %if.end6.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %7, %if.then11 ], [ -22, %if.then16 ], [ %count, %if.end17 ], [ -16, %if.then5 ], [ -22, %if.end6.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_send_hif_msg_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1088) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %complete = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.dbgfs_hif_msg, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.332, ptr noundef nonnull @init_completion.__key) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_send_hif_msg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_cmd_send(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_ps_timeout_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @wfx_ps_timeout_get, ptr noundef nonnull @wfx_ps_timeout_set, ptr noundef nonnull @.str.333) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wfx_ps_timeout_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %force_ps_timeout = getelementptr inbounds %struct.wfx_dev, ptr %data, i32 0, i32 25
  %0 = ptrtoint ptr %force_ps_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %force_ps_timeout, align 4
  %conv = sext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_ps_timeout_set(ptr nocapture noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %force_ps_timeout = getelementptr inbounds %struct.wfx_dev, ptr %data, i32 0, i32 25
  %0 = ptrtoint ptr %force_ps_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %force_ps_timeout, align 4
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %data, i32 0, i32 3, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %wvif.0 = phi ptr [ null, %entry ], [ %retval.0.i, %while.body ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %1 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !759
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %3, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %retval.0.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %retval.0.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %4 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !759
  %and.i.1.i = and i32 %4, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %data, i32 0, i32 3, i32 %and.i.1.i
  %5 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %6, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %6, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %7 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %7, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @wfx_update_pm(ptr noundef nonnull %retval.0.i) #10
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_update_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 380)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 380)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !318, !319, !320, !321, !322, !324, !325, !326, !327, !328, !330, !331, !332, !333, !334, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !359, !361, !363, !365, !367, !369, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !725, !726, !727, !729, !731, !732, !734, !736, !738, !739, !740, !742, !743, !745}
!llvm.named.register.sp = !{!746}
!llvm.module.flags = !{!747, !748, !749, !750, !751, !752, !753, !754}
!llvm.ident = !{!755}

!0 = !{ptr @__tracepoint_hif_send, !1, !"__tracepoint_hif_send", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/./traces.h", i32 210, i32 1}
!2 = !{ptr @__tracepoint_ptr_hif_send, !1, !"__tracepoint_ptr_hif_send", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_hif_send, !1, !"__SCK__tp_func_hif_send", i1 false, i1 false}
!4 = !{ptr @__tracepoint_hif_recv, !5, !"__tracepoint_hif_recv", i1 false, i1 false}
!5 = !{!"../drivers/staging/wfx/./traces.h", i32 215, i32 1}
!6 = !{ptr @__tracepoint_ptr_hif_recv, !5, !"__tracepoint_ptr_hif_recv", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_hif_recv, !5, !"__SCK__tp_func_hif_recv", i1 false, i1 false}
!8 = !{ptr @__tracepoint_io_write, !9, !"__tracepoint_io_write", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/./traces.h", i32 269, i32 1}
!10 = !{ptr @__tracepoint_ptr_io_write, !9, !"__tracepoint_ptr_io_write", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_io_write, !9, !"__SCK__tp_func_io_write", i1 false, i1 false}
!12 = !{ptr @__tracepoint_io_read, !13, !"__tracepoint_io_read", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/./traces.h", i32 275, i32 1}
!14 = !{ptr @__tracepoint_ptr_io_read, !13, !"__tracepoint_ptr_io_read", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_io_read, !13, !"__SCK__tp_func_io_read", i1 false, i1 false}
!16 = !{ptr @__tracepoint_io_write32, !17, !"__tracepoint_io_write32", i1 false, i1 false}
!17 = !{!"../drivers/staging/wfx/./traces.h", i32 306, i32 1}
!18 = !{ptr @__tracepoint_ptr_io_write32, !17, !"__tracepoint_ptr_io_write32", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_io_write32, !17, !"__SCK__tp_func_io_write32", i1 false, i1 false}
!20 = !{ptr @__tracepoint_io_read32, !21, !"__tracepoint_io_read32", i1 false, i1 false}
!21 = !{!"../drivers/staging/wfx/./traces.h", i32 311, i32 1}
!22 = !{ptr @__tracepoint_ptr_io_read32, !21, !"__tracepoint_ptr_io_read32", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_io_read32, !21, !"__SCK__tp_func_io_read32", i1 false, i1 false}
!24 = !{ptr @__tracepoint_piggyback, !25, !"__tracepoint_piggyback", i1 false, i1 false}
!25 = !{!"../drivers/staging/wfx/./traces.h", i32 333, i32 1}
!26 = !{ptr @__tracepoint_ptr_piggyback, !25, !"__tracepoint_ptr_piggyback", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_piggyback, !25, !"__SCK__tp_func_piggyback", i1 false, i1 false}
!28 = !{ptr @__tracepoint_bh_stats, !29, !"__tracepoint_bh_stats", i1 false, i1 false}
!29 = !{!"../drivers/staging/wfx/./traces.h", i32 338, i32 1}
!30 = !{ptr @__tracepoint_ptr_bh_stats, !29, !"__tracepoint_ptr_bh_stats", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_bh_stats, !29, !"__SCK__tp_func_bh_stats", i1 false, i1 false}
!32 = !{ptr @__tracepoint_tx_stats, !33, !"__tracepoint_tx_stats", i1 false, i1 false}
!33 = !{!"../drivers/staging/wfx/./traces.h", i32 366, i32 1}
!34 = !{ptr @__tracepoint_ptr_tx_stats, !33, !"__tracepoint_ptr_tx_stats", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_tx_stats, !33, !"__SCK__tp_func_tx_stats", i1 false, i1 false}
!36 = !{ptr @__tracepoint_queues_stats, !37, !"__tracepoint_queues_stats", i1 false, i1 false}
!37 = !{!"../drivers/staging/wfx/./traces.h", i32 442, i32 1}
!38 = !{ptr @__tracepoint_ptr_queues_stats, !37, !"__tracepoint_ptr_queues_stats", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_queues_stats, !37, !"__SCK__tp_func_queues_stats", i1 false, i1 false}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/wfx/./traces.h", i32 95, i32 1}
!42 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY", i1 false, i1 false}
!43 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY, !41, !"TRACE_SYSTEM_HIF_CNF_ID_ADD_KEY", i1 false, i1 false}
!44 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT", i1 false, i1 false}
!46 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT, !41, !"TRACE_SYSTEM_HIF_CNF_ID_BEACON_TRANSMIT", i1 false, i1 false}
!47 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS", i1 false, i1 false}
!49 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS, !41, !"TRACE_SYSTEM_HIF_CNF_ID_EDCA_QUEUE_PARAMS", i1 false, i1 false}
!50 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_JOIN, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_JOIN", i1 false, i1 false}
!52 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_JOIN, !41, !"TRACE_SYSTEM_HIF_CNF_ID_JOIN", i1 false, i1 false}
!53 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK", i1 false, i1 false}
!55 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK, !41, !"TRACE_SYSTEM_HIF_CNF_ID_MAP_LINK", i1 false, i1 false}
!56 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_READ_MIB, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_READ_MIB", i1 false, i1 false}
!58 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_READ_MIB, !41, !"TRACE_SYSTEM_HIF_CNF_ID_READ_MIB", i1 false, i1 false}
!59 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY", i1 false, i1 false}
!61 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY, !41, !"TRACE_SYSTEM_HIF_CNF_ID_REMOVE_KEY", i1 false, i1 false}
!62 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_RESET, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_RESET", i1 false, i1 false}
!64 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_RESET, !41, !"TRACE_SYSTEM_HIF_CNF_ID_RESET", i1 false, i1 false}
!65 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS", i1 false, i1 false}
!67 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS, !41, !"TRACE_SYSTEM_HIF_CNF_ID_SET_BSS_PARAMS", i1 false, i1 false}
!68 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE", i1 false, i1 false}
!70 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE, !41, !"TRACE_SYSTEM_HIF_CNF_ID_SET_PM_MODE", i1 false, i1 false}
!71 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_START, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_START", i1 false, i1 false}
!73 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_START, !41, !"TRACE_SYSTEM_HIF_CNF_ID_START", i1 false, i1 false}
!74 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_START_SCAN, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_START_SCAN", i1 false, i1 false}
!76 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_START_SCAN, !41, !"TRACE_SYSTEM_HIF_CNF_ID_START_SCAN", i1 false, i1 false}
!77 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN", i1 false, i1 false}
!79 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN, !41, !"TRACE_SYSTEM_HIF_CNF_ID_STOP_SCAN", i1 false, i1 false}
!80 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_TX, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_TX", i1 false, i1 false}
!82 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_TX, !41, !"TRACE_SYSTEM_HIF_CNF_ID_TX", i1 false, i1 false}
!83 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT", i1 false, i1 false}
!85 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT, !41, !"TRACE_SYSTEM_HIF_CNF_ID_MULTI_TRANSMIT", i1 false, i1 false}
!86 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE", i1 false, i1 false}
!88 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE, !41, !"TRACE_SYSTEM_HIF_CNF_ID_UPDATE_IE", i1 false, i1 false}
!89 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB", i1 false, i1 false}
!91 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB, !41, !"TRACE_SYSTEM_HIF_CNF_ID_WRITE_MIB", i1 false, i1 false}
!92 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION", i1 false, i1 false}
!94 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION, !41, !"TRACE_SYSTEM_HIF_CNF_ID_CONFIGURATION", i1 false, i1 false}
!95 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO", i1 false, i1 false}
!97 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO, !41, !"TRACE_SYSTEM_HIF_CNF_ID_CONTROL_GPIO", i1 false, i1 false}
!98 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK", i1 false, i1 false}
!100 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK, !41, !"TRACE_SYSTEM_HIF_CNF_ID_PREVENT_ROLLBACK", i1 false, i1 false}
!101 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY", i1 false, i1 false}
!103 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY, !41, !"TRACE_SYSTEM_HIF_CNF_ID_SET_SL_MAC_KEY", i1 false, i1 false}
!104 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE", i1 false, i1 false}
!106 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE, !41, !"TRACE_SYSTEM_HIF_CNF_ID_SL_CONFIGURE", i1 false, i1 false}
!107 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS", i1 false, i1 false}
!109 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS, !41, !"TRACE_SYSTEM_HIF_CNF_ID_SL_EXCHANGE_PUB_KEYS", i1 false, i1 false}
!110 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @__TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN, !41, !"__TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN", i1 false, i1 false}
!112 = !{ptr @TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN, !41, !"TRACE_SYSTEM_HIF_CNF_ID_SHUT_DOWN", i1 false, i1 false}
!113 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_EVENT, !41, !"__TRACE_SYSTEM_HIF_IND_ID_EVENT", i1 false, i1 false}
!115 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_EVENT, !41, !"TRACE_SYSTEM_HIF_IND_ID_EVENT", i1 false, i1 false}
!116 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE, !41, !"__TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE", i1 false, i1 false}
!118 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE, !41, !"TRACE_SYSTEM_HIF_IND_ID_JOIN_COMPLETE", i1 false, i1 false}
!119 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_RX, !41, !"__TRACE_SYSTEM_HIF_IND_ID_RX", i1 false, i1 false}
!121 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_RX, !41, !"TRACE_SYSTEM_HIF_IND_ID_RX", i1 false, i1 false}
!122 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL, !41, !"__TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL", i1 false, i1 false}
!124 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL, !41, !"TRACE_SYSTEM_HIF_IND_ID_SCAN_CMPL", i1 false, i1 false}
!125 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL, !41, !"__TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL", i1 false, i1 false}
!127 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL, !41, !"TRACE_SYSTEM_HIF_IND_ID_SET_PM_MODE_CMPL", i1 false, i1 false}
!128 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX, !41, !"__TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX", i1 false, i1 false}
!130 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX, !41, !"TRACE_SYSTEM_HIF_IND_ID_SUSPEND_RESUME_TX", i1 false, i1 false}
!131 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS, !41, !"__TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS", i1 false, i1 false}
!133 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS, !41, !"TRACE_SYSTEM_HIF_IND_ID_SL_EXCHANGE_PUB_KEYS", i1 false, i1 false}
!134 = !{ptr @.str.31, !41, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_ERROR, !41, !"__TRACE_SYSTEM_HIF_IND_ID_ERROR", i1 false, i1 false}
!136 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_ERROR, !41, !"TRACE_SYSTEM_HIF_IND_ID_ERROR", i1 false, i1 false}
!137 = !{ptr @.str.32, !41, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_EXCEPTION, !41, !"__TRACE_SYSTEM_HIF_IND_ID_EXCEPTION", i1 false, i1 false}
!139 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_EXCEPTION, !41, !"TRACE_SYSTEM_HIF_IND_ID_EXCEPTION", i1 false, i1 false}
!140 = !{ptr @.str.33, !41, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_GENERIC, !41, !"__TRACE_SYSTEM_HIF_IND_ID_GENERIC", i1 false, i1 false}
!142 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_GENERIC, !41, !"TRACE_SYSTEM_HIF_IND_ID_GENERIC", i1 false, i1 false}
!143 = !{ptr @.str.34, !41, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_WAKEUP, !41, !"__TRACE_SYSTEM_HIF_IND_ID_WAKEUP", i1 false, i1 false}
!145 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_WAKEUP, !41, !"TRACE_SYSTEM_HIF_IND_ID_WAKEUP", i1 false, i1 false}
!146 = !{ptr @.str.35, !41, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @__TRACE_SYSTEM_HIF_IND_ID_STARTUP, !41, !"__TRACE_SYSTEM_HIF_IND_ID_STARTUP", i1 false, i1 false}
!148 = !{ptr @TRACE_SYSTEM_HIF_IND_ID_STARTUP, !41, !"TRACE_SYSTEM_HIF_IND_ID_STARTUP", i1 false, i1 false}
!149 = !{ptr @.str.36, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/wfx/./traces.h", i32 155, i32 1}
!151 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE", i1 false, i1 false}
!152 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_ARP_IP_ADDRESSES_TABLE", i1 false, i1 false}
!153 = !{ptr @.str.37, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD", i1 false, i1 false}
!155 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD, !150, !"TRACE_SYSTEM_HIF_MIB_ID_ARP_KEEP_ALIVE_PERIOD", i1 false, i1 false}
!156 = !{ptr @.str.38, !150, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE", i1 false, i1 false}
!158 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_ENABLE", i1 false, i1 false}
!159 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE", i1 false, i1 false}
!161 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_BEACON_FILTER_TABLE", i1 false, i1 false}
!162 = !{ptr @.str.40, !150, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS", i1 false, i1 false}
!164 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS, !150, !"TRACE_SYSTEM_HIF_MIB_ID_BEACON_STATS", i1 false, i1 false}
!165 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD", i1 false, i1 false}
!167 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD, !150, !"TRACE_SYSTEM_HIF_MIB_ID_BEACON_WAKEUP_PERIOD", i1 false, i1 false}
!168 = !{ptr @.str.42, !150, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY", i1 false, i1 false}
!170 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY, !150, !"TRACE_SYSTEM_HIF_MIB_ID_BLOCK_ACK_POLICY", i1 false, i1 false}
!171 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG", i1 false, i1 false}
!173 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG, !150, !"TRACE_SYSTEM_HIF_MIB_ID_CCA_CONFIG", i1 false, i1 false}
!174 = !{ptr @.str.44, !150, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER", i1 false, i1 false}
!176 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER, !150, !"TRACE_SYSTEM_HIF_MIB_ID_CONFIG_DATA_FILTER", i1 false, i1 false}
!177 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE", i1 false, i1 false}
!179 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_COUNTERS_TABLE", i1 false, i1 false}
!180 = !{ptr @.str.46, !150, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL", i1 false, i1 false}
!182 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL, !150, !"TRACE_SYSTEM_HIF_MIB_ID_CURRENT_TX_POWER_LEVEL", i1 false, i1 false}
!183 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS", i1 false, i1 false}
!185 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS, !150, !"TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAC_ADDRESS", i1 false, i1 false}
!186 = !{ptr @.str.48, !150, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME", i1 false, i1 false}
!188 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME, !150, !"TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_RECEIVE_LIFETIME", i1 false, i1 false}
!189 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME", i1 false, i1 false}
!191 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME, !150, !"TRACE_SYSTEM_HIF_MIB_ID_DOT11_MAX_TRANSMIT_MSDU_LIFETIME", i1 false, i1 false}
!192 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD", i1 false, i1 false}
!194 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD, !150, !"TRACE_SYSTEM_HIF_MIB_ID_DOT11_RTS_THRESHOLD", i1 false, i1 false}
!195 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID", i1 false, i1 false}
!197 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID, !150, !"TRACE_SYSTEM_HIF_MIB_ID_DOT11_WEP_DEFAULT_KEY_ID", i1 false, i1 false}
!198 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION", i1 false, i1 false}
!200 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_ETHERTYPE_DATAFRAME_CONDITION", i1 false, i1 false}
!201 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE", i1 false, i1 false}
!203 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_EXTENDED_COUNTERS_TABLE", i1 false, i1 false}
!204 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO", i1 false, i1 false}
!206 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO, !150, !"TRACE_SYSTEM_HIF_MIB_ID_GL_BLOCK_ACK_INFO", i1 false, i1 false}
!207 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE", i1 false, i1 false}
!209 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_GL_OPERATIONAL_POWER_MODE", i1 false, i1 false}
!210 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG", i1 false, i1 false}
!212 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG, !150, !"TRACE_SYSTEM_HIF_MIB_ID_GL_SET_MULTI_MSG", i1 false, i1 false}
!213 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER", i1 false, i1 false}
!215 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER, !150, !"TRACE_SYSTEM_HIF_MIB_ID_GRP_SEQ_COUNTER", i1 false, i1 false}
!216 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER", i1 false, i1 false}
!218 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER, !150, !"TRACE_SYSTEM_HIF_MIB_ID_INACTIVITY_TIMER", i1 false, i1 false}
!219 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION", i1 false, i1 false}
!221 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_INTERFACE_PROTECTION", i1 false, i1 false}
!222 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION", i1 false, i1 false}
!224 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_IPV4_ADDR_DATAFRAME_CONDITION", i1 false, i1 false}
!225 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION", i1 false, i1 false}
!227 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_IPV6_ADDR_DATAFRAME_CONDITION", i1 false, i1 false}
!228 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD", i1 false, i1 false}
!230 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD, !150, !"TRACE_SYSTEM_HIF_MIB_ID_KEEP_ALIVE_PERIOD", i1 false, i1 false}
!231 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION", i1 false, i1 false}
!233 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_MAC_ADDR_DATAFRAME_CONDITION", i1 false, i1 false}
!234 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION", i1 false, i1 false}
!236 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_MAGIC_DATAFRAME_CONDITION", i1 false, i1 false}
!237 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL", i1 false, i1 false}
!239 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL, !150, !"TRACE_SYSTEM_HIF_MIB_ID_MAX_TX_POWER_LEVEL", i1 false, i1 false}
!240 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION", i1 false, i1 false}
!242 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_NON_ERP_PROTECTION", i1 false, i1 false}
!243 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE", i1 false, i1 false}
!245 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_NS_IP_ADDRESSES_TABLE", i1 false, i1 false}
!246 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE", i1 false, i1 false}
!248 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_OVERRIDE_INTERNAL_TX_RATE", i1 false, i1 false}
!249 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION", i1 false, i1 false}
!251 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_PORT_DATAFRAME_CONDITION", i1 false, i1 false}
!252 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY", i1 false, i1 false}
!254 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY, !150, !"TRACE_SYSTEM_HIF_MIB_ID_PROTECTED_MGMT_POLICY", i1 false, i1 false}
!255 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD", i1 false, i1 false}
!257 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD, !150, !"TRACE_SYSTEM_HIF_MIB_ID_RCPI_RSSI_THRESHOLD", i1 false, i1 false}
!258 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER", i1 false, i1 false}
!260 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER, !150, !"TRACE_SYSTEM_HIF_MIB_ID_RX_FILTER", i1 false, i1 false}
!261 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE", i1 false, i1 false}
!263 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_SET_ASSOCIATION_MODE", i1 false, i1 false}
!264 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING", i1 false, i1 false}
!266 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING, !150, !"TRACE_SYSTEM_HIF_MIB_ID_SET_DATA_FILTERING", i1 false, i1 false}
!267 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION", i1 false, i1 false}
!269 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_SET_HT_PROTECTION", i1 false, i1 false}
!270 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY", i1 false, i1 false}
!272 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY, !150, !"TRACE_SYSTEM_HIF_MIB_ID_SET_TX_RATE_RETRY_POLICY", i1 false, i1 false}
!273 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION", i1 false, i1 false}
!275 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_SET_UAPSD_INFORMATION", i1 false, i1 false}
!276 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME", i1 false, i1 false}
!278 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME, !150, !"TRACE_SYSTEM_HIF_MIB_ID_SLOT_TIME", i1 false, i1 false}
!279 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE", i1 false, i1 false}
!281 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE, !150, !"TRACE_SYSTEM_HIF_MIB_ID_STATISTICS_TABLE", i1 false, i1 false}
!282 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME", i1 false, i1 false}
!284 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME, !150, !"TRACE_SYSTEM_HIF_MIB_ID_TEMPLATE_FRAME", i1 false, i1 false}
!285 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER", i1 false, i1 false}
!287 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER, !150, !"TRACE_SYSTEM_HIF_MIB_ID_TSF_COUNTER", i1 false, i1 false}
!288 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @__TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION, !150, !"__TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION", i1 false, i1 false}
!290 = !{ptr @TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION, !150, !"TRACE_SYSTEM_HIF_MIB_ID_UC_MC_BC_DATAFRAME_CONDITION", i1 false, i1 false}
!291 = !{ptr @.str.83, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/wfx/./traces.h", i32 233, i32 1}
!293 = !{ptr @__TRACE_SYSTEM_0x0, !292, !"__TRACE_SYSTEM_0x0", i1 false, i1 false}
!294 = !{ptr @TRACE_SYSTEM_0x0, !292, !"TRACE_SYSTEM_0x0", i1 false, i1 false}
!295 = !{ptr @.str.84, !292, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @__TRACE_SYSTEM_0x1, !292, !"__TRACE_SYSTEM_0x1", i1 false, i1 false}
!297 = !{ptr @TRACE_SYSTEM_0x1, !292, !"TRACE_SYSTEM_0x1", i1 false, i1 false}
!298 = !{ptr @.str.85, !292, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @__TRACE_SYSTEM_0x2, !292, !"__TRACE_SYSTEM_0x2", i1 false, i1 false}
!300 = !{ptr @TRACE_SYSTEM_0x2, !292, !"TRACE_SYSTEM_0x2", i1 false, i1 false}
!301 = !{ptr @.str.86, !292, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @__TRACE_SYSTEM_0x3, !292, !"__TRACE_SYSTEM_0x3", i1 false, i1 false}
!303 = !{ptr @TRACE_SYSTEM_0x3, !292, !"TRACE_SYSTEM_0x3", i1 false, i1 false}
!304 = !{ptr @.str.87, !292, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @__TRACE_SYSTEM_0x4, !292, !"__TRACE_SYSTEM_0x4", i1 false, i1 false}
!306 = !{ptr @TRACE_SYSTEM_0x4, !292, !"TRACE_SYSTEM_0x4", i1 false, i1 false}
!307 = !{ptr @.str.88, !292, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @__TRACE_SYSTEM_0x5, !292, !"__TRACE_SYSTEM_0x5", i1 false, i1 false}
!309 = !{ptr @TRACE_SYSTEM_0x5, !292, !"TRACE_SYSTEM_0x5", i1 false, i1 false}
!310 = !{ptr @.str.89, !292, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @__TRACE_SYSTEM_0x6, !292, !"__TRACE_SYSTEM_0x6", i1 false, i1 false}
!312 = !{ptr @TRACE_SYSTEM_0x6, !292, !"TRACE_SYSTEM_0x6", i1 false, i1 false}
!313 = !{ptr @.str.90, !292, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @__TRACE_SYSTEM_0x7, !292, !"__TRACE_SYSTEM_0x7", i1 false, i1 false}
!315 = !{ptr @TRACE_SYSTEM_0x7, !292, !"TRACE_SYSTEM_0x7", i1 false, i1 false}
!316 = !{ptr @event_class_hif_data, !317, !"event_class_hif_data", i1 false, i1 false}
!317 = !{!"../drivers/staging/wfx/./traces.h", i32 160, i32 1}
!318 = !{ptr @event_hif_send, !1, !"event_hif_send", i1 false, i1 false}
!319 = !{ptr @__event_hif_send, !1, !"__event_hif_send", i1 false, i1 false}
!320 = !{ptr @event_hif_recv, !5, !"event_hif_recv", i1 false, i1 false}
!321 = !{ptr @__event_hif_recv, !5, !"__event_hif_recv", i1 false, i1 false}
!322 = !{ptr @event_class_io_data, !323, !"event_class_io_data", i1 false, i1 false}
!323 = !{!"../drivers/staging/wfx/./traces.h", i32 238, i32 1}
!324 = !{ptr @event_io_write, !9, !"event_io_write", i1 false, i1 false}
!325 = !{ptr @__event_io_write, !9, !"__event_io_write", i1 false, i1 false}
!326 = !{ptr @event_io_read, !13, !"event_io_read", i1 false, i1 false}
!327 = !{ptr @__event_io_read, !13, !"__event_io_read", i1 false, i1 false}
!328 = !{ptr @event_class_io_data32, !329, !"event_class_io_data32", i1 false, i1 false}
!329 = !{!"../drivers/staging/wfx/./traces.h", i32 282, i32 1}
!330 = !{ptr @event_io_write32, !17, !"event_io_write32", i1 false, i1 false}
!331 = !{ptr @__event_io_write32, !17, !"__event_io_write32", i1 false, i1 false}
!332 = !{ptr @event_io_read32, !21, !"event_io_read32", i1 false, i1 false}
!333 = !{ptr @__event_io_read32, !21, !"__event_io_read32", i1 false, i1 false}
!334 = !{ptr @event_class_piggyback, !335, !"event_class_piggyback", i1 false, i1 false}
!335 = !{!"../drivers/staging/wfx/./traces.h", i32 317, i32 1}
!336 = !{ptr @event_piggyback, !25, !"event_piggyback", i1 false, i1 false}
!337 = !{ptr @__event_piggyback, !25, !"__event_piggyback", i1 false, i1 false}
!338 = !{ptr @event_class_bh_stats, !29, !"event_class_bh_stats", i1 false, i1 false}
!339 = !{ptr @event_bh_stats, !29, !"event_bh_stats", i1 false, i1 false}
!340 = !{ptr @__event_bh_stats, !29, !"__event_bh_stats", i1 false, i1 false}
!341 = !{ptr @event_class_tx_stats, !33, !"event_class_tx_stats", i1 false, i1 false}
!342 = !{ptr @event_tx_stats, !33, !"event_tx_stats", i1 false, i1 false}
!343 = !{ptr @__event_tx_stats, !33, !"__event_tx_stats", i1 false, i1 false}
!344 = !{ptr @event_class_queues_stats, !37, !"event_class_queues_stats", i1 false, i1 false}
!345 = !{ptr @event_queues_stats, !37, !"event_queues_stats", i1 false, i1 false}
!346 = !{ptr @__event_queues_stats, !37, !"__event_queues_stats", i1 false, i1 false}
!347 = !{ptr @__bpf_trace_tp_map_hif_send, !1, !"__bpf_trace_tp_map_hif_send", i1 false, i1 false}
!348 = !{ptr @__bpf_trace_tp_map_hif_recv, !5, !"__bpf_trace_tp_map_hif_recv", i1 false, i1 false}
!349 = !{ptr @__bpf_trace_tp_map_io_write, !9, !"__bpf_trace_tp_map_io_write", i1 false, i1 false}
!350 = !{ptr @__bpf_trace_tp_map_io_read, !13, !"__bpf_trace_tp_map_io_read", i1 false, i1 false}
!351 = !{ptr @__bpf_trace_tp_map_io_write32, !17, !"__bpf_trace_tp_map_io_write32", i1 false, i1 false}
!352 = !{ptr @__bpf_trace_tp_map_io_read32, !21, !"__bpf_trace_tp_map_io_read32", i1 false, i1 false}
!353 = !{ptr @__bpf_trace_tp_map_piggyback, !25, !"__bpf_trace_tp_map_piggyback", i1 false, i1 false}
!354 = !{ptr @__bpf_trace_tp_map_bh_stats, !29, !"__bpf_trace_tp_map_bh_stats", i1 false, i1 false}
!355 = !{ptr @__bpf_trace_tp_map_tx_stats, !33, !"__bpf_trace_tp_map_tx_stats", i1 false, i1 false}
!356 = !{ptr @__bpf_trace_tp_map_queues_stats, !37, !"__bpf_trace_tp_map_queues_stats", i1 false, i1 false}
!357 = !{ptr @.str.91, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/staging/wfx/debug.c", i32 354, i32 25}
!359 = !{ptr @.str.92, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/staging/wfx/debug.c", i32 355, i32 22}
!361 = !{ptr @.str.93, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/staging/wfx/debug.c", i32 356, i32 22}
!363 = !{ptr @.str.94, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/staging/wfx/debug.c", i32 357, i32 22}
!365 = !{ptr @.str.95, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/staging/wfx/debug.c", i32 359, i32 22}
!367 = !{ptr @.str.96, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/staging/wfx/debug.c", i32 360, i32 22}
!369 = !{ptr @.str.97, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/staging/wfx/debug.c", i32 362, i32 22}
!371 = !{ptr @__tpstrtab_hif_send, !1, !"__tpstrtab_hif_send", i1 false, i1 false}
!372 = !{ptr @__tpstrtab_hif_recv, !5, !"__tpstrtab_hif_recv", i1 false, i1 false}
!373 = !{ptr @__tpstrtab_io_write, !9, !"__tpstrtab_io_write", i1 false, i1 false}
!374 = !{ptr @__tpstrtab_io_read, !13, !"__tpstrtab_io_read", i1 false, i1 false}
!375 = !{ptr @__tpstrtab_io_write32, !17, !"__tpstrtab_io_write32", i1 false, i1 false}
!376 = !{ptr @__tpstrtab_io_read32, !21, !"__tpstrtab_io_read32", i1 false, i1 false}
!377 = !{ptr @__tpstrtab_piggyback, !25, !"__tpstrtab_piggyback", i1 false, i1 false}
!378 = !{ptr @__tpstrtab_bh_stats, !29, !"__tpstrtab_bh_stats", i1 false, i1 false}
!379 = !{ptr @__tpstrtab_tx_stats, !33, !"__tpstrtab_tx_stats", i1 false, i1 false}
!380 = !{ptr @__tpstrtab_queues_stats, !37, !"__tpstrtab_queues_stats", i1 false, i1 false}
!381 = !{ptr @str__wfx__trace_system_name, !382, !"str__wfx__trace_system_name", i1 false, i1 false}
!382 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!383 = !{ptr @.str.98, !317, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.99, !317, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.100, !317, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.101, !317, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.102, !317, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.103, !317, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.104, !317, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.105, !317, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.106, !317, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.107, !317, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.108, !317, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.109, !317, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.110, !317, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.111, !317, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @trace_event_fields_hif_data, !317, !"trace_event_fields_hif_data", i1 false, i1 false}
!398 = !{ptr @trace_event_type_funcs_hif_data, !317, !"trace_event_type_funcs_hif_data", i1 false, i1 false}
!399 = !{ptr @.str.112, !317, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.113, !317, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.114, !317, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.115, !317, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.116, !317, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.117, !317, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.118, !317, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.119, !317, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @.str.120, !317, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.121, !317, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.122, !317, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.123, !317, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.124, !317, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.125, !317, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.126, !317, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.127, !317, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.128, !317, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.129, !317, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.130, !317, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.131, !317, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.132, !317, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.133, !317, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.134, !317, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.135, !317, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.136, !317, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.137, !317, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.138, !317, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.139, !317, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.140, !317, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.141, !317, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.142, !317, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.143, !317, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.144, !317, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.145, !317, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.147, !317, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @trace_raw_output_hif_data.symbols, !317, !"symbols", i1 false, i1 false}
!436 = !{ptr @.str.148, !317, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.149, !317, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.153, !317, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @.str.155, !317, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.156, !317, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @.str.157, !317, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.159, !317, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @.str.161, !317, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.162, !317, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @.str.163, !317, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.164, !317, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.165, !317, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @.str.167, !317, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.168, !317, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.169, !317, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.170, !317, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.171, !317, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.172, !317, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @.str.173, !317, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.174, !317, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.175, !317, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.176, !317, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.177, !317, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.178, !317, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.180, !317, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @.str.181, !317, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.182, !317, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @.str.183, !317, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.184, !317, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.185, !317, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.186, !317, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @.str.187, !317, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @.str.188, !317, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.189, !317, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.190, !317, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @.str.191, !317, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @.str.192, !317, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @.str.193, !317, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.194, !317, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @.str.195, !317, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.196, !317, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.197, !317, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @trace_raw_output_hif_data.symbols.150, !317, !"symbols", i1 false, i1 false}
!486 = !{ptr @.str.198, !317, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @print_fmt_hif_data, !317, !"print_fmt_hif_data", i1 false, i1 false}
!488 = !{ptr @.str.199, !323, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @.str.200, !323, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @.str.201, !323, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @.str.202, !323, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.203, !323, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @.str.204, !323, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @trace_event_fields_io_data, !323, !"trace_event_fields_io_data", i1 false, i1 false}
!495 = !{ptr @trace_event_type_funcs_io_data, !323, !"trace_event_type_funcs_io_data", i1 false, i1 false}
!496 = !{ptr @.str.205, !323, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.206, !323, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.207, !323, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @.str.208, !323, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.209, !323, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.210, !323, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.211, !323, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.212, !323, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @.str.213, !323, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @trace_raw_output_io_data.symbols, !323, !"symbols", i1 false, i1 false}
!506 = !{ptr @print_fmt_io_data, !323, !"print_fmt_io_data", i1 false, i1 false}
!507 = !{ptr @.str.214, !329, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @trace_event_fields_io_data32, !329, !"trace_event_fields_io_data32", i1 false, i1 false}
!509 = !{ptr @trace_event_type_funcs_io_data32, !329, !"trace_event_type_funcs_io_data32", i1 false, i1 false}
!510 = !{ptr @.str.215, !329, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @trace_raw_output_io_data32.symbols, !329, !"symbols", i1 false, i1 false}
!512 = !{ptr @print_fmt_io_data32, !329, !"print_fmt_io_data32", i1 false, i1 false}
!513 = !{ptr @.str.216, !335, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.217, !335, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @trace_event_fields_piggyback, !335, !"trace_event_fields_piggyback", i1 false, i1 false}
!516 = !{ptr @trace_event_type_funcs_piggyback, !335, !"trace_event_type_funcs_piggyback", i1 false, i1 false}
!517 = !{ptr @.str.218, !335, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @.str.219, !335, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @print_fmt_piggyback, !335, !"print_fmt_piggyback", i1 false, i1 false}
!520 = !{ptr @.str.220, !29, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @.str.221, !29, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @.str.222, !29, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @.str.223, !29, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.224, !29, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @trace_event_fields_bh_stats, !29, !"trace_event_fields_bh_stats", i1 false, i1 false}
!526 = !{ptr @trace_event_type_funcs_bh_stats, !29, !"trace_event_type_funcs_bh_stats", i1 false, i1 false}
!527 = !{ptr @.str.225, !29, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @.str.226, !29, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @print_fmt_bh_stats, !29, !"print_fmt_bh_stats", i1 false, i1 false}
!530 = !{ptr @trace_event_raw_event_tx_stats.hw_rate, !33, !"hw_rate", i1 false, i1 false}
!531 = !{ptr @.str.227, !33, !"<string literal>", i1 false, i1 false}
!532 = !{ptr @.str.228, !33, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @.str.229, !33, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @.str.230, !33, !"<string literal>", i1 false, i1 false}
!535 = !{ptr @.str.231, !33, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @.str.232, !33, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @.str.233, !33, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @.str.234, !33, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @.str.235, !33, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @trace_event_fields_tx_stats, !33, !"trace_event_fields_tx_stats", i1 false, i1 false}
!541 = !{ptr @trace_event_type_funcs_tx_stats, !33, !"trace_event_type_funcs_tx_stats", i1 false, i1 false}
!542 = !{ptr @.str.236, !33, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @.str.237, !33, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @.str.238, !33, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @.str.239, !33, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @.str.240, !33, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @.str.241, !33, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @.str.242, !33, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @.str.243, !33, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @trace_raw_output_tx_stats.__flags, !33, !"__flags", i1 false, i1 false}
!551 = !{ptr @print_fmt_tx_stats, !33, !"print_fmt_tx_stats", i1 false, i1 false}
!552 = !{ptr @.str.244, !37, !"<string literal>", i1 false, i1 false}
!553 = distinct !{null, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/staging/wfx/wfx.h", i32 98, i32 3}
!555 = distinct !{null, !554, !"<string literal>", i1 false, i1 false}
!556 = distinct !{null, !554, !"<string literal>", i1 false, i1 false}
!557 = distinct !{null, !554, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!558 = !{ptr @.str.248, !37, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @.str.249, !37, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @.str.250, !37, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @.str.251, !37, !"<string literal>", i1 false, i1 false}
!562 = !{ptr @.str.252, !37, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @.str.253, !37, !"<string literal>", i1 false, i1 false}
!564 = !{ptr @trace_event_fields_queues_stats, !37, !"trace_event_fields_queues_stats", i1 false, i1 false}
!565 = !{ptr @trace_event_type_funcs_queues_stats, !37, !"trace_event_type_funcs_queues_stats", i1 false, i1 false}
!566 = !{ptr @.str.254, !37, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @print_fmt_queues_stats, !37, !"print_fmt_queues_stats", i1 false, i1 false}
!568 = !{ptr @perf_trace_tx_stats.hw_rate, !33, !"hw_rate", i1 false, i1 false}
!569 = !{ptr @.str.255, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/staging/wfx/debug.c", i32 44, i32 9}
!571 = !{ptr @hif_msg_print_map, !572, !"hif_msg_print_map", i1 false, i1 false}
!572 = !{!"../drivers/staging/wfx/debug.c", i32 22, i32 39}
!573 = !{ptr @hif_mib_print_map, !574, !"hif_mib_print_map", i1 false, i1 false}
!574 = !{!"../drivers/staging/wfx/debug.c", i32 26, i32 39}
!575 = !{ptr @wfx_reg_print_map, !576, !"wfx_reg_print_map", i1 false, i1 false}
!576 = !{!"../drivers/staging/wfx/debug.c", i32 30, i32 39}
!577 = !{ptr @wfx_counters_fops, !578, !"wfx_counters_fops", i1 false, i1 false}
!578 = !{!"../drivers/staging/wfx/debug.c", i32 127, i32 1}
!579 = !{ptr @.str.256, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/staging/wfx/debug.c", i32 76, i32 18}
!581 = !{ptr @.str.257, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/staging/wfx/debug.c", i32 77, i32 10}
!583 = !{ptr @.str.258, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/staging/wfx/debug.c", i32 77, i32 20}
!585 = !{ptr @.str.259, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/staging/wfx/debug.c", i32 77, i32 31}
!587 = !{ptr @.str.260, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/staging/wfx/debug.c", i32 85, i32 2}
!589 = !{ptr @.str.261, !588, !"<string literal>", i1 false, i1 false}
!590 = !{ptr @.str.262, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/staging/wfx/debug.c", i32 86, i32 2}
!592 = !{ptr @.str.263, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/staging/wfx/debug.c", i32 87, i32 2}
!594 = !{ptr @.str.264, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/staging/wfx/debug.c", i32 88, i32 2}
!596 = !{ptr @.str.265, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/staging/wfx/debug.c", i32 89, i32 2}
!598 = !{ptr @.str.266, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/staging/wfx/debug.c", i32 90, i32 2}
!600 = !{ptr @.str.267, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/staging/wfx/debug.c", i32 92, i32 2}
!602 = !{ptr @.str.268, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/staging/wfx/debug.c", i32 93, i32 2}
!604 = !{ptr @.str.269, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/staging/wfx/debug.c", i32 94, i32 2}
!606 = !{ptr @.str.270, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/staging/wfx/debug.c", i32 96, i32 2}
!608 = !{ptr @.str.271, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/staging/wfx/debug.c", i32 97, i32 2}
!610 = !{ptr @.str.272, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/staging/wfx/debug.c", i32 98, i32 2}
!612 = !{ptr @.str.273, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/staging/wfx/debug.c", i32 99, i32 2}
!614 = !{ptr @.str.274, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/staging/wfx/debug.c", i32 100, i32 2}
!616 = !{ptr @.str.275, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/staging/wfx/debug.c", i32 101, i32 2}
!618 = !{ptr @.str.276, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/staging/wfx/debug.c", i32 102, i32 2}
!620 = !{ptr @.str.277, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/staging/wfx/debug.c", i32 103, i32 2}
!622 = !{ptr @.str.278, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/staging/wfx/debug.c", i32 104, i32 2}
!624 = !{ptr @.str.279, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/staging/wfx/debug.c", i32 105, i32 2}
!626 = !{ptr @.str.280, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/staging/wfx/debug.c", i32 106, i32 2}
!628 = !{ptr @.str.281, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/staging/wfx/debug.c", i32 107, i32 2}
!630 = !{ptr @.str.282, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/staging/wfx/debug.c", i32 108, i32 2}
!632 = !{ptr @.str.283, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/staging/wfx/debug.c", i32 109, i32 2}
!634 = !{ptr @.str.284, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/staging/wfx/debug.c", i32 111, i32 2}
!636 = !{ptr @.str.285, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/staging/wfx/debug.c", i32 112, i32 2}
!638 = !{ptr @.str.286, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/staging/wfx/debug.c", i32 113, i32 2}
!640 = !{ptr @.str.287, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/staging/wfx/debug.c", i32 114, i32 2}
!642 = !{ptr @.str.288, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/staging/wfx/debug.c", i32 115, i32 2}
!644 = !{ptr @.str.289, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/staging/wfx/debug.c", i32 120, i32 19}
!646 = !{ptr @wfx_rx_stats_fops, !647, !"wfx_rx_stats_fops", i1 false, i1 false}
!647 = !{!"../drivers/staging/wfx/debug.c", i32 183, i32 1}
!648 = !{ptr @.str.290, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/staging/wfx/debug.c", i32 160, i32 18}
!650 = !{ptr @.str.291, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/staging/wfx/debug.c", i32 161, i32 18}
!652 = !{ptr @.str.292, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/staging/wfx/debug.c", i32 163, i32 27}
!654 = !{ptr @.str.293, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/staging/wfx/debug.c", i32 163, i32 35}
!656 = !{ptr @.str.294, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/staging/wfx/debug.c", i32 165, i32 6}
!658 = !{ptr @.str.295, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/staging/wfx/debug.c", i32 167, i32 16}
!660 = !{ptr @.str.296, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/staging/wfx/debug.c", i32 168, i32 16}
!662 = !{ptr @.str.297, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/staging/wfx/debug.c", i32 171, i32 20}
!664 = !{ptr @.str.298, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/staging/wfx/debug.c", i32 130, i32 8}
!666 = !{ptr @.str.299, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/staging/wfx/debug.c", i32 131, i32 8}
!668 = !{ptr @.str.300, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/staging/wfx/debug.c", i32 132, i32 8}
!670 = !{ptr @.str.301, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/staging/wfx/debug.c", i32 133, i32 8}
!672 = !{ptr @.str.302, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/staging/wfx/debug.c", i32 135, i32 8}
!674 = !{ptr @.str.303, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/staging/wfx/debug.c", i32 136, i32 8}
!676 = !{ptr @.str.304, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/staging/wfx/debug.c", i32 137, i32 8}
!678 = !{ptr @.str.305, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/staging/wfx/debug.c", i32 138, i32 8}
!680 = !{ptr @.str.306, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/staging/wfx/debug.c", i32 139, i32 9}
!682 = !{ptr @.str.307, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/staging/wfx/debug.c", i32 140, i32 9}
!684 = !{ptr @.str.308, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/staging/wfx/debug.c", i32 141, i32 9}
!686 = !{ptr @.str.309, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/staging/wfx/debug.c", i32 142, i32 9}
!688 = !{ptr @.str.310, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/staging/wfx/debug.c", i32 143, i32 9}
!690 = !{ptr @.str.311, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/staging/wfx/debug.c", i32 144, i32 9}
!692 = !{ptr @.str.312, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/staging/wfx/debug.c", i32 145, i32 9}
!694 = !{ptr @.str.313, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/staging/wfx/debug.c", i32 146, i32 9}
!696 = !{ptr @.str.314, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/staging/wfx/debug.c", i32 147, i32 9}
!698 = !{ptr @.str.315, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/staging/wfx/debug.c", i32 148, i32 9}
!700 = !{ptr @.str.316, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/staging/wfx/debug.c", i32 149, i32 9}
!702 = !{ptr @.str.317, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/staging/wfx/debug.c", i32 150, i32 9}
!704 = !{ptr @channel_names, !705, !"channel_names", i1 false, i1 false}
!705 = !{!"../drivers/staging/wfx/debug.c", i32 129, i32 27}
!706 = !{ptr @wfx_tx_power_loop_fops, !707, !"wfx_tx_power_loop_fops", i1 false, i1 false}
!707 = !{!"../drivers/staging/wfx/debug.c", i32 207, i32 1}
!708 = !{ptr @.str.318, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/staging/wfx/debug.c", i32 193, i32 18}
!710 = !{ptr @.str.319, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/staging/wfx/debug.c", i32 195, i32 18}
!712 = !{ptr @.str.320, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/staging/wfx/debug.c", i32 197, i32 18}
!714 = !{ptr @.str.321, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/staging/wfx/debug.c", i32 199, i32 18}
!716 = !{ptr @.str.322, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/staging/wfx/debug.c", i32 201, i32 18}
!718 = !{ptr @.str.323, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/staging/wfx/debug.c", i32 202, i32 18}
!720 = !{ptr @wfx_send_pds_fops, !721, !"wfx_send_pds_fops", i1 false, i1 false}
!721 = !{!"../drivers/staging/wfx/debug.c", i32 232, i32 37}
!722 = !{ptr @.str.324, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/staging/wfx/debug.c", i32 218, i32 3}
!724 = !{ptr @.str.325, !723, !"<string literal>", i1 false, i1 false}
!725 = !{ptr @.str.326, !723, !"<string literal>", i1 false, i1 false}
!726 = !{ptr @wfx_send_pds_write.__UNIQUE_ID_ddebug422, !723, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!727 = !{ptr @wfx_send_hif_msg_fops, !728, !"wfx_send_hif_msg_fops", i1 false, i1 false}
!728 = !{!"../drivers/staging/wfx/debug.c", i32 321, i32 37}
!729 = distinct !{null, !730, !"__already_done", i1 false, i1 false}
!730 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!731 = !{ptr @.str.327, !730, !"<string literal>", i1 false, i1 false}
!732 = !{ptr @.str.328, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!734 = !{ptr @.str.329, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!736 = !{ptr @.str.330, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/staging/wfx/debug.c", i32 253, i32 3}
!738 = !{ptr @.str.331, !737, !"<string literal>", i1 false, i1 false}
!739 = !{ptr @wfx_send_hif_msg_write.__UNIQUE_ID_ddebug423, !737, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!740 = !{ptr @init_completion.__key, !741, !"__key", i1 false, i1 false}
!741 = !{!"../include/linux/completion.h", i32 87, i32 2}
!742 = !{ptr @.str.332, !741, !"<string literal>", i1 false, i1 false}
!743 = !{ptr @wfx_ps_timeout_fops, !744, !"wfx_ps_timeout_fops", i1 false, i1 false}
!744 = !{!"../drivers/staging/wfx/debug.c", i32 348, i32 1}
!745 = !{ptr @.str.333, !744, !"<string literal>", i1 false, i1 false}
!746 = !{!"sp"}
!747 = !{i32 1, !"wchar_size", i32 2}
!748 = !{i32 1, !"min_enum_size", i32 4}
!749 = !{i32 8, !"branch-target-enforcement", i32 0}
!750 = !{i32 8, !"sign-return-address", i32 0}
!751 = !{i32 8, !"sign-return-address-all", i32 0}
!752 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!753 = !{i32 7, !"uwtable", i32 1}
!754 = !{i32 7, !"frame-pointer", i32 2}
!755 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!756 = !{!"branch_weights", i32 2000, i32 1}
!757 = !{!"branch_weights", i32 1, i32 2000}
!758 = !{!"auto-init"}
!759 = !{i64 785387, i64 785404}
!760 = !{i8 0, i8 2}
!761 = !{i64 2148495808, i64 2148495813, i64 2148495826, i64 2148495870, i64 2148495904, i64 2148495925}
!762 = !{i64 2152184370, i64 2152184395}
