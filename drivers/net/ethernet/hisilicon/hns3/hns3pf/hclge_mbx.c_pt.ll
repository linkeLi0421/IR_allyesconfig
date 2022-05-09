; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.182 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.184, %struct.trace_event, ptr, ptr, %union.anon.185, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.184 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.185 = type { ptr }
%union.anon.186 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.187 = type { %struct.bpf_raw_event_map }
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
%struct.hclge_dev = type { ptr, ptr, %struct.hclge_hw, %struct.hclge_misc_vector, %struct.hclge_mac_stats, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hclge_rst_stats, %struct.semaphore, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i16, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, %struct.hclge_tm_info, i16, i16, i16, ptr, ptr, i16, i16, i32, i32, %struct.timer_list, %struct.delayed_work, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.mutex, %struct.hclge_vlan_type_cfg, [4096 x [8 x i32]], [8 x i32], [8 x i32], %struct.hclge_fd_cfg, %struct.hlist_head, %struct.spinlock, i16, i32, i32, i32, i32, [128 x i32], i32, i8, i8, i16, i16, i16, i16, i16, %struct.anon.149, %struct.cpumask, ptr, ptr, %struct.hclge_comm_rss_cfg }
%struct.hclge_hw = type { %struct.hclge_comm_hw, %struct.hclge_mac, i32 }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.hclge_mac = type { i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [3 x i32], [3 x i32] }
%struct.hclge_misc_vector = type { ptr, i32, [32 x i8] }
%struct.hclge_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hclge_rst_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.hclge_tm_info = type { i8, i8, [4 x i8], [8 x i8], [4 x %struct.hclge_pg_info], [8 x %struct.hclge_tc_info], i32, i8, i8 }
%struct.hclge_pg_info = type { i8, i8, i8, i32, [8 x i8] }
%struct.hclge_tc_info = type { i8, i8, i8, i32 }
%struct.hclge_vlan_type_cfg = type { i16, i16, i16, i16, i16, i16 }
%struct.hclge_fd_cfg = type { i8, i16, [2 x i32], [2 x i16], [2 x %struct.hclge_fd_key_cfg], [3 x %struct.hclge_fd_user_def_cfg] }
%struct.hclge_fd_key_cfg = type { i8, i8, i8, i8, i8, i32, i32 }
%struct.hclge_fd_user_def_cfg = type { i16, i16 }
%struct.anon.149 = type { %union.anon.150, [8 x %struct.hclge_mac_tnl_stats] }
%union.anon.150 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hclge_mac_tnl_stats = type { i64, i32 }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hclge_vport = type { i16, i16, i32, i8, i8, i8, [128 x i32], %struct.hclge_port_base_vlan_config, %struct.hclge_tx_vtag_cfg, %struct.hclge_rx_vtag_cfg, i16, i16, ptr, %struct.hnae3_handle, %struct.hnae3_handle, i32, i32, i32, %struct.hclge_vf_info, i8, i8, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hclge_port_base_vlan_config = type { i16, %struct.hclge_vlan_info }
%struct.hclge_vlan_info = type { i16, i16, i16 }
%struct.hclge_tx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i16, i16, i8 }
%struct.hclge_rx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.102, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.102 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.hclge_vf_info = type { i32, [6 x i8], i32, i32, i32, i8, i8, i8 }
%struct.trace_event_raw_hclge_pf_mbx_get = type { %struct.trace_entry, i8, i8, i8, i32, i32, [6 x i32], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i8, i8, i8, [1 x i8], i8, i8, i16, %struct.hclge_vf_to_pf_msg }
%struct.hclge_vf_to_pf_msg = type { i8, %union.anon.154 }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { i8, [14 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_hclge_pf_mbx_send = type { %struct.trace_entry, i8, i16, i32, i32, [6 x i32], [0 x i8] }
%struct.hclge_mbx_pf_to_vf_cmd = type { i8, [3 x i8], i8, i8, i16, %struct.hclge_pf_to_vf_msg }
%struct.hclge_pf_to_vf_msg = type { i16, i16, i16, i16, [8 x i8] }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.hnae3_ae_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hnae3_ring_chain_node = type { ptr, i32, i32, i32 }
%struct.hclge_ring_chain_param = type { i8, i8, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_hclge_pf_mbx_get = internal constant [17 x i8] c"hclge_pf_mbx_get\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hclge_pf_mbx_get = dso_local global %struct.static_call_key { ptr @__traceiter_hclge_pf_mbx_get }, align 4
@__tracepoint_hclge_pf_mbx_get = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hclge_pf_mbx_get, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hclge_pf_mbx_get, ptr null, ptr @__traceiter_hclge_pf_mbx_get, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hclge_pf_mbx_get = internal constant ptr @__tracepoint_hclge_pf_mbx_get, section "__tracepoints_ptrs", align 4
@__tpstrtab_hclge_pf_mbx_send = internal constant [18 x i8] c"hclge_pf_mbx_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hclge_pf_mbx_send = dso_local global %struct.static_call_key { ptr @__traceiter_hclge_pf_mbx_send }, align 4
@__tracepoint_hclge_pf_mbx_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hclge_pf_mbx_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hclge_pf_mbx_send, ptr null, ptr @__traceiter_hclge_pf_mbx_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hclge_pf_mbx_send = internal constant ptr @__tracepoint_hclge_pf_mbx_send, section "__tracepoints_ptrs", align 4
@str__hns3__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hns3\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_hclge_pf_mbx_get = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.182 { %struct.anon.183 { ptr @.str.35, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.182 { %struct.anon.183 { ptr @.str.36, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.182 { %struct.anon.183 { ptr @.str.37, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.182 { %struct.anon.183 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.182 { %struct.anon.183 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.182 { %struct.anon.183 { ptr @.str.42, i32 24, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_hclge_pf_mbx_get = internal global %struct.trace_event_class { ptr @str__hns3__trace_system_name, ptr @trace_event_raw_event_hclge_pf_mbx_get, ptr @perf_trace_hclge_pf_mbx_get, ptr @trace_event_reg, ptr @trace_event_fields_hclge_pf_mbx_get, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hclge_pf_mbx_get, i64 24), ptr getelementptr (i8, ptr @event_class_hclge_pf_mbx_get, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hclge_pf_mbx_get = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hclge_pf_mbx_get, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hclge_pf_mbx_get = internal global { [217 x i8], [39 x i8] } { [217 x i8] c"\22%s %s vfid:%u code:%u subcode:%u data:%s\22, __get_str(pciname), __get_str(devname), REC->vfid, REC->code, REC->subcode, __print_array(REC->mbx_data, (sizeof(struct hclge_mbx_vf_to_pf_cmd) / sizeof(u32)), sizeof(u32))\00", [39 x i8] zeroinitializer }, align 32
@event_hclge_pf_mbx_get = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hclge_pf_mbx_get, %union.anon.184 { ptr @__tracepoint_hclge_pf_mbx_get }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hclge_pf_mbx_get }, ptr @print_fmt_hclge_pf_mbx_get, ptr null, %union.anon.185 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hclge_pf_mbx_get = internal global ptr @event_hclge_pf_mbx_get, section "_ftrace_events", align 4
@trace_event_fields_hclge_pf_mbx_send = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.182 { %struct.anon.183 { ptr @.str.35, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.182 { %struct.anon.183 { ptr @.str.36, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.182 { %struct.anon.183 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.182 { %struct.anon.183 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.182 { %struct.anon.183 { ptr @.str.42, i32 24, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_hclge_pf_mbx_send = internal global %struct.trace_event_class { ptr @str__hns3__trace_system_name, ptr @trace_event_raw_event_hclge_pf_mbx_send, ptr @perf_trace_hclge_pf_mbx_send, ptr @trace_event_reg, ptr @trace_event_fields_hclge_pf_mbx_send, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hclge_pf_mbx_send, i64 24), ptr getelementptr (i8, ptr @event_class_hclge_pf_mbx_send, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hclge_pf_mbx_send = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hclge_pf_mbx_send, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hclge_pf_mbx_send = internal global { [192 x i8], [32 x i8] } { [192 x i8] c"\22%s %s vfid:%u code:%u data:%s\22, __get_str(pciname), __get_str(devname), REC->vfid, REC->code, __print_array(REC->mbx_data, (sizeof(struct hclge_mbx_pf_to_vf_cmd) / sizeof(u32)), sizeof(u32))\00", [32 x i8] zeroinitializer }, align 32
@event_hclge_pf_mbx_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hclge_pf_mbx_send, %union.anon.184 { ptr @__tracepoint_hclge_pf_mbx_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hclge_pf_mbx_send }, ptr @print_fmt_hclge_pf_mbx_send, ptr null, %union.anon.185 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hclge_pf_mbx_send = internal global ptr @event_hclge_pf_mbx_send, section "_ftrace_events", align 4
@__bpf_trace_tp_map_hclge_pf_mbx_get = internal global %union.anon.186 { %struct.bpf_raw_event_map { ptr @__tracepoint_hclge_pf_mbx_get, ptr @__bpf_trace_hclge_pf_mbx_get, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hclge_pf_mbx_send = internal global %union.anon.187 { %struct.bpf_raw_event_map { ptr @__tracepoint_hclge_pf_mbx_send, ptr @__bpf_trace_hclge_pf_mbx_send, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__const.hclge_mbx_handler.resp_msg = private unnamed_addr constant { i32, [8 x i8], i16, [2 x i8] } { i32 -1, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", i16 -1, [2 x i8] c"\FF\FF" }, align 4
@hclge_mbx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 714, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"command queue needs re-initializing\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_mbx_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr = internal global ptr @hclge_mbx_handler._entry, section ".printk_index", align 4
@hclge_mbx_handler._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 725, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dropped invalid mailbox message, code = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.7 = internal global ptr @hclge_mbx_handler._entry.5, section ".printk_index", align 4
@hclge_mbx_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 757, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PF fail(%d) to set VF UC MAC Addr\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.11 = internal global ptr @hclge_mbx_handler._entry.8, section ".printk_index", align 4
@hclge_mbx_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 764, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PF fail(%d) to set VF MC MAC Addr\0A\00", [61 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.14 = internal global ptr @hclge_mbx_handler._entry.12, section ".printk_index", align 4
@hclge_mbx_handler._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 771, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PF failed(%d) to config VF's VLAN\0A\00", [61 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.17 = internal global ptr @hclge_mbx_handler._entry.15, section ".printk_index", align 4
@hclge_mbx_handler._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 778, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PF failed(%d) to set VF's ALIVE\0A\00", [63 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.20 = internal global ptr @hclge_mbx_handler._entry.18, section ".printk_index", align 4
@hclge_mbx_handler._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 794, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to inform link stat to VF, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.23 = internal global ptr @hclge_mbx_handler._entry.21, section ".printk_index", align 4
@hclge_mbx_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 809, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VF fail(%d) to set mtu\0A\00", [40 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.26 = internal global ptr @hclge_mbx_handler._entry.24, section ".printk_index", align 4
@hclge_mbx_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 847, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"un-supported mailbox message, code = %u\0A\00", [55 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.29 = internal global ptr @hclge_mbx_handler._entry.27, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hclge_mbx_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"resp vport%u mbx(%u,%u) late\0A\00", [34 x i8] zeroinitializer }, align 32
@hclge_mbx_handler._entry_ptr.32 = internal global ptr @hclge_mbx_handler._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfid\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"code\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"subcode\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pciname\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32[(sizeof(struct hclge_mbx_vf_to_pf_cmd) / sizeof(u32))]\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mbx_data\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s vfid:%u code:%u subcode:%u data:%s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"u32[(sizeof(struct hclge_mbx_pf_to_vf_cmd) / sizeof(u32))]\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s vfid:%u code:%u data:%s\0A\00", [33 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hclge_send_mbx_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 113, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"failed to send mailbox to VF, status: %d, vfid: %u, opcode: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclge_send_mbx_msg\00", [45 x i8] zeroinitializer }, align 32
@hclge_send_mbx_msg._entry_ptr = internal global ptr @hclge_send_mbx_msg._entry, section ".printk_index", align 4
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_trace.h\00", [39 x i8] zeroinitializer }, align 32
@trace_hclge_pf_mbx_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_hclge_pf_mbx_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hclge_get_ring_chain_from_mbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 185, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tqp index(%u) is out of range(0-%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclge_get_ring_chain_from_mbx\00", [34 x i8] zeroinitializer }, align 32
@hclge_get_ring_chain_from_mbx._entry_ptr = internal global ptr @hclge_get_ring_chain_from_mbx._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hclge_set_vf_uc_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 302, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to set unicast mac addr, unknown subcode %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_set_vf_uc_mac_addr\00", [39 x i8] zeroinitializer }, align 32
@hclge_set_vf_uc_mac_addr._entry_ptr = internal global ptr @hclge_set_vf_uc_mac_addr._entry, section ".printk_index", align 4
@hclge_set_vf_mc_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 324, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to set mcast mac addr, unknown subcode %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_set_vf_mc_mac_addr\00", [39 x i8] zeroinitializer }, align 32
@hclge_set_vf_mc_mac_addr._entry_ptr = internal global ptr @hclge_set_vf_mc_mac_addr._entry, section ".printk_index", align 4
@hclge_mbx_reset_vf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 560, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to reset vf %u queue, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_mbx_reset_vf_queue\00", [39 x i8] zeroinitializer }, align 32
@hclge_mbx_reset_vf_queue._entry_ptr = internal global ptr @hclge_mbx_reset_vf_queue._entry, section ".printk_index", align 4
@hclge_reset_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PF received VF reset request from VF %u!\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclge_reset_vf\00", [17 x i8] zeroinitializer }, align 32
@hclge_reset_vf._entry_ptr = internal global ptr @hclge_reset_vf._entry, section ".printk_index", align 4
@hclge_get_queue_id_in_pf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 601, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid queue id(%u) from VF %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_get_queue_id_in_pf\00", [39 x i8] zeroinitializer }, align 32
@hclge_get_queue_id_in_pf._entry_ptr = internal global ptr @hclge_get_queue_id_in_pf._entry, section ".printk_index", align 4
@hclge_get_rss_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to get the rss hash key, the index(%u) invalid !\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_get_rss_key\00", [46 x i8] zeroinitializer }, align 32
@hclge_get_rss_key._entry_ptr = internal global ptr @hclge_get_rss_key._entry, section ".printk_index", align 4
@hclge_link_fail_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reference clock lost!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclge_link_fail_parse\00", [42 x i8] zeroinitializer }, align 32
@hclge_link_fail_parse._entry_ptr = internal global ptr @hclge_link_fail_parse._entry, section ".printk_index", align 4
@hclge_link_fail_parse._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 646, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SFP tx is disabled!\0A\00", [43 x i8] zeroinitializer }, align 32
@hclge_link_fail_parse._entry_ptr.70 = internal global ptr @hclge_link_fail_parse._entry.68, section ".printk_index", align 4
@hclge_link_fail_parse._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SFP is absent!\0A\00", [16 x i8] zeroinitializer }, align 32
@hclge_link_fail_parse._entry_ptr.73 = internal global ptr @hclge_link_fail_parse._entry.71, section ".printk_index", align 4
@hclge_handle_ncsi_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"requesting reset due to NCSI error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclge_handle_ncsi_error\00", [40 x i8] zeroinitializer }, align 32
@hclge_handle_ncsi_error._entry_ptr = internal global ptr @hclge_handle_ncsi_error._entry, section ".printk_index", align 4
@hclge_handle_vf_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 694, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid cmd(%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclge_handle_vf_tbl\00", [44 x i8] zeroinitializer }, align 32
@hclge_handle_vf_tbl._entry_ptr = internal global ptr @hclge_handle_vf_tbl._entry, section ".printk_index", align 4
@hclge_gen_resp_to_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 47, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PF fail to gen resp to VF len %u exceeds max len %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclge_gen_resp_to_vf\00", [43 x i8] zeroinitializer }, align 32
@hclge_gen_resp_to_vf._entry_ptr = internal global ptr @hclge_gen_resp_to_vf._entry, section ".printk_index", align 4
@hclge_gen_resp_to_vf._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"failed to send response to VF, response status %u is out-of-bound\0A\00", [61 x i8] zeroinitializer }, align 32
@hclge_gen_resp_to_vf._entry_ptr.82 = internal global ptr @hclge_gen_resp_to_vf._entry.80, section ".printk_index", align 4
@hclge_gen_resp_to_vf._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 84, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"failed to send response to VF, status: %d, vfid: %u, code: %u, subcode: %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@hclge_gen_resp_to_vf._entry_ptr.85 = internal global ptr @hclge_gen_resp_to_vf._entry.83, section ".printk_index", align 4
@switch.table.hclge_mbx_handler = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.69, ptr @.str.72], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [27 x i64] [i64 25, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 13, i64 15, i64 16, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 33, i64 35, i64 37, i64 38, i64 200, i64 201, i64 202]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 5]
@___asan_gen_.90 = private unnamed_addr constant [29 x i8] c"str__hns3__trace_system_name\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 36, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [36 x i8] c"trace_event_fields_hclge_pf_mbx_get\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_hclge_pf_mbx_get\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"print_fmt_hclge_pf_mbx_get\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"event_hclge_pf_mbx_get\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [37 x i8] c"trace_event_fields_hclge_pf_mbx_send\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_hclge_pf_mbx_send\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [28 x i8] c"print_fmt_hclge_pf_mbx_send\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"event_hclge_pf_mbx_send\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 713, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 723, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 755, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 762, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 769, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 776, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 792, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 808, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 845, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 857, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 16, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 111, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [62 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/./hclge_trace.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 49, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 108, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 183, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 300, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 322, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 559, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 569, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 600, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 627, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 643, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 646, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 649, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 677, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 693, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 44, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 67, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [58 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 81, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [31 x i8] c"switch.table.hclge_mbx_handler\00", align 1
@llvm.compiler.used = appending global [132 x ptr] [ptr @__bpf_trace_tp_map_hclge_pf_mbx_get, ptr @__bpf_trace_tp_map_hclge_pf_mbx_send, ptr @__event_hclge_pf_mbx_get, ptr @__event_hclge_pf_mbx_send, ptr @__tracepoint_hclge_pf_mbx_get, ptr @__tracepoint_hclge_pf_mbx_send, ptr @__tracepoint_ptr_hclge_pf_mbx_get, ptr @__tracepoint_ptr_hclge_pf_mbx_send, ptr @event_class_hclge_pf_mbx_get, ptr @event_class_hclge_pf_mbx_send, ptr @event_hclge_pf_mbx_get, ptr @event_hclge_pf_mbx_send, ptr @hclge_gen_resp_to_vf._entry, ptr @hclge_gen_resp_to_vf._entry.80, ptr @hclge_gen_resp_to_vf._entry.83, ptr @hclge_gen_resp_to_vf._entry_ptr, ptr @hclge_gen_resp_to_vf._entry_ptr.82, ptr @hclge_gen_resp_to_vf._entry_ptr.85, ptr @hclge_get_queue_id_in_pf._entry, ptr @hclge_get_queue_id_in_pf._entry_ptr, ptr @hclge_get_ring_chain_from_mbx._entry, ptr @hclge_get_ring_chain_from_mbx._entry_ptr, ptr @hclge_get_rss_key._entry, ptr @hclge_get_rss_key._entry_ptr, ptr @hclge_handle_ncsi_error._entry, ptr @hclge_handle_ncsi_error._entry_ptr, ptr @hclge_handle_vf_tbl._entry, ptr @hclge_handle_vf_tbl._entry_ptr, ptr @hclge_link_fail_parse._entry, ptr @hclge_link_fail_parse._entry.68, ptr @hclge_link_fail_parse._entry.71, ptr @hclge_link_fail_parse._entry_ptr, ptr @hclge_link_fail_parse._entry_ptr.70, ptr @hclge_link_fail_parse._entry_ptr.73, ptr @hclge_mbx_handler._entry, ptr @hclge_mbx_handler._entry.12, ptr @hclge_mbx_handler._entry.15, ptr @hclge_mbx_handler._entry.18, ptr @hclge_mbx_handler._entry.21, ptr @hclge_mbx_handler._entry.24, ptr @hclge_mbx_handler._entry.27, ptr @hclge_mbx_handler._entry.30, ptr @hclge_mbx_handler._entry.5, ptr @hclge_mbx_handler._entry.8, ptr @hclge_mbx_handler._entry_ptr, ptr @hclge_mbx_handler._entry_ptr.11, ptr @hclge_mbx_handler._entry_ptr.14, ptr @hclge_mbx_handler._entry_ptr.17, ptr @hclge_mbx_handler._entry_ptr.20, ptr @hclge_mbx_handler._entry_ptr.23, ptr @hclge_mbx_handler._entry_ptr.26, ptr @hclge_mbx_handler._entry_ptr.29, ptr @hclge_mbx_handler._entry_ptr.32, ptr @hclge_mbx_handler._entry_ptr.7, ptr @hclge_mbx_reset_vf_queue._entry, ptr @hclge_mbx_reset_vf_queue._entry_ptr, ptr @hclge_reset_vf._entry, ptr @hclge_reset_vf._entry_ptr, ptr @hclge_send_mbx_msg._entry, ptr @hclge_send_mbx_msg._entry_ptr, ptr @hclge_set_vf_mc_mac_addr._entry, ptr @hclge_set_vf_mc_mac_addr._entry_ptr, ptr @hclge_set_vf_uc_mac_addr._entry, ptr @hclge_set_vf_uc_mac_addr._entry_ptr, ptr @str__hns3__trace_system_name, ptr @trace_event_fields_hclge_pf_mbx_get, ptr @trace_event_type_funcs_hclge_pf_mbx_get, ptr @print_fmt_hclge_pf_mbx_get, ptr @trace_event_fields_hclge_pf_mbx_send, ptr @trace_event_type_funcs_hclge_pf_mbx_send, ptr @print_fmt_hclge_pf_mbx_send, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @switch.table.hclge_mbx_handler], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__hns3__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hclge_pf_mbx_get to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hclge_pf_mbx_get to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hclge_pf_mbx_get to i32), i32 217, i32 256, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hclge_pf_mbx_get to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hclge_pf_mbx_send to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hclge_pf_mbx_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hclge_pf_mbx_send to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hclge_pf_mbx_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_send_mbx_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_ring_chain_from_mbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_set_vf_uc_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_set_vf_mc_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mbx_reset_vf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_reset_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_queue_id_in_pf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_get_rss_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_link_fail_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_link_fail_parse._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_link_fail_parse._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_ncsi_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_vf_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_gen_resp_to_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_gen_resp_to_vf._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_gen_resp_to_vf._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hclge_mbx_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hclge_pf_mbx_get(ptr nocapture readnone %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_get, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_hclge_pf_mbx_send(ptr nocapture readnone %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_send, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_hclge_pf_mbx_get(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !180

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !181

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
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %if.end.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge

if.end.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_pf_mbx_get.exit

pci_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i52 = icmp eq ptr %8, null
  %spec.select62 = select i1 %tobool.not.i52, ptr @.str.33, ptr %8
  br label %trace_event_get_offsets_hclge_pf_mbx_get.exit

trace_event_get_offsets_hclge_pf_mbx_get.exit:    ; preds = %pci_name.exit.i, %if.end.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge ], [ %spec.select62, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %9 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vport.i, align 4
  %11 = getelementptr inbounds %struct.hclge_vport, ptr %10, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %tobool8.not.i = icmp eq ptr %13, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.33, ptr %13
  %call18.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add19.i = add i32 %call18.i, 1
  %add25.i = add i32 %call4.i, 45
  %add = add i32 %add25.i, %add19.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_hclge_pf_mbx_get.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_hclge_pf_mbx_get.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_hclge_pf_mbx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_hclge_pf_mbx_get.exit
  %shl22.i = shl i32 %add19.i, 16
  %or24.i = or i32 %shl22.i, %add25.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or24.i, ptr %__data_loc_devname, align 4
  %mbx_src_vfid = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mbx_src_vfid, align 1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msg, align 2
  %code6 = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %code6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %code6, align 1
  %22 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %subcode8 = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call3, i32 0, i32 3
  %25 = ptrtoint ptr %subcode8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %subcode8, align 2
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %26 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end5
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %tobool11.not = icmp eq ptr %31, null
  br i1 %tobool11.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i56

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i56:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i56, %pci_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.33, %pci_name.exit.cond.end_crit_edge ], [ %33, %if.end.i.i56 ], [ %29, %if.end5.cond.end_crit_edge ]
  %call14 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %34 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %__data_loc_devname, align 4
  %and16 = and i32 %35, 65535
  %add.ptr17 = getelementptr i8, ptr %call3, i32 %and16
  %36 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vport.i, align 4
  %38 = getelementptr inbounds %struct.hclge_vport, ptr %37, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %tobool18.not = icmp eq ptr %40, null
  %spec.select = select i1 %tobool18.not, ptr @.str.33, ptr %40
  %call28 = call ptr @strcpy(ptr noundef %add.ptr17, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call3, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_hclge_pf_mbx_get.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hclge_pf_mbx_get(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !182
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %entry.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge

entry.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_pf_mbx_get.exit

pci_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select86 = select i1 %tobool.not.i, ptr @.str.33, ptr %7
  br label %trace_event_get_offsets_hclge_pf_mbx_get.exit

trace_event_get_offsets_hclge_pf_mbx_get.exit:    ; preds = %pci_name.exit.i, %entry.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_hclge_pf_mbx_get.exit_crit_edge ], [ %spec.select86, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 44
  %vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %8 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vport.i, align 4
  %10 = getelementptr inbounds %struct.hclge_vport, ptr %9, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %tobool8.not.i = icmp eq ptr %12, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.33, ptr %12
  %call18.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add19.i = add i32 %call18.i, 1
  %add21.i = add i32 %call4.i, 45
  %shl22.i = shl i32 %add19.i, 16
  %or24.i = or i32 %shl22.i, %add21.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %13 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %perf_events, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !170) #11
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add = add i32 %21, %15
  %22 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %23 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %24, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_hclge_pf_mbx_get.exit.if.end_crit_edge

trace_event_get_offsets_hclge_pf_mbx_get.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_hclge_pf_mbx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_hclge_pf_mbx_get.exit
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %22, align 4
  %tobool.not.i77.not = icmp eq ptr %26, null
  br i1 %tobool.not.i77.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_hclge_pf_mbx_get.exit.if.end_crit_edge
  %add25.i = add i32 %call4.i, 56
  %add12 = add i32 %add25.i, %add19.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %27 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__regs, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #11
  %30 = ptrtoint ptr %29 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.i, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %33 = ptrtoint ptr %32 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx2.i, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !170) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or24.i, ptr %__data_loc_devname, align 4
  %mbx_src_vfid = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 1
  %40 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mbx_src_vfid, align 1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call13, i32 0, i32 1
  %42 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %msg, align 2
  %code17 = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call13, i32 0, i32 2
  %45 = ptrtoint ptr %code17 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %code17, align 1
  %46 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %subcode19 = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call13, i32 0, i32 3
  %49 = ptrtoint ptr %subcode19 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %subcode19, align 2
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %50 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44, i32 3
  %52 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %tobool23.not = icmp eq ptr %55, null
  br i1 %tobool23.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i81

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i81:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i81, %pci_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.33, %pci_name.exit.cond.end_crit_edge ], [ %57, %if.end.i.i81 ], [ %53, %if.end16.cond.end_crit_edge ]
  %call26 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %58 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %__data_loc_devname, align 4
  %and28 = and i32 %59, 65535
  %add.ptr29 = getelementptr i8, ptr %call13, i32 %and28
  %60 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vport.i, align 4
  %62 = getelementptr inbounds %struct.hclge_vport, ptr %61, i32 0, i32 13, i32 5
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %tobool31.not = icmp eq ptr %64, null
  %spec.select = select i1 %tobool31.not, ptr @.str.33, ptr %64
  %call41 = call ptr @strcpy(ptr noundef %add.ptr29, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %call13, i32 0, i32 6
  %65 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  %66 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rctx, align 4
  %68 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %67, ptr noundef %__data, i64 noundef 1, ptr noundef %69, ptr noundef %22, ptr noundef null) #11
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
define internal void @trace_event_raw_event_hclge_pf_mbx_send(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !180

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !181

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
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %if.end.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge

if.end.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_pf_mbx_send.exit

pci_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i48 = icmp eq ptr %8, null
  %spec.select58 = select i1 %tobool.not.i48, ptr @.str.33, ptr %8
  br label %trace_event_get_offsets_hclge_pf_mbx_send.exit

trace_event_get_offsets_hclge_pf_mbx_send.exit:   ; preds = %pci_name.exit.i, %if.end.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge ], [ %spec.select58, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %9 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vport.i, align 4
  %11 = getelementptr inbounds %struct.hclge_vport, ptr %10, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %tobool8.not.i = icmp eq ptr %13, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.33, ptr %13
  %call18.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add19.i = add i32 %call18.i, 1
  %add25.i = add i32 %call4.i, 45
  %add = add i32 %add25.i, %add19.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_hclge_pf_mbx_send.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_hclge_pf_mbx_send.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_hclge_pf_mbx_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_hclge_pf_mbx_send.exit
  %shl22.i = shl i32 %add19.i, 16
  %or24.i = or i32 %shl22.i, %add25.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call3, i32 0, i32 4
  %15 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or24.i, ptr %__data_loc_devname, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %req, align 2
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %req, i32 0, i32 5
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %msg, align 2
  %code6 = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %code6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %code6, align 2
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %22 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end5
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i52

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i52:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i52, %pci_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.33, %pci_name.exit.cond.end_crit_edge ], [ %29, %if.end.i.i52 ], [ %25, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %30 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__data_loc_devname, align 4
  %and14 = and i32 %31, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %32 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vport.i, align 4
  %34 = getelementptr inbounds %struct.hclge_vport, ptr %33, i32 0, i32 13, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tobool16.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool16.not, ptr @.str.33, ptr %36
  %call26 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call3, i32 0, i32 5
  %37 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_hclge_pf_mbx_send.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hclge_pf_mbx_send(ptr noundef %__data, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !182
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %pci_name.exit.i, label %entry.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge

entry.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_hclge_pf_mbx_send.exit

pci_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select82 = select i1 %tobool.not.i, ptr @.str.33, ptr %7
  br label %trace_event_get_offsets_hclge_pf_mbx_send.exit

trace_event_get_offsets_hclge_pf_mbx_send.exit:   ; preds = %pci_name.exit.i, %entry.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_hclge_pf_mbx_send.exit_crit_edge ], [ %spec.select82, %pci_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 44
  %vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %8 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vport.i, align 4
  %10 = getelementptr inbounds %struct.hclge_vport, ptr %9, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %tobool8.not.i = icmp eq ptr %12, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.33, ptr %12
  %call18.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add19.i = add i32 %call18.i, 1
  %add21.i = add i32 %call4.i, 45
  %shl22.i = shl i32 %add19.i, 16
  %or24.i = or i32 %shl22.i, %add21.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %13 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %perf_events, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !170) #11
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add = add i32 %21, %15
  %22 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %23 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %24, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_hclge_pf_mbx_send.exit.if.end_crit_edge

trace_event_get_offsets_hclge_pf_mbx_send.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_hclge_pf_mbx_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_hclge_pf_mbx_send.exit
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %22, align 4
  %tobool.not.i73.not = icmp eq ptr %26, null
  br i1 %tobool.not.i73.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_hclge_pf_mbx_send.exit.if.end_crit_edge
  %add25.i = add i32 %call4.i, 56
  %add12 = add i32 %add25.i, %add19.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %27 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__regs, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #11
  %30 = ptrtoint ptr %29 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.i, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %33 = ptrtoint ptr %32 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx2.i, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !170) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %__data_loc_pciname, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or24.i, ptr %__data_loc_devname, align 4
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %req, align 2
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call13, i32 0, i32 1
  %42 = ptrtoint ptr %vfid to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %vfid, align 4
  %msg = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %req, i32 0, i32 5
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %msg, align 2
  %code17 = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call13, i32 0, i32 2
  %45 = ptrtoint ptr %code17 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %code17, align 2
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %46 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %pci_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

pci_name.exit:                                    ; preds = %if.end16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %tobool21.not = icmp eq ptr %51, null
  br i1 %tobool21.not, label %pci_name.exit.cond.end_crit_edge, label %if.end.i.i77

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i77:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i77, %pci_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.33, %pci_name.exit.cond.end_crit_edge ], [ %53, %if.end.i.i77 ], [ %49, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %54 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %__data_loc_devname, align 4
  %and26 = and i32 %55, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %56 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vport.i, align 4
  %58 = getelementptr inbounds %struct.hclge_vport, ptr %57, i32 0, i32 13, i32 5
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %tobool29.not = icmp eq ptr %60, null
  %spec.select = select i1 %tobool29.not, ptr @.str.33, ptr %60
  %call39 = call ptr @strcpy(ptr noundef %add.ptr27, ptr noundef nonnull %spec.select) #15
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %call13, i32 0, i32 5
  %61 = call ptr @memcpy(ptr %mbx_data, ptr %req, i32 24)
  %62 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rctx, align 4
  %64 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %63, ptr noundef %__data, i64 noundef 1, ptr noundef %65, ptr noundef %22, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hclge_pf_mbx_get(ptr noundef %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
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
define internal void @__bpf_trace_hclge_pf_mbx_send(ptr noundef %__data, ptr noundef %hdev, ptr noundef %req) #0 align 64 {
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
define dso_local i32 @hclge_inform_reset_assert_to_vf(ptr nocapture noundef readonly %vport) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %vport_id = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 11
  %2 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vport_id, align 2
  %reset_type1 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %reset_type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %switch.selectcmp12 = icmp eq i32 %5, 5
  %conv = trunc i16 %3 to i8
  %6 = select i1 %switch.selectcmp, i8 3, i8 1
  %msg_data.sroa.5.0.extract.trunc = select i1 %switch.selectcmp12, i8 2, i8 %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %7 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %9 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %10 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 8192, i1 noundef zeroext false) #11
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %9, align 4
  %vf_mbx_msg_code.i = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %vf_mbx_msg_code.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %vf_mbx_msg_code.i, align 2
  %msg_data.sroa.5.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds i8, ptr %vf_mbx_msg_code.i, i32 1
  %15 = ptrtoint ptr %msg_data.sroa.5.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %msg_data.sroa.5.0.extract.trunc, ptr %msg_data.sroa.5.0.vf_mbx_msg_code.i.sroa_idx, align 1
  call fastcc void @trace_hclge_pf_mbx_send(ptr noundef %1, ptr noundef %7) #11
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.hclge_send_mbx_msg.exit_crit_edge, label %do.end.i

entry.hclge_send_mbx_msg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_send_mbx_msg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %conv.mask = and i16 %3, 255
  %conv6.i = zext i16 %conv.mask to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %call.i, i32 noundef %conv6.i, i32 noundef 2) #16
  br label %hclge_send_mbx_msg.exit

hclge_send_mbx_msg.exit:                          ; preds = %do.end.i, %entry.hclge_send_mbx_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_push_vf_port_base_vlan_info(ptr nocapture noundef readonly %vport, i8 noundef zeroext %vfid, i16 noundef zeroext %state, ptr nocapture noundef readonly %vlan_info) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vlan_info to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_info, align 2
  %qos = getelementptr inbounds %struct.hclge_vlan_info, ptr %vlan_info, i32 0, i32 1
  %2 = ptrtoint ptr %qos to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %qos, align 2
  %vlan_tag = getelementptr inbounds %struct.hclge_vlan_info, ptr %vlan_info, i32 0, i32 2
  %4 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_tag, align 2
  %back.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 12
  %6 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %8 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %10 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %11 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 8192, i1 noundef zeroext false) #11
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %vfid, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 34, ptr %10, align 4
  %vf_mbx_msg_code.i = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %vf_mbx_msg_code.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %state, ptr %vf_mbx_msg_code.i, align 2
  %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %1, ptr %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx, align 4
  %msg_data.sroa.9.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %msg_data.sroa.9.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %3, ptr %msg_data.sroa.9.0.vf_mbx_msg_code.i.sroa_idx, align 2
  %msg_data.sroa.12.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %msg_data.sroa.12.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %5, ptr %msg_data.sroa.12.0.vf_mbx_msg_code.i.sroa_idx, align 4
  call fastcc void @trace_hclge_pf_mbx_send(ptr noundef %7, ptr noundef %8) #11
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %7, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.hclge_send_mbx_msg.exit_crit_edge, label %do.end.i

entry.hclge_send_mbx_msg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_send_mbx_msg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %conv6.i = zext i8 %vfid to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %call.i, i32 noundef %conv6.i, i32 noundef 34) #16
  br label %hclge_send_mbx_msg.exit

hclge_send_mbx_msg.exit:                          ; preds = %do.end.i, %entry.hclge_send_mbx_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_push_vf_link_status(ptr nocapture noundef readonly %vport) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %vf_info = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 18
  %2 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf_info, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %link = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2, i32 1, i32 16
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link, align 4
  %extract.t = trunc i32 %6 to i8
  %extract19 = lshr i32 %6, 8
  %extract.t18 = trunc i32 %extract19 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %link_status.0.off0 = phi i8 [ %extract.t, %sw.default ], [ 0, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %link_status.0.off8 = phi i8 [ %extract.t18, %sw.default ], [ 0, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %duplex5 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2, i32 1, i32 6
  %7 = ptrtoint ptr %duplex5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %duplex5, align 1
  %conv6 = zext i8 %8 to i16
  %speed = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2, i32 1, i32 9
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 4
  %vport_id = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 11
  %11 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vport_id, align 2
  %conv12 = trunc i16 %12 to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %13 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %14 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %15 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %16 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 8192, i1 noundef zeroext false) #11
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %13, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %14, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 23, ptr %15, align 4
  %vf_mbx_msg_code.i = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %15, i32 0, i32 1
  %msg_data.sroa.0.sroa.5.0.insert.ext = zext i8 %link_status.0.off0 to i16
  %msg_data.sroa.0.sroa.0.0.insert.ext = zext i8 %link_status.0.off8 to i16
  %msg_data.sroa.0.sroa.0.0.insert.shift = shl nuw i16 %msg_data.sroa.0.sroa.0.0.insert.ext, 8
  %msg_data.sroa.0.sroa.0.0.insert.insert = or i16 %msg_data.sroa.0.sroa.0.0.insert.shift, %msg_data.sroa.0.sroa.5.0.insert.ext
  %20 = ptrtoint ptr %vf_mbx_msg_code.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %msg_data.sroa.0.sroa.0.0.insert.insert, ptr %vf_mbx_msg_code.i, align 2
  %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx, align 4
  %msg_data.sroa.11.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %msg_data.sroa.11.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6, ptr %msg_data.sroa.11.0.vf_mbx_msg_code.i.sroa_idx, align 4
  %msg_data.sroa.14.0.vf_mbx_msg_code.i.sroa_idx = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %15, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %msg_data.sroa.14.0.vf_mbx_msg_code.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %msg_data.sroa.14.0.vf_mbx_msg_code.i.sroa_idx, align 2
  call fastcc void @trace_hclge_pf_mbx_send(ptr noundef %1, ptr noundef %13) #11
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog.hclge_send_mbx_msg.exit_crit_edge, label %do.end.i

sw.epilog.hclge_send_mbx_msg.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_send_mbx_msg.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %conv12.mask = and i16 %12, 255
  %conv6.i = zext i16 %conv12.mask to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %call.i, i32 noundef %conv6.i, i32 noundef 23) #16
  br label %hclge_send_mbx_msg.exit

hclge_send_mbx_msg.exit:                          ; preds = %do.end.i, %sw.epilog.hclge_send_mbx_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_mbx_handler(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  %desc.i.i = alloca %struct.hclge_desc, align 4
  %base.addr.i.i = alloca ptr, align 4
  %resp_msg.sroa.6 = alloca [12 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp_msg.sroa.6)
  %0 = call ptr @memcpy(ptr %resp_msg.sroa.6, ptr getelementptr inbounds ({ i32, [8 x i8], i16, [2 x i8] }, ptr @__const.hclge_mbx_handler.resp_msg, i32 0, i32 1, i32 0), i32 12)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %3 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i408 = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i409 = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i408, i32 159780
  %4 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i409) #11, !srcloc !183
  %5 = call i32 @llvm.bswap.i32(i32 %4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %next_to_use.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 7
  %6 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i410 = icmp eq i32 %5, %7
  br i1 %cmp.i410, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %comm_state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 3
  %desc7 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 1
  %vport32 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %ae_dev1.i372 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %8 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 1
  %10 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 2
  %vf_mbx_msg_code.i.i = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %10, i32 0, i32 1
  %msg_data.sroa.5.0.vf_mbx_msg_code.i.sroa_idx.i = getelementptr inbounds i8, ptr %vf_mbx_msg_code.i.i, i32 1
  %msg_data.sroa.514.0.vf_mbx_msg_code.i.sroa_idx.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 3
  %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 4
  %last_mbx_scheduled = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 73
  %11 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %12 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %13 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %14 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 3
  %15 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 4
  %match_id6.i = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, ptr %11, i32 0, i32 4
  %vf_mbx_msg_code.i = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %13, i32 0, i32 1
  %16 = getelementptr inbounds %struct.hclge_pf_to_vf_msg, ptr %13, i32 0, i32 3
  %desc_num168 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 6
  %resp_msg.sroa.6.4.add.ptr1.i.i.sroa_idx417 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 4
  %resp_msg.sroa.6.8.len.i371.sroa_idx426 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.1.arrayidx4.i362.sroa_idx411 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 1
  %resp_msg.sroa.6.8.len.i363.sroa_idx425 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.8.len.i352.sroa_idx424 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.8.len.i343.sroa_idx423 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.8.len.i315.sroa_idx422 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.4.pf_caps.i.sroa_idx414 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 4
  %resp_msg.sroa.6.8.len.i311.sroa_idx421 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.2.arrayidx2.i304.sroa_idx413 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 2
  %resp_msg.sroa.6.8.len.i305.sroa_idx420 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.2.arrayidx2.i.sroa_idx412 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 2
  %resp_msg.sroa.6.4.arrayidx4.i.sroa_idx416 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 4
  %resp_msg.sroa.6.8.len.i301.sroa_idx419 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.8.len.i.sroa_idx418 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  %resp_msg.sroa.6.8.len.i383.sroa_idx427 = getelementptr inbounds i8, ptr %resp_msg.sroa.6, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %17 = ptrtoint ptr %comm_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %comm_state, align 4
  %and1.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #16
  br label %cleanup

if.end:                                           ; preds = %while.body
  %21 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc7, align 4
  %23 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_to_use.i, align 4
  %data = getelementptr %struct.hclge_desc, ptr %22, i32 %24, i32 4
  %flag11 = getelementptr %struct.hclge_desc, ptr %22, i32 %24, i32 1
  %25 = ptrtoint ptr %flag11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flag11, align 2
  %27 = and i16 %26, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool12.not = icmp eq i16 %27, 0
  br i1 %tobool12.not, label %do.end20, label %if.end31, !prof !181

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %msg = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msg, align 2
  %conv23 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.6, i32 noundef %conv23) #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %hclge_gen_resp_to_vf.exit, %land.lhs.true.while.cond.backedge_crit_edge, %sw.epilog.while.cond.backedge_crit_edge, %do.end20
  %32 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc7, align 4
  %34 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %next_to_use.i, align 4
  %flag27 = getelementptr %struct.hclge_desc, ptr %33, i32 %35, i32 1
  %36 = ptrtoint ptr %flag27 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flag27, align 2
  %37 = load i32, ptr %next_to_use.i, align 4
  %add = add i32 %37, 1
  %38 = ptrtoint ptr %desc_num168 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %desc_num168, align 2
  %conv29 = zext i16 %39 to i32
  %rem = srem i32 %add, %conv29
  store i32 %rem, ptr %next_to_use.i, align 4
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %42 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i, i32 159780
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !183
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %45 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next_to_use.i, align 4
  %cmp.i = icmp eq i32 %44, %46
  br i1 %cmp.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end31:                                         ; preds = %if.end
  %47 = ptrtoint ptr %vport32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vport32, align 4
  %mbx_src_vfid = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 1
  %49 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mbx_src_vfid, align 1
  %idxprom = zext i8 %50 to i32
  %arrayidx33 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom
  call fastcc void @trace_hclge_pf_mbx_get(ptr noundef %hdev, ptr noundef %data)
  %51 = call ptr @memset(ptr %resp_msg.sroa.6, i32 0, i32 12)
  %msg34 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7
  %52 = ptrtoint ptr %msg34 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %msg34, align 2
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %53, label %do.end127 [
    i8 6, label %sw.bb
    i8 7, label %sw.bb38
    i8 8, label %sw.bb40
    i8 3, label %sw.bb41
    i8 4, label %sw.bb51
    i8 5, label %sw.bb61
    i8 29, label %sw.bb71
    i8 11, label %sw.bb81
    i8 12, label %sw.bb82
    i8 13, label %sw.bb83
    i8 26, label %sw.bb84
    i8 27, label %sw.bb94
    i8 1, label %sw.bb96
    i8 28, label %sw.bb98
    i8 30, label %sw.bb99
    i8 31, label %sw.bb109
    i8 15, label %sw.bb110
    i8 33, label %sw.bb111
    i8 -56, label %if.end31.sw.bb112_crit_edge
    i8 37, label %if.end31.sw.bb112_crit_edge431
    i8 35, label %sw.bb120
    i8 -55, label %sw.bb121
    i8 16, label %sw.bb122
    i8 -54, label %sw.bb123
    i8 38, label %sw.bb124
  ]

if.end31.sw.bb112_crit_edge431:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb112

if.end31.sw.bb112_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb112

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = call fastcc i32 @hclge_map_unmap_ring_to_vf_vector(ptr noundef %arrayidx33, i1 noundef zeroext true, ptr noundef %data)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = call fastcc i32 @hclge_map_unmap_ring_to_vf_vector(ptr noundef %arrayidx33, i1 noundef zeroext false, ptr noundef %data)
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end31
  %back.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %55 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %back.i, align 4
  %57 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %en_uc.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %en_uc.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %en_uc.i, align 1
  %request_uc_en.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 5
  %60 = ptrtoint ptr %request_uc_en.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %request_uc_en.i, align 4
  %en_mc.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %en_mc.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %en_mc.i, align 1
  %request_mc_en.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 6
  %63 = ptrtoint ptr %request_mc_en.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %request_mc_en.i, align 1
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %57, align 1
  %request_bc_en.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 7
  %66 = ptrtoint ptr %request_bc_en.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %request_bc_en.i, align 2
  %en_limit_promisc.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %en_limit_promisc.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %en_limit_promisc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i = icmp eq i8 %68, 0
  %priv_flags6.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13, i32 13
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %priv_flags6.i) #11
  br label %hclge_set_vf_promisc_mode.exit

if.else.i:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef 0, ptr noundef %priv_flags6.i) #11
  br label %hclge_set_vf_promisc_mode.exit

hclge_set_vf_promisc_mode.exit:                   ; preds = %if.else.i, %if.then.i
  %state.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 15
  call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #11
  call void @hclge_task_schedule(ptr noundef %56, i32 noundef 0) #11
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end31
  %69 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %data.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %back.i277 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %70 = ptrtoint ptr %back.i277 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %back.i277, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %69, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %73, label %do.end.i [
    i8 0, label %if.then.i279
    i8 1, label %if.then21.i
    i8 2, label %if.then29.i
  ]

if.then.i279:                                     ; preds = %sw.bb41
  %arrayidx.i = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 6
  %mac.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 1
  %75 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mac.i, align 4
  %add.ptr.i.i278 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 1, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i278 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i.i278, align 2
  %conv.i.i = zext i16 %78 to i32
  %or.i.i = or i32 %76, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i279.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i279.if.end.i_crit_edge:                  ; preds = %if.then.i279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i279
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data.i, align 4
  %xor.i.i = xor i32 %80, %76
  %add.ptr.i58.i = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 4
  %81 = ptrtoint ptr %add.ptr.i58.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i58.i, align 2
  %xor37.i.i = xor i16 %82, %78
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i59.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i59.i)
  %cmp.i60.i = icmp eq i32 %or.i59.i, 0
  br i1 %cmp.i60.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.do.end47_crit_edge

land.lhs.true.i.do.end47_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i279.if.end.i_crit_edge
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data.i, align 4
  %85 = and i32 %84, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.do.end47_crit_edge

if.end.i.do.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %87 to i32
  %or.i.i.i = or i32 %84, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.do.end47_crit_edge, label %cleanup.i

is_valid_ether_addr.exit.i.do.end47_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

cleanup.i:                                        ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mac_list_lock.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 21
  call void @_raw_spin_lock_bh(ptr noundef %mac_list_lock.i) #11
  %call14.i = call i32 @hclge_update_mac_node_for_dev_addr(ptr noundef %arrayidx33, ptr noundef %arrayidx.i, ptr noundef %data.i) #11
  call void @_raw_spin_unlock_bh(ptr noundef %mac_list_lock.i) #11
  call void @hclge_task_schedule(ptr noundef %71, i32 noundef 0) #11
  br label %hclge_set_vf_uc_mac_addr.exit

if.then21.i:                                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = call i32 @hclge_update_mac_list(ptr noundef %arrayidx33, i32 noundef 0, i32 noundef 0, ptr noundef %data.i) #11
  br label %hclge_set_vf_uc_mac_addr.exit

if.then29.i:                                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = call i32 @hclge_update_mac_list(ptr noundef %arrayidx33, i32 noundef 1, i32 noundef 0, ptr noundef %data.i) #11
  br label %hclge_set_vf_uc_mac_addr.exit

do.end.i:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %73 to i32
  %88 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %71, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %conv.i) #16
  br label %do.end47

hclge_set_vf_uc_mac_addr.exit:                    ; preds = %if.then29.i, %if.then21.i, %cleanup.i
  %retval.1.i = phi i32 [ %call14.i, %cleanup.i ], [ %call22.i, %if.then21.i ], [ %call30.i, %if.then29.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool43.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool43.not, label %hclge_set_vf_uc_mac_addr.exit.sw.epilog_crit_edge, label %hclge_set_vf_uc_mac_addr.exit.do.end47_crit_edge

hclge_set_vf_uc_mac_addr.exit.do.end47_crit_edge: ; preds = %hclge_set_vf_uc_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

hclge_set_vf_uc_mac_addr.exit.sw.epilog_crit_edge: ; preds = %hclge_set_vf_uc_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end47:                                         ; preds = %hclge_set_vf_uc_mac_addr.exit.do.end47_crit_edge, %do.end.i, %is_valid_ether_addr.exit.i.do.end47_crit_edge, %if.end.i.do.end47_crit_edge, %land.lhs.true.i.do.end47_crit_edge
  %retval.1.i401 = phi i32 [ %retval.1.i, %hclge_set_vf_uc_mac_addr.exit.do.end47_crit_edge ], [ -22, %if.end.i.do.end47_crit_edge ], [ -1, %land.lhs.true.i.do.end47_crit_edge ], [ -22, %is_valid_ether_addr.exit.i.do.end47_crit_edge ], [ -5, %do.end.i ]
  %90 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hdev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.9, i32 noundef %retval.1.i401) #16
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end31
  %92 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %data.i280 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 1
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %94, label %do.end57 [
    i8 4, label %if.then.i281
    i8 5, label %if.then8.i
  ]

if.then.i281:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @hclge_update_mac_list(ptr noundef %arrayidx33, i32 noundef 0, i32 noundef 1, ptr noundef %data.i280) #11
  br label %sw.epilog

if.then8.i:                                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 @hclge_update_mac_list(ptr noundef %arrayidx33, i32 noundef 1, i32 noundef 1, ptr noundef %data.i280) #11
  br label %sw.epilog

do.end57:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i282 = zext i8 %94 to i32
  %back.i283 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %96 = ptrtoint ptr %back.i283 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %back.i283, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %dev.i284 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i284, ptr noundef nonnull @.str.56, i32 noundef %conv.i282) #16
  %100 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hdev, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.13, i32 noundef -5) #16
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end31
  %nic.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13
  %subcode.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %102 = ptrtoint ptr %subcode.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %subcode.i, align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %103, label %sw.bb61.sw.epilog_crit_edge [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb1.i
    i8 4, label %sw.bb4.i
    i8 5, label %sw.bb8.i
  ]

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  %105 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %proto.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 3
  %106 = ptrtoint ptr %proto.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %proto.i, align 1
  %vlan.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %vlan.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %vlan.i, align 1
  %110 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.i = icmp ne i8 %111, 0
  %call.i287 = call i32 @hclge_set_vlan_filter(ptr noundef %nic.i, i16 noundef zeroext %107, i16 noundef zeroext %109, i1 noundef zeroext %tobool.i) #11
  br label %hclge_set_vf_vlan_cfg.exit

sw.bb1.i:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  %112 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool2.i = icmp ne i8 %114, 0
  %call3.i = call i32 @hclge_en_hw_strip_rxvtag(ptr noundef %nic.i, i1 noundef zeroext %tobool2.i) #11
  br label %hclge_set_vf_vlan_cfg.exit

sw.bb4.i:                                         ; preds = %sw.bb61
  %back.i288 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %115 = ptrtoint ptr %back.i288 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %back.i288, align 4
  %ae_dev.i = getelementptr inbounds %struct.hclge_dev, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ae_dev.i, align 4
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %120)
  %cmp.i289 = icmp ugt i32 %120, 47
  br i1 %cmp.i289, label %sw.bb4.i.cond.end.i_crit_edge, label %cond.false.i

sw.bb4.i.cond.end.i_crit_edge:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  %port_base_vlan_cfg.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 7
  %121 = ptrtoint ptr %port_base_vlan_cfg.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %port_base_vlan_cfg.i, align 4
  %phi.cast.i = trunc i16 %122 to i8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %sw.bb4.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %phi.cast.i, %cond.false.i ], [ 0, %sw.bb4.i.cond.end.i_crit_edge ]
  %123 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %cond.i, ptr %resp_msg.sroa.6, align 8
  %124 = ptrtoint ptr %resp_msg.sroa.6.8.len.i.sroa_idx418 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %resp_msg.sroa.6.8.len.i.sroa_idx418, align 8
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  %125 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool9.i = icmp ne i8 %127, 0
  %call10.i = call i32 @hclge_enable_vport_vlan_filter(ptr noundef %arrayidx33, i1 noundef zeroext %tobool9.i) #11
  br label %hclge_set_vf_vlan_cfg.exit

hclge_set_vf_vlan_cfg.exit:                       ; preds = %sw.bb8.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i291 = phi i32 [ %call10.i, %sw.bb8.i ], [ %call3.i, %sw.bb1.i ], [ %call.i287, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i291)
  %tobool63.not = icmp eq i32 %retval.0.i291, 0
  br i1 %tobool63.not, label %hclge_set_vf_vlan_cfg.exit.sw.epilog_crit_edge, label %do.end67

hclge_set_vf_vlan_cfg.exit.sw.epilog_crit_edge:   ; preds = %hclge_set_vf_vlan_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end67:                                         ; preds = %hclge_set_vf_vlan_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hdev, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i291) #16
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end31
  %data.i293 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %130 = ptrtoint ptr %data.i293 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %data.i293, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i294 = icmp eq i8 %131, 0
  br i1 %tobool.not.i294, label %hclge_set_vf_alive.exit.thread, label %hclge_set_vf_alive.exit

hclge_set_vf_alive.exit.thread:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #13
  call void @hclge_vport_stop(ptr noundef %arrayidx33) #11
  br label %sw.epilog

hclge_set_vf_alive.exit:                          ; preds = %sw.bb71
  %call.i295 = call i32 @hclge_vport_start(ptr noundef %arrayidx33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool73.not = icmp eq i32 %call.i295, 0
  br i1 %tobool73.not, label %hclge_set_vf_alive.exit.sw.epilog_crit_edge, label %do.end77

hclge_set_vf_alive.exit.sw.epilog_crit_edge:      ; preds = %hclge_set_vf_alive.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end77:                                         ; preds = %hclge_set_vf_alive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hdev, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.19, i32 noundef %call.i295) #16
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %back.i299 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %134 = ptrtoint ptr %back.i299 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %back.i299, align 4
  %136 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx33, align 8
  %138 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %resp_msg.sroa.6, align 8
  %rss_size.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13, i32 5, i32 0, i32 1
  %139 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %rss_size.i, align 4
  %141 = ptrtoint ptr %resp_msg.sroa.6.2.arrayidx2.i.sroa_idx412 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %resp_msg.sroa.6.2.arrayidx2.i.sroa_idx412, align 2
  %rx_buf_len.i = getelementptr inbounds %struct.hclge_dev, ptr %135, i32 0, i32 26
  %142 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %rx_buf_len.i, align 4
  %144 = ptrtoint ptr %resp_msg.sroa.6.4.arrayidx4.i.sroa_idx416 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %resp_msg.sroa.6.4.arrayidx4.i.sroa_idx416, align 4
  %145 = ptrtoint ptr %resp_msg.sroa.6.8.len.i301.sroa_idx419 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 6, ptr %resp_msg.sroa.6.8.len.i301.sroa_idx419, align 8
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %back.i302 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %146 = ptrtoint ptr %back.i302 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %back.i302, align 4
  %num_tx_desc.i = getelementptr inbounds %struct.hclge_dev, ptr %147, i32 0, i32 27
  %148 = ptrtoint ptr %num_tx_desc.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %num_tx_desc.i, align 2
  %150 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %resp_msg.sroa.6, align 8
  %num_rx_desc.i = getelementptr inbounds %struct.hclge_dev, ptr %147, i32 0, i32 28
  %151 = ptrtoint ptr %num_rx_desc.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %num_rx_desc.i, align 8
  %153 = ptrtoint ptr %resp_msg.sroa.6.2.arrayidx2.i304.sroa_idx413 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %resp_msg.sroa.6.2.arrayidx2.i304.sroa_idx413, align 2
  %154 = ptrtoint ptr %resp_msg.sroa.6.8.len.i305.sroa_idx420 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 4, ptr %resp_msg.sroa.6.8.len.i305.sroa_idx420, align 8
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end31
  %back.i306 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %155 = ptrtoint ptr %back.i306 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %back.i306, align 4
  %ae_dev1.i = getelementptr inbounds %struct.hclge_dev, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %ae_dev1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ae_dev1.i, align 4
  %num_tc.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13, i32 5, i32 0, i32 7, i32 3
  %159 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp15.not.i = icmp eq i8 %160, 0
  br i1 %cmp15.not.i, label %sw.bb83.for.end.i_crit_edge, label %sw.bb83.for.body.i_crit_edge

sw.bb83.for.body.i_crit_edge:                     ; preds = %sw.bb83
  br label %for.body.i

sw.bb83.for.end.i_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb83.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb83.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.016.i
  %161 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_load1_noabort(i32 %161)
  %resp_msg.sroa.6.0.resp_msg.sroa.6.0.resp_msg.sroa.6.4. = load i8, ptr %resp_msg.sroa.6, align 8
  %162 = trunc i32 %shl.i to i8
  %conv4.i = or i8 %resp_msg.sroa.6.0.resp_msg.sroa.6.0.resp_msg.sroa.6.4., %162
  store i8 %conv4.i, ptr %resp_msg.sroa.6, align 8
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %163 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %num_tc.i, align 4
  %conv.i308 = zext i8 %164 to i32
  %cmp.i309 = icmp ult i32 %inc.i, %conv.i308
  br i1 %cmp.i309, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb83.for.end.i_crit_edge
  %caps.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %158, i32 0, i32 7
  %165 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %caps.i, align 4
  %167 = and i32 %166, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i310 = icmp eq i32 %167, 0
  br i1 %tobool.not.i310, label %for.end.i.hclge_get_basic_info.exit_crit_edge, label %do.body.i

for.end.i.hclge_get_basic_info.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_get_basic_info.exit

do.body.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %resp_msg.sroa.6.4.pf_caps.i.sroa_idx414 to i32
  call void @__asan_load4_noabort(i32 %168)
  %resp_msg.sroa.6.4.resp_msg.sroa.6.4.resp_msg.sroa.6.8. = load i32, ptr %resp_msg.sroa.6.4.pf_caps.i.sroa_idx414, align 4
  %or7.i = or i32 %resp_msg.sroa.6.4.resp_msg.sroa.6.4.resp_msg.sroa.6.8., 1
  store i32 %or7.i, ptr %resp_msg.sroa.6.4.pf_caps.i.sroa_idx414, align 4
  br label %hclge_get_basic_info.exit

hclge_get_basic_info.exit:                        ; preds = %do.body.i, %for.end.i.hclge_get_basic_info.exit_crit_edge
  %169 = ptrtoint ptr %resp_msg.sroa.6.8.len.i311.sroa_idx421 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 8, ptr %resp_msg.sroa.6.8.len.i311.sroa_idx421, align 8
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end31
  %call85 = call i32 @hclge_push_vf_link_status(ptr noundef %arrayidx33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %sw.bb84.sw.epilog_crit_edge, label %do.end90

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end90:                                         ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #13
  %170 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hdev, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.22, i32 noundef %call85) #16
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end31
  %back.i313 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %172 = ptrtoint ptr %back.i313 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %back.i313, align 4
  %data.i314 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %174 = ptrtoint ptr %data.i314 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %queue_id.0.copyload.i = load i16, ptr %data.i314, align 1
  %175 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %resp_msg.sroa.6, align 8
  %176 = ptrtoint ptr %resp_msg.sroa.6.8.len.i315.sroa_idx422 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1, ptr %resp_msg.sroa.6.8.len.i315.sroa_idx422, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %queue_id.0.copyload.i)
  %cmp.not.i = icmp eq i16 %queue_id.0.copyload.i, 0
  br i1 %cmp.not.i, label %if.end.i319, label %sw.bb94.sw.epilog_crit_edge

sw.bb94.sw.epilog_crit_edge:                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i319:                                      ; preds = %sw.bb94
  %nic.i316 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13
  %call.i317 = call i32 @hclge_reset_tqp(ptr noundef %nic.i316) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool.not.i318 = icmp eq i32 %call.i317, 0
  br i1 %tobool.not.i318, label %if.end.i319.sw.epilog_crit_edge, label %do.end.i322

if.end.i319.sw.epilog_crit_edge:                  ; preds = %if.end.i319
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i322:                                      ; preds = %if.end.i319
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %173, align 8
  %dev.i320 = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  %vport_id.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 11
  %179 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %vport_id.i, align 2
  %conv4.i321 = zext i16 %180 to i32
  %sub.i = add nsw i32 %conv4.i321, -1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i320, ptr noundef nonnull @.str.58, i32 noundef %sub.i, i32 noundef %call.i317) #16
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %back.i325 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %181 = ptrtoint ptr %back.i325 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %back.i325, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 8
  %dev.i326 = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  %vport_id.i327 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 11
  %185 = ptrtoint ptr %vport_id.i327 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vport_id.i327, align 2
  %conv.i328 = zext i16 %186 to i32
  %sub.i329 = add nsw i32 %conv.i328, -1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i326, ptr noundef nonnull @.str.60, i32 noundef %sub.i329) #16
  %187 = ptrtoint ptr %vport_id.i327 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %vport_id.i327, align 2
  %conv2.i = zext i16 %188 to i32
  %call.i330 = call i32 @hclge_func_reset_cmd(ptr noundef %182, i32 noundef %conv2.i) #11
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %189 = load volatile i32, ptr @jiffies, align 128
  %last_active_jiffies.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 16
  %190 = ptrtoint ptr %last_active_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %last_active_jiffies.i, align 4
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end31
  %data.i331 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %191 = ptrtoint ptr %data.i331 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %mtu.0.copyload.i = load i32, ptr %data.i331, align 1
  %call.i332 = call i32 @hclge_set_vport_mtu(ptr noundef %arrayidx33, i32 noundef %mtu.0.copyload.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %tobool101.not = icmp eq i32 %call.i332, 0
  br i1 %tobool101.not, label %sw.bb99.sw.epilog_crit_edge, label %do.end105

sw.bb99.sw.epilog_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end105:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hdev, align 8
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev107, ptr noundef nonnull @.str.25, i32 noundef %call.i332) #16
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end31
  %data.i333 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %194 = ptrtoint ptr %data.i333 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 2)
  %queue_id.0.copyload.i334 = load i16, ptr %data.i333, align 1
  %num_tqps.i = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13, i32 5, i32 0, i32 8
  %195 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %num_tqps.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %queue_id.0.copyload.i334, i16 %196)
  %cmp.not.i335 = icmp ult i16 %queue_id.0.copyload.i334, %196
  br i1 %cmp.not.i335, label %if.end.i344, label %do.end.i340

do.end.i340:                                      ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i336 = zext i16 %queue_id.0.copyload.i334 to i32
  %back.i337 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %197 = ptrtoint ptr %back.i337 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %back.i337, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 8
  %dev.i338 = getelementptr inbounds %struct.pci_dev, ptr %200, i32 0, i32 44
  %201 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %mbx_src_vfid, align 1
  %conv4.i339 = zext i8 %202 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i338, ptr noundef nonnull @.str.62, i32 noundef %conv.i336, i32 noundef %conv4.i339) #16
  br label %sw.epilog

if.end.i344:                                      ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #13
  %nic.i341 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 13
  %call.i342 = call zeroext i16 @hclge_covert_handle_qid_global(ptr noundef %nic.i341, i16 noundef zeroext %queue_id.0.copyload.i334) #11
  %203 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %call.i342, ptr %resp_msg.sroa.6, align 8
  %204 = ptrtoint ptr %resp_msg.sroa.6.8.len.i343.sroa_idx423 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 2, ptr %resp_msg.sroa.6.8.len.i343.sroa_idx423, align 8
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end31
  %back.i346 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %205 = ptrtoint ptr %back.i346 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %back.i346, align 4
  %data.i347 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %207 = ptrtoint ptr %data.i347 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %data.i347, align 1
  %conv.i348 = zext i8 %208 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %208)
  %cmp.i349 = icmp ugt i8 %208, 4
  br i1 %cmp.i349, label %do.end.i351, label %if.end.i353

do.end.i351:                                      ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %206, align 8
  %dev.i350 = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i350, ptr noundef nonnull @.str.64, i32 noundef %conv.i348) #16
  br label %sw.epilog

if.end.i353:                                      ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #13
  %rss_cfg1.i = getelementptr inbounds %struct.hclge_dev, ptr %206, i32 0, i32 87
  %mul6.i = shl nuw nsw i32 %conv.i348, 3
  %arrayidx7.i = getelementptr [40 x i8], ptr %rss_cfg1.i, i32 0, i32 %mul6.i
  %211 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 8)
  %212 = load i64, ptr %arrayidx7.i, align 1
  %213 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %212, ptr %resp_msg.sroa.6, align 8
  %214 = ptrtoint ptr %resp_msg.sroa.6.8.len.i352.sroa_idx424 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 8, ptr %resp_msg.sroa.6.8.len.i352.sroa_idx424, align 8
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end31
  %back.i355 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %215 = ptrtoint ptr %back.i355 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %back.i355, align 4
  %advertising1.i = getelementptr inbounds %struct.hclge_dev, ptr %216, i32 0, i32 2, i32 1, i32 21
  %217 = ptrtoint ptr %advertising1.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %advertising1.i, align 4
  %supported4.i = getelementptr inbounds %struct.hclge_dev, ptr %216, i32 0, i32 2, i32 1, i32 20
  %219 = ptrtoint ptr %supported4.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %supported4.i, align 4
  %221 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %mbx_src_vfid, align 1
  %data.i357 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %223 = ptrtoint ptr %data.i357 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %data.i357, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %224)
  %cmp.i358 = icmp eq i8 %224, 1
  %..i = select i1 %cmp.i358, i32 %220, i32 %218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #11
  %225 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 8192, i1 noundef zeroext false) #11
  %226 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %222, ptr %8, align 4
  %227 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 10, ptr %9, align 4
  %228 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 32, ptr %10, align 4
  %229 = ptrtoint ptr %vf_mbx_msg_code.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %224, ptr %vf_mbx_msg_code.i.i, align 2
  %230 = ptrtoint ptr %msg_data.sroa.5.0.vf_mbx_msg_code.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %msg_data.sroa.5.0.vf_mbx_msg_code.i.sroa_idx.i, align 1
  %231 = ptrtoint ptr %msg_data.sroa.514.0.vf_mbx_msg_code.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %..i, ptr %msg_data.sroa.514.0.vf_mbx_msg_code.i.sroa_idx.i, align 4
  %232 = ptrtoint ptr %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %msg_data.sroa.6.0.vf_mbx_msg_code.i.sroa_idx.i, align 4
  call fastcc void @trace_hclge_pf_mbx_send(ptr noundef %216, ptr noundef %8) #11
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %216, i32 0, i32 2
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb111.hclge_get_link_mode.exit_crit_edge, label %do.end.i.i

sw.bb111.hclge_get_link_mode.exit_crit_edge:      ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_get_link_mode.exit

do.end.i.i:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #13
  %233 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %216, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %234, i32 0, i32 44
  %conv6.i.i = zext i8 %222 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.47, i32 noundef %call.i.i, i32 noundef %conv6.i.i, i32 noundef 32) #16
  br label %hclge_get_link_mode.exit

hclge_get_link_mode.exit:                         ; preds = %do.end.i.i, %sw.bb111.hclge_get_link_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #11
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end31.sw.bb112_crit_edge, %if.end31.sw.bb112_crit_edge431
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %53)
  %cmp = icmp eq i8 %53, 37
  call void @hclge_rm_vport_all_mac_table(ptr noundef %arrayidx33, i1 noundef zeroext %cmp, i32 noundef 0) #11
  call void @hclge_rm_vport_all_mac_table(ptr noundef %arrayidx33, i1 noundef zeroext %cmp, i32 noundef 1) #11
  call void @hclge_rm_vport_all_vlan_table(ptr noundef %arrayidx33, i1 noundef zeroext %cmp) #11
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %back.i359 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %235 = ptrtoint ptr %back.i359 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %back.i359, align 4
  %media_type.i = getelementptr inbounds %struct.hclge_dev, ptr %236, i32 0, i32 2, i32 1, i32 3
  %237 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %media_type.i, align 1
  %239 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %resp_msg.sroa.6, align 8
  %module_type.i = getelementptr inbounds %struct.hclge_dev, ptr %236, i32 0, i32 2, i32 1, i32 12
  %240 = ptrtoint ptr %module_type.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %module_type.i, align 4
  %conv.i361 = trunc i32 %241 to i8
  %242 = ptrtoint ptr %resp_msg.sroa.6.1.arrayidx4.i362.sroa_idx411 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv.i361, ptr %resp_msg.sroa.6.1.arrayidx4.i362.sroa_idx411, align 1
  %243 = ptrtoint ptr %resp_msg.sroa.6.8.len.i363.sroa_idx425 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 2, ptr %resp_msg.sroa.6.8.len.i363.sroa_idx425, align 8
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.end31
  call void @hclge_task_schedule(ptr noundef %hdev, i32 noundef 0) #11
  %244 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i364 = icmp eq i8 %246, 0
  br i1 %tobool.not.i364, label %if.then.i366, label %sw.bb121.sw.epilog_crit_edge

