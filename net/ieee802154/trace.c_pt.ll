; ModuleID = '/llk/IR_all_yes/net/ieee802154/trace.c_pt.bc'
source_filename = "../net/ieee802154/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.139 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.141, %struct.trace_event, ptr, ptr, %union.anon.142, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.141 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.142 = type { ptr }
%union.anon.143 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_wpan_phy_only_evt = type { %struct.trace_entry, [32 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.possible_net_t = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_802154_rdev_add_virtual_intf = type { %struct.trace_entry, [32 x i8], i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_802154_rdev_del_virtual_intf = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.trace_event_raw_802154_rdev_set_channel = type { %struct.trace_entry, [32 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_tx_power = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_cca_mode = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_cca_ed_level = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_802154_le16_template = type { %struct.trace_entry, [32 x i8], i32, i16, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_backoff_exponent = type { %struct.trace_entry, [32 x i8], i32, i8, i8, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_csma_backoffs = type { %struct.trace_entry, [32 x i8], i32, i8, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_max_frame_retries = type { %struct.trace_entry, [32 x i8], i32, i8, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_lbt_mode = type { %struct.trace_entry, [32 x i8], i32, i8, [0 x i8] }
%struct.trace_event_raw_802154_rdev_set_ackreq_default = type { %struct.trace_entry, [32 x i8], i32, i8, [0 x i8] }
%struct.trace_event_raw_802154_rdev_return_int = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_802154_rdev_suspend = internal constant [20 x i8] c"802154_rdev_suspend\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_suspend = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_suspend }, align 4
@__tracepoint_802154_rdev_suspend = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_suspend, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_suspend, ptr null, ptr @__traceiter_802154_rdev_suspend, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_suspend = internal constant ptr @__tracepoint_802154_rdev_suspend, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_resume = internal constant [19 x i8] c"802154_rdev_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_resume = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_resume }, align 4
@__tracepoint_802154_rdev_resume = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_resume, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_resume, ptr null, ptr @__traceiter_802154_rdev_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_resume = internal constant ptr @__tracepoint_802154_rdev_resume, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_add_virtual_intf = internal constant [29 x i8] c"802154_rdev_add_virtual_intf\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_add_virtual_intf = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_add_virtual_intf }, align 4
@__tracepoint_802154_rdev_add_virtual_intf = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_add_virtual_intf, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_add_virtual_intf, ptr null, ptr @__traceiter_802154_rdev_add_virtual_intf, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_add_virtual_intf = internal constant ptr @__tracepoint_802154_rdev_add_virtual_intf, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_del_virtual_intf = internal constant [29 x i8] c"802154_rdev_del_virtual_intf\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_del_virtual_intf = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_del_virtual_intf }, align 4
@__tracepoint_802154_rdev_del_virtual_intf = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_del_virtual_intf, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_del_virtual_intf, ptr null, ptr @__traceiter_802154_rdev_del_virtual_intf, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_del_virtual_intf = internal constant ptr @__tracepoint_802154_rdev_del_virtual_intf, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_channel = internal constant [24 x i8] c"802154_rdev_set_channel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_channel = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_channel }, align 4
@__tracepoint_802154_rdev_set_channel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_channel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_channel, ptr null, ptr @__traceiter_802154_rdev_set_channel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_channel = internal constant ptr @__tracepoint_802154_rdev_set_channel, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_tx_power = internal constant [25 x i8] c"802154_rdev_set_tx_power\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_tx_power = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_tx_power }, align 4
@__tracepoint_802154_rdev_set_tx_power = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_tx_power, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_tx_power, ptr null, ptr @__traceiter_802154_rdev_set_tx_power, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_tx_power = internal constant ptr @__tracepoint_802154_rdev_set_tx_power, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_cca_mode = internal constant [25 x i8] c"802154_rdev_set_cca_mode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_cca_mode = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_cca_mode }, align 4
@__tracepoint_802154_rdev_set_cca_mode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_cca_mode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_cca_mode, ptr null, ptr @__traceiter_802154_rdev_set_cca_mode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_cca_mode = internal constant ptr @__tracepoint_802154_rdev_set_cca_mode, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_cca_ed_level = internal constant [29 x i8] c"802154_rdev_set_cca_ed_level\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_cca_ed_level = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_cca_ed_level }, align 4
@__tracepoint_802154_rdev_set_cca_ed_level = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_cca_ed_level, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_cca_ed_level, ptr null, ptr @__traceiter_802154_rdev_set_cca_ed_level, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_cca_ed_level = internal constant ptr @__tracepoint_802154_rdev_set_cca_ed_level, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_pan_id = internal constant [23 x i8] c"802154_rdev_set_pan_id\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_pan_id = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_pan_id }, align 4
@__tracepoint_802154_rdev_set_pan_id = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_pan_id, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_pan_id, ptr null, ptr @__traceiter_802154_rdev_set_pan_id, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_pan_id = internal constant ptr @__tracepoint_802154_rdev_set_pan_id, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_short_addr = internal constant [27 x i8] c"802154_rdev_set_short_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_short_addr = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_short_addr }, align 4
@__tracepoint_802154_rdev_set_short_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_short_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_short_addr, ptr null, ptr @__traceiter_802154_rdev_set_short_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_short_addr = internal constant ptr @__tracepoint_802154_rdev_set_short_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_backoff_exponent = internal constant [33 x i8] c"802154_rdev_set_backoff_exponent\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_backoff_exponent = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_backoff_exponent }, align 4
@__tracepoint_802154_rdev_set_backoff_exponent = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_backoff_exponent, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_backoff_exponent, ptr null, ptr @__traceiter_802154_rdev_set_backoff_exponent, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_backoff_exponent = internal constant ptr @__tracepoint_802154_rdev_set_backoff_exponent, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_csma_backoffs = internal constant [30 x i8] c"802154_rdev_set_csma_backoffs\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_csma_backoffs = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_csma_backoffs }, align 4
@__tracepoint_802154_rdev_set_csma_backoffs = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_csma_backoffs, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_csma_backoffs, ptr null, ptr @__traceiter_802154_rdev_set_csma_backoffs, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_csma_backoffs = internal constant ptr @__tracepoint_802154_rdev_set_csma_backoffs, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_max_frame_retries = internal constant [34 x i8] c"802154_rdev_set_max_frame_retries\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_max_frame_retries = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_max_frame_retries }, align 4
@__tracepoint_802154_rdev_set_max_frame_retries = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_max_frame_retries, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_max_frame_retries, ptr null, ptr @__traceiter_802154_rdev_set_max_frame_retries, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_max_frame_retries = internal constant ptr @__tracepoint_802154_rdev_set_max_frame_retries, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_lbt_mode = internal constant [25 x i8] c"802154_rdev_set_lbt_mode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_lbt_mode = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_lbt_mode }, align 4
@__tracepoint_802154_rdev_set_lbt_mode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_lbt_mode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_lbt_mode, ptr null, ptr @__traceiter_802154_rdev_set_lbt_mode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_lbt_mode = internal constant ptr @__tracepoint_802154_rdev_set_lbt_mode, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_set_ackreq_default = internal constant [31 x i8] c"802154_rdev_set_ackreq_default\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_set_ackreq_default = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_set_ackreq_default }, align 4
@__tracepoint_802154_rdev_set_ackreq_default = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_set_ackreq_default, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_set_ackreq_default, ptr null, ptr @__traceiter_802154_rdev_set_ackreq_default, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_set_ackreq_default = internal constant ptr @__tracepoint_802154_rdev_set_ackreq_default, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_rdev_return_int = internal constant [23 x i8] c"802154_rdev_return_int\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_rdev_return_int = dso_local global %struct.static_call_key { ptr @__traceiter_802154_rdev_return_int }, align 4
@__tracepoint_802154_rdev_return_int = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_rdev_return_int, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_rdev_return_int, ptr null, ptr @__traceiter_802154_rdev_return_int, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_rdev_return_int = internal constant ptr @__tracepoint_802154_rdev_return_int, section "__tracepoints_ptrs", align 4
@str__cfg802154__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfg802154\00", [22 x i8] zeroinitializer }, align 32
@trace_event_fields_wpan_phy_only_evt = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wpan_phy_only_evt = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_wpan_phy_only_evt, ptr @perf_trace_wpan_phy_only_evt, ptr @trace_event_reg, ptr @trace_event_fields_wpan_phy_only_evt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wpan_phy_only_evt, i64 24), ptr getelementptr (i8, ptr @event_class_wpan_phy_only_evt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wpan_phy_only_evt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wpan_phy_only_evt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wpan_phy_only_evt = internal global { [25 x i8], [39 x i8] } { [25 x i8] c"\22%s\22, REC->wpan_phy_name\00", [39 x i8] zeroinitializer }, align 32
@event_802154_rdev_suspend = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wpan_phy_only_evt, %union.anon.141 { ptr @__tracepoint_802154_rdev_suspend }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wpan_phy_only_evt }, ptr @print_fmt_wpan_phy_only_evt, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_suspend = internal global ptr @event_802154_rdev_suspend, section "_ftrace_events", align 4
@event_802154_rdev_resume = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wpan_phy_only_evt, %union.anon.141 { ptr @__tracepoint_802154_rdev_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wpan_phy_only_evt }, ptr @print_fmt_wpan_phy_only_evt, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_resume = internal global ptr @event_802154_rdev_resume, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_add_virtual_intf = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.139 { %struct.anon.140 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.139 { %struct.anon.140 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.139 { %struct.anon.140 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_add_virtual_intf = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_add_virtual_intf, ptr @perf_trace_802154_rdev_add_virtual_intf, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_add_virtual_intf, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_add_virtual_intf, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_add_virtual_intf, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_add_virtual_intf = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_add_virtual_intf, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_add_virtual_intf = internal global { [191 x i8], [33 x i8] } { [191 x i8] c"\22%s, virtual intf name: %s, type: %d, extended addr: 0x%llx\22, REC->wpan_phy_name, __get_str(vir_intf_name), REC->type, (__u64)__builtin_bswap64((__u64)(( __u64)(__le64)(REC->extended_addr)))\00", [33 x i8] zeroinitializer }, align 32
@event_802154_rdev_add_virtual_intf = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_add_virtual_intf, %union.anon.141 { ptr @__tracepoint_802154_rdev_add_virtual_intf }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_add_virtual_intf }, ptr @print_fmt_802154_rdev_add_virtual_intf, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_add_virtual_intf = internal global ptr @event_802154_rdev_add_virtual_intf, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_del_virtual_intf = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_del_virtual_intf = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_del_virtual_intf, ptr @perf_trace_802154_rdev_del_virtual_intf, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_del_virtual_intf, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_del_virtual_intf, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_del_virtual_intf, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_del_virtual_intf = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_del_virtual_intf, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_del_virtual_intf = internal global { [58 x i8], [38 x i8] } { [58 x i8] c"\22%s, wpan_dev(%u)\22, REC->wpan_phy_name, (REC->identifier)\00", [38 x i8] zeroinitializer }, align 32
@event_802154_rdev_del_virtual_intf = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_del_virtual_intf, %union.anon.141 { ptr @__tracepoint_802154_rdev_del_virtual_intf }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_del_virtual_intf }, ptr @print_fmt_802154_rdev_del_virtual_intf, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_del_virtual_intf = internal global ptr @event_802154_rdev_del_virtual_intf, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_channel = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.139 { %struct.anon.140 { ptr @.str.16, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.139 { %struct.anon.140 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_channel = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_channel, ptr @perf_trace_802154_rdev_set_channel, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_channel, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_channel, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_channel, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_channel = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_channel, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_channel = internal global { [73 x i8], [55 x i8] } { [73 x i8] c"\22%s, page: %d, channel: %d\22, REC->wpan_phy_name, REC->page, REC->channel\00", [55 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_channel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_channel, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_channel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_channel }, ptr @print_fmt_802154_rdev_set_channel, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_channel = internal global ptr @event_802154_rdev_set_channel, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_tx_power = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.139 { %struct.anon.140 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_tx_power = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_tx_power, ptr @perf_trace_802154_rdev_set_tx_power, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_tx_power, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_tx_power, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_tx_power, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_tx_power = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_tx_power, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_tx_power = internal global { [46 x i8], [50 x i8] } { [46 x i8] c"\22%s, mbm: %d\22, REC->wpan_phy_name, REC->power\00", [50 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_tx_power = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_tx_power, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_tx_power }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_tx_power }, ptr @print_fmt_802154_rdev_set_tx_power, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_tx_power = internal global ptr @event_802154_rdev_set_tx_power, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_cca_mode = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.139 { %struct.anon.140 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.139 { %struct.anon.140 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_cca_mode = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_cca_mode, ptr @perf_trace_802154_rdev_set_cca_mode, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_cca_mode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_cca_mode, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_cca_mode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_cca_mode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_cca_mode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_cca_mode = internal global { [81 x i8], [47 x i8] } { [81 x i8] c"\22%s, cca_mode: %d, cca_opt: %d\22, REC->wpan_phy_name, REC->cca_mode, REC->cca_opt\00", [47 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_cca_mode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_cca_mode, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_cca_mode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_cca_mode }, ptr @print_fmt_802154_rdev_set_cca_mode, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_cca_mode = internal global ptr @event_802154_rdev_set_cca_mode, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_cca_ed_level = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.139 { %struct.anon.140 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_cca_ed_level = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_cca_ed_level, ptr @perf_trace_802154_rdev_set_cca_ed_level, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_cca_ed_level, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_cca_ed_level, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_cca_ed_level, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_cca_ed_level = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_cca_ed_level, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_cca_ed_level = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\22%s, ed level: %d\22, REC->wpan_phy_name, REC->ed_level\00", [42 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_cca_ed_level = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_cca_ed_level, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_cca_ed_level }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_cca_ed_level }, ptr @print_fmt_802154_rdev_set_cca_ed_level, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_cca_ed_level = internal global ptr @event_802154_rdev_set_cca_ed_level, section "_ftrace_events", align 4
@trace_event_fields_802154_le16_template = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.139 { %struct.anon.140 { ptr @.str.30, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_le16_template = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_le16_template, ptr @perf_trace_802154_le16_template, ptr @trace_event_reg, ptr @trace_event_fields_802154_le16_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_le16_template, i64 24), ptr getelementptr (i8, ptr @event_class_802154_le16_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_le16_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_le16_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_le16_template = internal global { [141 x i8], [51 x i8] } { [141 x i8] c"\22%s, wpan_dev(%u), pan id: 0x%04x\22, REC->wpan_phy_name, (REC->identifier), (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->le16arg)))\00", [51 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_pan_id = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_le16_template, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_pan_id }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_le16_template }, ptr @print_fmt_802154_le16_template, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_pan_id = internal global ptr @event_802154_rdev_set_pan_id, section "_ftrace_events", align 4
@trace_event_type_funcs_802154_rdev_set_short_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_short_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_short_addr = internal global { [145 x i8], [47 x i8] } { [145 x i8] c"\22%s, wpan_dev(%u), short addr: 0x%04x\22, REC->wpan_phy_name, (REC->identifier), (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->le16arg)))\00", [47 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_short_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_le16_template, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_short_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_short_addr }, ptr @print_fmt_802154_rdev_set_short_addr, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_short_addr = internal global ptr @event_802154_rdev_set_short_addr, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_backoff_exponent = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.139 { %struct.anon.140 { ptr @.str.35, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.139 { %struct.anon.140 { ptr @.str.36, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_backoff_exponent = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_backoff_exponent, ptr @perf_trace_802154_rdev_set_backoff_exponent, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_backoff_exponent, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_backoff_exponent, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_backoff_exponent, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_backoff_exponent = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_backoff_exponent, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_backoff_exponent = internal global { [108 x i8], [52 x i8] } { [108 x i8] c"\22%s, wpan_dev(%u), min be: %d, max be: %d\22, REC->wpan_phy_name, (REC->identifier), REC->min_be, REC->max_be\00", [52 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_backoff_exponent = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_backoff_exponent, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_backoff_exponent }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_backoff_exponent }, ptr @print_fmt_802154_rdev_set_backoff_exponent, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_backoff_exponent = internal global ptr @event_802154_rdev_set_backoff_exponent, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_csma_backoffs = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.139 { %struct.anon.140 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_csma_backoffs = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_csma_backoffs, ptr @perf_trace_802154_rdev_set_csma_backoffs, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_csma_backoffs, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_csma_backoffs, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_csma_backoffs, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_csma_backoffs = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_csma_backoffs, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_csma_backoffs = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\22%s, wpan_dev(%u), max csma backoffs: %d\22, REC->wpan_phy_name, (REC->identifier), REC->max_csma_backoffs\00", [55 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_csma_backoffs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_csma_backoffs, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_csma_backoffs }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_csma_backoffs }, ptr @print_fmt_802154_rdev_set_csma_backoffs, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_csma_backoffs = internal global ptr @event_802154_rdev_set_csma_backoffs, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_max_frame_retries = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.139 { %struct.anon.140 { ptr @.str.41, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_max_frame_retries = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_max_frame_retries, ptr @perf_trace_802154_rdev_set_max_frame_retries, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_max_frame_retries, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_max_frame_retries, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_max_frame_retries, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_max_frame_retries = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_max_frame_retries, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_max_frame_retries = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\22%s, wpan_dev(%u), max frame retries: %d\22, REC->wpan_phy_name, (REC->identifier), REC->max_frame_retries\00", [55 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_max_frame_retries = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_max_frame_retries, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_max_frame_retries }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_max_frame_retries }, ptr @print_fmt_802154_rdev_set_max_frame_retries, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_max_frame_retries = internal global ptr @event_802154_rdev_set_max_frame_retries, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_lbt_mode = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.139 { %struct.anon.140 { ptr @.str.44, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_lbt_mode = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_lbt_mode, ptr @perf_trace_802154_rdev_set_lbt_mode, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_lbt_mode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_lbt_mode, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_lbt_mode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_lbt_mode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_lbt_mode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_lbt_mode = internal global { [104 x i8], [56 x i8] } { [104 x i8] c"\22%s, wpan_dev(%u), lbt mode: %s\22, REC->wpan_phy_name, (REC->identifier), (REC->mode) ? \22true\22 : \22false\22\00", [56 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_lbt_mode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_lbt_mode, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_lbt_mode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_lbt_mode }, ptr @print_fmt_802154_rdev_set_lbt_mode, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_lbt_mode = internal global ptr @event_802154_rdev_set_lbt_mode, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_set_ackreq_default = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.139 { %struct.anon.140 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.139 { %struct.anon.140 { ptr @.str.48, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_set_ackreq_default = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_set_ackreq_default, ptr @perf_trace_802154_rdev_set_ackreq_default, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_set_ackreq_default, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_set_ackreq_default, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_set_ackreq_default, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_set_ackreq_default = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_set_ackreq_default, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_set_ackreq_default = internal global { [112 x i8], [48 x i8] } { [112 x i8] c"\22%s, wpan_dev(%u), ackreq default: %s\22, REC->wpan_phy_name, (REC->identifier), (REC->ackreq) ? \22true\22 : \22false\22\00", [48 x i8] zeroinitializer }, align 32
@event_802154_rdev_set_ackreq_default = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_set_ackreq_default, %union.anon.141 { ptr @__tracepoint_802154_rdev_set_ackreq_default }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_set_ackreq_default }, ptr @print_fmt_802154_rdev_set_ackreq_default, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_set_ackreq_default = internal global ptr @event_802154_rdev_set_ackreq_default, section "_ftrace_events", align 4
@trace_event_fields_802154_rdev_return_int = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.139 { %struct.anon.140 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.139 { %struct.anon.140 { ptr @.str.51, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_rdev_return_int = internal global %struct.trace_event_class { ptr @str__cfg802154__trace_system_name, ptr @trace_event_raw_event_802154_rdev_return_int, ptr @perf_trace_802154_rdev_return_int, ptr @trace_event_reg, ptr @trace_event_fields_802154_rdev_return_int, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_rdev_return_int, i64 24), ptr getelementptr (i8, ptr @event_class_802154_rdev_return_int, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_rdev_return_int = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_rdev_return_int, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_rdev_return_int = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\22%s, returned: %d\22, REC->wpan_phy_name, REC->ret\00", [47 x i8] zeroinitializer }, align 32
@event_802154_rdev_return_int = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_rdev_return_int, %union.anon.141 { ptr @__tracepoint_802154_rdev_return_int }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_rdev_return_int }, ptr @print_fmt_802154_rdev_return_int, ptr null, %union.anon.142 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_rdev_return_int = internal global ptr @event_802154_rdev_return_int, section "_ftrace_events", align 4
@__bpf_trace_tp_map_802154_rdev_suspend = internal global %union.anon.143 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_suspend, ptr @__bpf_trace_wpan_phy_only_evt, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_resume = internal global %union.anon.144 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_resume, ptr @__bpf_trace_wpan_phy_only_evt, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_add_virtual_intf = internal global %union.anon.145 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_add_virtual_intf, ptr @__bpf_trace_802154_rdev_add_virtual_intf, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_del_virtual_intf = internal global %union.anon.146 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_del_virtual_intf, ptr @__bpf_trace_802154_rdev_del_virtual_intf, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_channel = internal global %union.anon.147 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_channel, ptr @__bpf_trace_802154_rdev_set_channel, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_tx_power = internal global %union.anon.148 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_tx_power, ptr @__bpf_trace_802154_rdev_set_tx_power, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_cca_mode = internal global %union.anon.149 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_cca_mode, ptr @__bpf_trace_802154_rdev_set_cca_mode, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_cca_ed_level = internal global %union.anon.150 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_cca_ed_level, ptr @__bpf_trace_802154_rdev_set_cca_ed_level, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_pan_id = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_pan_id, ptr @__bpf_trace_802154_le16_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_short_addr = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_short_addr, ptr @__bpf_trace_802154_le16_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_backoff_exponent = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_backoff_exponent, ptr @__bpf_trace_802154_rdev_set_backoff_exponent, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_csma_backoffs = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_csma_backoffs, ptr @__bpf_trace_802154_rdev_set_csma_backoffs, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_max_frame_retries = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_max_frame_retries, ptr @__bpf_trace_802154_rdev_set_max_frame_retries, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_lbt_mode = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_lbt_mode, ptr @__bpf_trace_802154_rdev_set_lbt_mode, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_set_ackreq_default = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_set_ackreq_default, ptr @__bpf_trace_802154_rdev_set_ackreq_default, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_rdev_return_int = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_rdev_return_int, ptr @__bpf_trace_802154_rdev_return_int, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wpan_phy_name\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<noname>\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vir_intf_name\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enum nl802154_iftype\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__le64\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extended_addr\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s, virtual intf name: %s, type: %d, extended addr: 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"identifier\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, wpan_dev(%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, page: %d, channel: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, mbm: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enum nl802154_cca_modes\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cca_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enum nl802154_cca_opts\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cca_opt\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s, cca_mode: %d, cca_opt: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ed_level\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, ed level: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__le16\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"le16arg\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s, wpan_dev(%u), pan id: 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@trace_raw_output_802154_rdev_set_short_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/ieee802154/./trace.h\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"802154_rdev_set_short_addr\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s, wpan_dev(%u), short addr: 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"min_be\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max_be\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s, wpan_dev(%u), min be: %d, max be: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_csma_backoffs\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s, wpan_dev(%u), max csma backoffs: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_frame_retries\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s, wpan_dev(%u), max frame retries: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s, wpan_dev(%u), lbt mode: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ackreq\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s, wpan_dev(%u), ackreq default: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, returned: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [26 x i8] c"../net/ieee802154/trace.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [34 x i8] c"str__cfg802154__trace_system_name\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 36, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [37 x i8] c"trace_event_fields_wpan_phy_only_evt\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_wpan_phy_only_evt\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"print_fmt_wpan_phy_only_evt\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"event_802154_rdev_suspend\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 56, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"event_802154_rdev_resume\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 61, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [48 x i8] c"trace_event_fields_802154_rdev_add_virtual_intf\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_802154_rdev_add_virtual_intf\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [39 x i8] c"print_fmt_802154_rdev_add_virtual_intf\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [35 x i8] c"event_802154_rdev_add_virtual_intf\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [48 x i8] c"trace_event_fields_802154_rdev_del_virtual_intf\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_802154_rdev_del_virtual_intf\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [39 x i8] c"print_fmt_802154_rdev_del_virtual_intf\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [35 x i8] c"event_802154_rdev_del_virtual_intf\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [43 x i8] c"trace_event_fields_802154_rdev_set_channel\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_802154_rdev_set_channel\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [34 x i8] c"print_fmt_802154_rdev_set_channel\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"event_802154_rdev_set_channel\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [44 x i8] c"trace_event_fields_802154_rdev_set_tx_power\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_802154_rdev_set_tx_power\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [35 x i8] c"print_fmt_802154_rdev_set_tx_power\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"event_802154_rdev_set_tx_power\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [44 x i8] c"trace_event_fields_802154_rdev_set_cca_mode\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_802154_rdev_set_cca_mode\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [35 x i8] c"print_fmt_802154_rdev_set_cca_mode\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [31 x i8] c"event_802154_rdev_set_cca_mode\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [48 x i8] c"trace_event_fields_802154_rdev_set_cca_ed_level\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_802154_rdev_set_cca_ed_level\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [39 x i8] c"print_fmt_802154_rdev_set_cca_ed_level\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [35 x i8] c"event_802154_rdev_set_cca_ed_level\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [40 x i8] c"trace_event_fields_802154_le16_template\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_802154_le16_template\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"print_fmt_802154_le16_template\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [29 x i8] c"event_802154_rdev_set_pan_id\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 183, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_802154_rdev_set_short_addr\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [37 x i8] c"print_fmt_802154_rdev_set_short_addr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [33 x i8] c"event_802154_rdev_set_short_addr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [52 x i8] c"trace_event_fields_802154_rdev_set_backoff_exponent\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [56 x i8] c"trace_event_type_funcs_802154_rdev_set_backoff_exponent\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [43 x i8] c"print_fmt_802154_rdev_set_backoff_exponent\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [39 x i8] c"event_802154_rdev_set_backoff_exponent\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [49 x i8] c"trace_event_fields_802154_rdev_set_csma_backoffs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_802154_rdev_set_csma_backoffs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [40 x i8] c"print_fmt_802154_rdev_set_csma_backoffs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [36 x i8] c"event_802154_rdev_set_csma_backoffs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [53 x i8] c"trace_event_fields_802154_rdev_set_max_frame_retries\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [57 x i8] c"trace_event_type_funcs_802154_rdev_set_max_frame_retries\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [44 x i8] c"print_fmt_802154_rdev_set_max_frame_retries\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [40 x i8] c"event_802154_rdev_set_max_frame_retries\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [44 x i8] c"trace_event_fields_802154_rdev_set_lbt_mode\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_802154_rdev_set_lbt_mode\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [35 x i8] c"print_fmt_802154_rdev_set_lbt_mode\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [31 x i8] c"event_802154_rdev_set_lbt_mode\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [50 x i8] c"trace_event_fields_802154_rdev_set_ackreq_default\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [54 x i8] c"trace_event_type_funcs_802154_rdev_set_ackreq_default\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [41 x i8] c"print_fmt_802154_rdev_set_ackreq_default\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [37 x i8] c"event_802154_rdev_set_ackreq_default\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [42 x i8] c"trace_event_fields_802154_rdev_return_int\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_802154_rdev_return_int\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [33 x i8] c"print_fmt_802154_rdev_return_int\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"event_802154_rdev_return_int\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 44, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 66, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 87, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 102, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 119, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 134, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 149, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 164, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 189, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 198, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 220, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 240, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 260, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 279, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"../net/ieee802154/./trace.h\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 298, i32 1 }
@llvm.compiler.used = appending global [191 x ptr] [ptr @__bpf_trace_tp_map_802154_rdev_add_virtual_intf, ptr @__bpf_trace_tp_map_802154_rdev_del_virtual_intf, ptr @__bpf_trace_tp_map_802154_rdev_resume, ptr @__bpf_trace_tp_map_802154_rdev_return_int, ptr @__bpf_trace_tp_map_802154_rdev_set_ackreq_default, ptr @__bpf_trace_tp_map_802154_rdev_set_backoff_exponent, ptr @__bpf_trace_tp_map_802154_rdev_set_cca_ed_level, ptr @__bpf_trace_tp_map_802154_rdev_set_cca_mode, ptr @__bpf_trace_tp_map_802154_rdev_set_channel, ptr @__bpf_trace_tp_map_802154_rdev_set_csma_backoffs, ptr @__bpf_trace_tp_map_802154_rdev_set_lbt_mode, ptr @__bpf_trace_tp_map_802154_rdev_set_max_frame_retries, ptr @__bpf_trace_tp_map_802154_rdev_set_pan_id, ptr @__bpf_trace_tp_map_802154_rdev_set_short_addr, ptr @__bpf_trace_tp_map_802154_rdev_set_tx_power, ptr @__bpf_trace_tp_map_802154_rdev_suspend, ptr @__event_802154_rdev_add_virtual_intf, ptr @__event_802154_rdev_del_virtual_intf, ptr @__event_802154_rdev_resume, ptr @__event_802154_rdev_return_int, ptr @__event_802154_rdev_set_ackreq_default, ptr @__event_802154_rdev_set_backoff_exponent, ptr @__event_802154_rdev_set_cca_ed_level, ptr @__event_802154_rdev_set_cca_mode, ptr @__event_802154_rdev_set_channel, ptr @__event_802154_rdev_set_csma_backoffs, ptr @__event_802154_rdev_set_lbt_mode, ptr @__event_802154_rdev_set_max_frame_retries, ptr @__event_802154_rdev_set_pan_id, ptr @__event_802154_rdev_set_short_addr, ptr @__event_802154_rdev_set_tx_power, ptr @__event_802154_rdev_suspend, ptr @__tracepoint_802154_rdev_add_virtual_intf, ptr @__tracepoint_802154_rdev_del_virtual_intf, ptr @__tracepoint_802154_rdev_resume, ptr @__tracepoint_802154_rdev_return_int, ptr @__tracepoint_802154_rdev_set_ackreq_default, ptr @__tracepoint_802154_rdev_set_backoff_exponent, ptr @__tracepoint_802154_rdev_set_cca_ed_level, ptr @__tracepoint_802154_rdev_set_cca_mode, ptr @__tracepoint_802154_rdev_set_channel, ptr @__tracepoint_802154_rdev_set_csma_backoffs, ptr @__tracepoint_802154_rdev_set_lbt_mode, ptr @__tracepoint_802154_rdev_set_max_frame_retries, ptr @__tracepoint_802154_rdev_set_pan_id, ptr @__tracepoint_802154_rdev_set_short_addr, ptr @__tracepoint_802154_rdev_set_tx_power, ptr @__tracepoint_802154_rdev_suspend, ptr @__tracepoint_ptr_802154_rdev_add_virtual_intf, ptr @__tracepoint_ptr_802154_rdev_del_virtual_intf, ptr @__tracepoint_ptr_802154_rdev_resume, ptr @__tracepoint_ptr_802154_rdev_return_int, ptr @__tracepoint_ptr_802154_rdev_set_ackreq_default, ptr @__tracepoint_ptr_802154_rdev_set_backoff_exponent, ptr @__tracepoint_ptr_802154_rdev_set_cca_ed_level, ptr @__tracepoint_ptr_802154_rdev_set_cca_mode, ptr @__tracepoint_ptr_802154_rdev_set_channel, ptr @__tracepoint_ptr_802154_rdev_set_csma_backoffs, ptr @__tracepoint_ptr_802154_rdev_set_lbt_mode, ptr @__tracepoint_ptr_802154_rdev_set_max_frame_retries, ptr @__tracepoint_ptr_802154_rdev_set_pan_id, ptr @__tracepoint_ptr_802154_rdev_set_short_addr, ptr @__tracepoint_ptr_802154_rdev_set_tx_power, ptr @__tracepoint_ptr_802154_rdev_suspend, ptr @event_802154_rdev_add_virtual_intf, ptr @event_802154_rdev_del_virtual_intf, ptr @event_802154_rdev_resume, ptr @event_802154_rdev_return_int, ptr @event_802154_rdev_set_ackreq_default, ptr @event_802154_rdev_set_backoff_exponent, ptr @event_802154_rdev_set_cca_ed_level, ptr @event_802154_rdev_set_cca_mode, ptr @event_802154_rdev_set_channel, ptr @event_802154_rdev_set_csma_backoffs, ptr @event_802154_rdev_set_lbt_mode, ptr @event_802154_rdev_set_max_frame_retries, ptr @event_802154_rdev_set_pan_id, ptr @event_802154_rdev_set_short_addr, ptr @event_802154_rdev_set_tx_power, ptr @event_802154_rdev_suspend, ptr @event_class_802154_le16_template, ptr @event_class_802154_rdev_add_virtual_intf, ptr @event_class_802154_rdev_del_virtual_intf, ptr @event_class_802154_rdev_return_int, ptr @event_class_802154_rdev_set_ackreq_default, ptr @event_class_802154_rdev_set_backoff_exponent, ptr @event_class_802154_rdev_set_cca_ed_level, ptr @event_class_802154_rdev_set_cca_mode, ptr @event_class_802154_rdev_set_channel, ptr @event_class_802154_rdev_set_csma_backoffs, ptr @event_class_802154_rdev_set_lbt_mode, ptr @event_class_802154_rdev_set_max_frame_retries, ptr @event_class_802154_rdev_set_tx_power, ptr @event_class_wpan_phy_only_evt, ptr @str__cfg802154__trace_system_name, ptr @trace_event_fields_wpan_phy_only_evt, ptr @trace_event_type_funcs_wpan_phy_only_evt, ptr @print_fmt_wpan_phy_only_evt, ptr @trace_event_fields_802154_rdev_add_virtual_intf, ptr @trace_event_type_funcs_802154_rdev_add_virtual_intf, ptr @print_fmt_802154_rdev_add_virtual_intf, ptr @trace_event_fields_802154_rdev_del_virtual_intf, ptr @trace_event_type_funcs_802154_rdev_del_virtual_intf, ptr @print_fmt_802154_rdev_del_virtual_intf, ptr @trace_event_fields_802154_rdev_set_channel, ptr @trace_event_type_funcs_802154_rdev_set_channel, ptr @print_fmt_802154_rdev_set_channel, ptr @trace_event_fields_802154_rdev_set_tx_power, ptr @trace_event_type_funcs_802154_rdev_set_tx_power, ptr @print_fmt_802154_rdev_set_tx_power, ptr @trace_event_fields_802154_rdev_set_cca_mode, ptr @trace_event_type_funcs_802154_rdev_set_cca_mode, ptr @print_fmt_802154_rdev_set_cca_mode, ptr @trace_event_fields_802154_rdev_set_cca_ed_level, ptr @trace_event_type_funcs_802154_rdev_set_cca_ed_level, ptr @print_fmt_802154_rdev_set_cca_ed_level, ptr @trace_event_fields_802154_le16_template, ptr @trace_event_type_funcs_802154_le16_template, ptr @print_fmt_802154_le16_template, ptr @trace_event_type_funcs_802154_rdev_set_short_addr, ptr @print_fmt_802154_rdev_set_short_addr, ptr @trace_event_fields_802154_rdev_set_backoff_exponent, ptr @trace_event_type_funcs_802154_rdev_set_backoff_exponent, ptr @print_fmt_802154_rdev_set_backoff_exponent, ptr @trace_event_fields_802154_rdev_set_csma_backoffs, ptr @trace_event_type_funcs_802154_rdev_set_csma_backoffs, ptr @print_fmt_802154_rdev_set_csma_backoffs, ptr @trace_event_fields_802154_rdev_set_max_frame_retries, ptr @trace_event_type_funcs_802154_rdev_set_max_frame_retries, ptr @print_fmt_802154_rdev_set_max_frame_retries, ptr @trace_event_fields_802154_rdev_set_lbt_mode, ptr @trace_event_type_funcs_802154_rdev_set_lbt_mode, ptr @print_fmt_802154_rdev_set_lbt_mode, ptr @trace_event_fields_802154_rdev_set_ackreq_default, ptr @trace_event_type_funcs_802154_rdev_set_ackreq_default, ptr @print_fmt_802154_rdev_set_ackreq_default, ptr @trace_event_fields_802154_rdev_return_int, ptr @trace_event_type_funcs_802154_rdev_return_int, ptr @print_fmt_802154_rdev_return_int, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cfg802154__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wpan_phy_only_evt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wpan_phy_only_evt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wpan_phy_only_evt to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_suspend to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_resume to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_add_virtual_intf to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_add_virtual_intf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_add_virtual_intf to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_add_virtual_intf to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_del_virtual_intf to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_del_virtual_intf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_del_virtual_intf to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_del_virtual_intf to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_channel to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_channel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_channel to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_channel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_tx_power to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_tx_power to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_tx_power to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_tx_power to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_cca_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_cca_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_cca_mode to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_cca_mode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_cca_ed_level to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_cca_ed_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_cca_ed_level to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_cca_ed_level to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_le16_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_le16_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_le16_template to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_pan_id to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_short_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_short_addr to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_short_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_backoff_exponent to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_backoff_exponent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_backoff_exponent to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_backoff_exponent to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_csma_backoffs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_csma_backoffs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_csma_backoffs to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_csma_backoffs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_max_frame_retries to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_max_frame_retries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_max_frame_retries to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_max_frame_retries to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_lbt_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_lbt_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_lbt_mode to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_lbt_mode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_set_ackreq_default to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_set_ackreq_default to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_set_ackreq_default to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_set_ackreq_default to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_rdev_return_int to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_rdev_return_int to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_rdev_return_int to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_rdev_return_int to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_802154_rdev_suspend(ptr nocapture readnone %__data, ptr noundef %wpan_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_suspend, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy) #9
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
define dso_local i32 @__traceiter_802154_rdev_resume(ptr nocapture readnone %__data, ptr noundef %wpan_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_resume, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy) #9
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
define dso_local i32 @__traceiter_802154_rdev_add_virtual_intf(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %name, i32 noundef %type, i64 noundef %extended_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_add_virtual_intf, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %name, i32 noundef %type, i64 noundef %extended_addr) #9
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
define dso_local i32 @__traceiter_802154_rdev_del_virtual_intf(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_del_virtual_intf, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_channel(ptr nocapture readnone %__data, ptr noundef %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_channel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_tx_power(ptr nocapture readnone %__data, ptr noundef %wpan_phy, i32 noundef %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_tx_power, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, i32 noundef %power) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_cca_mode(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %cca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_cca_mode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %cca) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_cca_ed_level(ptr nocapture readnone %__data, ptr noundef %wpan_phy, i32 noundef %ed_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_cca_ed_level, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, i32 noundef %ed_level) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_pan_id(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_pan_id, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_short_addr(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_short_addr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_backoff_exponent(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_backoff_exponent, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_csma_backoffs(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_csma_backoffs, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %max_csma_backoffs) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_max_frame_retries(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef signext %max_frame_retries) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_max_frame_retries, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef signext %max_frame_retries) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_lbt_mode(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_lbt_mode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %mode) #9
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
define dso_local i32 @__traceiter_802154_rdev_set_ackreq_default(ptr nocapture readnone %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %ackreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_set_ackreq_default, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %ackreq) #9
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
define dso_local i32 @__traceiter_802154_rdev_return_int(ptr nocapture readnone %__data, ptr noundef %wpan_phy, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_rdev_return_int, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %wpan_phy, i32 noundef %ret) #9
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
define internal void @trace_event_raw_event_wpan_phy_only_evt(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_wpan_phy_only_evt, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wpan_phy_only_evt(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_wpan_phy_only_evt, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_add_virtual_intf(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %name, i32 noundef %type, i64 noundef %extended_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %tobool.not.i39 = icmp eq ptr %name, null
  %cond9.i = select i1 %tobool.not.i39, ptr @.str.3, ptr %name
  %call.i40 = tail call i32 @strlen(ptr noundef nonnull %cond9.i) #12
  %add = add i32 %call.i40, 57
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.i = shl i32 %call.i40, 16
  %or.i = add i32 %add.i, 65592
  %__data_loc_vir_intf_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_vir_intf_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_vir_intf_name, align 8
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %8 = ptrtoint ptr %__data_loc_vir_intf_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_vir_intf_name, align 8
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %call18 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %cond9.i) #13
  %type19 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %type19, align 4
  %extended_addr20 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %extended_addr20 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %extended_addr, ptr %extended_addr20, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_add_virtual_intf(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %name, i32 noundef %type, i64 noundef %extended_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %tobool.not.i = icmp eq ptr %name, null
  %cond9.i = select i1 %tobool.not.i, ptr @.str.3, ptr %name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %cond9.i) #12
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65592
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i63.not = icmp eq ptr %15, null
  br i1 %tobool.not.i63.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 68
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_vir_intf_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_vir_intf_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_vir_intf_name, align 8
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %32 = ptrtoint ptr %__data_loc_vir_intf_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %__data_loc_vir_intf_name, align 8
  %and20 = and i32 %33, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and20
  %call30 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %cond9.i) #13
  %type31 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %type, ptr %type31, align 4
  %extended_addr32 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %extended_addr32 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %extended_addr, ptr %extended_addr32, align 8
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_del_virtual_intf(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_del_virtual_intf, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i20 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i20, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier9 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_del_virtual_intf, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_del_virtual_intf(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_del_virtual_intf, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i43 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i43, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier20 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_del_virtual_intf, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %identifier20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier20, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_channel(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %page8 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %page8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %page, ptr %page8, align 4
  %channel9 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %channel9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %channel, ptr %channel9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_channel(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %page19 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %page19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %page, ptr %page19, align 4
  %channel20 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %channel20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %channel, ptr %channel20, align 1
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_tx_power(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i32 noundef %power) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_tx_power, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %power8 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_tx_power, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %power8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %power, ptr %power8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_tx_power(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i32 noundef %power) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_tx_power, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %power19 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_tx_power, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %power19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %power, ptr %power19, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_cca_mode(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr nocapture noundef readonly %cca) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %7 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cca, align 4
  %cca_mode = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %cca_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cca_mode, align 4
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %10 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opt, align 4
  %cca_opt = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %cca_opt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cca_opt, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_cca_mode(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr nocapture noundef readonly %cca) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %31 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cca, align 4
  %cca_mode = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %cca_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cca_mode, align 4
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %34 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opt, align 4
  %cca_opt = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %cca_opt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cca_opt, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_cca_ed_level(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i32 noundef %ed_level) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_ed_level, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %ed_level8 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_ed_level, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %ed_level8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ed_level, ptr %ed_level8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_cca_ed_level(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i32 noundef %ed_level) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_ed_level, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %ed_level19 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_ed_level, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %ed_level19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %ed_level, ptr %ed_level19, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_le16_template(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i16 noundef zeroext %le16arg) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i23 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i23, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier9 = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier9, align 4
  %le16arg10 = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %le16arg10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %le16arg, ptr %le16arg10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_le16_template(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i16 noundef zeroext %le16arg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i46 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i46, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier20 = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %identifier20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier20, align 4
  %le16arg21 = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %le16arg21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %le16arg, ptr %le16arg21, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_backoff_exponent(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i26 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i26, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier9 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier9, align 4
  %min_be10 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %min_be10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %min_be, ptr %min_be10, align 4
  %max_be11 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %max_be11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %max_be, ptr %max_be11, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_backoff_exponent(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i49 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i49, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier20 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %identifier20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier20, align 4
  %min_be21 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %min_be21 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %min_be, ptr %min_be21, align 4
  %max_be22 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %max_be22 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %max_be, ptr %max_be22, align 1
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_csma_backoffs(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i23 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i23, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier9 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier9, align 4
  %max_csma_backoffs10 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %max_csma_backoffs10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %max_csma_backoffs, ptr %max_csma_backoffs10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_csma_backoffs(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i46 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i46, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier20 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %identifier20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier20, align 4
  %max_csma_backoffs21 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %max_csma_backoffs21 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %max_csma_backoffs, ptr %max_csma_backoffs21, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_max_frame_retries(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i8 noundef signext %max_frame_retries) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i23 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i23, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier9 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier9, align 4
  %max_frame_retries10 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %max_frame_retries10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %max_frame_retries, ptr %max_frame_retries10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_max_frame_retries(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i8 noundef signext %max_frame_retries) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i46 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i46, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier20 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %identifier20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier20, align 4
  %max_frame_retries21 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %max_frame_retries21 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %max_frame_retries, ptr %max_frame_retries21, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_lbt_mode(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i1 noundef zeroext %mode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %frombool = zext i1 %mode to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wpan_phy_name.exit_crit_edge

if.end6.wpan_phy_name.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end6.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end6.wpan_phy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i26 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i26, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier10 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier10, align 4
  %mode12 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %mode12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %mode12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_lbt_mode(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i1 noundef zeroext %mode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %frombool = zext i1 %mode to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %call14, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wpan_phy_name.exit_crit_edge

if.end17.wpan_phy_name.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end17.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end17.wpan_phy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i49 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i49, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier21 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %call14, i32 0, i32 2
  %33 = ptrtoint ptr %identifier21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier21, align 4
  %mode23 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %call14, i32 0, i32 3
  %34 = ptrtoint ptr %mode23 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %mode23, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 52, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_set_ackreq_default(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i1 noundef zeroext %ackreq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %frombool = zext i1 %ackreq to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wpan_phy_name.exit_crit_edge

if.end6.wpan_phy_name.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end6.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end6.wpan_phy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i26 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i26, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %7 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier10 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %identifier10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %identifier10, align 4
  %ackreq12 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %ackreq12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %ackreq12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_set_ackreq_default(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, ptr noundef readonly %wpan_dev, i1 noundef zeroext %ackreq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %frombool = zext i1 %ackreq to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %call14, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wpan_phy_name.exit_crit_edge

if.end17.wpan_phy_name.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end17.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end17.wpan_phy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %tobool.not.i49 = icmp eq ptr %wpan_dev, null
  %cmp.i = icmp ugt ptr %wpan_dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i49, %cmp.i
  br i1 %spec.select.i, label %wpan_phy_name.exit.cond.end_crit_edge, label %cond.true

wpan_phy_name.exit.cond.end_crit_edge:            ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %wpan_dev, i32 0, i32 6
  %31 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %identifier, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %wpan_phy_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 0, %wpan_phy_name.exit.cond.end_crit_edge ]
  %identifier21 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %call14, i32 0, i32 2
  %33 = ptrtoint ptr %identifier21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %identifier21, align 4
  %ackreq23 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %call14, i32 0, i32 3
  %34 = ptrtoint ptr %ackreq23 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %ackreq23, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 52, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_rdev_return_int(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i32 noundef %ret) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !255

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_return_int, ptr %call3, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %ret8 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_return_int, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %ret8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ret, ptr %ret8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_rdev_return_int(ptr noundef %__data, ptr nocapture noundef readonly %wpan_phy, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !256
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !244) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !244) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_return_int, ptr %call13, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %wpan_phy, i32 0, i32 12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %ret19 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_return_int, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %ret19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %ret, ptr %ret19, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wpan_phy_only_evt(ptr noundef %__data, ptr noundef %wpan_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_add_virtual_intf(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %name, i32 noundef %type, i64 noundef %extended_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %name to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %type to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %extended_addr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_del_virtual_intf(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_channel(ptr noundef %__data, ptr noundef %wpan_phy, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %page to i64
  %conv8 = zext i8 %channel to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_tx_power(ptr noundef %__data, ptr noundef %wpan_phy, i32 noundef %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %power to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_cca_mode(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %cca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %cca to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_cca_ed_level(ptr noundef %__data, ptr noundef %wpan_phy, i32 noundef %ed_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ed_level to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_le16_template(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i16 noundef zeroext %le16arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i16 %le16arg to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_backoff_exponent(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i8 %min_be to i64
  %conv12 = zext i8 %max_be to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_csma_backoffs(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i8 %max_csma_backoffs to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_max_frame_retries(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i8 noundef signext %max_frame_retries) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i8 %max_frame_retries to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_lbt_mode(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv9 = zext i1 %mode to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_set_ackreq_default(ptr noundef %__data, ptr noundef %wpan_phy, ptr noundef %wpan_dev, i1 noundef zeroext %ackreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %wpan_dev to i32
  %conv4 = zext i32 %1 to i64
  %conv9 = zext i1 %ackreq to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_rdev_return_int(ptr noundef %__data, ptr noundef %wpan_phy, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %wpan_phy to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
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
define internal i32 @trace_raw_output_wpan_phy_only_evt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_wpan_phy_only_evt, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %wpan_phy_name) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_add_virtual_intf(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %1, i32 0, i32 1
  %__data_loc_vir_intf_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_vir_intf_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_vir_intf_name, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %type = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %extended_addr = getelementptr inbounds %struct.trace_event_raw_802154_rdev_add_virtual_intf, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %extended_addr, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, ptr noundef %wpan_phy_name, ptr noundef %add.ptr, i32 noundef %5, i64 noundef %8) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_del_virtual_intf(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_del_virtual_intf, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_rdev_del_virtual_intf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %wpan_phy_name, i32 noundef %3) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_channel(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %1, i32 0, i32 1
  %page = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page, align 4
  %conv = zext i8 %3 to i32
  %channel = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel, align 1
  %conv1 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, ptr noundef %wpan_phy_name, i32 noundef %conv, i32 noundef %conv1) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_tx_power(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_tx_power, ptr %1, i32 0, i32 1
  %power = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_tx_power, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, ptr noundef %wpan_phy_name, i32 noundef %3) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_cca_mode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %1, i32 0, i32 1
  %cca_mode = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cca_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cca_mode, align 4
  %cca_opt = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_mode, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cca_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cca_opt, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.26, ptr noundef %wpan_phy_name, i32 noundef %3, i32 noundef %5) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_cca_ed_level(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_ed_level, ptr %1, i32 0, i32 1
  %ed_level = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_cca_ed_level, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ed_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ed_level, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, ptr noundef %wpan_phy_name, i32 noundef %3) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_le16_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  %le16arg = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %le16arg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %le16arg, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %wpan_phy_name, i32 noundef %3, i32 noundef %conv) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_short_addr(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readnone %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv = zext i16 %3 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_802154_rdev_set_short_addr, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp eq i32 %4, %conv
  br i1 %cmp.not, label %if.end37, label %land.end

land.end:                                         ; preds = %entry
  %.b48 = load i1, ptr @trace_raw_output_802154_rdev_set_short_addr.__already_done, align 1
  br i1 %.b48, label %land.end.cleanup_crit_edge, label %if.then8, !prof !254

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_raw_output_802154_rdev_set_short_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmp_seq, ptr %seq.i, align 8
  %size1.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %6 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %size1.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %7 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %len.i.i.i, align 8
  %readpos.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 3
  %8 = ptrtoint ptr %readpos.i.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %readpos.i.i.i, align 8
  %full.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %full.i, align 8
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %identifier, align 4
  %le16arg = getelementptr inbounds %struct.trace_event_raw_802154_le16_template, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %le16arg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %le16arg, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv38 = zext i16 %14 to i32
  %call = tail call i32 (ptr, ptr, ptr, ...) @trace_output_call(ptr noundef %iter, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef %wpan_phy_name, i32 noundef %11, i32 noundef %conv38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then8, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end37 ], [ 2, %if.then8 ], [ 2, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_output_call(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_backoff_exponent(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  %min_be = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %min_be to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min_be, align 4
  %conv = zext i8 %5 to i32
  %max_be = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_backoff_exponent, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %max_be to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_be, align 1
  %conv1 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.37, ptr noundef %wpan_phy_name, i32 noundef %3, i32 noundef %conv, i32 noundef %conv1) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_csma_backoffs(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  %max_csma_backoffs = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_csma_backoffs, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %max_csma_backoffs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_csma_backoffs, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, ptr noundef %wpan_phy_name, i32 noundef %3, i32 noundef %conv) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_max_frame_retries(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  %max_frame_retries = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_max_frame_retries, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_frame_retries, align 4
  %conv = sext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.42, ptr noundef %wpan_phy_name, i32 noundef %3, i32 noundef %conv) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_lbt_mode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  %mode = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_lbt_mode, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.45, ptr noundef %wpan_phy_name, i32 noundef %3, ptr noundef nonnull %cond) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_set_ackreq_default(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %1, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %identifier, align 4
  %ackreq = getelementptr inbounds %struct.trace_event_raw_802154_rdev_set_ackreq_default, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ackreq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ackreq, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.49, ptr noundef %wpan_phy_name, i32 noundef %3, ptr noundef nonnull %cond) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_rdev_return_int(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_rdev_return_int, ptr %1, i32 0, i32 1
  %ret1 = getelementptr inbounds %struct.trace_event_raw_802154_rdev_return_int, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.52, ptr noundef %wpan_phy_name, i32 noundef %3) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!llvm.named.register.sp = !{!244}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__tracepoint_802154_rdev_suspend, !1, !"__tracepoint_802154_rdev_suspend", i1 false, i1 false}
!1 = !{!"../net/ieee802154/./trace.h", i32 56, i32 1}
!2 = !{ptr @__tracepoint_ptr_802154_rdev_suspend, !1, !"__tracepoint_ptr_802154_rdev_suspend", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_802154_rdev_suspend, !1, !"__SCK__tp_func_802154_rdev_suspend", i1 false, i1 false}
!4 = !{ptr @__tracepoint_802154_rdev_resume, !5, !"__tracepoint_802154_rdev_resume", i1 false, i1 false}
!5 = !{!"../net/ieee802154/./trace.h", i32 61, i32 1}
!6 = !{ptr @__tracepoint_ptr_802154_rdev_resume, !5, !"__tracepoint_ptr_802154_rdev_resume", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_802154_rdev_resume, !5, !"__SCK__tp_func_802154_rdev_resume", i1 false, i1 false}
!8 = !{ptr @__tracepoint_802154_rdev_add_virtual_intf, !9, !"__tracepoint_802154_rdev_add_virtual_intf", i1 false, i1 false}
!9 = !{!"../net/ieee802154/./trace.h", i32 66, i32 1}
!10 = !{ptr @__tracepoint_ptr_802154_rdev_add_virtual_intf, !9, !"__tracepoint_ptr_802154_rdev_add_virtual_intf", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_802154_rdev_add_virtual_intf, !9, !"__SCK__tp_func_802154_rdev_add_virtual_intf", i1 false, i1 false}
!12 = !{ptr @__tracepoint_802154_rdev_del_virtual_intf, !13, !"__tracepoint_802154_rdev_del_virtual_intf", i1 false, i1 false}
!13 = !{!"../net/ieee802154/./trace.h", i32 87, i32 1}
!14 = !{ptr @__tracepoint_ptr_802154_rdev_del_virtual_intf, !13, !"__tracepoint_ptr_802154_rdev_del_virtual_intf", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_802154_rdev_del_virtual_intf, !13, !"__SCK__tp_func_802154_rdev_del_virtual_intf", i1 false, i1 false}
!16 = !{ptr @__tracepoint_802154_rdev_set_channel, !17, !"__tracepoint_802154_rdev_set_channel", i1 false, i1 false}
!17 = !{!"../net/ieee802154/./trace.h", i32 102, i32 1}
!18 = !{ptr @__tracepoint_ptr_802154_rdev_set_channel, !17, !"__tracepoint_ptr_802154_rdev_set_channel", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_802154_rdev_set_channel, !17, !"__SCK__tp_func_802154_rdev_set_channel", i1 false, i1 false}
!20 = !{ptr @__tracepoint_802154_rdev_set_tx_power, !21, !"__tracepoint_802154_rdev_set_tx_power", i1 false, i1 false}
!21 = !{!"../net/ieee802154/./trace.h", i32 119, i32 1}
!22 = !{ptr @__tracepoint_ptr_802154_rdev_set_tx_power, !21, !"__tracepoint_ptr_802154_rdev_set_tx_power", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_802154_rdev_set_tx_power, !21, !"__SCK__tp_func_802154_rdev_set_tx_power", i1 false, i1 false}
!24 = !{ptr @__tracepoint_802154_rdev_set_cca_mode, !25, !"__tracepoint_802154_rdev_set_cca_mode", i1 false, i1 false}
!25 = !{!"../net/ieee802154/./trace.h", i32 134, i32 1}
!26 = !{ptr @__tracepoint_ptr_802154_rdev_set_cca_mode, !25, !"__tracepoint_ptr_802154_rdev_set_cca_mode", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_802154_rdev_set_cca_mode, !25, !"__SCK__tp_func_802154_rdev_set_cca_mode", i1 false, i1 false}
!28 = !{ptr @__tracepoint_802154_rdev_set_cca_ed_level, !29, !"__tracepoint_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!29 = !{!"../net/ieee802154/./trace.h", i32 149, i32 1}
!30 = !{ptr @__tracepoint_ptr_802154_rdev_set_cca_ed_level, !29, !"__tracepoint_ptr_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_802154_rdev_set_cca_ed_level, !29, !"__SCK__tp_func_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!32 = !{ptr @__tracepoint_802154_rdev_set_pan_id, !33, !"__tracepoint_802154_rdev_set_pan_id", i1 false, i1 false}
!33 = !{!"../net/ieee802154/./trace.h", i32 183, i32 1}
!34 = !{ptr @__tracepoint_ptr_802154_rdev_set_pan_id, !33, !"__tracepoint_ptr_802154_rdev_set_pan_id", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_802154_rdev_set_pan_id, !33, !"__SCK__tp_func_802154_rdev_set_pan_id", i1 false, i1 false}
!36 = !{ptr @__tracepoint_802154_rdev_set_short_addr, !37, !"__tracepoint_802154_rdev_set_short_addr", i1 false, i1 false}
!37 = !{!"../net/ieee802154/./trace.h", i32 189, i32 1}
!38 = !{ptr @__tracepoint_ptr_802154_rdev_set_short_addr, !37, !"__tracepoint_ptr_802154_rdev_set_short_addr", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_802154_rdev_set_short_addr, !37, !"__SCK__tp_func_802154_rdev_set_short_addr", i1 false, i1 false}
!40 = !{ptr @__tracepoint_802154_rdev_set_backoff_exponent, !41, !"__tracepoint_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!41 = !{!"../net/ieee802154/./trace.h", i32 198, i32 1}
!42 = !{ptr @__tracepoint_ptr_802154_rdev_set_backoff_exponent, !41, !"__tracepoint_ptr_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_802154_rdev_set_backoff_exponent, !41, !"__SCK__tp_func_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!44 = !{ptr @__tracepoint_802154_rdev_set_csma_backoffs, !45, !"__tracepoint_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!45 = !{!"../net/ieee802154/./trace.h", i32 220, i32 1}
!46 = !{ptr @__tracepoint_ptr_802154_rdev_set_csma_backoffs, !45, !"__tracepoint_ptr_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_802154_rdev_set_csma_backoffs, !45, !"__SCK__tp_func_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!48 = !{ptr @__tracepoint_802154_rdev_set_max_frame_retries, !49, !"__tracepoint_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!49 = !{!"../net/ieee802154/./trace.h", i32 240, i32 1}
!50 = !{ptr @__tracepoint_ptr_802154_rdev_set_max_frame_retries, !49, !"__tracepoint_ptr_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_802154_rdev_set_max_frame_retries, !49, !"__SCK__tp_func_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!52 = !{ptr @__tracepoint_802154_rdev_set_lbt_mode, !53, !"__tracepoint_802154_rdev_set_lbt_mode", i1 false, i1 false}
!53 = !{!"../net/ieee802154/./trace.h", i32 260, i32 1}
!54 = !{ptr @__tracepoint_ptr_802154_rdev_set_lbt_mode, !53, !"__tracepoint_ptr_802154_rdev_set_lbt_mode", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_802154_rdev_set_lbt_mode, !53, !"__SCK__tp_func_802154_rdev_set_lbt_mode", i1 false, i1 false}
!56 = !{ptr @__tracepoint_802154_rdev_set_ackreq_default, !57, !"__tracepoint_802154_rdev_set_ackreq_default", i1 false, i1 false}
!57 = !{!"../net/ieee802154/./trace.h", i32 279, i32 1}
!58 = !{ptr @__tracepoint_ptr_802154_rdev_set_ackreq_default, !57, !"__tracepoint_ptr_802154_rdev_set_ackreq_default", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_802154_rdev_set_ackreq_default, !57, !"__SCK__tp_func_802154_rdev_set_ackreq_default", i1 false, i1 false}
!60 = !{ptr @__tracepoint_802154_rdev_return_int, !61, !"__tracepoint_802154_rdev_return_int", i1 false, i1 false}
!61 = !{!"../net/ieee802154/./trace.h", i32 298, i32 1}
!62 = !{ptr @__tracepoint_ptr_802154_rdev_return_int, !61, !"__tracepoint_ptr_802154_rdev_return_int", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_802154_rdev_return_int, !61, !"__SCK__tp_func_802154_rdev_return_int", i1 false, i1 false}
!64 = !{ptr @event_class_wpan_phy_only_evt, !65, !"event_class_wpan_phy_only_evt", i1 false, i1 false}
!65 = !{!"../net/ieee802154/./trace.h", i32 44, i32 1}
!66 = !{ptr @event_802154_rdev_suspend, !1, !"event_802154_rdev_suspend", i1 false, i1 false}
!67 = !{ptr @__event_802154_rdev_suspend, !1, !"__event_802154_rdev_suspend", i1 false, i1 false}
!68 = !{ptr @event_802154_rdev_resume, !5, !"event_802154_rdev_resume", i1 false, i1 false}
!69 = !{ptr @__event_802154_rdev_resume, !5, !"__event_802154_rdev_resume", i1 false, i1 false}
!70 = !{ptr @event_class_802154_rdev_add_virtual_intf, !9, !"event_class_802154_rdev_add_virtual_intf", i1 false, i1 false}
!71 = !{ptr @event_802154_rdev_add_virtual_intf, !9, !"event_802154_rdev_add_virtual_intf", i1 false, i1 false}
!72 = !{ptr @__event_802154_rdev_add_virtual_intf, !9, !"__event_802154_rdev_add_virtual_intf", i1 false, i1 false}
!73 = !{ptr @event_class_802154_rdev_del_virtual_intf, !13, !"event_class_802154_rdev_del_virtual_intf", i1 false, i1 false}
!74 = !{ptr @event_802154_rdev_del_virtual_intf, !13, !"event_802154_rdev_del_virtual_intf", i1 false, i1 false}
!75 = !{ptr @__event_802154_rdev_del_virtual_intf, !13, !"__event_802154_rdev_del_virtual_intf", i1 false, i1 false}
!76 = !{ptr @event_class_802154_rdev_set_channel, !17, !"event_class_802154_rdev_set_channel", i1 false, i1 false}
!77 = !{ptr @event_802154_rdev_set_channel, !17, !"event_802154_rdev_set_channel", i1 false, i1 false}
!78 = !{ptr @__event_802154_rdev_set_channel, !17, !"__event_802154_rdev_set_channel", i1 false, i1 false}
!79 = !{ptr @event_class_802154_rdev_set_tx_power, !21, !"event_class_802154_rdev_set_tx_power", i1 false, i1 false}
!80 = !{ptr @event_802154_rdev_set_tx_power, !21, !"event_802154_rdev_set_tx_power", i1 false, i1 false}
!81 = !{ptr @__event_802154_rdev_set_tx_power, !21, !"__event_802154_rdev_set_tx_power", i1 false, i1 false}
!82 = !{ptr @event_class_802154_rdev_set_cca_mode, !25, !"event_class_802154_rdev_set_cca_mode", i1 false, i1 false}
!83 = !{ptr @event_802154_rdev_set_cca_mode, !25, !"event_802154_rdev_set_cca_mode", i1 false, i1 false}
!84 = !{ptr @__event_802154_rdev_set_cca_mode, !25, !"__event_802154_rdev_set_cca_mode", i1 false, i1 false}
!85 = !{ptr @event_class_802154_rdev_set_cca_ed_level, !29, !"event_class_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!86 = !{ptr @event_802154_rdev_set_cca_ed_level, !29, !"event_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!87 = !{ptr @__event_802154_rdev_set_cca_ed_level, !29, !"__event_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!88 = !{ptr @event_class_802154_le16_template, !89, !"event_class_802154_le16_template", i1 false, i1 false}
!89 = !{!"../net/ieee802154/./trace.h", i32 164, i32 1}
!90 = !{ptr @event_802154_rdev_set_pan_id, !33, !"event_802154_rdev_set_pan_id", i1 false, i1 false}
!91 = !{ptr @__event_802154_rdev_set_pan_id, !33, !"__event_802154_rdev_set_pan_id", i1 false, i1 false}
!92 = !{ptr @event_802154_rdev_set_short_addr, !37, !"event_802154_rdev_set_short_addr", i1 false, i1 false}
!93 = !{ptr @__event_802154_rdev_set_short_addr, !37, !"__event_802154_rdev_set_short_addr", i1 false, i1 false}
!94 = !{ptr @event_class_802154_rdev_set_backoff_exponent, !41, !"event_class_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!95 = !{ptr @event_802154_rdev_set_backoff_exponent, !41, !"event_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!96 = !{ptr @__event_802154_rdev_set_backoff_exponent, !41, !"__event_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!97 = !{ptr @event_class_802154_rdev_set_csma_backoffs, !45, !"event_class_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!98 = !{ptr @event_802154_rdev_set_csma_backoffs, !45, !"event_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!99 = !{ptr @__event_802154_rdev_set_csma_backoffs, !45, !"__event_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!100 = !{ptr @event_class_802154_rdev_set_max_frame_retries, !49, !"event_class_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!101 = !{ptr @event_802154_rdev_set_max_frame_retries, !49, !"event_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!102 = !{ptr @__event_802154_rdev_set_max_frame_retries, !49, !"__event_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!103 = !{ptr @event_class_802154_rdev_set_lbt_mode, !53, !"event_class_802154_rdev_set_lbt_mode", i1 false, i1 false}
!104 = !{ptr @event_802154_rdev_set_lbt_mode, !53, !"event_802154_rdev_set_lbt_mode", i1 false, i1 false}
!105 = !{ptr @__event_802154_rdev_set_lbt_mode, !53, !"__event_802154_rdev_set_lbt_mode", i1 false, i1 false}
!106 = !{ptr @event_class_802154_rdev_set_ackreq_default, !57, !"event_class_802154_rdev_set_ackreq_default", i1 false, i1 false}
!107 = !{ptr @event_802154_rdev_set_ackreq_default, !57, !"event_802154_rdev_set_ackreq_default", i1 false, i1 false}
!108 = !{ptr @__event_802154_rdev_set_ackreq_default, !57, !"__event_802154_rdev_set_ackreq_default", i1 false, i1 false}
!109 = !{ptr @event_class_802154_rdev_return_int, !61, !"event_class_802154_rdev_return_int", i1 false, i1 false}
!110 = !{ptr @event_802154_rdev_return_int, !61, !"event_802154_rdev_return_int", i1 false, i1 false}
!111 = !{ptr @__event_802154_rdev_return_int, !61, !"__event_802154_rdev_return_int", i1 false, i1 false}
!112 = !{ptr @__bpf_trace_tp_map_802154_rdev_suspend, !1, !"__bpf_trace_tp_map_802154_rdev_suspend", i1 false, i1 false}
!113 = !{ptr @__bpf_trace_tp_map_802154_rdev_resume, !5, !"__bpf_trace_tp_map_802154_rdev_resume", i1 false, i1 false}
!114 = !{ptr @__bpf_trace_tp_map_802154_rdev_add_virtual_intf, !9, !"__bpf_trace_tp_map_802154_rdev_add_virtual_intf", i1 false, i1 false}
!115 = !{ptr @__bpf_trace_tp_map_802154_rdev_del_virtual_intf, !13, !"__bpf_trace_tp_map_802154_rdev_del_virtual_intf", i1 false, i1 false}
!116 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_channel, !17, !"__bpf_trace_tp_map_802154_rdev_set_channel", i1 false, i1 false}
!117 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_tx_power, !21, !"__bpf_trace_tp_map_802154_rdev_set_tx_power", i1 false, i1 false}
!118 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_cca_mode, !25, !"__bpf_trace_tp_map_802154_rdev_set_cca_mode", i1 false, i1 false}
!119 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_cca_ed_level, !29, !"__bpf_trace_tp_map_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!120 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_pan_id, !33, !"__bpf_trace_tp_map_802154_rdev_set_pan_id", i1 false, i1 false}
!121 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_short_addr, !37, !"__bpf_trace_tp_map_802154_rdev_set_short_addr", i1 false, i1 false}
!122 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_backoff_exponent, !41, !"__bpf_trace_tp_map_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!123 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_csma_backoffs, !45, !"__bpf_trace_tp_map_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!124 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_max_frame_retries, !49, !"__bpf_trace_tp_map_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!125 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_lbt_mode, !53, !"__bpf_trace_tp_map_802154_rdev_set_lbt_mode", i1 false, i1 false}
!126 = !{ptr @__bpf_trace_tp_map_802154_rdev_set_ackreq_default, !57, !"__bpf_trace_tp_map_802154_rdev_set_ackreq_default", i1 false, i1 false}
!127 = !{ptr @__bpf_trace_tp_map_802154_rdev_return_int, !61, !"__bpf_trace_tp_map_802154_rdev_return_int", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_802154_rdev_suspend, !1, !"__tpstrtab_802154_rdev_suspend", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_802154_rdev_resume, !5, !"__tpstrtab_802154_rdev_resume", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_802154_rdev_add_virtual_intf, !9, !"__tpstrtab_802154_rdev_add_virtual_intf", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_802154_rdev_del_virtual_intf, !13, !"__tpstrtab_802154_rdev_del_virtual_intf", i1 false, i1 false}
!132 = !{ptr @__tpstrtab_802154_rdev_set_channel, !17, !"__tpstrtab_802154_rdev_set_channel", i1 false, i1 false}
!133 = !{ptr @__tpstrtab_802154_rdev_set_tx_power, !21, !"__tpstrtab_802154_rdev_set_tx_power", i1 false, i1 false}
!134 = !{ptr @__tpstrtab_802154_rdev_set_cca_mode, !25, !"__tpstrtab_802154_rdev_set_cca_mode", i1 false, i1 false}
!135 = !{ptr @__tpstrtab_802154_rdev_set_cca_ed_level, !29, !"__tpstrtab_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!136 = !{ptr @__tpstrtab_802154_rdev_set_pan_id, !33, !"__tpstrtab_802154_rdev_set_pan_id", i1 false, i1 false}
!137 = !{ptr @__tpstrtab_802154_rdev_set_short_addr, !37, !"__tpstrtab_802154_rdev_set_short_addr", i1 false, i1 false}
!138 = !{ptr @__tpstrtab_802154_rdev_set_backoff_exponent, !41, !"__tpstrtab_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!139 = !{ptr @__tpstrtab_802154_rdev_set_csma_backoffs, !45, !"__tpstrtab_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!140 = !{ptr @__tpstrtab_802154_rdev_set_max_frame_retries, !49, !"__tpstrtab_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!141 = !{ptr @__tpstrtab_802154_rdev_set_lbt_mode, !53, !"__tpstrtab_802154_rdev_set_lbt_mode", i1 false, i1 false}
!142 = !{ptr @__tpstrtab_802154_rdev_set_ackreq_default, !57, !"__tpstrtab_802154_rdev_set_ackreq_default", i1 false, i1 false}
!143 = !{ptr @__tpstrtab_802154_rdev_return_int, !61, !"__tpstrtab_802154_rdev_return_int", i1 false, i1 false}
!144 = !{ptr @str__cfg802154__trace_system_name, !145, !"str__cfg802154__trace_system_name", i1 false, i1 false}
!145 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!146 = !{ptr @.str, !65, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.1, !65, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @trace_event_fields_wpan_phy_only_evt, !65, !"trace_event_fields_wpan_phy_only_evt", i1 false, i1 false}
!149 = !{ptr @trace_event_type_funcs_wpan_phy_only_evt, !65, !"trace_event_type_funcs_wpan_phy_only_evt", i1 false, i1 false}
!150 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @print_fmt_wpan_phy_only_evt, !65, !"print_fmt_wpan_phy_only_evt", i1 false, i1 false}
!152 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @trace_event_fields_802154_rdev_add_virtual_intf, !9, !"trace_event_fields_802154_rdev_add_virtual_intf", i1 false, i1 false}
!161 = !{ptr @trace_event_type_funcs_802154_rdev_add_virtual_intf, !9, !"trace_event_type_funcs_802154_rdev_add_virtual_intf", i1 false, i1 false}
!162 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @print_fmt_802154_rdev_add_virtual_intf, !9, !"print_fmt_802154_rdev_add_virtual_intf", i1 false, i1 false}
!164 = !{ptr @.str.12, !13, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.13, !13, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @trace_event_fields_802154_rdev_del_virtual_intf, !13, !"trace_event_fields_802154_rdev_del_virtual_intf", i1 false, i1 false}
!167 = !{ptr @trace_event_type_funcs_802154_rdev_del_virtual_intf, !13, !"trace_event_type_funcs_802154_rdev_del_virtual_intf", i1 false, i1 false}
!168 = !{ptr @.str.14, !13, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @print_fmt_802154_rdev_del_virtual_intf, !13, !"print_fmt_802154_rdev_del_virtual_intf", i1 false, i1 false}
!170 = !{ptr @.str.15, !17, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.16, !17, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.17, !17, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @trace_event_fields_802154_rdev_set_channel, !17, !"trace_event_fields_802154_rdev_set_channel", i1 false, i1 false}
!174 = !{ptr @trace_event_type_funcs_802154_rdev_set_channel, !17, !"trace_event_type_funcs_802154_rdev_set_channel", i1 false, i1 false}
!175 = !{ptr @.str.18, !17, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @print_fmt_802154_rdev_set_channel, !17, !"print_fmt_802154_rdev_set_channel", i1 false, i1 false}
!177 = !{ptr @.str.19, !21, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.20, !21, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @trace_event_fields_802154_rdev_set_tx_power, !21, !"trace_event_fields_802154_rdev_set_tx_power", i1 false, i1 false}
!180 = !{ptr @trace_event_type_funcs_802154_rdev_set_tx_power, !21, !"trace_event_type_funcs_802154_rdev_set_tx_power", i1 false, i1 false}
!181 = !{ptr @.str.21, !21, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @print_fmt_802154_rdev_set_tx_power, !21, !"print_fmt_802154_rdev_set_tx_power", i1 false, i1 false}
!183 = !{ptr @.str.22, !25, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.24, !25, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.25, !25, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @trace_event_fields_802154_rdev_set_cca_mode, !25, !"trace_event_fields_802154_rdev_set_cca_mode", i1 false, i1 false}
!188 = !{ptr @trace_event_type_funcs_802154_rdev_set_cca_mode, !25, !"trace_event_type_funcs_802154_rdev_set_cca_mode", i1 false, i1 false}
!189 = !{ptr @.str.26, !25, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @print_fmt_802154_rdev_set_cca_mode, !25, !"print_fmt_802154_rdev_set_cca_mode", i1 false, i1 false}
!191 = !{ptr @.str.27, !29, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @trace_event_fields_802154_rdev_set_cca_ed_level, !29, !"trace_event_fields_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!193 = !{ptr @trace_event_type_funcs_802154_rdev_set_cca_ed_level, !29, !"trace_event_type_funcs_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!194 = !{ptr @.str.28, !29, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @print_fmt_802154_rdev_set_cca_ed_level, !29, !"print_fmt_802154_rdev_set_cca_ed_level", i1 false, i1 false}
!196 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @trace_event_fields_802154_le16_template, !89, !"trace_event_fields_802154_le16_template", i1 false, i1 false}
!199 = !{ptr @trace_event_type_funcs_802154_le16_template, !89, !"trace_event_type_funcs_802154_le16_template", i1 false, i1 false}
!200 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @print_fmt_802154_le16_template, !89, !"print_fmt_802154_le16_template", i1 false, i1 false}
!202 = !{ptr @trace_event_type_funcs_802154_rdev_set_short_addr, !37, !"trace_event_type_funcs_802154_rdev_set_short_addr", i1 false, i1 false}
!203 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!204 = !{ptr @.str.32, !37, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.33, !37, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.34, !37, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @print_fmt_802154_rdev_set_short_addr, !37, !"print_fmt_802154_rdev_set_short_addr", i1 false, i1 false}
!208 = !{ptr @.str.35, !41, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.36, !41, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @trace_event_fields_802154_rdev_set_backoff_exponent, !41, !"trace_event_fields_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!211 = !{ptr @trace_event_type_funcs_802154_rdev_set_backoff_exponent, !41, !"trace_event_type_funcs_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!212 = !{ptr @.str.37, !41, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @print_fmt_802154_rdev_set_backoff_exponent, !41, !"print_fmt_802154_rdev_set_backoff_exponent", i1 false, i1 false}
!214 = !{ptr @.str.38, !45, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @trace_event_fields_802154_rdev_set_csma_backoffs, !45, !"trace_event_fields_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!216 = !{ptr @trace_event_type_funcs_802154_rdev_set_csma_backoffs, !45, !"trace_event_type_funcs_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!217 = !{ptr @.str.39, !45, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @print_fmt_802154_rdev_set_csma_backoffs, !45, !"print_fmt_802154_rdev_set_csma_backoffs", i1 false, i1 false}
!219 = !{ptr @.str.40, !49, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.41, !49, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @trace_event_fields_802154_rdev_set_max_frame_retries, !49, !"trace_event_fields_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!222 = !{ptr @trace_event_type_funcs_802154_rdev_set_max_frame_retries, !49, !"trace_event_type_funcs_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!223 = !{ptr @.str.42, !49, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @print_fmt_802154_rdev_set_max_frame_retries, !49, !"print_fmt_802154_rdev_set_max_frame_retries", i1 false, i1 false}
!225 = !{ptr @.str.43, !53, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.44, !53, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @trace_event_fields_802154_rdev_set_lbt_mode, !53, !"trace_event_fields_802154_rdev_set_lbt_mode", i1 false, i1 false}
!228 = !{ptr @trace_event_type_funcs_802154_rdev_set_lbt_mode, !53, !"trace_event_type_funcs_802154_rdev_set_lbt_mode", i1 false, i1 false}
!229 = !{ptr @.str.45, !53, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.46, !53, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.47, !53, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @print_fmt_802154_rdev_set_lbt_mode, !53, !"print_fmt_802154_rdev_set_lbt_mode", i1 false, i1 false}
!233 = !{ptr @.str.48, !57, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @trace_event_fields_802154_rdev_set_ackreq_default, !57, !"trace_event_fields_802154_rdev_set_ackreq_default", i1 false, i1 false}
!235 = !{ptr @trace_event_type_funcs_802154_rdev_set_ackreq_default, !57, !"trace_event_type_funcs_802154_rdev_set_ackreq_default", i1 false, i1 false}
!236 = !{ptr @.str.49, !57, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @print_fmt_802154_rdev_set_ackreq_default, !57, !"print_fmt_802154_rdev_set_ackreq_default", i1 false, i1 false}
!238 = !{ptr @.str.50, !61, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.51, !61, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @trace_event_fields_802154_rdev_return_int, !61, !"trace_event_fields_802154_rdev_return_int", i1 false, i1 false}
!241 = !{ptr @trace_event_type_funcs_802154_rdev_return_int, !61, !"trace_event_type_funcs_802154_rdev_return_int", i1 false, i1 false}
!242 = !{ptr @.str.52, !61, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @print_fmt_802154_rdev_return_int, !61, !"print_fmt_802154_rdev_return_int", i1 false, i1 false}
!244 = !{!"sp"}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{!"branch_weights", i32 1, i32 2000}
!256 = !{!"auto-init"}
!257 = !{i8 0, i8 2}
