; ModuleID = '/llk/IR_all_yes/net/mac802154/trace.c_pt.bc'
source_filename = "../net/mac802154/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.142, %struct.trace_event, ptr, ptr, %union.anon.143, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.142 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_local_only_evt4 = type { %struct.trace_entry, [32 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
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
%struct.trace_event_raw_802154_drv_return_int = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_channel = type { %struct.trace_entry, [32 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_cca_mode = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_cca_ed_level = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_tx_power = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_lbt_mode = type { %struct.trace_entry, [32 x i8], i8, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_short_addr = type { %struct.trace_entry, [32 x i8], i16, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_pan_id = type { %struct.trace_entry, [32 x i8], i16, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_extended_addr = type { %struct.trace_entry, [32 x i8], i64, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_pan_coord = type { %struct.trace_entry, [32 x i8], i8, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_csma_params = type { %struct.trace_entry, [32 x i8], i8, i8, i8, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_max_frame_retries = type { %struct.trace_entry, [32 x i8], i8, [0 x i8] }
%struct.trace_event_raw_802154_drv_set_promiscuous_mode = type { %struct.trace_entry, [32 x i8], i8, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_802154_drv_return_void = internal constant [23 x i8] c"802154_drv_return_void\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_return_void = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_return_void }, align 4
@__tracepoint_802154_drv_return_void = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_return_void, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_return_void, ptr null, ptr @__traceiter_802154_drv_return_void, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_return_void = internal constant ptr @__tracepoint_802154_drv_return_void, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_return_int = internal constant [22 x i8] c"802154_drv_return_int\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_return_int = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_return_int }, align 4
@__tracepoint_802154_drv_return_int = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_return_int, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_return_int, ptr null, ptr @__traceiter_802154_drv_return_int, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_return_int = internal constant ptr @__tracepoint_802154_drv_return_int, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_start = internal constant [17 x i8] c"802154_drv_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_start = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_start }, align 4
@__tracepoint_802154_drv_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_start, ptr null, ptr @__traceiter_802154_drv_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_start = internal constant ptr @__tracepoint_802154_drv_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_stop = internal constant [16 x i8] c"802154_drv_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_stop = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_stop }, align 4
@__tracepoint_802154_drv_stop = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_stop, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_stop, ptr null, ptr @__traceiter_802154_drv_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_stop = internal constant ptr @__tracepoint_802154_drv_stop, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_channel = internal constant [23 x i8] c"802154_drv_set_channel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_channel = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_channel }, align 4
@__tracepoint_802154_drv_set_channel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_channel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_channel, ptr null, ptr @__traceiter_802154_drv_set_channel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_channel = internal constant ptr @__tracepoint_802154_drv_set_channel, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_cca_mode = internal constant [24 x i8] c"802154_drv_set_cca_mode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_cca_mode = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_cca_mode }, align 4
@__tracepoint_802154_drv_set_cca_mode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_cca_mode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_cca_mode, ptr null, ptr @__traceiter_802154_drv_set_cca_mode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_cca_mode = internal constant ptr @__tracepoint_802154_drv_set_cca_mode, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_cca_ed_level = internal constant [28 x i8] c"802154_drv_set_cca_ed_level\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_cca_ed_level = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_cca_ed_level }, align 4
@__tracepoint_802154_drv_set_cca_ed_level = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_cca_ed_level, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_cca_ed_level, ptr null, ptr @__traceiter_802154_drv_set_cca_ed_level, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_cca_ed_level = internal constant ptr @__tracepoint_802154_drv_set_cca_ed_level, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_tx_power = internal constant [24 x i8] c"802154_drv_set_tx_power\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_tx_power = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_tx_power }, align 4
@__tracepoint_802154_drv_set_tx_power = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_tx_power, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_tx_power, ptr null, ptr @__traceiter_802154_drv_set_tx_power, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_tx_power = internal constant ptr @__tracepoint_802154_drv_set_tx_power, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_lbt_mode = internal constant [24 x i8] c"802154_drv_set_lbt_mode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_lbt_mode = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_lbt_mode }, align 4
@__tracepoint_802154_drv_set_lbt_mode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_lbt_mode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_lbt_mode, ptr null, ptr @__traceiter_802154_drv_set_lbt_mode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_lbt_mode = internal constant ptr @__tracepoint_802154_drv_set_lbt_mode, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_short_addr = internal constant [26 x i8] c"802154_drv_set_short_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_short_addr = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_short_addr }, align 4
@__tracepoint_802154_drv_set_short_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_short_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_short_addr, ptr null, ptr @__traceiter_802154_drv_set_short_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_short_addr = internal constant ptr @__tracepoint_802154_drv_set_short_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_pan_id = internal constant [22 x i8] c"802154_drv_set_pan_id\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_pan_id = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_pan_id }, align 4
@__tracepoint_802154_drv_set_pan_id = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_pan_id, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_pan_id, ptr null, ptr @__traceiter_802154_drv_set_pan_id, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_pan_id = internal constant ptr @__tracepoint_802154_drv_set_pan_id, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_extended_addr = internal constant [29 x i8] c"802154_drv_set_extended_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_extended_addr = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_extended_addr }, align 4
@__tracepoint_802154_drv_set_extended_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_extended_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_extended_addr, ptr null, ptr @__traceiter_802154_drv_set_extended_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_extended_addr = internal constant ptr @__tracepoint_802154_drv_set_extended_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_pan_coord = internal constant [25 x i8] c"802154_drv_set_pan_coord\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_pan_coord = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_pan_coord }, align 4
@__tracepoint_802154_drv_set_pan_coord = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_pan_coord, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_pan_coord, ptr null, ptr @__traceiter_802154_drv_set_pan_coord, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_pan_coord = internal constant ptr @__tracepoint_802154_drv_set_pan_coord, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_csma_params = internal constant [27 x i8] c"802154_drv_set_csma_params\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_csma_params = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_csma_params }, align 4
@__tracepoint_802154_drv_set_csma_params = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_csma_params, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_csma_params, ptr null, ptr @__traceiter_802154_drv_set_csma_params, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_csma_params = internal constant ptr @__tracepoint_802154_drv_set_csma_params, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_max_frame_retries = internal constant [33 x i8] c"802154_drv_set_max_frame_retries\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_max_frame_retries = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_max_frame_retries }, align 4
@__tracepoint_802154_drv_set_max_frame_retries = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_max_frame_retries, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_max_frame_retries, ptr null, ptr @__traceiter_802154_drv_set_max_frame_retries, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_max_frame_retries = internal constant ptr @__tracepoint_802154_drv_set_max_frame_retries, section "__tracepoints_ptrs", align 4
@__tpstrtab_802154_drv_set_promiscuous_mode = internal constant [32 x i8] c"802154_drv_set_promiscuous_mode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_802154_drv_set_promiscuous_mode = dso_local global %struct.static_call_key { ptr @__traceiter_802154_drv_set_promiscuous_mode }, align 4
@__tracepoint_802154_drv_set_promiscuous_mode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_802154_drv_set_promiscuous_mode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_802154_drv_set_promiscuous_mode, ptr null, ptr @__traceiter_802154_drv_set_promiscuous_mode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_802154_drv_set_promiscuous_mode = internal constant ptr @__tracepoint_802154_drv_set_promiscuous_mode, section "__tracepoints_ptrs", align 4
@str__mac802154__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac802154\00", [22 x i8] zeroinitializer }, align 32
@trace_event_fields_local_only_evt4 = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_local_only_evt4 = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_local_only_evt4, ptr @perf_trace_local_only_evt4, ptr @trace_event_reg, ptr @trace_event_fields_local_only_evt4, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_local_only_evt4, i64 24), ptr getelementptr (i8, ptr @event_class_local_only_evt4, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_local_only_evt4 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_local_only_evt4, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_local_only_evt4 = internal global { [25 x i8], [39 x i8] } { [25 x i8] c"\22%s\22, REC->wpan_phy_name\00", [39 x i8] zeroinitializer }, align 32
@event_802154_drv_return_void = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_local_only_evt4, %union.anon.142 { ptr @__tracepoint_802154_drv_return_void }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_local_only_evt4 }, ptr @print_fmt_local_only_evt4, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_return_void = internal global ptr @event_802154_drv_return_void, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_return_int = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.140 { %struct.anon.141 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_return_int = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_return_int, ptr @perf_trace_802154_drv_return_int, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_return_int, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_return_int, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_return_int, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_return_int = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_return_int, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_return_int = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\22%s, returned: %d\22, REC->wpan_phy_name, REC->ret\00", [47 x i8] zeroinitializer }, align 32
@event_802154_drv_return_int = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_return_int, %union.anon.142 { ptr @__tracepoint_802154_drv_return_int }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_return_int }, ptr @print_fmt_802154_drv_return_int, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_return_int = internal global ptr @event_802154_drv_return_int, section "_ftrace_events", align 4
@event_802154_drv_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_local_only_evt4, %union.anon.142 { ptr @__tracepoint_802154_drv_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_local_only_evt4 }, ptr @print_fmt_local_only_evt4, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_start = internal global ptr @event_802154_drv_start, section "_ftrace_events", align 4
@event_802154_drv_stop = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_local_only_evt4, %union.anon.142 { ptr @__tracepoint_802154_drv_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_local_only_evt4 }, ptr @print_fmt_local_only_evt4, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_stop = internal global ptr @event_802154_drv_stop, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_channel = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.140 { %struct.anon.141 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.140 { %struct.anon.141 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_channel = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_channel, ptr @perf_trace_802154_drv_set_channel, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_channel, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_channel, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_channel, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_channel = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_channel, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_channel = internal global { [73 x i8], [55 x i8] } { [73 x i8] c"\22%s, page: %d, channel: %d\22, REC->wpan_phy_name, REC->page, REC->channel\00", [55 x i8] zeroinitializer }, align 32
@event_802154_drv_set_channel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_channel, %union.anon.142 { ptr @__tracepoint_802154_drv_set_channel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_channel }, ptr @print_fmt_802154_drv_set_channel, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_channel = internal global ptr @event_802154_drv_set_channel, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_cca_mode = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.140 { %struct.anon.141 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.140 { %struct.anon.141 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_cca_mode = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_cca_mode, ptr @perf_trace_802154_drv_set_cca_mode, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_cca_mode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_cca_mode, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_cca_mode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_cca_mode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_cca_mode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_cca_mode = internal global { [81 x i8], [47 x i8] } { [81 x i8] c"\22%s, cca_mode: %d, cca_opt: %d\22, REC->wpan_phy_name, REC->cca_mode, REC->cca_opt\00", [47 x i8] zeroinitializer }, align 32
@event_802154_drv_set_cca_mode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_cca_mode, %union.anon.142 { ptr @__tracepoint_802154_drv_set_cca_mode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_cca_mode }, ptr @print_fmt_802154_drv_set_cca_mode, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_cca_mode = internal global ptr @event_802154_drv_set_cca_mode, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_cca_ed_level = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.140 { %struct.anon.141 { ptr @.str.16, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_cca_ed_level = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_cca_ed_level, ptr @perf_trace_802154_drv_set_cca_ed_level, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_cca_ed_level, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_cca_ed_level, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_cca_ed_level, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_cca_ed_level = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_cca_ed_level, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_cca_ed_level = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\22%s, ed level: %d\22, REC->wpan_phy_name, REC->mbm\00", [47 x i8] zeroinitializer }, align 32
@event_802154_drv_set_cca_ed_level = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_cca_ed_level, %union.anon.142 { ptr @__tracepoint_802154_drv_set_cca_ed_level }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_cca_ed_level }, ptr @print_fmt_802154_drv_set_cca_ed_level, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_cca_ed_level = internal global ptr @event_802154_drv_set_cca_ed_level, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_tx_power = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.140 { %struct.anon.141 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_tx_power = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_tx_power, ptr @perf_trace_802154_drv_set_tx_power, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_tx_power, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_tx_power, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_tx_power, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_tx_power = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_tx_power, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_tx_power = internal global { [46 x i8], [50 x i8] } { [46 x i8] c"\22%s, mbm: %d\22, REC->wpan_phy_name, REC->power\00", [50 x i8] zeroinitializer }, align 32
@event_802154_drv_set_tx_power = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_tx_power, %union.anon.142 { ptr @__tracepoint_802154_drv_set_tx_power }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_tx_power }, ptr @print_fmt_802154_drv_set_tx_power, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_tx_power = internal global ptr @event_802154_drv_set_tx_power, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_lbt_mode = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.140 { %struct.anon.141 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_lbt_mode = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_lbt_mode, ptr @perf_trace_802154_drv_set_lbt_mode, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_lbt_mode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_lbt_mode, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_lbt_mode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_lbt_mode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_lbt_mode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_lbt_mode = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22%s, lbt mode: %s\22, REC->wpan_phy_name, (REC->mode) ? \22true\22 : \22false\22\00", [57 x i8] zeroinitializer }, align 32
@event_802154_drv_set_lbt_mode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_lbt_mode, %union.anon.142 { ptr @__tracepoint_802154_drv_set_lbt_mode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_lbt_mode }, ptr @print_fmt_802154_drv_set_lbt_mode, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_lbt_mode = internal global ptr @event_802154_drv_set_lbt_mode, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_short_addr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.140 { %struct.anon.141 { ptr @.str.26, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_short_addr = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_short_addr, ptr @perf_trace_802154_drv_set_short_addr, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_short_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_short_addr, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_short_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_short_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_short_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_short_addr = internal global { [115 x i8], [45 x i8] } { [115 x i8] c"\22%s, short addr: 0x%04x\22, REC->wpan_phy_name, (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->short_addr)))\00", [45 x i8] zeroinitializer }, align 32
@event_802154_drv_set_short_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_short_addr, %union.anon.142 { ptr @__tracepoint_802154_drv_set_short_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_short_addr }, ptr @print_fmt_802154_drv_set_short_addr, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_short_addr = internal global ptr @event_802154_drv_set_short_addr, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_pan_id = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.140 { %struct.anon.141 { ptr @.str.28, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_pan_id = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_pan_id, ptr @perf_trace_802154_drv_set_pan_id, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_pan_id, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_pan_id, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_pan_id, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_pan_id = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_pan_id, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_pan_id = internal global { [107 x i8], [53 x i8] } { [107 x i8] c"\22%s, pan id: 0x%04x\22, REC->wpan_phy_name, (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)(REC->pan_id)))\00", [53 x i8] zeroinitializer }, align 32
@event_802154_drv_set_pan_id = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_pan_id, %union.anon.142 { ptr @__tracepoint_802154_drv_set_pan_id }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_pan_id }, ptr @print_fmt_802154_drv_set_pan_id, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_pan_id = internal global ptr @event_802154_drv_set_pan_id, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_extended_addr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.140 { %struct.anon.141 { ptr @.str.31, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_extended_addr = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_extended_addr, ptr @perf_trace_802154_drv_set_extended_addr, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_extended_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_extended_addr, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_extended_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_extended_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_extended_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_extended_addr = internal global { [121 x i8], [39 x i8] } { [121 x i8] c"\22%s, extended addr: 0x%llx\22, REC->wpan_phy_name, (__u64)__builtin_bswap64((__u64)(( __u64)(__le64)(REC->extended_addr)))\00", [39 x i8] zeroinitializer }, align 32
@event_802154_drv_set_extended_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_extended_addr, %union.anon.142 { ptr @__tracepoint_802154_drv_set_extended_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_extended_addr }, ptr @print_fmt_802154_drv_set_extended_addr, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_extended_addr = internal global ptr @event_802154_drv_set_extended_addr, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_pan_coord = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.140 { %struct.anon.141 { ptr @.str.33, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_pan_coord = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_pan_coord, ptr @perf_trace_802154_drv_set_pan_coord, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_pan_coord, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_pan_coord, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_pan_coord, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_pan_coord = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_pan_coord, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_pan_coord = internal global { [75 x i8], [53 x i8] } { [75 x i8] c"\22%s, is_coord: %s\22, REC->wpan_phy_name, (REC->is_coord) ? \22true\22 : \22false\22\00", [53 x i8] zeroinitializer }, align 32
@event_802154_drv_set_pan_coord = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_pan_coord, %union.anon.142 { ptr @__tracepoint_802154_drv_set_pan_coord }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_pan_coord }, ptr @print_fmt_802154_drv_set_pan_coord, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_pan_coord = internal global ptr @event_802154_drv_set_pan_coord, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_csma_params = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.140 { %struct.anon.141 { ptr @.str.35, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.140 { %struct.anon.141 { ptr @.str.36, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.140 { %struct.anon.141 { ptr @.str.37, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_csma_params = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_csma_params, ptr @perf_trace_802154_drv_set_csma_params, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_csma_params, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_csma_params, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_csma_params, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_csma_params = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_csma_params, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_csma_params = internal global { [122 x i8], [38 x i8] } { [122 x i8] c"\22%s, min be: %d, max be: %d, max csma backoffs: %d\22, REC->wpan_phy_name, REC->min_be, REC->max_be, REC->max_csma_backoffs\00", [38 x i8] zeroinitializer }, align 32
@event_802154_drv_set_csma_params = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_csma_params, %union.anon.142 { ptr @__tracepoint_802154_drv_set_csma_params }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_csma_params }, ptr @print_fmt_802154_drv_set_csma_params, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_csma_params = internal global ptr @event_802154_drv_set_csma_params, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_max_frame_retries = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.140 { %struct.anon.141 { ptr @.str.40, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_max_frame_retries = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_max_frame_retries, ptr @perf_trace_802154_drv_set_max_frame_retries, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_max_frame_retries, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_max_frame_retries, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_max_frame_retries, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_max_frame_retries = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_max_frame_retries, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_max_frame_retries = internal global { [72 x i8], [56 x i8] } { [72 x i8] c"\22%s, max frame retries: %d\22, REC->wpan_phy_name, REC->max_frame_retries\00", [56 x i8] zeroinitializer }, align 32
@event_802154_drv_set_max_frame_retries = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_max_frame_retries, %union.anon.142 { ptr @__tracepoint_802154_drv_set_max_frame_retries }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_max_frame_retries }, ptr @print_fmt_802154_drv_set_max_frame_retries, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_max_frame_retries = internal global ptr @event_802154_drv_set_max_frame_retries, section "_ftrace_events", align 4
@trace_event_fields_802154_drv_set_promiscuous_mode = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.140 { %struct.anon.141 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.140 { %struct.anon.141 { ptr @.str.42, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_802154_drv_set_promiscuous_mode = internal global %struct.trace_event_class { ptr @str__mac802154__trace_system_name, ptr @trace_event_raw_event_802154_drv_set_promiscuous_mode, ptr @perf_trace_802154_drv_set_promiscuous_mode, ptr @trace_event_reg, ptr @trace_event_fields_802154_drv_set_promiscuous_mode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_802154_drv_set_promiscuous_mode, i64 24), ptr getelementptr (i8, ptr @event_class_802154_drv_set_promiscuous_mode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_802154_drv_set_promiscuous_mode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_802154_drv_set_promiscuous_mode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_802154_drv_set_promiscuous_mode = internal global { [77 x i8], [51 x i8] } { [77 x i8] c"\22%s, promiscuous mode: %s\22, REC->wpan_phy_name, (REC->on) ? \22true\22 : \22false\22\00", [51 x i8] zeroinitializer }, align 32
@event_802154_drv_set_promiscuous_mode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_802154_drv_set_promiscuous_mode, %union.anon.142 { ptr @__tracepoint_802154_drv_set_promiscuous_mode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_802154_drv_set_promiscuous_mode }, ptr @print_fmt_802154_drv_set_promiscuous_mode, ptr null, %union.anon.143 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_802154_drv_set_promiscuous_mode = internal global ptr @event_802154_drv_set_promiscuous_mode, section "_ftrace_events", align 4
@__bpf_trace_tp_map_802154_drv_return_void = internal global %union.anon.144 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_return_void, ptr @__bpf_trace_local_only_evt4, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_return_int = internal global %union.anon.145 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_return_int, ptr @__bpf_trace_802154_drv_return_int, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_start = internal global %union.anon.146 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_start, ptr @__bpf_trace_local_only_evt4, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_stop = internal global %union.anon.147 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_stop, ptr @__bpf_trace_local_only_evt4, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_channel = internal global %union.anon.148 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_channel, ptr @__bpf_trace_802154_drv_set_channel, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_cca_mode = internal global %union.anon.149 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_cca_mode, ptr @__bpf_trace_802154_drv_set_cca_mode, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_cca_ed_level = internal global %union.anon.150 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_cca_ed_level, ptr @__bpf_trace_802154_drv_set_cca_ed_level, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_tx_power = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_tx_power, ptr @__bpf_trace_802154_drv_set_tx_power, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_lbt_mode = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_lbt_mode, ptr @__bpf_trace_802154_drv_set_lbt_mode, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_short_addr = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_short_addr, ptr @__bpf_trace_802154_drv_set_short_addr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_pan_id = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_pan_id, ptr @__bpf_trace_802154_drv_set_pan_id, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_extended_addr = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_extended_addr, ptr @__bpf_trace_802154_drv_set_extended_addr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_pan_coord = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_pan_coord, ptr @__bpf_trace_802154_drv_set_pan_coord, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_csma_params = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_csma_params, ptr @__bpf_trace_802154_drv_set_csma_params, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_max_frame_retries = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_max_frame_retries, ptr @__bpf_trace_802154_drv_set_max_frame_retries, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_802154_drv_set_promiscuous_mode = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_802154_drv_set_promiscuous_mode, ptr @__bpf_trace_802154_drv_set_promiscuous_mode, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wpan_phy_name\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, returned: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, page: %d, channel: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enum nl802154_cca_modes\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cca_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enum nl802154_cca_opts\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cca_opt\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s, cca_mode: %d, cca_opt: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mbm\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, ed level: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, mbm: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, lbt mode: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__le16\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"short_addr\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s, short addr: 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pan_id\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, pan id: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__le64\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extended_addr\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, extended addr: 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"is_coord\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, is_coord: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"min_be\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max_be\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_csma_backoffs\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s, min be: %d, max be: %d, max csma backoffs: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_frame_retries\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, max frame retries: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s, promiscuous mode: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [25 x i8] c"../net/mac802154/trace.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [34 x i8] c"str__mac802154__trace_system_name\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 36, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [35 x i8] c"trace_event_fields_local_only_evt4\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_local_only_evt4\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"print_fmt_local_only_evt4\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [29 x i8] c"event_802154_drv_return_void\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 48, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [41 x i8] c"trace_event_fields_802154_drv_return_int\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_802154_drv_return_int\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"print_fmt_802154_drv_return_int\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"event_802154_drv_return_int\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"event_802154_drv_start\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 68, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"event_802154_drv_stop\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 73, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [42 x i8] c"trace_event_fields_802154_drv_set_channel\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_802154_drv_set_channel\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [33 x i8] c"print_fmt_802154_drv_set_channel\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [29 x i8] c"event_802154_drv_set_channel\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [43 x i8] c"trace_event_fields_802154_drv_set_cca_mode\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_802154_drv_set_cca_mode\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [34 x i8] c"print_fmt_802154_drv_set_cca_mode\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"event_802154_drv_set_cca_mode\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [47 x i8] c"trace_event_fields_802154_drv_set_cca_ed_level\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_802154_drv_set_cca_ed_level\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [38 x i8] c"print_fmt_802154_drv_set_cca_ed_level\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [34 x i8] c"event_802154_drv_set_cca_ed_level\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [43 x i8] c"trace_event_fields_802154_drv_set_tx_power\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_802154_drv_set_tx_power\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [34 x i8] c"print_fmt_802154_drv_set_tx_power\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"event_802154_drv_set_tx_power\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [43 x i8] c"trace_event_fields_802154_drv_set_lbt_mode\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_802154_drv_set_lbt_mode\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [34 x i8] c"print_fmt_802154_drv_set_lbt_mode\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"event_802154_drv_set_lbt_mode\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [45 x i8] c"trace_event_fields_802154_drv_set_short_addr\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_802154_drv_set_short_addr\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [36 x i8] c"print_fmt_802154_drv_set_short_addr\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [32 x i8] c"event_802154_drv_set_short_addr\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [41 x i8] c"trace_event_fields_802154_drv_set_pan_id\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_802154_drv_set_pan_id\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [32 x i8] c"print_fmt_802154_drv_set_pan_id\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [28 x i8] c"event_802154_drv_set_pan_id\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [48 x i8] c"trace_event_fields_802154_drv_set_extended_addr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_802154_drv_set_extended_addr\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [39 x i8] c"print_fmt_802154_drv_set_extended_addr\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [35 x i8] c"event_802154_drv_set_extended_addr\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [44 x i8] c"trace_event_fields_802154_drv_set_pan_coord\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_802154_drv_set_pan_coord\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [35 x i8] c"print_fmt_802154_drv_set_pan_coord\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [31 x i8] c"event_802154_drv_set_pan_coord\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [46 x i8] c"trace_event_fields_802154_drv_set_csma_params\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_802154_drv_set_csma_params\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [37 x i8] c"print_fmt_802154_drv_set_csma_params\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [33 x i8] c"event_802154_drv_set_csma_params\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [52 x i8] c"trace_event_fields_802154_drv_set_max_frame_retries\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [56 x i8] c"trace_event_type_funcs_802154_drv_set_max_frame_retries\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [43 x i8] c"print_fmt_802154_drv_set_max_frame_retries\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [39 x i8] c"event_802154_drv_set_max_frame_retries\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [51 x i8] c"trace_event_fields_802154_drv_set_promiscuous_mode\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [55 x i8] c"trace_event_type_funcs_802154_drv_set_promiscuous_mode\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [42 x i8] c"print_fmt_802154_drv_set_promiscuous_mode\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [38 x i8] c"event_802154_drv_set_promiscuous_mode\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 36, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 53, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 78, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 95, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 111, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 126, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 141, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 156, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 171, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 186, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 201, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 216, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 237, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [27 x i8] c"../net/mac802154/./trace.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 252, i32 1 }
@llvm.compiler.used = appending global [181 x ptr] [ptr @__bpf_trace_tp_map_802154_drv_return_int, ptr @__bpf_trace_tp_map_802154_drv_return_void, ptr @__bpf_trace_tp_map_802154_drv_set_cca_ed_level, ptr @__bpf_trace_tp_map_802154_drv_set_cca_mode, ptr @__bpf_trace_tp_map_802154_drv_set_channel, ptr @__bpf_trace_tp_map_802154_drv_set_csma_params, ptr @__bpf_trace_tp_map_802154_drv_set_extended_addr, ptr @__bpf_trace_tp_map_802154_drv_set_lbt_mode, ptr @__bpf_trace_tp_map_802154_drv_set_max_frame_retries, ptr @__bpf_trace_tp_map_802154_drv_set_pan_coord, ptr @__bpf_trace_tp_map_802154_drv_set_pan_id, ptr @__bpf_trace_tp_map_802154_drv_set_promiscuous_mode, ptr @__bpf_trace_tp_map_802154_drv_set_short_addr, ptr @__bpf_trace_tp_map_802154_drv_set_tx_power, ptr @__bpf_trace_tp_map_802154_drv_start, ptr @__bpf_trace_tp_map_802154_drv_stop, ptr @__event_802154_drv_return_int, ptr @__event_802154_drv_return_void, ptr @__event_802154_drv_set_cca_ed_level, ptr @__event_802154_drv_set_cca_mode, ptr @__event_802154_drv_set_channel, ptr @__event_802154_drv_set_csma_params, ptr @__event_802154_drv_set_extended_addr, ptr @__event_802154_drv_set_lbt_mode, ptr @__event_802154_drv_set_max_frame_retries, ptr @__event_802154_drv_set_pan_coord, ptr @__event_802154_drv_set_pan_id, ptr @__event_802154_drv_set_promiscuous_mode, ptr @__event_802154_drv_set_short_addr, ptr @__event_802154_drv_set_tx_power, ptr @__event_802154_drv_start, ptr @__event_802154_drv_stop, ptr @__tracepoint_802154_drv_return_int, ptr @__tracepoint_802154_drv_return_void, ptr @__tracepoint_802154_drv_set_cca_ed_level, ptr @__tracepoint_802154_drv_set_cca_mode, ptr @__tracepoint_802154_drv_set_channel, ptr @__tracepoint_802154_drv_set_csma_params, ptr @__tracepoint_802154_drv_set_extended_addr, ptr @__tracepoint_802154_drv_set_lbt_mode, ptr @__tracepoint_802154_drv_set_max_frame_retries, ptr @__tracepoint_802154_drv_set_pan_coord, ptr @__tracepoint_802154_drv_set_pan_id, ptr @__tracepoint_802154_drv_set_promiscuous_mode, ptr @__tracepoint_802154_drv_set_short_addr, ptr @__tracepoint_802154_drv_set_tx_power, ptr @__tracepoint_802154_drv_start, ptr @__tracepoint_802154_drv_stop, ptr @__tracepoint_ptr_802154_drv_return_int, ptr @__tracepoint_ptr_802154_drv_return_void, ptr @__tracepoint_ptr_802154_drv_set_cca_ed_level, ptr @__tracepoint_ptr_802154_drv_set_cca_mode, ptr @__tracepoint_ptr_802154_drv_set_channel, ptr @__tracepoint_ptr_802154_drv_set_csma_params, ptr @__tracepoint_ptr_802154_drv_set_extended_addr, ptr @__tracepoint_ptr_802154_drv_set_lbt_mode, ptr @__tracepoint_ptr_802154_drv_set_max_frame_retries, ptr @__tracepoint_ptr_802154_drv_set_pan_coord, ptr @__tracepoint_ptr_802154_drv_set_pan_id, ptr @__tracepoint_ptr_802154_drv_set_promiscuous_mode, ptr @__tracepoint_ptr_802154_drv_set_short_addr, ptr @__tracepoint_ptr_802154_drv_set_tx_power, ptr @__tracepoint_ptr_802154_drv_start, ptr @__tracepoint_ptr_802154_drv_stop, ptr @event_802154_drv_return_int, ptr @event_802154_drv_return_void, ptr @event_802154_drv_set_cca_ed_level, ptr @event_802154_drv_set_cca_mode, ptr @event_802154_drv_set_channel, ptr @event_802154_drv_set_csma_params, ptr @event_802154_drv_set_extended_addr, ptr @event_802154_drv_set_lbt_mode, ptr @event_802154_drv_set_max_frame_retries, ptr @event_802154_drv_set_pan_coord, ptr @event_802154_drv_set_pan_id, ptr @event_802154_drv_set_promiscuous_mode, ptr @event_802154_drv_set_short_addr, ptr @event_802154_drv_set_tx_power, ptr @event_802154_drv_start, ptr @event_802154_drv_stop, ptr @event_class_802154_drv_return_int, ptr @event_class_802154_drv_set_cca_ed_level, ptr @event_class_802154_drv_set_cca_mode, ptr @event_class_802154_drv_set_channel, ptr @event_class_802154_drv_set_csma_params, ptr @event_class_802154_drv_set_extended_addr, ptr @event_class_802154_drv_set_lbt_mode, ptr @event_class_802154_drv_set_max_frame_retries, ptr @event_class_802154_drv_set_pan_coord, ptr @event_class_802154_drv_set_pan_id, ptr @event_class_802154_drv_set_promiscuous_mode, ptr @event_class_802154_drv_set_short_addr, ptr @event_class_802154_drv_set_tx_power, ptr @event_class_local_only_evt4, ptr @str__mac802154__trace_system_name, ptr @trace_event_fields_local_only_evt4, ptr @trace_event_type_funcs_local_only_evt4, ptr @print_fmt_local_only_evt4, ptr @trace_event_fields_802154_drv_return_int, ptr @trace_event_type_funcs_802154_drv_return_int, ptr @print_fmt_802154_drv_return_int, ptr @trace_event_fields_802154_drv_set_channel, ptr @trace_event_type_funcs_802154_drv_set_channel, ptr @print_fmt_802154_drv_set_channel, ptr @trace_event_fields_802154_drv_set_cca_mode, ptr @trace_event_type_funcs_802154_drv_set_cca_mode, ptr @print_fmt_802154_drv_set_cca_mode, ptr @trace_event_fields_802154_drv_set_cca_ed_level, ptr @trace_event_type_funcs_802154_drv_set_cca_ed_level, ptr @print_fmt_802154_drv_set_cca_ed_level, ptr @trace_event_fields_802154_drv_set_tx_power, ptr @trace_event_type_funcs_802154_drv_set_tx_power, ptr @print_fmt_802154_drv_set_tx_power, ptr @trace_event_fields_802154_drv_set_lbt_mode, ptr @trace_event_type_funcs_802154_drv_set_lbt_mode, ptr @print_fmt_802154_drv_set_lbt_mode, ptr @trace_event_fields_802154_drv_set_short_addr, ptr @trace_event_type_funcs_802154_drv_set_short_addr, ptr @print_fmt_802154_drv_set_short_addr, ptr @trace_event_fields_802154_drv_set_pan_id, ptr @trace_event_type_funcs_802154_drv_set_pan_id, ptr @print_fmt_802154_drv_set_pan_id, ptr @trace_event_fields_802154_drv_set_extended_addr, ptr @trace_event_type_funcs_802154_drv_set_extended_addr, ptr @print_fmt_802154_drv_set_extended_addr, ptr @trace_event_fields_802154_drv_set_pan_coord, ptr @trace_event_type_funcs_802154_drv_set_pan_coord, ptr @print_fmt_802154_drv_set_pan_coord, ptr @trace_event_fields_802154_drv_set_csma_params, ptr @trace_event_type_funcs_802154_drv_set_csma_params, ptr @print_fmt_802154_drv_set_csma_params, ptr @trace_event_fields_802154_drv_set_max_frame_retries, ptr @trace_event_type_funcs_802154_drv_set_max_frame_retries, ptr @print_fmt_802154_drv_set_max_frame_retries, ptr @trace_event_fields_802154_drv_set_promiscuous_mode, ptr @trace_event_type_funcs_802154_drv_set_promiscuous_mode, ptr @print_fmt_802154_drv_set_promiscuous_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mac802154__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_local_only_evt4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_local_only_evt4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_local_only_evt4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_return_void to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_return_int to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_return_int to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_return_int to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_return_int to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_stop to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_channel to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_channel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_channel to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_channel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_cca_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_cca_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_cca_mode to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_cca_mode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_cca_ed_level to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_cca_ed_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_cca_ed_level to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_cca_ed_level to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_tx_power to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_tx_power to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_tx_power to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_tx_power to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_lbt_mode to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_lbt_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_lbt_mode to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_lbt_mode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_short_addr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_short_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_short_addr to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_short_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_pan_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_pan_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_pan_id to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_pan_id to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_extended_addr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_extended_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_extended_addr to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_extended_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_pan_coord to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_pan_coord to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_pan_coord to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_pan_coord to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_csma_params to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_csma_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_csma_params to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_csma_params to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_max_frame_retries to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_max_frame_retries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_max_frame_retries to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_max_frame_retries to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_802154_drv_set_promiscuous_mode to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_802154_drv_set_promiscuous_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_802154_drv_set_promiscuous_mode to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_802154_drv_set_promiscuous_mode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_802154_drv_return_void(ptr nocapture readnone %__data, ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_return_void, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local) #7
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
define dso_local i32 @__traceiter_802154_drv_return_int(ptr nocapture readnone %__data, ptr noundef %local, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_return_int, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i32 noundef %ret) #7
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
define dso_local i32 @__traceiter_802154_drv_start(ptr nocapture readnone %__data, ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_start, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local) #7
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
define dso_local i32 @__traceiter_802154_drv_stop(ptr nocapture readnone %__data, ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_stop, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local) #7
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
define dso_local i32 @__traceiter_802154_drv_set_channel(ptr nocapture readnone %__data, ptr noundef %local, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_channel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i8 noundef zeroext %page, i8 noundef zeroext %channel) #7
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
define dso_local i32 @__traceiter_802154_drv_set_cca_mode(ptr nocapture readnone %__data, ptr noundef %local, ptr noundef %cca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_cca_mode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, ptr noundef %cca) #7
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
define dso_local i32 @__traceiter_802154_drv_set_cca_ed_level(ptr nocapture readnone %__data, ptr noundef %local, i32 noundef %mbm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_cca_ed_level, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i32 noundef %mbm) #7
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
define dso_local i32 @__traceiter_802154_drv_set_tx_power(ptr nocapture readnone %__data, ptr noundef %local, i32 noundef %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_tx_power, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i32 noundef %power) #7
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
define dso_local i32 @__traceiter_802154_drv_set_lbt_mode(ptr nocapture readnone %__data, ptr noundef %local, i1 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_lbt_mode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i1 noundef zeroext %mode) #7
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
define dso_local i32 @__traceiter_802154_drv_set_short_addr(ptr nocapture readnone %__data, ptr noundef %local, i16 noundef zeroext %short_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_short_addr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i16 noundef zeroext %short_addr) #7
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
define dso_local i32 @__traceiter_802154_drv_set_pan_id(ptr nocapture readnone %__data, ptr noundef %local, i16 noundef zeroext %pan_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_pan_id, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i16 noundef zeroext %pan_id) #7
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
define dso_local i32 @__traceiter_802154_drv_set_extended_addr(ptr nocapture readnone %__data, ptr noundef %local, i64 noundef %extended_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_extended_addr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i64 noundef %extended_addr) #7
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
define dso_local i32 @__traceiter_802154_drv_set_pan_coord(ptr nocapture readnone %__data, ptr noundef %local, i1 noundef zeroext %is_coord) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_pan_coord, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i1 noundef zeroext %is_coord) #7
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
define dso_local i32 @__traceiter_802154_drv_set_csma_params(ptr nocapture readnone %__data, ptr noundef %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_csma_params, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) #7
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
define dso_local i32 @__traceiter_802154_drv_set_max_frame_retries(ptr nocapture readnone %__data, ptr noundef %local, i8 noundef signext %max_frame_retries) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_max_frame_retries, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i8 noundef signext %max_frame_retries) #7
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
define dso_local i32 @__traceiter_802154_drv_set_promiscuous_mode(ptr nocapture readnone %__data, ptr noundef %local, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_802154_drv_set_promiscuous_mode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %local, i1 noundef zeroext %on) #7
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
define internal void @trace_event_raw_event_local_only_evt4(ptr noundef %__data, ptr nocapture noundef readonly %local) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_local_only_evt4, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_local_only_evt4(ptr noundef %__data, ptr nocapture noundef readonly %local) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_local_only_evt4, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_return_int(ptr noundef %__data, ptr nocapture noundef readonly %local, i32 noundef %ret) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_return_int, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %ret8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_return_int, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %ret8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ret, ptr %ret8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_return_int(ptr noundef %__data, ptr nocapture noundef readonly %local, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_return_int, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %ret19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_return_int, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %ret19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ret, ptr %ret19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_channel(ptr noundef %__data, ptr nocapture noundef readonly %local, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %page8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %page8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %page, ptr %page8, align 4
  %channel9 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %channel9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %channel, ptr %channel9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_channel(ptr noundef %__data, ptr nocapture noundef readonly %local, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %page19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %page19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %page, ptr %page19, align 4
  %channel20 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %channel20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %channel, ptr %channel20, align 1
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_cca_mode(ptr noundef %__data, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %cca) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %9 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cca, align 4
  %cca_mode = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %cca_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cca_mode, align 4
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opt, align 4
  %cca_opt = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %cca_opt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cca_opt, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_cca_mode(ptr noundef %__data, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %cca) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %33 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cca, align 4
  %cca_mode = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %cca_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cca_mode, align 4
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %36 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %opt, align 4
  %cca_opt = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %cca_opt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cca_opt, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_cca_ed_level(ptr noundef %__data, ptr nocapture noundef readonly %local, i32 noundef %mbm) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_ed_level, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %mbm8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_ed_level, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %mbm8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mbm, ptr %mbm8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_cca_ed_level(ptr noundef %__data, ptr nocapture noundef readonly %local, i32 noundef %mbm) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_ed_level, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %mbm19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_ed_level, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %mbm19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mbm, ptr %mbm19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_tx_power(ptr noundef %__data, ptr nocapture noundef readonly %local, i32 noundef %power) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_tx_power, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %power8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_tx_power, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %power8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %power, ptr %power8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_tx_power(ptr noundef %__data, ptr nocapture noundef readonly %local, i32 noundef %power) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_tx_power, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %power19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_tx_power, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %power19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %power, ptr %power19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_lbt_mode(ptr noundef %__data, ptr nocapture noundef readonly %local, i1 noundef zeroext %mode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %mode to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_lbt_mode, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wpan_phy_name.exit_crit_edge

if.end6.wpan_phy_name.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end6.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end6.wpan_phy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %mode10 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_lbt_mode, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %mode10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %mode10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_lbt_mode(ptr noundef %__data, ptr nocapture noundef readonly %local, i1 noundef zeroext %mode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %mode to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_lbt_mode, ptr %call14, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wpan_phy_name.exit_crit_edge

if.end17.wpan_phy_name.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end17.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end17.wpan_phy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %mode21 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_lbt_mode, ptr %call14, i32 0, i32 2
  %33 = ptrtoint ptr %mode21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %mode21, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_short_addr(ptr noundef %__data, ptr nocapture noundef readonly %local, i16 noundef zeroext %short_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_short_addr, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %short_addr8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_short_addr, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %short_addr8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %short_addr, ptr %short_addr8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_short_addr(ptr noundef %__data, ptr nocapture noundef readonly %local, i16 noundef zeroext %short_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_short_addr, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %short_addr19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_short_addr, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %short_addr19 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %short_addr, ptr %short_addr19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_pan_id(ptr noundef %__data, ptr nocapture noundef readonly %local, i16 noundef zeroext %pan_id) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_id, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %pan_id8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_id, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %pan_id8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %pan_id, ptr %pan_id8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_pan_id(ptr noundef %__data, ptr nocapture noundef readonly %local, i16 noundef zeroext %pan_id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_id, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %pan_id19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_id, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %pan_id19 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %pan_id, ptr %pan_id19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_extended_addr(ptr noundef %__data, ptr nocapture noundef readonly %local, i64 noundef %extended_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_extended_addr, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %extended_addr8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_extended_addr, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %extended_addr8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %extended_addr, ptr %extended_addr8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_extended_addr(ptr noundef %__data, ptr nocapture noundef readonly %local, i64 noundef %extended_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_extended_addr, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %extended_addr19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_extended_addr, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %extended_addr19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %extended_addr, ptr %extended_addr19, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_pan_coord(ptr noundef %__data, ptr nocapture noundef readonly %local, i1 noundef zeroext %is_coord) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %is_coord to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_coord, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wpan_phy_name.exit_crit_edge

if.end6.wpan_phy_name.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end6.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end6.wpan_phy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %is_coord10 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_coord, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %is_coord10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %is_coord10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_pan_coord(ptr noundef %__data, ptr nocapture noundef readonly %local, i1 noundef zeroext %is_coord) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %is_coord to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_coord, ptr %call14, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wpan_phy_name.exit_crit_edge

if.end17.wpan_phy_name.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end17.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end17.wpan_phy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %is_coord21 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_coord, ptr %call14, i32 0, i32 2
  %33 = ptrtoint ptr %is_coord21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %is_coord21, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_csma_params(ptr noundef %__data, ptr nocapture noundef readonly %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %min_be8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %min_be8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %min_be, ptr %min_be8, align 4
  %max_be9 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %max_be9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %max_be, ptr %max_be9, align 1
  %max_csma_backoffs10 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %max_csma_backoffs10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %max_csma_backoffs, ptr %max_csma_backoffs10, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_csma_params(ptr noundef %__data, ptr nocapture noundef readonly %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %min_be19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %min_be19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %min_be, ptr %min_be19, align 4
  %max_be20 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %max_be20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %max_be, ptr %max_be20, align 1
  %max_csma_backoffs21 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %max_csma_backoffs21 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %max_csma_backoffs, ptr %max_csma_backoffs21, align 2
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_max_frame_retries(ptr noundef %__data, ptr nocapture noundef readonly %local, i8 noundef signext %max_frame_retries) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_max_frame_retries, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wpan_phy_name.exit_crit_edge

if.end5.wpan_phy_name.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end5.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.wpan_phy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %max_frame_retries8 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_max_frame_retries, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %max_frame_retries8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %max_frame_retries, ptr %max_frame_retries8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_max_frame_retries(ptr noundef %__data, ptr nocapture noundef readonly %local, i8 noundef signext %max_frame_retries) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_max_frame_retries, ptr %call13, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wpan_phy_name.exit_crit_edge

if.end16.wpan_phy_name.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end16.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end16.wpan_phy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %max_frame_retries19 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_max_frame_retries, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %max_frame_retries19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %max_frame_retries, ptr %max_frame_retries19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_802154_drv_set_promiscuous_mode(ptr noundef %__data, ptr nocapture noundef readonly %local, i1 noundef zeroext %on) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %on to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !241

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !242

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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_promiscuous_mode, ptr %call3, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.wpan_phy_name.exit_crit_edge

if.end6.wpan_phy_name.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end6.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end6.wpan_phy_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %on10 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_promiscuous_mode, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %on10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %on10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_802154_drv_set_promiscuous_mode(ptr noundef %__data, ptr nocapture noundef readonly %local, i1 noundef zeroext %on) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %on to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !243
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !231) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !231) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_promiscuous_mode, ptr %call14, i32 0, i32 1
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.wpan_phy_name.exit_crit_edge

if.end17.wpan_phy_name.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end17.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.end17.wpan_phy_name.exit_crit_edge ]
  %call19 = call i32 @strlcpy(ptr noundef %wpan_phy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #7
  %on21 = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_promiscuous_mode, ptr %call14, i32 0, i32 2
  %33 = ptrtoint ptr %on21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %on21, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wpan_phy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_local_only_evt4(ptr noundef %__data, ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_return_int(ptr noundef %__data, ptr noundef %local, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_channel(ptr noundef %__data, ptr noundef %local, i8 noundef zeroext %page, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %page to i64
  %conv8 = zext i8 %channel to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_cca_mode(ptr noundef %__data, ptr noundef %local, ptr noundef %cca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %cca to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_cca_ed_level(ptr noundef %__data, ptr noundef %local, i32 noundef %mbm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %mbm to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_tx_power(ptr noundef %__data, ptr noundef %local, i32 noundef %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %power to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_lbt_mode(ptr noundef %__data, ptr noundef %local, i1 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %mode to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_short_addr(ptr noundef %__data, ptr noundef %local, i16 noundef zeroext %short_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %short_addr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_pan_id(ptr noundef %__data, ptr noundef %local, i16 noundef zeroext %pan_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %pan_id to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_extended_addr(ptr noundef %__data, ptr noundef %local, i64 noundef %extended_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %extended_addr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_pan_coord(ptr noundef %__data, ptr noundef %local, i1 noundef zeroext %is_coord) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %is_coord to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_csma_params(ptr noundef %__data, ptr noundef %local, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %max_csma_backoffs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %min_be to i64
  %conv8 = zext i8 %max_be to i64
  %conv12 = zext i8 %max_csma_backoffs to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_max_frame_retries(ptr noundef %__data, ptr noundef %local, i8 noundef signext %max_frame_retries) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %max_frame_retries to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_802154_drv_set_promiscuous_mode(ptr noundef %__data, ptr noundef %local, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %local to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %on to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #7
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
define internal i32 @trace_raw_output_local_only_evt4(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_local_only_evt4, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %wpan_phy_name) #7
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
define internal i32 @trace_raw_output_802154_drv_return_int(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_return_int, ptr %1, i32 0, i32 1
  %ret1 = getelementptr inbounds %struct.trace_event_raw_802154_drv_return_int, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, ptr noundef %wpan_phy_name, i32 noundef %3) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_channel(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %1, i32 0, i32 1
  %page = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page, align 4
  %conv = zext i8 %3 to i32
  %channel = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel, align 1
  %conv1 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %wpan_phy_name, i32 noundef %conv, i32 noundef %conv1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_cca_mode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %1, i32 0, i32 1
  %cca_mode = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cca_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cca_mode, align 4
  %cca_opt = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_mode, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cca_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cca_opt, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %wpan_phy_name, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_cca_ed_level(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_ed_level, ptr %1, i32 0, i32 1
  %mbm = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_cca_ed_level, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mbm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbm, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %wpan_phy_name, i32 noundef %3) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_tx_power(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_tx_power, ptr %1, i32 0, i32 1
  %power = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_tx_power, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, ptr noundef %wpan_phy_name, i32 noundef %3) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_lbt_mode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_lbt_mode, ptr %1, i32 0, i32 1
  %mode = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_lbt_mode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %wpan_phy_name, ptr noundef nonnull %cond) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_short_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_short_addr, ptr %1, i32 0, i32 1
  %short_addr = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_short_addr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %short_addr, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, ptr noundef %wpan_phy_name, i32 noundef %conv) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_pan_id(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_id, ptr %1, i32 0, i32 1
  %pan_id = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_id, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pan_id, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, ptr noundef %wpan_phy_name, i32 noundef %conv) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_extended_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_extended_addr, ptr %1, i32 0, i32 1
  %extended_addr = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_extended_addr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %extended_addr, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.32, ptr noundef %wpan_phy_name, i64 noundef %4) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_pan_coord(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_coord, ptr %1, i32 0, i32 1
  %is_coord = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_pan_coord, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %is_coord to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_coord, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.34, ptr noundef %wpan_phy_name, ptr noundef nonnull %cond) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_csma_params(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %1, i32 0, i32 1
  %min_be = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %min_be to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %min_be, align 4
  %conv = zext i8 %3 to i32
  %max_be = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %max_be to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_be, align 1
  %conv1 = zext i8 %5 to i32
  %max_csma_backoffs = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_csma_params, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %max_csma_backoffs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_csma_backoffs, align 2
  %conv2 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %wpan_phy_name, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_max_frame_retries(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_max_frame_retries, ptr %1, i32 0, i32 1
  %max_frame_retries = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_max_frame_retries, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_frame_retries, align 4
  %conv = sext i8 %3 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.41, ptr noundef %wpan_phy_name, i32 noundef %conv) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_802154_drv_set_promiscuous_mode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %wpan_phy_name = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_promiscuous_mode, ptr %1, i32 0, i32 1
  %on = getelementptr inbounds %struct.trace_event_raw_802154_drv_set_promiscuous_mode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %on, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, ptr noundef %wpan_phy_name, ptr noundef nonnull %cond) #7
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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!llvm.named.register.sp = !{!231}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @__tracepoint_802154_drv_return_void, !1, !"__tracepoint_802154_drv_return_void", i1 false, i1 false}
!1 = !{!"../net/mac802154/./trace.h", i32 48, i32 1}
!2 = !{ptr @__tracepoint_ptr_802154_drv_return_void, !1, !"__tracepoint_ptr_802154_drv_return_void", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_802154_drv_return_void, !1, !"__SCK__tp_func_802154_drv_return_void", i1 false, i1 false}
!4 = !{ptr @__tracepoint_802154_drv_return_int, !5, !"__tracepoint_802154_drv_return_int", i1 false, i1 false}
!5 = !{!"../net/mac802154/./trace.h", i32 53, i32 1}
!6 = !{ptr @__tracepoint_ptr_802154_drv_return_int, !5, !"__tracepoint_ptr_802154_drv_return_int", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_802154_drv_return_int, !5, !"__SCK__tp_func_802154_drv_return_int", i1 false, i1 false}
!8 = !{ptr @__tracepoint_802154_drv_start, !9, !"__tracepoint_802154_drv_start", i1 false, i1 false}
!9 = !{!"../net/mac802154/./trace.h", i32 68, i32 1}
!10 = !{ptr @__tracepoint_ptr_802154_drv_start, !9, !"__tracepoint_ptr_802154_drv_start", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_802154_drv_start, !9, !"__SCK__tp_func_802154_drv_start", i1 false, i1 false}
!12 = !{ptr @__tracepoint_802154_drv_stop, !13, !"__tracepoint_802154_drv_stop", i1 false, i1 false}
!13 = !{!"../net/mac802154/./trace.h", i32 73, i32 1}
!14 = !{ptr @__tracepoint_ptr_802154_drv_stop, !13, !"__tracepoint_ptr_802154_drv_stop", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_802154_drv_stop, !13, !"__SCK__tp_func_802154_drv_stop", i1 false, i1 false}
!16 = !{ptr @__tracepoint_802154_drv_set_channel, !17, !"__tracepoint_802154_drv_set_channel", i1 false, i1 false}
!17 = !{!"../net/mac802154/./trace.h", i32 78, i32 1}
!18 = !{ptr @__tracepoint_ptr_802154_drv_set_channel, !17, !"__tracepoint_ptr_802154_drv_set_channel", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_802154_drv_set_channel, !17, !"__SCK__tp_func_802154_drv_set_channel", i1 false, i1 false}
!20 = !{ptr @__tracepoint_802154_drv_set_cca_mode, !21, !"__tracepoint_802154_drv_set_cca_mode", i1 false, i1 false}
!21 = !{!"../net/mac802154/./trace.h", i32 95, i32 1}
!22 = !{ptr @__tracepoint_ptr_802154_drv_set_cca_mode, !21, !"__tracepoint_ptr_802154_drv_set_cca_mode", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_802154_drv_set_cca_mode, !21, !"__SCK__tp_func_802154_drv_set_cca_mode", i1 false, i1 false}
!24 = !{ptr @__tracepoint_802154_drv_set_cca_ed_level, !25, !"__tracepoint_802154_drv_set_cca_ed_level", i1 false, i1 false}
!25 = !{!"../net/mac802154/./trace.h", i32 111, i32 1}
!26 = !{ptr @__tracepoint_ptr_802154_drv_set_cca_ed_level, !25, !"__tracepoint_ptr_802154_drv_set_cca_ed_level", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_802154_drv_set_cca_ed_level, !25, !"__SCK__tp_func_802154_drv_set_cca_ed_level", i1 false, i1 false}
!28 = !{ptr @__tracepoint_802154_drv_set_tx_power, !29, !"__tracepoint_802154_drv_set_tx_power", i1 false, i1 false}
!29 = !{!"../net/mac802154/./trace.h", i32 126, i32 1}
!30 = !{ptr @__tracepoint_ptr_802154_drv_set_tx_power, !29, !"__tracepoint_ptr_802154_drv_set_tx_power", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_802154_drv_set_tx_power, !29, !"__SCK__tp_func_802154_drv_set_tx_power", i1 false, i1 false}
!32 = !{ptr @__tracepoint_802154_drv_set_lbt_mode, !33, !"__tracepoint_802154_drv_set_lbt_mode", i1 false, i1 false}
!33 = !{!"../net/mac802154/./trace.h", i32 141, i32 1}
!34 = !{ptr @__tracepoint_ptr_802154_drv_set_lbt_mode, !33, !"__tracepoint_ptr_802154_drv_set_lbt_mode", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_802154_drv_set_lbt_mode, !33, !"__SCK__tp_func_802154_drv_set_lbt_mode", i1 false, i1 false}
!36 = !{ptr @__tracepoint_802154_drv_set_short_addr, !37, !"__tracepoint_802154_drv_set_short_addr", i1 false, i1 false}
!37 = !{!"../net/mac802154/./trace.h", i32 156, i32 1}
!38 = !{ptr @__tracepoint_ptr_802154_drv_set_short_addr, !37, !"__tracepoint_ptr_802154_drv_set_short_addr", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_802154_drv_set_short_addr, !37, !"__SCK__tp_func_802154_drv_set_short_addr", i1 false, i1 false}
!40 = !{ptr @__tracepoint_802154_drv_set_pan_id, !41, !"__tracepoint_802154_drv_set_pan_id", i1 false, i1 false}
!41 = !{!"../net/mac802154/./trace.h", i32 171, i32 1}
!42 = !{ptr @__tracepoint_ptr_802154_drv_set_pan_id, !41, !"__tracepoint_ptr_802154_drv_set_pan_id", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_802154_drv_set_pan_id, !41, !"__SCK__tp_func_802154_drv_set_pan_id", i1 false, i1 false}
!44 = !{ptr @__tracepoint_802154_drv_set_extended_addr, !45, !"__tracepoint_802154_drv_set_extended_addr", i1 false, i1 false}
!45 = !{!"../net/mac802154/./trace.h", i32 186, i32 1}
!46 = !{ptr @__tracepoint_ptr_802154_drv_set_extended_addr, !45, !"__tracepoint_ptr_802154_drv_set_extended_addr", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_802154_drv_set_extended_addr, !45, !"__SCK__tp_func_802154_drv_set_extended_addr", i1 false, i1 false}
!48 = !{ptr @__tracepoint_802154_drv_set_pan_coord, !49, !"__tracepoint_802154_drv_set_pan_coord", i1 false, i1 false}
!49 = !{!"../net/mac802154/./trace.h", i32 201, i32 1}
!50 = !{ptr @__tracepoint_ptr_802154_drv_set_pan_coord, !49, !"__tracepoint_ptr_802154_drv_set_pan_coord", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_802154_drv_set_pan_coord, !49, !"__SCK__tp_func_802154_drv_set_pan_coord", i1 false, i1 false}
!52 = !{ptr @__tracepoint_802154_drv_set_csma_params, !53, !"__tracepoint_802154_drv_set_csma_params", i1 false, i1 false}
!53 = !{!"../net/mac802154/./trace.h", i32 216, i32 1}
!54 = !{ptr @__tracepoint_ptr_802154_drv_set_csma_params, !53, !"__tracepoint_ptr_802154_drv_set_csma_params", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_802154_drv_set_csma_params, !53, !"__SCK__tp_func_802154_drv_set_csma_params", i1 false, i1 false}
!56 = !{ptr @__tracepoint_802154_drv_set_max_frame_retries, !57, !"__tracepoint_802154_drv_set_max_frame_retries", i1 false, i1 false}
!57 = !{!"../net/mac802154/./trace.h", i32 237, i32 1}
!58 = !{ptr @__tracepoint_ptr_802154_drv_set_max_frame_retries, !57, !"__tracepoint_ptr_802154_drv_set_max_frame_retries", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_802154_drv_set_max_frame_retries, !57, !"__SCK__tp_func_802154_drv_set_max_frame_retries", i1 false, i1 false}
!60 = !{ptr @__tracepoint_802154_drv_set_promiscuous_mode, !61, !"__tracepoint_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!61 = !{!"../net/mac802154/./trace.h", i32 252, i32 1}
!62 = !{ptr @__tracepoint_ptr_802154_drv_set_promiscuous_mode, !61, !"__tracepoint_ptr_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_802154_drv_set_promiscuous_mode, !61, !"__SCK__tp_func_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!64 = !{ptr @event_class_local_only_evt4, !65, !"event_class_local_only_evt4", i1 false, i1 false}
!65 = !{!"../net/mac802154/./trace.h", i32 36, i32 1}
!66 = !{ptr @event_802154_drv_return_void, !1, !"event_802154_drv_return_void", i1 false, i1 false}
!67 = !{ptr @__event_802154_drv_return_void, !1, !"__event_802154_drv_return_void", i1 false, i1 false}
!68 = !{ptr @event_class_802154_drv_return_int, !5, !"event_class_802154_drv_return_int", i1 false, i1 false}
!69 = !{ptr @event_802154_drv_return_int, !5, !"event_802154_drv_return_int", i1 false, i1 false}
!70 = !{ptr @__event_802154_drv_return_int, !5, !"__event_802154_drv_return_int", i1 false, i1 false}
!71 = !{ptr @event_802154_drv_start, !9, !"event_802154_drv_start", i1 false, i1 false}
!72 = !{ptr @__event_802154_drv_start, !9, !"__event_802154_drv_start", i1 false, i1 false}
!73 = !{ptr @event_802154_drv_stop, !13, !"event_802154_drv_stop", i1 false, i1 false}
!74 = !{ptr @__event_802154_drv_stop, !13, !"__event_802154_drv_stop", i1 false, i1 false}
!75 = !{ptr @event_class_802154_drv_set_channel, !17, !"event_class_802154_drv_set_channel", i1 false, i1 false}
!76 = !{ptr @event_802154_drv_set_channel, !17, !"event_802154_drv_set_channel", i1 false, i1 false}
!77 = !{ptr @__event_802154_drv_set_channel, !17, !"__event_802154_drv_set_channel", i1 false, i1 false}
!78 = !{ptr @event_class_802154_drv_set_cca_mode, !21, !"event_class_802154_drv_set_cca_mode", i1 false, i1 false}
!79 = !{ptr @event_802154_drv_set_cca_mode, !21, !"event_802154_drv_set_cca_mode", i1 false, i1 false}
!80 = !{ptr @__event_802154_drv_set_cca_mode, !21, !"__event_802154_drv_set_cca_mode", i1 false, i1 false}
!81 = !{ptr @event_class_802154_drv_set_cca_ed_level, !25, !"event_class_802154_drv_set_cca_ed_level", i1 false, i1 false}
!82 = !{ptr @event_802154_drv_set_cca_ed_level, !25, !"event_802154_drv_set_cca_ed_level", i1 false, i1 false}
!83 = !{ptr @__event_802154_drv_set_cca_ed_level, !25, !"__event_802154_drv_set_cca_ed_level", i1 false, i1 false}
!84 = !{ptr @event_class_802154_drv_set_tx_power, !29, !"event_class_802154_drv_set_tx_power", i1 false, i1 false}
!85 = !{ptr @event_802154_drv_set_tx_power, !29, !"event_802154_drv_set_tx_power", i1 false, i1 false}
!86 = !{ptr @__event_802154_drv_set_tx_power, !29, !"__event_802154_drv_set_tx_power", i1 false, i1 false}
!87 = !{ptr @event_class_802154_drv_set_lbt_mode, !33, !"event_class_802154_drv_set_lbt_mode", i1 false, i1 false}
!88 = !{ptr @event_802154_drv_set_lbt_mode, !33, !"event_802154_drv_set_lbt_mode", i1 false, i1 false}
!89 = !{ptr @__event_802154_drv_set_lbt_mode, !33, !"__event_802154_drv_set_lbt_mode", i1 false, i1 false}
!90 = !{ptr @event_class_802154_drv_set_short_addr, !37, !"event_class_802154_drv_set_short_addr", i1 false, i1 false}
!91 = !{ptr @event_802154_drv_set_short_addr, !37, !"event_802154_drv_set_short_addr", i1 false, i1 false}
!92 = !{ptr @__event_802154_drv_set_short_addr, !37, !"__event_802154_drv_set_short_addr", i1 false, i1 false}
!93 = !{ptr @event_class_802154_drv_set_pan_id, !41, !"event_class_802154_drv_set_pan_id", i1 false, i1 false}
!94 = !{ptr @event_802154_drv_set_pan_id, !41, !"event_802154_drv_set_pan_id", i1 false, i1 false}
!95 = !{ptr @__event_802154_drv_set_pan_id, !41, !"__event_802154_drv_set_pan_id", i1 false, i1 false}
!96 = !{ptr @event_class_802154_drv_set_extended_addr, !45, !"event_class_802154_drv_set_extended_addr", i1 false, i1 false}
!97 = !{ptr @event_802154_drv_set_extended_addr, !45, !"event_802154_drv_set_extended_addr", i1 false, i1 false}
!98 = !{ptr @__event_802154_drv_set_extended_addr, !45, !"__event_802154_drv_set_extended_addr", i1 false, i1 false}
!99 = !{ptr @event_class_802154_drv_set_pan_coord, !49, !"event_class_802154_drv_set_pan_coord", i1 false, i1 false}
!100 = !{ptr @event_802154_drv_set_pan_coord, !49, !"event_802154_drv_set_pan_coord", i1 false, i1 false}
!101 = !{ptr @__event_802154_drv_set_pan_coord, !49, !"__event_802154_drv_set_pan_coord", i1 false, i1 false}
!102 = !{ptr @event_class_802154_drv_set_csma_params, !53, !"event_class_802154_drv_set_csma_params", i1 false, i1 false}
!103 = !{ptr @event_802154_drv_set_csma_params, !53, !"event_802154_drv_set_csma_params", i1 false, i1 false}
!104 = !{ptr @__event_802154_drv_set_csma_params, !53, !"__event_802154_drv_set_csma_params", i1 false, i1 false}
!105 = !{ptr @event_class_802154_drv_set_max_frame_retries, !57, !"event_class_802154_drv_set_max_frame_retries", i1 false, i1 false}
!106 = !{ptr @event_802154_drv_set_max_frame_retries, !57, !"event_802154_drv_set_max_frame_retries", i1 false, i1 false}
!107 = !{ptr @__event_802154_drv_set_max_frame_retries, !57, !"__event_802154_drv_set_max_frame_retries", i1 false, i1 false}
!108 = !{ptr @event_class_802154_drv_set_promiscuous_mode, !61, !"event_class_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!109 = !{ptr @event_802154_drv_set_promiscuous_mode, !61, !"event_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!110 = !{ptr @__event_802154_drv_set_promiscuous_mode, !61, !"__event_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!111 = !{ptr @__bpf_trace_tp_map_802154_drv_return_void, !1, !"__bpf_trace_tp_map_802154_drv_return_void", i1 false, i1 false}
!112 = !{ptr @__bpf_trace_tp_map_802154_drv_return_int, !5, !"__bpf_trace_tp_map_802154_drv_return_int", i1 false, i1 false}
!113 = !{ptr @__bpf_trace_tp_map_802154_drv_start, !9, !"__bpf_trace_tp_map_802154_drv_start", i1 false, i1 false}
!114 = !{ptr @__bpf_trace_tp_map_802154_drv_stop, !13, !"__bpf_trace_tp_map_802154_drv_stop", i1 false, i1 false}
!115 = !{ptr @__bpf_trace_tp_map_802154_drv_set_channel, !17, !"__bpf_trace_tp_map_802154_drv_set_channel", i1 false, i1 false}
!116 = !{ptr @__bpf_trace_tp_map_802154_drv_set_cca_mode, !21, !"__bpf_trace_tp_map_802154_drv_set_cca_mode", i1 false, i1 false}
!117 = !{ptr @__bpf_trace_tp_map_802154_drv_set_cca_ed_level, !25, !"__bpf_trace_tp_map_802154_drv_set_cca_ed_level", i1 false, i1 false}
!118 = !{ptr @__bpf_trace_tp_map_802154_drv_set_tx_power, !29, !"__bpf_trace_tp_map_802154_drv_set_tx_power", i1 false, i1 false}
!119 = !{ptr @__bpf_trace_tp_map_802154_drv_set_lbt_mode, !33, !"__bpf_trace_tp_map_802154_drv_set_lbt_mode", i1 false, i1 false}
!120 = !{ptr @__bpf_trace_tp_map_802154_drv_set_short_addr, !37, !"__bpf_trace_tp_map_802154_drv_set_short_addr", i1 false, i1 false}
!121 = !{ptr @__bpf_trace_tp_map_802154_drv_set_pan_id, !41, !"__bpf_trace_tp_map_802154_drv_set_pan_id", i1 false, i1 false}
!122 = !{ptr @__bpf_trace_tp_map_802154_drv_set_extended_addr, !45, !"__bpf_trace_tp_map_802154_drv_set_extended_addr", i1 false, i1 false}
!123 = !{ptr @__bpf_trace_tp_map_802154_drv_set_pan_coord, !49, !"__bpf_trace_tp_map_802154_drv_set_pan_coord", i1 false, i1 false}
!124 = !{ptr @__bpf_trace_tp_map_802154_drv_set_csma_params, !53, !"__bpf_trace_tp_map_802154_drv_set_csma_params", i1 false, i1 false}
!125 = !{ptr @__bpf_trace_tp_map_802154_drv_set_max_frame_retries, !57, !"__bpf_trace_tp_map_802154_drv_set_max_frame_retries", i1 false, i1 false}
!126 = !{ptr @__bpf_trace_tp_map_802154_drv_set_promiscuous_mode, !61, !"__bpf_trace_tp_map_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!127 = !{ptr @__tpstrtab_802154_drv_return_void, !1, !"__tpstrtab_802154_drv_return_void", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_802154_drv_return_int, !5, !"__tpstrtab_802154_drv_return_int", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_802154_drv_start, !9, !"__tpstrtab_802154_drv_start", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_802154_drv_stop, !13, !"__tpstrtab_802154_drv_stop", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_802154_drv_set_channel, !17, !"__tpstrtab_802154_drv_set_channel", i1 false, i1 false}
!132 = !{ptr @__tpstrtab_802154_drv_set_cca_mode, !21, !"__tpstrtab_802154_drv_set_cca_mode", i1 false, i1 false}
!133 = !{ptr @__tpstrtab_802154_drv_set_cca_ed_level, !25, !"__tpstrtab_802154_drv_set_cca_ed_level", i1 false, i1 false}
!134 = !{ptr @__tpstrtab_802154_drv_set_tx_power, !29, !"__tpstrtab_802154_drv_set_tx_power", i1 false, i1 false}
!135 = !{ptr @__tpstrtab_802154_drv_set_lbt_mode, !33, !"__tpstrtab_802154_drv_set_lbt_mode", i1 false, i1 false}
!136 = !{ptr @__tpstrtab_802154_drv_set_short_addr, !37, !"__tpstrtab_802154_drv_set_short_addr", i1 false, i1 false}
!137 = !{ptr @__tpstrtab_802154_drv_set_pan_id, !41, !"__tpstrtab_802154_drv_set_pan_id", i1 false, i1 false}
!138 = !{ptr @__tpstrtab_802154_drv_set_extended_addr, !45, !"__tpstrtab_802154_drv_set_extended_addr", i1 false, i1 false}
!139 = !{ptr @__tpstrtab_802154_drv_set_pan_coord, !49, !"__tpstrtab_802154_drv_set_pan_coord", i1 false, i1 false}
!140 = !{ptr @__tpstrtab_802154_drv_set_csma_params, !53, !"__tpstrtab_802154_drv_set_csma_params", i1 false, i1 false}
!141 = !{ptr @__tpstrtab_802154_drv_set_max_frame_retries, !57, !"__tpstrtab_802154_drv_set_max_frame_retries", i1 false, i1 false}
!142 = !{ptr @__tpstrtab_802154_drv_set_promiscuous_mode, !61, !"__tpstrtab_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!143 = !{ptr @str__mac802154__trace_system_name, !144, !"str__mac802154__trace_system_name", i1 false, i1 false}
!144 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!145 = !{ptr @.str, !65, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.1, !65, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @trace_event_fields_local_only_evt4, !65, !"trace_event_fields_local_only_evt4", i1 false, i1 false}
!148 = !{ptr @trace_event_type_funcs_local_only_evt4, !65, !"trace_event_type_funcs_local_only_evt4", i1 false, i1 false}
!149 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @print_fmt_local_only_evt4, !65, !"print_fmt_local_only_evt4", i1 false, i1 false}
!151 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @trace_event_fields_802154_drv_return_int, !5, !"trace_event_fields_802154_drv_return_int", i1 false, i1 false}
!154 = !{ptr @trace_event_type_funcs_802154_drv_return_int, !5, !"trace_event_type_funcs_802154_drv_return_int", i1 false, i1 false}
!155 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @print_fmt_802154_drv_return_int, !5, !"print_fmt_802154_drv_return_int", i1 false, i1 false}
!157 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @trace_event_fields_802154_drv_set_channel, !17, !"trace_event_fields_802154_drv_set_channel", i1 false, i1 false}
!161 = !{ptr @trace_event_type_funcs_802154_drv_set_channel, !17, !"trace_event_type_funcs_802154_drv_set_channel", i1 false, i1 false}
!162 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @print_fmt_802154_drv_set_channel, !17, !"print_fmt_802154_drv_set_channel", i1 false, i1 false}
!164 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @trace_event_fields_802154_drv_set_cca_mode, !21, !"trace_event_fields_802154_drv_set_cca_mode", i1 false, i1 false}
!169 = !{ptr @trace_event_type_funcs_802154_drv_set_cca_mode, !21, !"trace_event_type_funcs_802154_drv_set_cca_mode", i1 false, i1 false}
!170 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @print_fmt_802154_drv_set_cca_mode, !21, !"print_fmt_802154_drv_set_cca_mode", i1 false, i1 false}
!172 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @trace_event_fields_802154_drv_set_cca_ed_level, !25, !"trace_event_fields_802154_drv_set_cca_ed_level", i1 false, i1 false}
!175 = !{ptr @trace_event_type_funcs_802154_drv_set_cca_ed_level, !25, !"trace_event_type_funcs_802154_drv_set_cca_ed_level", i1 false, i1 false}
!176 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @print_fmt_802154_drv_set_cca_ed_level, !25, !"print_fmt_802154_drv_set_cca_ed_level", i1 false, i1 false}
!178 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @trace_event_fields_802154_drv_set_tx_power, !29, !"trace_event_fields_802154_drv_set_tx_power", i1 false, i1 false}
!180 = !{ptr @trace_event_type_funcs_802154_drv_set_tx_power, !29, !"trace_event_type_funcs_802154_drv_set_tx_power", i1 false, i1 false}
!181 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @print_fmt_802154_drv_set_tx_power, !29, !"print_fmt_802154_drv_set_tx_power", i1 false, i1 false}
!183 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @trace_event_fields_802154_drv_set_lbt_mode, !33, !"trace_event_fields_802154_drv_set_lbt_mode", i1 false, i1 false}
!186 = !{ptr @trace_event_type_funcs_802154_drv_set_lbt_mode, !33, !"trace_event_type_funcs_802154_drv_set_lbt_mode", i1 false, i1 false}
!187 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @print_fmt_802154_drv_set_lbt_mode, !33, !"print_fmt_802154_drv_set_lbt_mode", i1 false, i1 false}
!191 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @trace_event_fields_802154_drv_set_short_addr, !37, !"trace_event_fields_802154_drv_set_short_addr", i1 false, i1 false}
!194 = !{ptr @trace_event_type_funcs_802154_drv_set_short_addr, !37, !"trace_event_type_funcs_802154_drv_set_short_addr", i1 false, i1 false}
!195 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @print_fmt_802154_drv_set_short_addr, !37, !"print_fmt_802154_drv_set_short_addr", i1 false, i1 false}
!197 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @trace_event_fields_802154_drv_set_pan_id, !41, !"trace_event_fields_802154_drv_set_pan_id", i1 false, i1 false}
!199 = !{ptr @trace_event_type_funcs_802154_drv_set_pan_id, !41, !"trace_event_type_funcs_802154_drv_set_pan_id", i1 false, i1 false}
!200 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @print_fmt_802154_drv_set_pan_id, !41, !"print_fmt_802154_drv_set_pan_id", i1 false, i1 false}
!202 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @trace_event_fields_802154_drv_set_extended_addr, !45, !"trace_event_fields_802154_drv_set_extended_addr", i1 false, i1 false}
!205 = !{ptr @trace_event_type_funcs_802154_drv_set_extended_addr, !45, !"trace_event_type_funcs_802154_drv_set_extended_addr", i1 false, i1 false}
!206 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @print_fmt_802154_drv_set_extended_addr, !45, !"print_fmt_802154_drv_set_extended_addr", i1 false, i1 false}
!208 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @trace_event_fields_802154_drv_set_pan_coord, !49, !"trace_event_fields_802154_drv_set_pan_coord", i1 false, i1 false}
!210 = !{ptr @trace_event_type_funcs_802154_drv_set_pan_coord, !49, !"trace_event_type_funcs_802154_drv_set_pan_coord", i1 false, i1 false}
!211 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @print_fmt_802154_drv_set_pan_coord, !49, !"print_fmt_802154_drv_set_pan_coord", i1 false, i1 false}
!213 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @trace_event_fields_802154_drv_set_csma_params, !53, !"trace_event_fields_802154_drv_set_csma_params", i1 false, i1 false}
!217 = !{ptr @trace_event_type_funcs_802154_drv_set_csma_params, !53, !"trace_event_type_funcs_802154_drv_set_csma_params", i1 false, i1 false}
!218 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @print_fmt_802154_drv_set_csma_params, !53, !"print_fmt_802154_drv_set_csma_params", i1 false, i1 false}
!220 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @trace_event_fields_802154_drv_set_max_frame_retries, !57, !"trace_event_fields_802154_drv_set_max_frame_retries", i1 false, i1 false}
!223 = !{ptr @trace_event_type_funcs_802154_drv_set_max_frame_retries, !57, !"trace_event_type_funcs_802154_drv_set_max_frame_retries", i1 false, i1 false}
!224 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @print_fmt_802154_drv_set_max_frame_retries, !57, !"print_fmt_802154_drv_set_max_frame_retries", i1 false, i1 false}
!226 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @trace_event_fields_802154_drv_set_promiscuous_mode, !61, !"trace_event_fields_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!228 = !{ptr @trace_event_type_funcs_802154_drv_set_promiscuous_mode, !61, !"trace_event_type_funcs_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!229 = !{ptr @.str.43, !61, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @print_fmt_802154_drv_set_promiscuous_mode, !61, !"print_fmt_802154_drv_set_promiscuous_mode", i1 false, i1 false}
!231 = !{!"sp"}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{!"branch_weights", i32 2000, i32 1}
!242 = !{!"branch_weights", i32 1, i32 2000}
!243 = !{!"auto-init"}
!244 = !{i8 0, i8 2}