sw.bb121.sw.epilog_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i366:                                     ; preds = %sw.bb121
  %data.i365 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1, i32 0, i32 1
  %247 = ptrtoint ptr %data.i365 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %data.i365, align 1
  %switch.tableidx = add i8 %248, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %249 = icmp ult i8 %switch.tableidx, 3
  br i1 %249, label %switch.lookup, label %if.then.i366.sw.epilog_crit_edge

if.then.i366.sw.epilog_crit_edge:                 ; preds = %if.then.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then.i366
  call void @__sanitizer_cov_trace_pc() #13
  %250 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.hclge_mbx_handler, i32 0, i32 %250
  %251 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %251)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %252 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hdev, align 8
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %253, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10.i.i, ptr noundef nonnull %switch.load) #16
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %mac.i369 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 1
  %254 = ptrtoint ptr %mac.i369 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mac.i369, align 4
  %256 = ptrtoint ptr %resp_msg.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %resp_msg.sroa.6, align 8
  %add.ptr.i.i370 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 18, i32 1, i32 4
  %257 = ptrtoint ptr %add.ptr.i.i370 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %add.ptr.i.i370, align 2
  %259 = ptrtoint ptr %resp_msg.sroa.6.4.add.ptr1.i.i.sroa_idx417 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %resp_msg.sroa.6.4.add.ptr1.i.i.sroa_idx417, align 4
  %260 = ptrtoint ptr %resp_msg.sroa.6.8.len.i371.sroa_idx426 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 6, ptr %resp_msg.sroa.6.8.len.i371.sroa_idx426, align 8
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %261 = ptrtoint ptr %ae_dev1.i372 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ae_dev1.i372, align 4
  %ops.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ops.i, align 4
  %set_default_reset_request.i = getelementptr inbounds %struct.hnae3_ae_ops, ptr %264, i32 0, i32 68
  %265 = ptrtoint ptr %set_default_reset_request.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %set_default_reset_request.i, align 4
  call void %266(ptr noundef %262, i32 noundef 6) #11
  %267 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hdev, align 8
  %dev.i373 = getelementptr inbounds %struct.pci_dev, ptr %268, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i373, ptr noundef nonnull @.str.74) #16
  %269 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i, align 4
  %reset_event.i = getelementptr inbounds %struct.hnae3_ae_ops, ptr %270, i32 0, i32 66
  %271 = ptrtoint ptr %reset_event.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %reset_event.i, align 4
  %273 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hdev, align 8
  call void %272(ptr noundef %274, ptr noundef null) #11
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end31
  %subcode.i374 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %275 = ptrtoint ptr %subcode.i374 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %subcode.i374, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp.i375 = icmp eq i8 %276, 0
  br i1 %cmp.i375, label %if.then.i376, label %do.end.i380

