; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.177 }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.179, %struct.trace_event, ptr, ptr, %union.anon.180, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.179 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.180 = type { ptr }
%union.anon.181 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.182 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.hclgevf_dev = type { ptr, ptr, %struct.hclgevf_hw, %struct.hclgevf_misc_vector, %struct.hclge_comm_rss_cfg, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hclgevf_rst_stats, i32, %struct.semaphore, i32, i16, i16, i16, i16, i16, i32, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, [128 x i32], %struct.hclgevf_mac_table_cfg, %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_arq_ring, %struct.delayed_work, ptr, %struct.hnae3_handle, %struct.hnae3_handle, ptr, ptr, i32, i32, i32, ptr }
%struct.hclgevf_hw = type { %struct.hclge_comm_hw, i32, %struct.hclgevf_mac }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.hclgevf_mac = type { i8, i8, [6 x i8], i32, i8, i32, i64, i64 }
%struct.hclgevf_misc_vector = type { ptr, i32, [32 x i8] }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hclgevf_rst_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.hclgevf_mac_table_cfg = type { %struct.spinlock, %struct.list_head, %struct.list_head }
%struct.hclgevf_mbx_resp_status = type { %struct.mutex, i32, i8, i32, i16, [8 x i8] }
%struct.hclgevf_mbx_arq_ring = type { ptr, i32, i32, %struct.atomic_t, [1024 x [8 x i16]] }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.102, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.102 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.trace_event_raw_hclge_vf_mbx_get = type { %struct.trace_entry, i8, i16, i32, i32, [6 x i32], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.hclge_mbx_pf_to_vf_cmd = type { i8, [3 x i8], i8, i8, i16, %struct.hclge_pf_to_vf_msg }
%struct.hclge_pf_to_vf_msg = type { i16, i16, i16, i16, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_hclge_vf_mbx_send = type { %struct.trace_entry, i8, i8, i8, i32, i32, [6 x i32], [0 x i8] }
%struct.hclge_mbx_vf_to_pf_cmd = type { i8, i8, i8, [1 x i8], i8, i8, i16, %struct.hclge_vf_to_pf_msg }
%struct.hclge_vf_to_pf_msg = type { i8, %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i8, [14 x i8] }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_hclge_vf_mbx_get = internal constant [17 x i8] c"hclge_vf_mbx_get\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hclge_vf_mbx_get = dso_local global %struct.static_call_key { ptr @__traceiter_hclge_vf_mbx_get }, align 4
@__tracepoint_hclge_vf_mbx_get = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hclge_vf_mbx_get, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hclge_vf_mbx_get, ptr null, ptr @__traceiter_hclge_vf_mbx_get, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hclge_vf_mbx_get = internal constant ptr @__tracepoint_hclge_vf_mbx_get, section "__tracepoints_ptrs", align 4
@__tpstrtab_hclge_vf_mbx_send = internal constant [18 x i8] c"hclge_vf_mbx_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hclge_vf_mbx_send = dso_local global %struct.static_call_key { ptr @__traceiter_hclge_vf_mbx_send }, align 4
@__tracepoint_hclge_vf_mbx_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hclge_vf_mbx_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hclge_vf_mbx_send, ptr null, ptr @__traceiter_hclge_vf_mbx_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hclge_vf_mbx_send = internal constant ptr @__tracepoint_hclge_vf_mbx_send, section "__tracepoints_ptrs", align 4
@str__hns3__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hns3\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_hclge_vf_mbx_get = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.177 { %struct.anon.178 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.177 { %struct.anon.178 { ptr @.str.29, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.177 { %struct.anon.178 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.177 { %struct.anon.178 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.177 { %struct.anon.178 { ptr @.str.34, i32 24, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_hclge_vf_mbx_get = internal global %struct.trace_event_class { ptr @str__hns3__trace_system_name, ptr @trace_event_raw_event_hclge_vf_mbx_get, ptr @perf_trace_hclge_vf_mbx_get, ptr @trace_event_reg, ptr @trace_event_fields_hclge_vf_mbx_get, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hclge_vf_mbx_get, i64 24), ptr getelementptr (i8, ptr @event_class_hclge_vf_mbx_get, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hclge_vf_mbx_get = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hclge_vf_mbx_get, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hclge_vf_mbx_get = internal global { [192 x i8], [32 x i8] } { [192 x i8] c"\22%s %s vfid:%u code:%u data:%s\22, __get_str(pciname), __get_str(devname), REC->vfid, REC->code, __print_array(REC->mbx_data, (sizeof(struct hclge_mbx_pf_to_vf_cmd) / sizeof(u32)), sizeof(u32))\00", [32 x i8] zeroinitializer }, align 32
@event_hclge_vf_mbx_get = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hclge_vf_mbx_get, %union.anon.179 { ptr @__tracepoint_hclge_vf_mbx_get }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hclge_vf_mbx_get }, ptr @print_fmt_hclge_vf_mbx_get, ptr null, %union.anon.180 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hclge_vf_mbx_get = internal global ptr @event_hclge_vf_mbx_get, section "_ftrace_events", align 4
@trace_event_fields_hclge_vf_mbx_send = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.177 { %struct.anon.178 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.177 { %struct.anon.178 { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.177 { %struct.anon.178 { ptr @.str.36, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.177 { %struct.anon.178 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.177 { %struct.anon.178 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.177 { %struct.anon.178 { ptr @.str.34, i32 24, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_hclge_vf_mbx_send = internal global %struct.trace_event_class { ptr @str__hns3__trace_system_name, ptr @trace_event_raw_event_hclge_vf_mbx_send, ptr @perf_trace_hclge_vf_mbx_send, ptr @trace_event_reg, ptr @trace_event_fields_hclge_vf_mbx_send, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hclge_vf_mbx_send, i64 24), ptr getelementptr (i8, ptr @event_class_hclge_vf_mbx_send, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hclge_vf_mbx_send = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hclge_vf_mbx_send, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hclge_vf_mbx_send = internal global { [217 x i8], [39 x i8] } { [217 x i8] c"\22%s %s vfid:%u code:%u subcode:%u data:%s\22, __get_str(pciname), __get_str(devname), REC->vfid, REC->code, REC->subcode, __print_array(REC->mbx_data, (sizeof(struct hclge_mbx_vf_to_pf_cmd) / sizeof(u32)), sizeof(u32))\00", [39 x i8] zeroinitializer }, align 32
@event_hclge_vf_mbx_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hclge_vf_mbx_send, %union.anon.179 { ptr @__tracepoint_hclge_vf_mbx_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hclge_vf_mbx_send }, ptr @print_fmt_hclge_vf_mbx_send, ptr null, %union.anon.180 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hclge_vf_mbx_send = internal global ptr @event_hclge_vf_mbx_send, section "_ftrace_events", align 4
@__bpf_trace_tp_map_hclge_vf_mbx_get = internal global %union.anon.181 { %struct.bpf_raw_event_map { ptr @__tracepoint_hclge_vf_mbx_get, ptr @__bpf_trace_hclge_vf_mbx_get, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hclge_vf_mbx_send = internal global %union.anon.182 { %struct.bpf_raw_event_map { ptr @__tracepoint_hclge_vf_mbx_send, ptr @__bpf_trace_hclge_vf_mbx_send, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@hclgevf_send_mbx_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to send mbx, msg is NULL\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclgevf_send_mbx_msg\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclgevf_send_mbx_msg._entry_ptr = internal global ptr @hclgevf_send_mbx_msg._entry, section ".printk_index", align 4
@hclgevf_send_mbx_msg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VF failed(=%d) to send mbx message to PF\0A\00", [54 x i8] zeroinitializer }, align 32
@hclgevf_send_mbx_msg._entry_ptr.7 = internal global ptr @hclgevf_send_mbx_msg._entry.5, section ".printk_index", align 4
@hclgevf_send_mbx_msg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hclgevf_send_mbx_msg._entry_ptr.9 = internal global ptr @hclgevf_send_mbx_msg._entry.8, section ".printk_index", align 4
@hclgevf_mbx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 225, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vf crq need init\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_mbx_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hclgevf_mbx_handler._entry_ptr = internal global ptr @hclgevf_mbx_handler._entry, section ".printk_index", align 4
@hclgevf_mbx_handler._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 236, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dropped invalid mailbox message, code = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hclgevf_mbx_handler._entry_ptr.16 = internal global ptr @hclgevf_mbx_handler._entry.13, section ".printk_index", align 4
@hclgevf_mbx_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 266, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VF received unsupported(%u) mbx msg from PF\0A\00", [51 x i8] zeroinitializer }, align 32
@hclgevf_mbx_handler._entry_ptr.19 = internal global ptr @hclgevf_mbx_handler._entry.17, section ".printk_index", align 4
@hclgevf_mbx_async_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 304, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vf crq need init in async\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclgevf_mbx_async_handler\00", [38 x i8] zeroinitializer }, align 32
@hclgevf_mbx_async_handler._entry_ptr = internal global ptr @hclgevf_mbx_async_handler._entry, section ".printk_index", align 4
@hclgevf_mbx_async_handler._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fetched unsupported(%u) message from arq\0A\00", [54 x i8] zeroinitializer }, align 32
@hclgevf_mbx_async_handler._entry_ptr.24 = internal global ptr @hclgevf_mbx_async_handler._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfid\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"code\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pciname\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32[(sizeof(struct hclge_mbx_pf_to_vf_cmd) / sizeof(u32))]\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mbx_data\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s vfid:%u code:%u data:%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"subcode\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32[(sizeof(struct hclge_mbx_vf_to_pf_cmd) / sizeof(u32))]\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s vfid:%u code:%u subcode:%u data:%s\0A\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_trace.h\00", [37 x i8] zeroinitializer }, align 32
@trace_hclge_vf_mbx_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_get_mbx_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VF mbx response len(=%u) exceeds maximum(=%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclgevf_get_mbx_resp\00", [43 x i8] zeroinitializer }, align 32
@hclgevf_get_mbx_resp._entry_ptr = internal global ptr @hclgevf_get_mbx_resp._entry, section ".printk_index", align 4
@hclgevf_get_mbx_resp._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"VF could not get mbx(%u,%u) resp(=%d) from PF in %d tries\0A\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_get_mbx_resp._entry_ptr.46 = internal global ptr @hclgevf_get_mbx_resp._entry.44, section ".printk_index", align 4
@hclgevf_get_mbx_resp._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VF could not match resp code(code0=%u,code1=%u), %d\0A\00", [43 x i8] zeroinitializer }, align 32
@hclgevf_get_mbx_resp._entry_ptr.49 = internal global ptr @hclgevf_get_mbx_resp._entry.47, section ".printk_index", align 4
@hclgevf_get_mbx_resp._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VF could not match resp r_code(r_code0=%u,r_code1=%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@hclgevf_get_mbx_resp._entry_ptr.52 = internal global ptr @hclgevf_get_mbx_resp._entry.50, section ".printk_index", align 4
@trace_hclge_vf_mbx_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hclgevf_handle_mbx_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 168, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VF mbx resp flag not clear(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclgevf_handle_mbx_response\00", [36 x i8] zeroinitializer }, align 32
@hclgevf_handle_mbx_response._entry_ptr = internal global ptr @hclgevf_handle_mbx_response._entry, section ".printk_index", align 4
@hclgevf_handle_mbx_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 200, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Async Q full, dropping msg(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclgevf_handle_mbx_msg\00", [41 x i8] zeroinitializer }, align 32
@hclgevf_handle_mbx_msg._entry_ptr = internal global ptr @hclgevf_handle_mbx_msg._entry, section ".printk_index", align 4
@hclgevf_parse_promisc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 283, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Promisc mode is closed by host for being untrusted.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclgevf_parse_promisc_info\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_parse_promisc_info._entry_ptr = internal global ptr @hclgevf_parse_promisc_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 2, i64 17, i64 23, i64 32, i64 34, i64 36]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 16, i64 2, i64 23, i64 32, i64 34, i64 36]
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"str__hns3__trace_system_name\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 36, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [36 x i8] c"trace_event_fields_hclge_vf_mbx_get\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_hclge_vf_mbx_get\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"print_fmt_hclge_vf_mbx_get\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"event_hclge_vf_mbx_get\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [37 x i8] c"trace_event_fields_hclge_vf_mbx_send\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_hclge_vf_mbx_send\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"print_fmt_hclge_vf_mbx_send\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"event_hclge_vf_mbx_send\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 107, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 128, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 143, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 225, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 234, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 264, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 303, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 357, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 16, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [64 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3vf/./hclgevf_trace.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 47, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 108, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 48, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 65, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 84, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 87, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 166, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 198, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [60 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 282, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__bpf_trace_tp_map_hclge_vf_mbx_get, ptr @__bpf_trace_tp_map_hclge_vf_mbx_send, ptr @__event_hclge_vf_mbx_get, ptr @__event_hclge_vf_mbx_send, ptr @__tracepoint_hclge_vf_mbx_get, ptr @__tracepoint_hclge_vf_mbx_send, ptr @__tracepoint_ptr_hclge_vf_mbx_get, ptr @__tracepoint_ptr_hclge_vf_mbx_send, ptr @event_class_hclge_vf_mbx_get, ptr @event_class_hclge_vf_mbx_send, ptr @event_hclge_vf_mbx_get, ptr @event_hclge_vf_mbx_send, ptr @hclgevf_get_mbx_resp._entry, ptr @hclgevf_get_mbx_resp._entry.44, ptr @hclgevf_get_mbx_resp._entry.47, ptr @hclgevf_get_mbx_resp._entry.50, ptr @hclgevf_get_mbx_resp._entry_ptr, ptr @hclgevf_get_mbx_resp._entry_ptr.46, ptr @hclgevf_get_mbx_resp._entry_ptr.49, ptr @hclgevf_get_mbx_resp._entry_ptr.52, ptr @hclgevf_handle_mbx_msg._entry, ptr @hclgevf_handle_mbx_msg._entry_ptr, ptr @hclgevf_handle_mbx_response._entry, ptr @hclgevf_handle_mbx_response._entry_ptr, ptr @hclgevf_mbx_async_handler._entry, ptr @hclgevf_mbx_async_handler._entry.22, ptr @hclgevf_mbx_async_handler._entry_ptr, ptr @hclgevf_mbx_async_handler._entry_ptr.24, ptr @hclgevf_mbx_handler._entry, ptr @hclgevf_mbx_handler._entry.13, ptr @hclgevf_mbx_handler._entry.17, ptr @hclgevf_mbx_handler._entry_ptr, ptr @hclgevf_mbx_handler._entry_ptr.16, ptr @hclgevf_mbx_handler._entry_ptr.19, ptr @hclgevf_parse_promisc_info._entry, ptr @hclgevf_parse_promisc_info._entry_ptr, ptr @hclgevf_send_mbx_msg._entry, ptr @hclgevf_send_mbx_msg._entry.5, ptr @hclgevf_send_mbx_msg._entry.8, ptr @hclgevf_send_mbx_msg._entry_ptr, ptr @hclgevf_send_mbx_msg._entry_ptr.7, ptr @hclgevf_send_mbx_msg._entry_ptr.9, ptr @str__hns3__trace_system_name, ptr @trace_event_fields_hclge_vf_mbx_get, ptr @trace_event_type_funcs_hclge_vf_mbx_get, ptr @print_fmt_hclge_vf_mbx_get, ptr @trace_event_fields_hclge_vf_mbx_send, ptr @trace_event_type_funcs_hclge_vf_mbx_send, ptr @print_fmt_hclge_vf_mbx_send, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__hns3__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hclge_vf_mbx_get to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hclge_vf_mbx_get to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hclge_vf_mbx_get to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hclge_vf_mbx_get to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hclge_vf_mbx_send to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hclge_vf_mbx_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hclge_vf_mbx_send to i32), i32 217, i32 256, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hclge_vf_mbx_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_send_mbx_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_send_mbx_msg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_send_mbx_msg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_mbx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_mbx_handler._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_mbx_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_mbx_async_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_mbx_async_handler._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_mbx_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_mbx_resp._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_mbx_resp._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_mbx_resp._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_handle_mbx_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_handle_mbx_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_parse_promisc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hclge_vf_mbx_get(ptr nocapture readnone %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_get, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %hdev, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hclge_vf_mbx_send(ptr nocapture readnone %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_send, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %hdev, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hclge_vf_mbx_get(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !130

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !131

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %if.end.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge

if.end.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_vf_mbx_get.exit

pci_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i46 = icmp eq ptr %8, null
  %spec.select56 = select i1 %tobool.not.i46, ptr @.str.25, ptr %8
  br label %trace_event_get_offsets_hclge_vf_mbx_get.exit

trace_event_get_offsets_hclge_vf_mbx_get.exit:    ; preds = %pci_name.exit.i, %if.end.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge ], [ %spec.select56, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %9 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool8.not.i = icmp eq ptr %11, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.25, ptr %11
  %call16.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add17.i = add i32 %call16.i, 1
  %add23.i = add i32 %call4.i, 45
  %add = add i32 %add23.i, %add17.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_hclge_vf_mbx_get.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_hclge_vf_mbx_get.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_hclge_vf_mbx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_hclge_vf_mbx_get.exit
  %shl20.i = shl i32 %add17.i, 16
  %or22.i = or i32 %shl20.i, %add23.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or22.i, ptr %__data_loc_devname, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %req, align 2
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call3, i32 0, i32 1
  %16 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %msg, align 2
  %code6 = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call3, i32 0, i32 2
  %19 = ptrtoint ptr %code6 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %code6, align 2
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end5
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %tobool9.not = icmp eq ptr %25, null
  br i1 %tobool9.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i50

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i50:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i50, %pci_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %pci_name.exit.cond.end_crit_edge ], [ %27, %if.end.i.i50 ], [ %23, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %28 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %__data_loc_devname, align 4
  %and14 = and i32 %29, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 8
  %tobool16.not = icmp eq ptr %31, null
  %spec.select = select i1 %tobool16.not, ptr @.str.25, ptr %31
  %call24 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call3, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_hclge_vf_mbx_get.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hclge_vf_mbx_get(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !132
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %entry.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge

entry.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_vf_mbx_get.exit

pci_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select79 = select i1 %tobool.not.i, ptr @.str.25, ptr %7
  br label %trace_event_get_offsets_hclge_vf_mbx_get.exit

trace_event_get_offsets_hclge_vf_mbx_get.exit:    ; preds = %pci_name.exit.i, %entry.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_hclge_vf_mbx_get.exit_crit_edge ], [ %spec.select79, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 44
  %8 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool8.not.i = icmp eq ptr %10, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.25, ptr %10
  %call16.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add17.i = add i32 %call16.i, 1
  %add19.i = add i32 %call4.i, 45
  %shl20.i = shl i32 %add17.i, 16
  %or22.i = or i32 %shl20.i, %add19.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %11 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %perf_events, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !120) #11
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %21 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %22, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_hclge_vf_mbx_get.exit.if.end_crit_edge

trace_event_get_offsets_hclge_vf_mbx_get.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_hclge_vf_mbx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_hclge_vf_mbx_get.exit
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %20, align 4
  %tobool.not.i70.not = icmp eq ptr %24, null
  br i1 %tobool.not.i70.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_hclge_vf_mbx_get.exit.if.end_crit_edge
  %add23.i = add i32 %call4.i, 56
  %add12 = add i32 %add23.i, %add17.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %25 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__regs, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %31 = ptrtoint ptr %30 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx2.i, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !120) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  %35 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or22.i, ptr %__data_loc_devname, align 4
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %req, align 2
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call13, i32 0, i32 1
  %40 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %req, i32 0, i32 5
  %41 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %msg, align 2
  %code17 = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call13, i32 0, i32 2
  %43 = ptrtoint ptr %code17 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %code17, align 2
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %44 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %tobool21.not = icmp eq ptr %49, null
  br i1 %tobool21.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i74

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i74:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i74, %pci_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %pci_name.exit.cond.end_crit_edge ], [ %51, %if.end.i.i74 ], [ %47, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %52 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %__data_loc_devname, align 4
  %and26 = and i32 %53, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %8, align 8
  %tobool28.not = icmp eq ptr %55, null
  %spec.select = select i1 %tobool28.not, ptr @.str.25, ptr %55
  %call36 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %call13, i32 0, i32 5
  %56 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  %57 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rctx, align 4
  %59 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %58, ptr noundef %__data, i64 noundef 1, ptr noundef %60, ptr noundef %20, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hclge_vf_mbx_send(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !130

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !131

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %if.end.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge

if.end.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_vf_mbx_send.exit

pci_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i50 = icmp eq ptr %8, null
  %spec.select60 = select i1 %tobool.not.i50, ptr @.str.25, ptr %8
  br label %trace_event_get_offsets_hclge_vf_mbx_send.exit

trace_event_get_offsets_hclge_vf_mbx_send.exit:   ; preds = %pci_name.exit.i, %if.end.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge ], [ %spec.select60, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %9 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool8.not.i = icmp eq ptr %11, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.25, ptr %11
  %call16.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add17.i = add i32 %call16.i, 1
  %add23.i = add i32 %call4.i, 45
  %add = add i32 %add23.i, %add17.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_hclge_vf_mbx_send.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_hclge_vf_mbx_send.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_hclge_vf_mbx_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_hclge_vf_mbx_send.exit
  %shl20.i = shl i32 %add17.i, 16
  %or22.i = or i32 %shl20.i, %add23.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or22.i, ptr %__data_loc_devname, align 4
  %mbx_src_vfid = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mbx_src_vfid, align 1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call3, i32 0, i32 1
  %16 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msg, align 2
  %code6 = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call3, i32 0, i32 2
  %19 = ptrtoint ptr %code6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %code6, align 1
  %20 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %subcode8 = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call3, i32 0, i32 3
  %23 = ptrtoint ptr %subcode8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %subcode8, align 2
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %24 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end5
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i54

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i54:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i54, %pci_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %pci_name.exit.cond.end_crit_edge ], [ %31, %if.end.i.i54 ], [ %27, %if.end5.cond.end_crit_edge ]
  %call14 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %32 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %__data_loc_devname, align 4
  %and16 = and i32 %33, 65535
  %add.ptr17 = getelementptr i8, ptr %call3, i32 %and16
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %9, align 8
  %tobool18.not = icmp eq ptr %35, null
  %spec.select = select i1 %tobool18.not, ptr @.str.25, ptr %35
  %call26 = call ptr @strcpy(ptr noundef %add.ptr17, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call3, i32 0, i32 6
  %36 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_hclge_vf_mbx_send.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hclge_vf_mbx_send(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !132
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %entry.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge

entry.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_vf_mbx_send.exit

pci_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select83 = select i1 %tobool.not.i, ptr @.str.25, ptr %7
  br label %trace_event_get_offsets_hclge_vf_mbx_send.exit

trace_event_get_offsets_hclge_vf_mbx_send.exit:   ; preds = %pci_name.exit.i, %entry.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_hclge_vf_mbx_send.exit_crit_edge ], [ %spec.select83, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 44
  %8 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool8.not.i = icmp eq ptr %10, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.25, ptr %10
  %call16.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add17.i = add i32 %call16.i, 1
  %add19.i = add i32 %call4.i, 45
  %shl20.i = shl i32 %add17.i, 16
  %or22.i = or i32 %shl20.i, %add19.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %11 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %perf_events, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !120) #11
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %21 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %22, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_hclge_vf_mbx_send.exit.if.end_crit_edge

trace_event_get_offsets_hclge_vf_mbx_send.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_hclge_vf_mbx_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_hclge_vf_mbx_send.exit
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %20, align 4
  %tobool.not.i74.not = icmp eq ptr %24, null
  br i1 %tobool.not.i74.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_hclge_vf_mbx_send.exit.if.end_crit_edge
  %add23.i = add i32 %call4.i, 56
  %add12 = add i32 %add23.i, %add17.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %25 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__regs, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %31 = ptrtoint ptr %30 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx2.i, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !120) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  %35 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or22.i, ptr %__data_loc_devname, align 4
  %mbx_src_vfid = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mbx_src_vfid, align 1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call13, i32 0, i32 1
  %40 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7
  %41 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %msg, align 2
  %code17 = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call13, i32 0, i32 2
  %43 = ptrtoint ptr %code17 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %code17, align 1
  %44 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %subcode19 = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call13, i32 0, i32 3
  %47 = ptrtoint ptr %subcode19 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %subcode19, align 2
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %48 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %tobool23.not = icmp eq ptr %53, null
  br i1 %tobool23.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i78

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i78:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i78, %pci_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %pci_name.exit.cond.end_crit_edge ], [ %55, %if.end.i.i78 ], [ %51, %if.end16.cond.end_crit_edge ]
  %call26 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %56 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %__data_loc_devname, align 4
  %and28 = and i32 %57, 65535
  %add.ptr29 = getelementptr i8, ptr %call13, i32 %and28
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %8, align 8
  %tobool30.not = icmp eq ptr %59, null
  %spec.select = select i1 %tobool30.not, ptr @.str.25, ptr %59
  %call38 = call ptr @strcpy(ptr noundef %add.ptr29, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %call13, i32 0, i32 6
  %60 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  %61 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rctx, align 4
  %63 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %62, ptr noundef %__data, i64 noundef 1, ptr noundef %64, ptr noundef %20, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hclge_vf_mbx_get(ptr noundef %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %hdev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %req to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hclge_vf_mbx_send(ptr noundef %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %hdev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %req to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef readonly %send_msg, i1 noundef zeroext %need_resp, ptr noundef writeonly %resp_data, i16 noundef zeroext %resp_len) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #11
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %tobool.not = icmp eq ptr %send_msg, null
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 8193, i1 noundef zeroext false) #11
  br i1 %need_resp, label %do.body3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mbx_need_resp = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %mbx_need_resp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mbx_need_resp, align 2
  %7 = or i8 %6, 1
  store i8 %7, ptr %mbx_need_resp, align 2
  br label %if.end10

if.end10:                                         ; preds = %do.body3, %if.end.if.end10_crit_edge
  %8 = call ptr @memcpy(ptr %1, ptr %send_msg, i32 16)
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_hclge_vf_mbx_send(ptr noundef %hdev, ptr noundef %0)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  br i1 %need_resp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %mbx_resp = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39
  call void @mutex_lock_nested(ptr noundef %mbx_resp, i32 noundef 0) #11
  %received_resp.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 2
  %12 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %received_resp.i, align 4
  %origin_mbx_msg.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 1
  %13 = ptrtoint ptr %origin_mbx_msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %origin_mbx_msg.i, align 4
  %resp_status.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 3
  %14 = ptrtoint ptr %resp_status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %resp_status.i, align 4
  %match_id.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 4
  %15 = ptrtoint ptr %match_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %match_id.i, align 4
  %inc.i = add i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i16 1, i16 %inc.i
  %17 = ptrtoint ptr %match_id.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.select.i, ptr %match_id.i, align 4
  %additional_info.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 5
  %18 = ptrtoint ptr %additional_info.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 0, ptr %additional_info.i, align 2
  %match_id17 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %0, i32 0, i32 6
  %19 = ptrtoint ptr %match_id17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.select.i, ptr %match_id17, align 2
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %call18 = call i32 @hclgevf_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end23

do.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.6, i32 noundef %call18) #16
  call void @mutex_unlock(ptr noundef %mbx_resp) #11
  br label %cleanup

if.end28:                                         ; preds = %if.then15
  %22 = ptrtoint ptr %send_msg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %send_msg, align 1
  %24 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i = zext i16 %resp_len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %resp_len)
  %cmp.i73 = icmp ugt i16 %resp_len, 8
  br i1 %cmp.i73, label %do.end.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end28
  %27 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %received_resp.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not98.i = icmp eq i8 %28, 0
  br i1 %tobool.not98.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.if.end24.i_crit_edge

while.cond.preheader.i.if.end24.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %comm_state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 3
  br label %while.body.i

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef 8) #16
  br label %hclgevf_get_mbx_resp.exit

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.099.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i75, %if.end9.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %comm_state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %comm_state.i, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool7.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %while.body.i.hclgevf_get_mbx_resp.exit_crit_edge

while.body.i.hclgevf_get_mbx_resp.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclgevf_get_mbx_resp.exit

if.end9.i:                                        ; preds = %while.body.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %inc.i75 = add nuw nsw i32 %i.099.i, 1
  %33 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %received_resp.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %i.099.i)
  %cmp4.i = icmp ult i32 %i.099.i, 499
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.end9.i.while.body.i_crit_edge, label %while.end.i

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 498, i32 %i.099.i)
  %cmp10.i = icmp ugt i32 %i.099.i, 498
  br i1 %cmp10.i, label %do.end15.i, label %while.end.i.if.end24.i_crit_edge

while.end.i.if.end24.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

do.end15.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdev, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %conv18.i = zext i8 %23 to i32
  %conv19.i = zext i8 %26 to i32
  %37 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.45, i32 noundef %conv18.i, i32 noundef %conv19.i, i32 noundef %37, i32 noundef %inc.i75) #16
  br label %hclgevf_get_mbx_resp.exit

if.end24.i:                                       ; preds = %while.end.i.if.end24.i_crit_edge, %while.cond.preheader.i.if.end24.i_crit_edge
  %38 = ptrtoint ptr %origin_mbx_msg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %origin_mbx_msg.i, align 4
  %shr.i77 = lshr i32 %39, 16
  %conv28.i = and i32 %39, 255
  %40 = ptrtoint ptr %resp_status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool29.not.i = icmp eq i32 %41, 0
  br i1 %tobool29.not.i, label %if.end32.i, label %if.end24.i.hclgevf_get_mbx_resp.exit_crit_edge

if.end24.i.hclgevf_get_mbx_resp.exit_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclgevf_get_mbx_resp.exit

if.end32.i:                                       ; preds = %if.end24.i
  %tobool33.not.i = icmp eq ptr %resp_data, null
  br i1 %tobool33.not.i, label %if.end32.i.if.end36.i_crit_edge, label %if.then34.i

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = call ptr @memcpy(ptr %resp_data, ptr %additional_info.i, i32 %conv.i)
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end36.i_crit_edge
  %43 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %received_resp.i, align 4
  %44 = ptrtoint ptr %origin_mbx_msg.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %origin_mbx_msg.i, align 4
  %45 = ptrtoint ptr %resp_status.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %resp_status.i, align 4
  %46 = ptrtoint ptr %match_id.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %match_id.i, align 4
  %inc.i.i = add i16 %47, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i.i)
  %cmp.i.i = icmp eq i16 %inc.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i, i16 1, i16 %inc.i.i
  %48 = ptrtoint ptr %match_id.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.select.i.i, ptr %match_id.i, align 4
  %49 = ptrtoint ptr %additional_info.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %additional_info.i, align 2
  %conv38.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i77, i32 %conv38.i)
  %cmp39.i = icmp eq i32 %shr.i77, %conv38.i
  %50 = trunc i32 %39 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %50)
  %cmp43.i = icmp eq i8 %26, %50
  %or.cond94.i = select i1 %cmp39.i, i1 %cmp43.i, i1 false
  br i1 %or.cond94.i, label %if.end36.i.hclgevf_get_mbx_resp.exit_crit_edge, label %do.end51.i

if.end36.i.hclgevf_get_mbx_resp.exit_crit_edge:   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclgevf_get_mbx_resp.exit

do.end51.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdev, align 8
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %conv55.i = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.48, i32 noundef %conv38.i, i32 noundef %conv55.i, i32 noundef 0) #16
  %53 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev, align 8
  %dev61.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61.i, ptr noundef nonnull @.str.51, i32 noundef %shr.i77, i32 noundef %conv28.i) #16
  br label %hclgevf_get_mbx_resp.exit

hclgevf_get_mbx_resp.exit:                        ; preds = %do.end51.i, %if.end36.i.hclgevf_get_mbx_resp.exit_crit_edge, %if.end24.i.hclgevf_get_mbx_resp.exit_crit_edge, %do.end15.i, %while.body.i.hclgevf_get_mbx_resp.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -5, %do.end15.i ], [ -5, %do.end51.i ], [ %41, %if.end24.i.hclgevf_get_mbx_resp.exit_crit_edge ], [ 0, %if.end36.i.hclgevf_get_mbx_resp.exit_crit_edge ], [ -5, %while.body.i.hclgevf_get_mbx_resp.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mbx_resp) #11
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %hw34 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %call35 = call i32 @hclgevf_cmd_send(ptr noundef %hw34, ptr noundef nonnull %desc, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else.cleanup_crit_edge, label %do.end40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.6, i32 noundef %call35) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.else.cleanup_crit_edge, %hclgevf_get_mbx_resp.exit, %do.end23, %do.end
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call35, %do.end40 ], [ -22, %do.end ], [ %retval.0.i, %hclgevf_get_mbx_resp.exit ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hclge_vf_mbx_send(ptr noundef %hdev, ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_send, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_hclge_vf_mbx_send, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !135
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_send, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %hdev, ptr noundef %req) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !136
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !136
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !120) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hclge_vf_mbx_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_hclge_vf_mbx_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 78, ptr noundef nonnull @.str.40) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %38 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclgevf_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_mbx_handler(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %base.addr.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %2 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i94 = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i94, i32 159780
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #11, !srcloc !139
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %next_to_use.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 7
  %5 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i96 = icmp eq i32 %4, %6
  br i1 %cmp.i96, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %comm_state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 3
  %desc7 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 1
  %count.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 3
  %tail.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 2
  %received_resp.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 2
  %origin_mbx_msg.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 1
  %resp_status8.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 3
  %additional_info.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 5
  %match_id15.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39, i32 4
  %desc_num50 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 6
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %comm_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %comm_state, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end:                                           ; preds = %while.body
  %11 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc7, align 4
  %13 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_to_use.i, align 4
  %data = getelementptr %struct.hclge_desc, ptr %12, i32 %14, i32 4
  %flag11 = getelementptr %struct.hclge_desc, ptr %12, i32 %14, i32 1
  %15 = ptrtoint ptr %flag11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flag11, align 2
  %17 = and i16 %16, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool12.not = icmp eq i16 %17, 0
  br i1 %tobool12.not, label %do.end20, label %if.end31, !prof !131

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %msg = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %msg, align 2
  %conv23 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.14, i32 noundef %conv23) #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end38, %if.end.i93, %do.end.i92, %if.end22.sink.split.i, %if.then12.i.while.cond.backedge_crit_edge, %do.end20
  %22 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc7, align 4
  %24 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_to_use.i, align 4
  %flag27 = getelementptr %struct.hclge_desc, ptr %23, i32 %25, i32 1
  %26 = ptrtoint ptr %flag27 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flag27, align 2
  %27 = load i32, ptr %next_to_use.i, align 4
  %add = add i32 %27, 1
  %28 = ptrtoint ptr %desc_num50 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %desc_num50, align 2
  %conv29 = zext i16 %29 to i32
  %rem = srem i32 %add, %conv29
  store i32 %rem, ptr %next_to_use.i, align 4
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %32 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i, i32 159780
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !139
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %35 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %next_to_use.i, align 8
  %cmp.i = icmp eq i32 %34, %36
  br i1 %cmp.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end31:                                         ; preds = %if.end
  tail call fastcc void @trace_hclge_vf_mbx_get(ptr noundef %hdev, ptr noundef %data)
  %msg32 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %msg32 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %msg32, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i16 %38, label %do.end38 [
    i16 17, label %sw.bb
    i16 23, label %if.end31.sw.bb35_crit_edge
    i16 2, label %if.end31.sw.bb35_crit_edge98
    i16 32, label %if.end31.sw.bb35_crit_edge99
    i16 34, label %if.end31.sw.bb35_crit_edge100
    i16 36, label %if.end31.sw.bb35_crit_edge101
  ]

if.end31.sw.bb35_crit_edge101:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb35

if.end31.sw.bb35_crit_edge100:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb35

if.end31.sw.bb35_crit_edge99:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb35

if.end31.sw.bb35_crit_edge98:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb35

if.end31.sw.bb35_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb35

sw.bb:                                            ; preds = %if.end31
  %40 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %received_resp.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %do.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %vf_mbx_msg_code.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %vf_mbx_msg_code.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vf_mbx_msg_code.i, align 2
  %conv.i = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %conv.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.if.end.i_crit_edge
  %vf_mbx_msg_code2.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %vf_mbx_msg_code2.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vf_mbx_msg_code2.i, align 2
  %conv3.i = zext i16 %47 to i32
  %shl.i = shl nuw i32 %conv3.i, 16
  %48 = ptrtoint ptr %origin_mbx_msg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.i, ptr %origin_mbx_msg.i, align 4
  %vf_mbx_msg_subcode.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %vf_mbx_msg_subcode.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vf_mbx_msg_subcode.i, align 2
  %conv5.i = zext i16 %50 to i32
  %or.i = or i32 %shl.i, %conv5.i
  store i32 %or.i, ptr %origin_mbx_msg.i, align 4
  %resp_status.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5, i32 3
  %51 = ptrtoint ptr %resp_status.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %resp_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i.i = icmp eq i16 %52, 0
  %conv.i.i = zext i16 %52 to i32
  %sub.i.i = sub nsw i32 0, %conv.i.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %53 = ptrtoint ptr %resp_status8.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond.i.i, ptr %resp_status8.i, align 4
  %resp_data.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 5, i32 4
  %54 = ptrtoint ptr %resp_data.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %resp_data.i, align 2
  %56 = ptrtoint ptr %additional_info.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %additional_info.i, align 2
  %match_id.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %data, i32 0, i32 4
  %57 = ptrtoint ptr %match_id.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %match_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool11.not.i = icmp eq i16 %58, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end22.sink.split.i_crit_edge, label %if.then12.i

if.end.i.if.end22.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.sink.split.i

if.then12.i:                                      ; preds = %if.end.i
  %59 = ptrtoint ptr %match_id15.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %match_id15.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp.i88 = icmp eq i16 %58, %60
  br i1 %cmp.i88, label %if.then12.i.if.end22.sink.split.i_crit_edge, label %if.then12.i.while.cond.backedge_crit_edge

if.then12.i.while.cond.backedge_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then12.i.if.end22.sink.split.i_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.then12.i.if.end22.sink.split.i_crit_edge, %if.end.i.if.end22.sink.split.i_crit_edge
  %61 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %received_resp.i, align 4
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %if.end31.sw.bb35_crit_edge, %if.end31.sw.bb35_crit_edge98, %if.end31.sw.bb35_crit_edge99, %if.end31.sw.bb35_crit_edge100, %if.end31.sw.bb35_crit_edge101
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #11
  %62 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %63)
  %cmp.i89 = icmp sgt i32 %63, 1023
  br i1 %cmp.i89, label %do.end.i92, label %if.end.i93

do.end.i92:                                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hdev, align 8
  %dev.i90 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %msg32 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %msg32, align 2
  %conv.i91 = zext i16 %67 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i90, ptr noundef nonnull @.str.55, i32 noundef %conv.i91) #16
  br label %while.cond.backedge

if.end.i93:                                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tail.i, align 8
  %arrayidx.i = getelementptr %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 4, i32 %69
  %70 = call ptr @memcpy(ptr %arrayidx.i, ptr %msg32, i32 16)
  %71 = load i32, ptr %tail.i, align 8
  %add.i = add i32 %71, 1
  %rem.i = and i32 %add.i, 1023
  store i32 %rem.i, ptr %tail.i, align 8
  %call.i.i18.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #11
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #11, !srcloc !141
  tail call void @hclgevf_mbx_task_schedule(ptr noundef %hdev) #11
  br label %while.cond.backedge

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %conv34 = zext i16 %38 to i32
  %73 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hdev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.18, i32 noundef %conv34) #16
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 8
  %77 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %next_to_use.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #11
  %add.ptr.i = getelementptr i8, ptr %76, i32 159784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %79) #11, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hclge_vf_mbx_get(ptr noundef %hdev, ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_get, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_hclge_vf_mbx_get, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !130

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !144
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_get, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %hdev, ptr noundef %req) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !130

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !120) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_vf_mbx_get, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hclge_vf_mbx_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_hclge_vf_mbx_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 45, ptr noundef nonnull @.str.40) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %38 = tail call i32 @llvm.read_register.i32(metadata !120) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_mbx_async_handler(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 2
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail1, align 8
  %head = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not100 = icmp eq i32 %1, %3
  br i1 %cmp.not100, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %comm_state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 3
  %reset_pending = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 10
  %reset_state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 12
  %supported = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2, i32 6
  %advertising = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2, i32 7
  %state19 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %count = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 3
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %40, %sw.epilog.while.body_crit_edge ]
  %5 = ptrtoint ptr %comm_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %comm_state, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arrayidx = getelementptr %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 4, i32 %4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %10, label %do.end42 [
    i16 23, label %sw.bb
    i16 32, label %sw.bb21
    i16 2, label %sw.bb32
    i16 34, label %sw.bb35
    i16 36, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx9 = getelementptr i16, ptr %arrayidx, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr i16, ptr %arrayidx, i32 2
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %speed.0.copyload = load i32, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr i16, ptr %arrayidx, i32 4
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx11, align 2
  %conv12 = trunc i16 %16 to i8
  %arrayidx13 = getelementptr i16, ptr %arrayidx, i32 5
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx13, align 2
  tail call void @hclgevf_update_speed_duplex(ptr noundef %hdev, i32 noundef %speed.0.copyload, i8 noundef zeroext %conv12) #11
  %conv15 = zext i16 %13 to i32
  tail call void @hclgevf_update_link_status(ptr noundef %hdev, i32 noundef %conv15) #11
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool17.not = icmp eq i16 %19, 0
  br i1 %tobool17.not, label %sw.bb.sw.epilog_crit_edge, label %if.then18

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 14, ptr noundef %state19) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %arrayidx22 = getelementptr i16, ptr %arrayidx, i32 1
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx22, align 2
  %conv23 = trunc i16 %21 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv23)
  %tobool24.not = icmp eq i8 %conv23, 0
  %arrayidx30 = getelementptr i16, ptr %arrayidx, i32 2
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx30, align 2
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %supported, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %advertising, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx33 = getelementptr i16, ptr %arrayidx, i32 1
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %27 to i32
  tail call void @_set_bit(i32 noundef %conv34, ptr noundef %reset_pending) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reset_state) #11
  tail call void @hclgevf_reset_task_schedule(ptr noundef %hdev) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx36 = getelementptr i16, ptr %arrayidx, i32 1
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx36, align 2
  tail call void @hclgevf_update_port_base_vlan_info(ptr noundef %hdev, i16 noundef zeroext %29, ptr noundef %arrayidx36, i8 noundef zeroext 8) #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end
  %arrayidx39 = getelementptr i16, ptr %arrayidx, i32 1
  %30 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %do.end.i, label %sw.bb38.sw.epilog_crit_edge

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.57) #16
  br label %sw.epilog

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %10 to i32
  %34 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.23, i32 noundef %conv) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end42, %do.end.i, %sw.bb38.sw.epilog_crit_edge, %sw.bb35, %sw.bb32, %if.else, %if.then25, %if.then18, %sw.bb.sw.epilog_crit_edge
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head, align 4
  %add = add i32 %37, 1
  %rem = and i32 %add, 1023
  store i32 %rem, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #11
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #11, !srcloc !146
  %39 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %head, align 4
  %cmp.not = icmp eq i32 %1, %40
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_update_speed_duplex(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_update_link_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_reset_task_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_update_port_base_vlan_info(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hclge_vf_mbx_get(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_pciname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_devname, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vfid, align 4
  %conv = zext i8 %7 to i32
  %code = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %code, align 2
  %conv3 = zext i16 %9 to i32
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_get, ptr %1, i32 0, i32 5
  %call4 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %mbx_data, i32 noundef 6, i32 noundef 4) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.35, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv, i32 noundef %conv3, ptr noundef %call4) #11
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_array_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hclge_vf_mbx_send(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_pciname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_devname, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vfid, align 4
  %conv = zext i8 %7 to i32
  %code = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code, align 1
  %conv3 = zext i8 %9 to i32
  %subcode = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %subcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %subcode, align 2
  %conv4 = zext i8 %11 to i32
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_vf_mbx_send, ptr %1, i32 0, i32 6
  %call5 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %mbx_data, i32 noundef 6, i32 noundef 4) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, ptr noundef %call5) #11
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_mbx_task_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119}
!llvm.named.register.sp = !{!120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__tracepoint_hclge_vf_mbx_get, !1, !"__tracepoint_hclge_vf_mbx_get", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/./hclgevf_trace.h", i32 16, i32 1}
!2 = !{ptr @__tracepoint_ptr_hclge_vf_mbx_get, !1, !"__tracepoint_ptr_hclge_vf_mbx_get", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_hclge_vf_mbx_get, !1, !"__SCK__tp_func_hclge_vf_mbx_get", i1 false, i1 false}
!4 = !{ptr @__tracepoint_hclge_vf_mbx_send, !5, !"__tracepoint_hclge_vf_mbx_send", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/./hclgevf_trace.h", i32 47, i32 1}
!6 = !{ptr @__tracepoint_ptr_hclge_vf_mbx_send, !5, !"__tracepoint_ptr_hclge_vf_mbx_send", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_hclge_vf_mbx_send, !5, !"__SCK__tp_func_hclge_vf_mbx_send", i1 false, i1 false}
!8 = !{ptr @event_class_hclge_vf_mbx_get, !1, !"event_class_hclge_vf_mbx_get", i1 false, i1 false}
!9 = !{ptr @event_hclge_vf_mbx_get, !1, !"event_hclge_vf_mbx_get", i1 false, i1 false}
!10 = !{ptr @__event_hclge_vf_mbx_get, !1, !"__event_hclge_vf_mbx_get", i1 false, i1 false}
!11 = !{ptr @event_class_hclge_vf_mbx_send, !5, !"event_class_hclge_vf_mbx_send", i1 false, i1 false}
!12 = !{ptr @event_hclge_vf_mbx_send, !5, !"event_hclge_vf_mbx_send", i1 false, i1 false}
!13 = !{ptr @__event_hclge_vf_mbx_send, !5, !"__event_hclge_vf_mbx_send", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_hclge_vf_mbx_get, !1, !"__bpf_trace_tp_map_hclge_vf_mbx_get", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_hclge_vf_mbx_send, !5, !"__bpf_trace_tp_map_hclge_vf_mbx_send", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 107, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hclgevf_send_mbx_msg._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hclgevf_send_mbx_msg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 128, i32 4}
!26 = !{ptr @hclgevf_send_mbx_msg._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hclgevf_send_mbx_msg._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hclgevf_send_mbx_msg._entry.8, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 143, i32 4}
!30 = !{ptr @hclgevf_send_mbx_msg._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 225, i32 4}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hclgevf_mbx_handler._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @hclgevf_mbx_handler._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 234, i32 4}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hclgevf_mbx_handler._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hclgevf_mbx_handler._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 264, i32 4}
!44 = !{ptr @hclgevf_mbx_handler._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hclgevf_mbx_handler._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 303, i32 4}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hclgevf_mbx_async_handler._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @hclgevf_mbx_async_handler._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 357, i32 4}
!53 = !{ptr @hclgevf_mbx_async_handler._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hclgevf_mbx_async_handler._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__tpstrtab_hclge_vf_mbx_get, !1, !"__tpstrtab_hclge_vf_mbx_get", i1 false, i1 false}
!56 = !{ptr @__tpstrtab_hclge_vf_mbx_send, !5, !"__tpstrtab_hclge_vf_mbx_send", i1 false, i1 false}
!57 = !{ptr @str__hns3__trace_system_name, !58, !"str__hns3__trace_system_name", i1 false, i1 false}
!58 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!59 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @trace_event_fields_hclge_vf_mbx_get, !1, !"trace_event_fields_hclge_vf_mbx_get", i1 false, i1 false}
!70 = !{ptr @trace_event_type_funcs_hclge_vf_mbx_get, !1, !"trace_event_type_funcs_hclge_vf_mbx_get", i1 false, i1 false}
!71 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @print_fmt_hclge_vf_mbx_get, !1, !"print_fmt_hclge_vf_mbx_get", i1 false, i1 false}
!73 = !{ptr @.str.36, !5, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !5, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @trace_event_fields_hclge_vf_mbx_send, !5, !"trace_event_fields_hclge_vf_mbx_send", i1 false, i1 false}
!76 = !{ptr @trace_event_type_funcs_hclge_vf_mbx_send, !5, !"trace_event_type_funcs_hclge_vf_mbx_send", i1 false, i1 false}
!77 = !{ptr @.str.38, !5, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @print_fmt_hclge_vf_mbx_send, !5, !"print_fmt_hclge_vf_mbx_send", i1 false, i1 false}
!79 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!80 = !{ptr @.str.39, !5, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!82 = !{ptr @.str.40, !5, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 48, i32 3}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hclgevf_get_mbx_resp._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @hclgevf_get_mbx_resp._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 65, i32 3}
!93 = !{ptr @hclgevf_get_mbx_resp._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hclgevf_get_mbx_resp._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 84, i32 3}
!97 = !{ptr @hclgevf_get_mbx_resp._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @hclgevf_get_mbx_resp._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 87, i32 3}
!101 = !{ptr @hclgevf_get_mbx_resp._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @hclgevf_get_mbx_resp._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!104 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 166, i32 3}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @hclgevf_handle_mbx_response._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @hclgevf_handle_mbx_response._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 198, i32 3}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @hclgevf_handle_mbx_msg._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @hclgevf_handle_mbx_msg._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_mbx.c", i32 282, i32 3}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @hclgevf_parse_promisc_info._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @hclgevf_parse_promisc_info._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{!"sp"}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{!"auto-init"}
!133 = !{i8 0, i8 2}
!134 = !{i64 2148180188, i64 2148180193, i64 2148180206, i64 2148180250, i64 2148180284, i64 2148180305}
!135 = !{i64 2157713144}
!136 = !{i64 2157713359}
!137 = !{i64 2149504103}
!138 = !{i64 2149505139}
!139 = !{i64 6571344}
!140 = !{i64 2157613087}
!141 = !{i64 2148366795, i64 2148366821, i64 2148366850, i64 2148366884, i64 2148366915, i64 2148366938}
!142 = !{i64 2157609664}
!143 = !{i64 6570926}
!144 = !{i64 2157696150}
!145 = !{i64 2157696363}
!146 = !{i64 2148369260, i64 2148369286, i64 2148369315, i64 2148369349, i64 2148369380, i64 2148369403}