if.then.i376:                                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #13
  call void @hclge_rm_vport_all_mac_table(ptr noundef %arrayidx33, i1 noundef zeroext true, i32 noundef 0) #11
  call void @hclge_rm_vport_all_mac_table(ptr noundef %arrayidx33, i1 noundef zeroext true, i32 noundef 1) #11
  call void @hclge_rm_vport_all_vlan_table(ptr noundef %arrayidx33, i1 noundef zeroext true) #11
  br label %sw.epilog

do.end.i380:                                      ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i377 = zext i8 %276 to i32
  %back.i378 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %277 = ptrtoint ptr %back.i378 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %back.i378, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 8
  %dev.i379 = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i379, ptr noundef nonnull @.str.76, i32 noundef %conv.i377) #16
  br label %sw.epilog

do.end127:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %conv36 = zext i8 %53 to i32
  %281 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hdev, align 8
  %dev129 = getelementptr inbounds %struct.pci_dev, ptr %282, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129, ptr noundef nonnull @.str.28, i32 noundef %conv36) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end127, %do.end.i380, %if.then.i376, %sw.bb123, %sw.bb122, %switch.lookup, %if.then.i366.sw.epilog_crit_edge, %sw.bb121.sw.epilog_crit_edge, %sw.bb120, %sw.bb112, %hclge_get_link_mode.exit, %if.end.i353, %do.end.i351, %if.end.i344, %do.end.i340, %do.end105, %sw.bb99.sw.epilog_crit_edge, %sw.bb98, %sw.bb96, %do.end.i322, %if.end.i319.sw.epilog_crit_edge, %sw.bb94.sw.epilog_crit_edge, %do.end90, %sw.bb84.sw.epilog_crit_edge, %hclge_get_basic_info.exit, %sw.bb82, %sw.bb81, %do.end77, %hclge_set_vf_alive.exit.sw.epilog_crit_edge, %hclge_set_vf_alive.exit.thread, %do.end67, %hclge_set_vf_vlan_cfg.exit.sw.epilog_crit_edge, %cond.end.i, %sw.bb61.sw.epilog_crit_edge, %do.end57, %if.then8.i, %if.then.i281, %do.end47, %hclge_set_vf_uc_mac_addr.exit.sw.epilog_crit_edge, %hclge_set_vf_promisc_mode.exit, %sw.bb38, %sw.bb
  %ret.1 = phi i32 [ 0, %do.end127 ], [ 0, %sw.bb123 ], [ 0, %sw.bb122 ], [ 0, %sw.bb120 ], [ 0, %sw.bb112 ], [ 0, %hclge_get_link_mode.exit ], [ %call.i332, %do.end105 ], [ 0, %sw.bb99.sw.epilog_crit_edge ], [ 0, %sw.bb98 ], [ %call.i330, %sw.bb96 ], [ %call85, %do.end90 ], [ 0, %sw.bb84.sw.epilog_crit_edge ], [ 0, %hclge_get_basic_info.exit ], [ 0, %sw.bb82 ], [ 0, %sw.bb81 ], [ %call.i295, %do.end77 ], [ 0, %hclge_set_vf_alive.exit.sw.epilog_crit_edge ], [ %retval.0.i291, %do.end67 ], [ 0, %hclge_set_vf_vlan_cfg.exit.sw.epilog_crit_edge ], [ -5, %do.end57 ], [ %retval.1.i401, %do.end47 ], [ 0, %hclge_set_vf_uc_mac_addr.exit.sw.epilog_crit_edge ], [ 0, %hclge_set_vf_promisc_mode.exit ], [ %call39, %sw.bb38 ], [ %call37, %sw.bb ], [ 0, %hclge_set_vf_alive.exit.thread ], [ 0, %sw.bb94.sw.epilog_crit_edge ], [ %call.i317, %do.end.i322 ], [ 0, %if.end.i319.sw.epilog_crit_edge ], [ 0, %do.end.i340 ], [ 0, %if.end.i344 ], [ 0, %do.end.i351 ], [ 0, %if.end.i353 ], [ 0, %sw.bb121.sw.epilog_crit_edge ], [ 0, %if.then.i366.sw.epilog_crit_edge ], [ 0, %switch.lookup ], [ 0, %if.then.i376 ], [ 0, %do.end.i380 ], [ 0, %if.then8.i ], [ 0, %if.then.i281 ], [ 0, %cond.end.i ], [ 0, %sw.bb61.sw.epilog_crit_edge ]
  %mbx_need_resp = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 2
  %283 = ptrtoint ptr %mbx_need_resp to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %mbx_need_resp, align 2
  %285 = and i8 %284, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool136.not = icmp eq i8 %285, 0
  br i1 %tobool136.not, label %sw.epilog.while.cond.backedge_crit_edge, label %land.lhs.true

sw.epilog.while.cond.backedge_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %sw.epilog
  %286 = ptrtoint ptr %msg34 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %msg34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %287)
  %cmp140 = icmp ult i8 %287, -56
  br i1 %cmp140, label %if.then142, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then142:                                       ; preds = %land.lhs.true
  %288 = ptrtoint ptr %last_mbx_scheduled to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %last_mbx_scheduled, align 4
  %add143 = add i32 %289, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %290 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add143, %290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp144 = icmp slt i32 %sub, 0
  br i1 %cmp144, label %do.end149, label %if.then142.if.end159_crit_edge

if.then142.if.end159_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

do.end149:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  %291 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hdev, align 8
  %dev151 = getelementptr inbounds %struct.pci_dev, ptr %292, i32 0, i32 44
  %293 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %mbx_src_vfid, align 1
  %conv153 = zext i8 %294 to i32
  %conv156 = zext i8 %287 to i32
  %295 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %295, align 1
  %conv158 = zext i8 %297 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev151, ptr noundef nonnull @.str.31, i32 noundef %conv153, i32 noundef %conv156, i32 noundef %conv158) #16
  br label %if.end159

if.end159:                                        ; preds = %do.end149, %if.then142.if.end159_crit_edge
  %back.i382 = getelementptr %struct.hclge_vport, ptr %48, i32 %idxprom, i32 12
  %298 = ptrtoint ptr %back.i382 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %back.i382, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #11
  %300 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %301 = ptrtoint ptr %resp_msg.sroa.6.8.len.i383.sroa_idx427 to i32
  call void @__asan_load2_noabort(i32 %301)
  %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12. = load i16, ptr %resp_msg.sroa.6.8.len.i383.sroa_idx427, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12.)
  %cmp.i384 = icmp ugt i16 %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12., 8
  br i1 %cmp.i384, label %do.end.i387, label %if.end159.if.end.i390_crit_edge

if.end159.if.end.i390_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i390

do.end.i387:                                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i385 = zext i16 %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12. to i32
  %302 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %299, align 8
  %dev.i386 = getelementptr inbounds %struct.pci_dev, ptr %303, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i386, ptr noundef nonnull @.str.78, i32 noundef %conv.i385, i32 noundef 8) #16
  %304 = ptrtoint ptr %resp_msg.sroa.6.8.len.i383.sroa_idx427 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 8, ptr %resp_msg.sroa.6.8.len.i383.sroa_idx427, align 8
  br label %if.end.i390

if.end.i390:                                      ; preds = %do.end.i387, %if.end159.if.end.i390_crit_edge
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 8192, i1 noundef zeroext false) #11
  %305 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %mbx_src_vfid, align 1
  %307 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %306, ptr %11, align 4
  %msg_len.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 4
  %308 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %msg_len.i, align 2
  %310 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %309, ptr %12, align 4
  %match_id.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 6
  %311 = ptrtoint ptr %match_id.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %match_id.i, align 2
  %313 = ptrtoint ptr %match_id6.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 %312, ptr %match_id6.i, align 2
  %314 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 17, ptr %13, align 4
  %315 = ptrtoint ptr %msg34 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %msg34, align 2
  %conv9.i = zext i8 %316 to i16
  %317 = ptrtoint ptr %vf_mbx_msg_code.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv9.i, ptr %vf_mbx_msg_code.i, align 2
  %318 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %data, i32 0, i32 7, i32 1
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %318, align 1
  %conv12.i = zext i8 %320 to i16
  %321 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %conv12.i, ptr %14, align 4
  %322 = call i32 @llvm.abs.i32(i32 %ret.1, i1 false) #11
  %conv.i.i389 = trunc i32 %322 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32767, i16 %conv.i.i389)
  %cmp16.i = icmp ult i16 %conv.i.i389, 32767
  br i1 %cmp16.i, label %if.end.i390.if.end28.i_crit_edge, label %do.end22.i

if.end.i390.if.end28.i_crit_edge:                 ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

do.end22.i:                                       ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #13
  %conv15.i = and i32 %322, 65535
  %323 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %299, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %324, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24.i, ptr noundef nonnull @.str.81, i32 noundef %conv15.i) #16
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end22.i, %if.end.i390.if.end28.i_crit_edge
  %.sink.i = phi i16 [ 5, %do.end22.i ], [ %conv.i.i389, %if.end.i390.if.end28.i_crit_edge ]
  %325 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %.sink.i, ptr %16, align 2
  %326 = ptrtoint ptr %resp_msg.sroa.6.8.len.i383.sroa_idx427 to i32
  call void @__asan_load2_noabort(i32 %326)
  %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12.394 = load i16, ptr %resp_msg.sroa.6.8.len.i383.sroa_idx427, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12.394)
  %cmp31.not.i = icmp eq i16 %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12.394, 0
  br i1 %cmp31.not.i, label %if.end28.i.if.end40.i_crit_edge, label %if.then33.i

if.end28.i.if.end40.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv30.i = zext i16 %resp_msg.sroa.6.8.resp_msg.sroa.6.8.resp_msg.sroa.6.12.394 to i32
  %327 = call ptr @memcpy(ptr %15, ptr %resp_msg.sroa.6, i32 %conv30.i)
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then33.i, %if.end28.i.if.end40.i_crit_edge
  call fastcc void @trace_hclge_pf_mbx_send(ptr noundef %299, ptr noundef %11) #11
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %299, i32 0, i32 2
  %call41.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool.not.i391 = icmp eq i32 %call41.i, 0
  br i1 %tobool.not.i391, label %if.end40.i.hclge_gen_resp_to_vf.exit_crit_edge, label %do.end45.i

if.end40.i.hclge_gen_resp_to_vf.exit_crit_edge:   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hclge_gen_resp_to_vf.exit

do.end45.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %328 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %299, align 8
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %329, i32 0, i32 44
  %330 = ptrtoint ptr %mbx_src_vfid to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %mbx_src_vfid, align 1
  %conv49.i = zext i8 %331 to i32
  %332 = ptrtoint ptr %msg34 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %msg34, align 2
  %conv52.i = zext i8 %333 to i32
  %334 = ptrtoint ptr %318 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %318, align 1
  %conv55.i = zext i8 %335 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.84, i32 noundef %call41.i, i32 noundef %conv49.i, i32 noundef %conv52.i, i32 noundef %conv55.i) #16
  br label %hclge_gen_resp_to_vf.exit

hclge_gen_resp_to_vf.exit:                        ; preds = %do.end45.i, %if.end40.i.hclge_gen_resp_to_vf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #11
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %336 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %hw, align 8
  %338 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %next_to_use.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  call void @arm_heavy_mb() #11
  %340 = call i32 @llvm.bswap.i32(i32 %339) #11
  %add.ptr.i = getelementptr i8, ptr %337, i32 159784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %340) #11, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp_msg.sroa.6)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hclge_pf_mbx_get(ptr noundef %hdev, ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_get, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_hclge_pf_mbx_get, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !187

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !180

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !188
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_get, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !189
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !189
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !180

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !170) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_get, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_hclge_pf_mbx_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_hclge_pf_mbx_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 47, ptr noundef nonnull @.str.50) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %38 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
define internal fastcc i32 @hclge_map_unmap_ring_to_vf_vector(ptr noundef %vport, i1 noundef zeroext %en, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %ring_chain = alloca %struct.hnae3_ring_chain_node, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ring_chain) #11
  %0 = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %ring_chain, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %ring_chain, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %ring_chain, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = call ptr @memset(ptr %ring_chain, i32 0, i32 16)
  %back.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 12
  %7 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back.i, align 4
  %ring_num1.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %ring_num1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ring_num1.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp.i = icmp ugt i8 %10, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp3139.not.i = icmp eq i8 %10, 0
  br i1 %cmp3139.not.i, label %for.cond.preheader.i.do.body20.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.body20.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rss_size.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rss_size.i, align 4
  %tqp_index.i = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %tqp_index.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tqp_index.i, align 1
  %15 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %15)
  %cmp8.not.i = icmp ugt i16 %12, %15
  br i1 %cmp8.not.i, label %for.cond.i, label %for.body.lr.ph.i.do.end.i_crit_edge

for.body.lr.ph.i.do.end.i_crit_edge:              ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %exitcond.not.i = icmp eq i8 %10, 1
  br i1 %exitcond.not.i, label %for.cond.i.do.body20.i_crit_edge, label %for.body.i.1

for.cond.i.do.body20.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20.i

for.body.i.1:                                     ; preds = %for.cond.i
  %tqp_index.i.1 = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %tqp_index.i.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tqp_index.i.1, align 1
  %18 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %18)
  %cmp8.not.i.1 = icmp ugt i16 %12, %18
  br i1 %cmp8.not.i.1, label %for.cond.i.1, label %for.body.i.1.do.end.i_crit_edge

for.body.i.1.do.end.i_crit_edge:                  ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %exitcond.not.i.1 = icmp eq i8 %10, 2
  br i1 %exitcond.not.i.1, label %for.cond.i.1.do.body20.i_crit_edge, label %for.body.i.2

for.cond.i.1.do.body20.i_crit_edge:               ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20.i

for.body.i.2:                                     ; preds = %for.cond.i.1
  %tqp_index.i.2 = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %tqp_index.i.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tqp_index.i.2, align 1
  %21 = zext i8 %20 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %21)
  %cmp8.not.i.2 = icmp ugt i16 %12, %21
  br i1 %cmp8.not.i.2, label %for.cond.i.2, label %for.body.i.2.do.end.i_crit_edge

for.body.i.2.do.end.i_crit_edge:                  ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.i.2:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %exitcond.not.i.2 = icmp eq i8 %10, 3
  br i1 %exitcond.not.i.2, label %for.cond.i.2.do.body20.i_crit_edge, label %for.body.i.3

for.cond.i.2.do.body20.i_crit_edge:               ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20.i

for.body.i.3:                                     ; preds = %for.cond.i.2
  %tqp_index.i.3 = getelementptr %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %tqp_index.i.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tqp_index.i.3, align 1
  %24 = zext i8 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %24)
  %cmp8.not.i.3 = icmp ugt i16 %12, %24
  br i1 %cmp8.not.i.3, label %for.body.i.3.do.body20.i_crit_edge, label %for.body.i.3.do.end.i_crit_edge

for.body.i.3.do.end.i_crit_edge:                  ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.body.i.3.do.body20.i_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20.i

do.end.i:                                         ; preds = %for.body.i.3.do.end.i_crit_edge, %for.body.i.2.do.end.i_crit_edge, %for.body.i.1.do.end.i_crit_edge, %for.body.lr.ph.i.do.end.i_crit_edge
  %.lcssa = phi i8 [ %14, %for.body.lr.ph.i.do.end.i_crit_edge ], [ %17, %for.body.i.1.do.end.i_crit_edge ], [ %20, %for.body.i.2.do.end.i_crit_edge ], [ %23, %for.body.i.3.do.end.i_crit_edge ]
  %conv6.le.i = zext i8 %.lcssa to i32
  %conv7.le.i = zext i16 %12 to i32
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %sub.i = add nsw i32 %conv7.le.i, -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %conv6.le.i, i32 noundef %sub.i) #16
  br label %cleanup

do.body20.i:                                      ; preds = %for.body.i.3.do.body20.i_crit_edge, %for.cond.i.2.do.body20.i_crit_edge, %for.cond.i.1.do.body20.i_crit_edge, %for.cond.i.do.body20.i_crit_edge, %for.cond.preheader.i.do.body20.i_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %and.i = and i32 %28, -2
  %param22.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %param22.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %param22.i, align 1
  %31 = and i8 %30, 1
  %and25.i = zext i8 %31 to i32
  %or.i = or i32 %and.i, %and25.i
  store i32 %or.i, ptr %1, align 4
  %tqp.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 9
  %32 = ptrtoint ptr %tqp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tqp.i, align 8
  %tqp_index33.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %tqp_index33.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tqp_index33.i, align 1
  %idxprom.i = zext i8 %35 to i32
  %arrayidx34.i = getelementptr ptr, ptr %33, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx34.i, align 4
  %index.i.i = getelementptr i8, ptr %37, i32 44
  %38 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %index.i.i, align 8
  %conv.i.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i.i, ptr %0, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  %and37.i = and i32 %42, -4
  %int_gl_index.i = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, ptr %req, i32 0, i32 7, i32 1, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %int_gl_index.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %int_gl_index.i, align 1
  %45 = and i8 %44, 3
  %and43.i = zext i8 %45 to i32
  %or45.i = or i32 %and37.i, %and43.i
  store i32 %or45.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp49141.i = icmp ugt i8 %10, 1
  br i1 %cmp49141.i, label %do.body20.i.for.body51.i_crit_edge, label %do.body20.i.if.end_crit_edge

do.body20.i.if.end_crit_edge:                     ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body20.i.for.body51.i_crit_edge:               ; preds = %do.body20.i
  br label %for.body51.i

for.body51.i:                                     ; preds = %do.body55.i.for.body51.i_crit_edge, %do.body20.i.for.body51.i_crit_edge
  %i.1143.i = phi i32 [ %inc94.i, %do.body55.i.for.body51.i_crit_edge ], [ 1, %do.body20.i.for.body51.i_crit_edge ]
  %cur_chain.0142.i = phi ptr [ %call7.i.i.i, %do.body55.i.for.body51.i_crit_edge ], [ %ring_chain, %do.body20.i.for.body51.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %err.i, label %do.body55.i

do.body55.i:                                      ; preds = %for.body51.i
  %flag56.i = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %call7.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %flag56.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flag56.i, align 8
  %and57.i = and i32 %48, -2
  %arrayidx60.i = getelementptr [4 x %struct.hclge_ring_chain_param], ptr %param22.i, i32 0, i32 %i.1143.i
  %49 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx60.i, align 1
  %51 = and i8 %50, 1
  %and64.i = zext i8 %51 to i32
  %or66.i = or i32 %and57.i, %and64.i
  store i32 %or66.i, ptr %flag56.i, align 8
  %52 = ptrtoint ptr %tqp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tqp.i, align 8
  %tqp_index74.i = getelementptr [4 x %struct.hclge_ring_chain_param], ptr %param22.i, i32 0, i32 %i.1143.i, i32 1
  %54 = ptrtoint ptr %tqp_index74.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tqp_index74.i, align 1
  %idxprom75.i = zext i8 %55 to i32
  %arrayidx76.i = getelementptr ptr, ptr %53, i32 %idxprom75.i
  %56 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx76.i, align 4
  %index.i135.i = getelementptr i8, ptr %57, i32 44
  %58 = ptrtoint ptr %index.i135.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %index.i135.i, align 8
  %conv.i136.i = zext i16 %59 to i32
  %tqp_index78.i = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %call7.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %tqp_index78.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i136.i, ptr %tqp_index78.i, align 4
  %int_gl_idx80.i = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %call7.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %int_gl_idx80.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %int_gl_idx80.i, align 4
  %and81.i = and i32 %62, -4
  %int_gl_index85.i = getelementptr [4 x %struct.hclge_ring_chain_param], ptr %param22.i, i32 0, i32 %i.1143.i, i32 2
  %63 = ptrtoint ptr %int_gl_index85.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %int_gl_index85.i, align 1
  %65 = and i8 %64, 3
  %and88.i = zext i8 %65 to i32
  %or90.i = or i32 %and81.i, %and88.i
  store i32 %or90.i, ptr %int_gl_idx80.i, align 4
  %66 = ptrtoint ptr %cur_chain.0142.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i.i, ptr %cur_chain.0142.i, align 4
  %inc94.i = add nuw nsw i32 %i.1143.i, 1
  %exitcond146.not.i = icmp eq i32 %inc94.i, %conv.i
  br i1 %exitcond146.not.i, label %do.body55.i.if.end_crit_edge, label %do.body55.i.for.body51.i_crit_edge

do.body55.i.for.body51.i_crit_edge:               ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body51.i

do.body55.i.if.end_crit_edge:                     ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

err.i:                                            ; preds = %for.body51.i
  %67 = ptrtoint ptr %ring_chain to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring_chain, align 4
  %tobool.not4.i.i = icmp eq ptr %68, null
  br i1 %tobool.not4.i.i, label %err.i.cleanup_crit_edge, label %err.i.while.body.i.i_crit_edge

err.i.while.body.i.i_crit_edge:                   ; preds = %err.i
  br label %while.body.i.i

err.i.cleanup_crit_edge:                          ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %err.i.while.body.i.i_crit_edge
  %chain.05.i.i = phi ptr [ %70, %while.body.i.i.while.body.i.i_crit_edge ], [ %68, %err.i.while.body.i.i_crit_edge ]
  %69 = ptrtoint ptr %chain.05.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chain.05.i.i, align 4
  tail call void @kfree_sensitive(ptr noundef nonnull %chain.05.i.i) #11
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %do.body55.i.if.end_crit_edge, %do.body20.i.if.end_crit_edge
  %conv = zext i8 %5 to i32
  %call3 = call i32 @hclge_bind_ring_with_vector(ptr noundef %vport, i32 noundef %conv, i1 noundef zeroext %en, ptr noundef nonnull %ring_chain) #11
  %71 = ptrtoint ptr %ring_chain to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ring_chain, align 4
  %tobool.not4.i = icmp eq ptr %72, null
  br i1 %tobool.not4.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %chain.05.i = phi ptr [ %74, %while.body.i.while.body.i_crit_edge ], [ %72, %if.end.while.body.i_crit_edge ]
  %73 = ptrtoint ptr %chain.05.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chain.05.i, align 4
  call void @kfree_sensitive(ptr noundef nonnull %chain.05.i) #11
  %tobool.not.i10 = icmp eq ptr %74, null
  br i1 %tobool.not.i10, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %err.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ -12, %err.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -12, %while.body.i.i.cleanup_crit_edge ], [ %call3, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ring_chain) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_rm_vport_all_mac_table(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_rm_vport_all_vlan_table(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

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
define internal i32 @trace_raw_output_hclge_pf_mbx_get(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_pciname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_devname, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vfid, align 4
  %conv = zext i8 %7 to i32
  %code = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code, align 1
  %conv3 = zext i8 %9 to i32
  %subcode = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %subcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %subcode, align 2
  %conv4 = zext i8 %11 to i32
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_get, ptr %1, i32 0, i32 6
  %call5 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %mbx_data, i32 noundef 6, i32 noundef 4) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, ptr noundef %call5) #11
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
define internal i32 @trace_raw_output_hclge_pf_mbx_send(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_pciname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_pciname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_pciname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_devname, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %vfid = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vfid, align 4
  %conv = zext i8 %7 to i32
  %code = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %code, align 2
  %conv3 = zext i16 %9 to i32
  %mbx_data = getelementptr inbounds %struct.trace_event_raw_hclge_pf_mbx_send, ptr %1, i32 0, i32 5
  %call4 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %mbx_data, i32 noundef 6, i32 noundef 4) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.46, ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %conv, i32 noundef %conv3, ptr noundef %call4) #11
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hclge_pf_mbx_send(ptr noundef %hdev, ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_send, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_hclge_pf_mbx_send, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !187

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !180

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_send, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !180

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !170) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hclge_pf_mbx_send, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_hclge_pf_mbx_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_hclge_pf_mbx_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 78, ptr noundef nonnull @.str.50) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %38 = tail call i32 @llvm.read_register.i32(metadata !170) #11
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
declare dso_local i32 @hclge_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_bind_ring_with_vector(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_task_schedule(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_update_mac_node_for_dev_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_update_mac_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_set_vlan_filter(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_en_hw_strip_rxvtag(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_enable_vport_vlan_filter(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_vport_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_vport_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_reset_tqp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_func_reset_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_set_vport_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hclge_covert_handle_qid_global(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
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
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__tracepoint_hclge_pf_mbx_get, !1, !"__tracepoint_hclge_pf_mbx_get", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/./hclge_trace.h", i32 16, i32 1}
!2 = !{ptr @__tracepoint_ptr_hclge_pf_mbx_get, !1, !"__tracepoint_ptr_hclge_pf_mbx_get", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_hclge_pf_mbx_get, !1, !"__SCK__tp_func_hclge_pf_mbx_get", i1 false, i1 false}
!4 = !{ptr @__tracepoint_hclge_pf_mbx_send, !5, !"__tracepoint_hclge_pf_mbx_send", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/./hclge_trace.h", i32 49, i32 1}
!6 = !{ptr @__tracepoint_ptr_hclge_pf_mbx_send, !5, !"__tracepoint_ptr_hclge_pf_mbx_send", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_hclge_pf_mbx_send, !5, !"__SCK__tp_func_hclge_pf_mbx_send", i1 false, i1 false}
!8 = !{ptr @event_class_hclge_pf_mbx_get, !1, !"event_class_hclge_pf_mbx_get", i1 false, i1 false}
!9 = !{ptr @event_hclge_pf_mbx_get, !1, !"event_hclge_pf_mbx_get", i1 false, i1 false}
!10 = !{ptr @__event_hclge_pf_mbx_get, !1, !"__event_hclge_pf_mbx_get", i1 false, i1 false}
!11 = !{ptr @event_class_hclge_pf_mbx_send, !5, !"event_class_hclge_pf_mbx_send", i1 false, i1 false}
!12 = !{ptr @event_hclge_pf_mbx_send, !5, !"event_hclge_pf_mbx_send", i1 false, i1 false}
!13 = !{ptr @__event_hclge_pf_mbx_send, !5, !"__event_hclge_pf_mbx_send", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_hclge_pf_mbx_get, !1, !"__bpf_trace_tp_map_hclge_pf_mbx_get", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_hclge_pf_mbx_send, !5, !"__bpf_trace_tp_map_hclge_pf_mbx_send", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 713, i32 4}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hclge_mbx_handler._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hclge_mbx_handler._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 723, i32 4}
!26 = !{ptr @hclge_mbx_handler._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hclge_mbx_handler._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 755, i32 5}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hclge_mbx_handler._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @hclge_mbx_handler._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 762, i32 5}
!35 = !{ptr @hclge_mbx_handler._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hclge_mbx_handler._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 769, i32 5}
!39 = !{ptr @hclge_mbx_handler._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hclge_mbx_handler._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 776, i32 5}
!43 = !{ptr @hclge_mbx_handler._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hclge_mbx_handler._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 792, i32 5}
!47 = !{ptr @hclge_mbx_handler._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hclge_mbx_handler._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 808, i32 5}
!51 = !{ptr @hclge_mbx_handler._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hclge_mbx_handler._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 845, i32 4}
!55 = !{ptr @hclge_mbx_handler._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hclge_mbx_handler._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 857, i32 5}
!59 = !{ptr @hclge_mbx_handler._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hclge_mbx_handler._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @__tpstrtab_hclge_pf_mbx_get, !1, !"__tpstrtab_hclge_pf_mbx_get", i1 false, i1 false}
!62 = !{ptr @__tpstrtab_hclge_pf_mbx_send, !5, !"__tpstrtab_hclge_pf_mbx_send", i1 false, i1 false}
!63 = !{ptr @str__hns3__trace_system_name, !64, !"str__hns3__trace_system_name", i1 false, i1 false}
!64 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!65 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @trace_event_fields_hclge_pf_mbx_get, !1, !"trace_event_fields_hclge_pf_mbx_get", i1 false, i1 false}
!76 = !{ptr @trace_event_type_funcs_hclge_pf_mbx_get, !1, !"trace_event_type_funcs_hclge_pf_mbx_get", i1 false, i1 false}
!77 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @print_fmt_hclge_pf_mbx_get, !1, !"print_fmt_hclge_pf_mbx_get", i1 false, i1 false}
!79 = !{ptr @.str.44, !5, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.45, !5, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @trace_event_fields_hclge_pf_mbx_send, !5, !"trace_event_fields_hclge_pf_mbx_send", i1 false, i1 false}
!82 = !{ptr @trace_event_type_funcs_hclge_pf_mbx_send, !5, !"trace_event_type_funcs_hclge_pf_mbx_send", i1 false, i1 false}
!83 = !{ptr @.str.46, !5, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @print_fmt_hclge_pf_mbx_send, !5, !"print_fmt_hclge_pf_mbx_send", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 111, i32 3}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @hclge_send_mbx_msg._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @hclge_send_mbx_msg._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!91 = !{ptr @.str.49, !5, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!93 = !{ptr @.str.50, !5, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!98 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 183, i32 4}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hclge_get_ring_chain_from_mbx._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @hclge_get_ring_chain_from_mbx._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 300, i32 3}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hclge_set_vf_uc_mac_addr._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @hclge_set_vf_uc_mac_addr._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 322, i32 3}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hclge_set_vf_mc_mac_addr._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @hclge_set_vf_mc_mac_addr._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 559, i32 3}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hclge_mbx_reset_vf_queue._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @hclge_mbx_reset_vf_queue._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 569, i32 2}
!121 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hclge_reset_vf._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @hclge_reset_vf._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 600, i32 3}
!126 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @hclge_get_queue_id_in_pf._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @hclge_get_queue_id_in_pf._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 627, i32 3}
!131 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @hclge_get_rss_key._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @hclge_get_rss_key._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 643, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @hclge_link_fail_parse._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @hclge_link_fail_parse._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 646, i32 3}
!141 = !{ptr @hclge_link_fail_parse._entry.68, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @hclge_link_fail_parse._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 649, i32 3}
!145 = !{ptr @hclge_link_fail_parse._entry.71, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @hclge_link_fail_parse._entry_ptr.73, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 677, i32 2}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @hclge_handle_ncsi_error._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @hclge_handle_ncsi_error._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 693, i32 3}
!154 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @hclge_handle_vf_tbl._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @hclge_handle_vf_tbl._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 44, i32 3}
!159 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @hclge_gen_resp_to_vf._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @hclge_gen_resp_to_vf._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 67, i32 3}
!164 = !{ptr @hclge_gen_resp_to_vf._entry.80, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @hclge_gen_resp_to_vf._entry_ptr.82, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_mbx.c", i32 81, i32 3}
!168 = !{ptr @hclge_gen_resp_to_vf._entry.83, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @hclge_gen_resp_to_vf._entry_ptr.85, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{!"branch_weights", i32 1, i32 2000}
!182 = !{!"auto-init"}
!183 = !{i64 6286056}
!184 = !{i64 2157977944}
!185 = !{i64 2157974521}
!186 = !{i64 6285638}
!187 = !{i64 2148530560, i64 2148530565, i64 2148530578, i64 2148530622, i64 2148530656, i64 2148530677}
!188 = !{i64 2158116717}
!189 = !{i64 2158116930}
!190 = !{i64 2149526967}
!191 = !{i64 2149528003}
!192 = !{i64 2158133673}
!193 = !{i64 2158133888}
