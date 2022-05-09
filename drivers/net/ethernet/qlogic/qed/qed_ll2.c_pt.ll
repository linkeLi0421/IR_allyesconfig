; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_ll2.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_ll2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_cbs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_chain_init_params = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.qed_ll2_acquire_data = type { %struct.qed_ll2_acquire_data_inputs, ptr, ptr }
%struct.qed_ll2_acquire_data_inputs = type { i32, i32, i16, i16, i16, i8, i8, i16, i8, i8, i32, i32, i32, i8, i8 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.8, i32 }
%struct.atomic_t = type { i32 }
%union.anon.8 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qed_ll2_info = type { %struct.mutex, %struct.qed_ll2_acquire_data_inputs, i32, i8, i8, i8, i8, i32, i8, i8, %struct.qed_ll2_rx_queue, %struct.qed_ll2_tx_queue, %struct.qed_ll2_cbs }
%struct.qed_ll2_rx_queue = type { %struct.spinlock, %struct.qed_chain, %struct.qed_chain, i8, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.core_pwm_prod_update_data }
%struct.qed_chain = type { ptr, ptr, %struct.anon.4, %union.anon.6, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.7, ptr, i32, i32, i32, i8 }
%struct.anon.4 = type { ptr, %union.anon.5 }
%union.anon.5 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.6 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.7 = type { ptr, i32, i32 }
%struct.core_pwm_prod_update_data = type { i16, i8, i8, %struct.core_ll2_rx_prod }
%struct.core_ll2_rx_prod = type { i16, i16 }
%struct.qed_ll2_tx_queue = type { %struct.spinlock, %struct.qed_chain, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i16, ptr, %struct.core_db_data, i16, i16, i16, i8, ptr, ptr, %struct.qed_ll2_tx_packet }
%struct.core_db_data = type { i8, i8, i16 }
%struct.qed_ll2_tx_packet = type { %struct.list_head, i16, i8, ptr, [0 x %struct.anon.9] }
%struct.anon.9 = type { ptr, i32, i16 }
%struct.qed_ooo_buffer = type { %struct.list_head, ptr, i32, i32, i16, i16, i16, i8 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.136, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.136 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.135, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.135 = type { ptr }
%struct.qed_chain_u16 = type { i16, i16 }
%struct.core_rx_slow_path_cqe = type { i8, i8, i16, %struct.core_rx_cqe_opaque_data, [5 x i32] }
%struct.core_rx_cqe_opaque_data = type { [2 x i32] }
%struct.ooo_opaque = type { i32, i8, i8, i8, i8 }
%struct.core_rx_fast_path_cqe = type { i8, i8, %struct.parsing_and_err_flags, i16, i16, %struct.core_rx_cqe_opaque_data, %struct.parsing_err_flags, i8, i8, [3 x i32] }
%struct.parsing_and_err_flags = type { i16 }
%struct.parsing_err_flags = type { i16 }
%struct.qed_ll2_rx_packet = type { %struct.list_head, ptr, i32, i16, ptr, i8, i16, i16, i16, [2 x i32] }
%struct.qed_ll2_comp_rx_data = type { ptr, i32, i16, i16, i16, i8, i8, %union.anon, i32, i32, i32, i16, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i8 }
%struct.core_rx_gsi_offload_cqe = type { i8, i8, %struct.parsing_and_err_flags, i16, i16, i32, i16, i16, i32, %struct.core_rx_cqe_opaque_data, i8, [3 x i8] }
%struct.qed_sp_init_data = type { i32, i16, i32, ptr }
%struct.qed_cxt_info = type { ptr, i32, i32 }
%struct.qed_chain_pbl_u16 = type { i16, i16 }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.qed_spq_entry = type { %struct.list_head, i8, %struct.slow_path_element, %union.ramrod_data, i32, ptr, i32, %struct.qed_spq_comp_cb, %struct.qed_spq_comp_done, ptr }
%struct.slow_path_element = type { %struct.ramrod_header, %struct.regpair }
%struct.ramrod_header = type { i32, i8, i8, i16 }
%struct.regpair = type { i32, i32 }
%union.ramrod_data = type { %struct.iwarp_init_func_ramrod_data }
%struct.iwarp_init_func_ramrod_data = type { %struct.rdma_init_func_ramrod_data, %struct.tcp_init_params, %struct.iwarp_init_func_params }
%struct.rdma_init_func_ramrod_data = type { %struct.rdma_init_func_hdr, %struct.rdma_cnq_params, [128 x %struct.rdma_cnq_params] }
%struct.rdma_init_func_hdr = type { i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8 }
%struct.rdma_cnq_params = type { i16, i8, i8, i32, %struct.regpair, i16, [6 x i8] }
%struct.tcp_init_params = type { i32, i16, i8, [9 x i8] }
%struct.iwarp_init_func_params = type { i8, [7 x i8] }
%struct.qed_spq_comp_cb = type { ptr, ptr }
%struct.qed_spq_comp_done = type { i32, i8 }
%struct.core_rx_start_ramrod_data = type { %struct.regpair, %struct.regpair, i16, i16, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.core_rx_action_on_error, i8, i8, i8, i8, i8, [2 x i8] }
%struct.core_rx_action_on_error = type { i8 }
%struct.core_tx_start_ramrod_data = type { %struct.regpair, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, [7 x i8] }
%struct.core_rx_bd_with_buff_len = type { %struct.regpair, i16, [3 x i16] }
%struct.qed_chain_next = type { %struct.regpair, ptr }
%struct.addr_tbl_entry = type { ptr, i32 }
%struct.qed_ll2_tx_pkt_info = type { ptr, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.core_tx_bd = type { %struct.regpair, i16, i16, %struct.core_tx_bd_data, i16 }
%struct.core_tx_bd_data = type { i16 }
%struct.core_ll2_pstorm_per_queue_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.core_ll2_ustorm_per_queue_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.core_ll2_tstorm_per_queue_stat = type { %struct.regpair, %struct.regpair }
%struct.core_ll2_port_stats = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.qed_ll2_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_ll2_params = type { i16, i8, i8, i8, i8, [6 x i8] }
%struct.qed_cb_ll2_info = type { i32, i32, i8, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.qed_ll2_buffer = type { %struct.list_head, ptr, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.59, %union.anon.62, %union.anon.63, [48 x i8], %union.anon.64, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.66, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { ptr, ptr, %union.anon.61 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { ptr }
%union.anon.63 = type { i64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { i32, ptr }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.68, i32, i32, i32, i16, i16, %union.anon.70, i32, %union.anon.71, %union.anon.72, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.68 = type { i32 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.11, %union.anon.132, %struct.atomic_t, i32 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.132 = type { %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.80 }
%union.anon.80 = type { [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.qed_ll2_cb_ops = type { ptr, ptr }

@qed_ll2_acquire_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Invalid callback functions\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_ll2_acquire_connection\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_ll2.c\00", [54 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection._entry_ptr = internal global ptr @qed_ll2_acquire_connection._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_ll2_establish_connection.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&p_rx->lock\00", [20 x i8] zeroinitializer }, align 32
@qed_ll2_establish_connection.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&p_tx->lock\00", [20 x i8] zeroinitializer }, align 32
@qed_ll2_establish_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Cannot find context info for cid=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qed_ll2_establish_connection\00", [35 x i8] zeroinitializer }, align 32
@qed_ll2_establish_connection._entry_ptr = internal global ptr @qed_ll2_establish_connection._entry, section ".printk_index", align 4
@qed_ll2_establish_connection._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]Disabling stats for queue %d - not enough counters\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_ll2_establish_connection._entry_ptr.11 = internal global ptr @qed_ll2_establish_connection._entry.9, section ".printk_index", align 4
@qed_ll2_establish_connection._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015[%s:%d(%s)]Establishing ll2 queue. PF %d ctx_based=%d abs qid=%d stats_id=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_ll2_establish_connection._entry_ptr.14 = internal global ptr @qed_ll2_establish_connection._entry.12, section ".printk_index", align 4
@qed_ll2_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Failed to allocate `struct qed_ll2'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_ll2_alloc\00", [18 x i8] zeroinitializer }, align 32
@qed_ll2_alloc._entry_ptr = internal global ptr @qed_ll2_alloc._entry, section ".printk_index", align 4
@qed_ll2_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&p_hwfn->p_ll2_info[i].mutex\00", [35 x i8] zeroinitializer }, align 32
@qed_ll2_ops_pass = dso_local constant { %struct.qed_ll2_ops, [44 x i8] } { %struct.qed_ll2_ops { ptr @qed_ll2_start, ptr @qed_ll2_stop, ptr @qed_ll2_start_xmit, ptr @qed_ll2_register_cb_ops, ptr @qed_ll2_stats }, [44 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Failed to allocate ll2 rxq chain\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_ll2_acquire_connection_rx\00", [34 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_rx._entry_ptr = internal global ptr @qed_ll2_acquire_connection_rx._entry, section ".printk_index", align 4
@qed_ll2_acquire_connection_rx._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Failed to allocate ll2 Rx desc\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_rx._entry_ptr.22 = internal global ptr @qed_ll2_acquire_connection_rx._entry.20, section ".printk_index", align 4
@qed_ll2_acquire_connection_rx._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Failed to allocate ll2 rcq chain\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_rx._entry_ptr.25 = internal global ptr @qed_ll2_acquire_connection_rx._entry.23, section ".printk_index", align 4
@qed_ll2_acquire_connection_rx._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Allocated LL2 Rxq [Type %08x] with 0x%08x buffers\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_rx._entry_ptr.28 = internal global ptr @qed_ll2_acquire_connection_rx._entry.26, section ".printk_index", align 4
@qed_ll2_acquire_connection_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Allocated LL2 Txq [Type %08x] with 0x%08x buffers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_ll2_acquire_connection_tx\00", [34 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_tx._entry_ptr = internal global ptr @qed_ll2_acquire_connection_tx._entry, section ".printk_index", align 4
@qed_ll2_acquire_connection_tx._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Can't allocate memory for Tx LL2 with 0x%08x buffers\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_tx._entry_ptr.33 = internal global ptr @qed_ll2_acquire_connection_tx._entry.31, section ".printk_index", align 4
@qed_ll2_acquire_connection_ooo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]Allocated [%04x] LL2 OOO buffers [each of size 0x%08x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_ll2_acquire_connection_ooo\00", [33 x i8] zeroinitializer }, align 32
@qed_ll2_acquire_connection_ooo._entry_ptr = internal global ptr @qed_ll2_acquire_connection_ooo._entry, section ".printk_index", align 4
@qed_ll2_lb_rxq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Got a non-regular LB LL2 completion [type 0x%02x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_ll2_lb_rxq_handler\00", [41 x i8] zeroinitializer }, align 32
@qed_ll2_lb_rxq_handler._entry_ptr = internal global ptr @qed_ll2_lb_rxq_handler._entry, section ".printk_index", align 4
@qed_ll2_lb_rxq_handler._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]LL2 OOO RX chain has no submitted buffers\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_ll2_lb_rxq_handler._entry_ptr.40 = internal global ptr @qed_ll2_lb_rxq_handler._entry.38, section ".printk_index", align 4
@qed_ll2_lb_rxq_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]LL2 OOO RX packet is not valid\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_ll2_lb_rxq_handler._entry_ptr.43 = internal global ptr @qed_ll2_lb_rxq_handler._entry.41, section ".printk_index", align 4
@qed_ll2_lb_rxq_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Unexpected event (%d) TX OOO completion\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_ll2_lb_rxq_handler._entry_ptr.46 = internal global ptr @qed_ll2_lb_rxq_handler._entry.44, section ".printk_index", align 4
@qed_ll2_lb_txq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]Unexpectedly many BDs(%d) in TX OOO completion\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_ll2_lb_txq_completion\00", [38 x i8] zeroinitializer }, align 32
@qed_ll2_lb_txq_completion._entry_ptr = internal global ptr @qed_ll2_lb_txq_completion._entry, section ".printk_index", align 4
@qed_ll2_rxq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015[%s:%d(%s)]LL2 [sw. cons %04x, fw. at %04x] - Got Packet of type %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_ll2_rxq_completion\00", [41 x i8] zeroinitializer }, align 32
@qed_ll2_rxq_completion._entry_ptr = internal global ptr @qed_ll2_rxq_completion._entry, section ".printk_index", align 4
@qed_ll2_handle_slowpath._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]LL2 - unexpected Rx CQE slowpath ramrod_cmd_id:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_ll2_handle_slowpath\00", [40 x i8] zeroinitializer }, align 32
@qed_ll2_handle_slowpath._entry_ptr = internal global ptr @qed_ll2_handle_slowpath._entry, section ".printk_index", align 4
@qed_ll2_handle_slowpath._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015[%s:%d(%s)]LL2 - received RX_QUEUE_FLUSH but no callback was provided\0A\00", [55 x i8] zeroinitializer }, align 32
@qed_ll2_handle_slowpath._entry_ptr.55 = internal global ptr @qed_ll2_handle_slowpath._entry.53, section ".printk_index", align 4
@qed_ll2_rxq_handle_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)][%d] LL2 Rx completion but active_descq is empty\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_ll2_rxq_handle_completion\00", [34 x i8] zeroinitializer }, align 32
@qed_ll2_rxq_handle_completion._entry_ptr = internal global ptr @qed_ll2_rxq_handle_completion._entry, section ".printk_index", align 4
@qed_ll2_rxq_handle_completion._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]Mismatch between active_descq and the LL2 Rx chain\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_ll2_rxq_handle_completion._entry_ptr.60 = internal global ptr @qed_ll2_rxq_handle_completion._entry.58, section ".printk_index", align 4
@qed_ll2_txq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Rest of BDs does not cover whole packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_ll2_txq_completion\00", [41 x i8] zeroinitializer }, align 32
@qed_ll2_txq_completion._entry_ptr = internal global ptr @qed_ll2_txq_completion._entry, section ".printk_index", align 4
@qed_sp_ll2_tx_queue_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Unknown connection type: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_sp_ll2_tx_queue_start\00", [38 x i8] zeroinitializer }, align 32
@qed_sp_ll2_tx_queue_start._entry_ptr = internal global ptr @qed_sp_ll2_tx_queue_start._entry, section ".printk_index", align 4
@qed_ll2_prepare_tx_packet_set_bd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\015[%s:%d(%s)]LL2 [q 0x%02x cid 0x%08x type 0x%08x] Tx Producer at [0x%04x] - set with a %04x bytes %02x BDs buffer at %08x:%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qed_ll2_prepare_tx_packet_set_bd\00", [63 x i8] zeroinitializer }, align 32
@qed_ll2_prepare_tx_packet_set_bd._entry_ptr = internal global ptr @qed_ll2_prepare_tx_packet_set_bd._entry, section ".printk_index", align 4
@qed_ll2_tx_packet_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015[%s:%d(%s)]LL2 [q 0x%02x cid 0x%08x type 0x%08x] Doorbelled [producer 0x%04x]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_ll2_tx_packet_notify\00", [39 x i8] zeroinitializer }, align 32
@qed_ll2_tx_packet_notify._entry_ptr = internal global ptr @qed_ll2_tx_packet_notify._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__qed_ll2_get_stats._entry = internal constant %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 2331, ptr null, ptr null }, align 1
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]Failed to acquire ptt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__qed_ll2_get_stats\00", [44 x i8] zeroinitializer }, align 32
@__qed_ll2_get_stats._entry_ptr = internal global ptr @__qed_ll2_get_stats._entry, section ".printk_index", align 4
@qed_ll2_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Invalid Ethernet address\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_ll2_start\00", [18 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr = internal global ptr @qed_ll2_start._entry, section ".printk_index", align 4
@qed_ll2_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cdev->ll2->lock\00", [47 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 2602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]Allocating %d LL2 buffers of size %08x bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.76 = internal global ptr @qed_ll2_start._entry.74, section ".printk_index", align 4
@qed_ll2_start._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str.2, i32 2606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Failed to allocate LL2 buffers\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.79 = internal global ptr @qed_ll2_start._entry.77, section ".printk_index", align 4
@qed_ll2_start._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.72, ptr @.str.2, i32 2623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Failed to start LL2\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.82 = internal global ptr @qed_ll2_start._entry.80, section ".printk_index", align 4
@qed_ll2_start._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.72, ptr @.str.2, i32 2634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Failed to start LL2 on engine 0\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.85 = internal global ptr @qed_ll2_start._entry.83, section ".printk_index", align 4
@qed_ll2_start._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.72, ptr @.str.2, i32 2640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Starting OOO LL2 queue\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.88 = internal global ptr @qed_ll2_start._entry.86, section ".printk_index", align 4
@qed_ll2_start._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.72, ptr @.str.2, i32 2643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Failed to start OOO LL2\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.91 = internal global ptr @qed_ll2_start._entry.89, section ".printk_index", align 4
@qed_ll2_start._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.72, ptr @.str.2, i32 2651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Failed to add an LLH filter\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_ll2_start._entry_ptr.94 = internal global ptr @qed_ll2_start._entry.92, section ".printk_index", align 4
@qed_ll2_alloc_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to allocate LL2 buffer data\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_ll2_alloc_buffer\00", [43 x i8] zeroinitializer }, align 32
@qed_ll2_alloc_buffer._entry_ptr = internal global ptr @qed_ll2_alloc_buffer._entry, section ".printk_index", align 4
@qed_ll2_alloc_buffer._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Failed to map LL2 buffer data\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_ll2_alloc_buffer._entry_ptr.99 = internal global ptr @qed_ll2_alloc_buffer._entry.97, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__qed_ll2_start._entry = internal constant %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 2529, ptr null, ptr null }, align 1
@.str.102 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Failed to acquire LL2 connection\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__qed_ll2_start\00", [16 x i8] zeroinitializer }, align 32
@__qed_ll2_start._entry_ptr = internal global ptr @__qed_ll2_start._entry, section ".printk_index", align 4
@__qed_ll2_start._entry.104 = internal constant %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 2535, ptr null, ptr null }, align 1
@.str.105 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to establish LL2 connection\0A\00", [47 x i8] zeroinitializer }, align 32
@__qed_ll2_start._entry_ptr.106 = internal global ptr @__qed_ll2_start._entry.104, section ".printk_index", align 4
@__qed_ll2_start._entry.107 = internal constant %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 2548, ptr null, ptr null }, align 1
@.str.108 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]Failed to post an Rx buffer; Deleting it\0A\00", [41 x i8] zeroinitializer }, align 32
@__qed_ll2_start._entry_ptr.109 = internal global ptr @__qed_ll2_start._entry.107, section ".printk_index", align 4
@__qed_ll2_start._entry.110 = internal constant %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.2, i32 2561, ptr null, ptr null }, align 1
@.str.111 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Failed passing even a single Rx buffer\0A\00", [43 x i8] zeroinitializer }, align 32
@__qed_ll2_start._entry_ptr.112 = internal global ptr @__qed_ll2_start._entry.110, section ".printk_index", align 4
@ll2_cbs = internal global { %struct.qed_ll2_cbs, [40 x i8] } { %struct.qed_ll2_cbs { ptr @qed_ll2b_complete_rx_packet, ptr @qed_ll2b_release_rx_packet, ptr @qed_ll2b_complete_tx_packet, ptr @qed_ll2b_complete_tx_packet, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_ll2b_complete_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"\015[%s:%d(%s)]Got an LL2 Rx completion: [Buffer at phys 0x%llx, offset 0x%02x] Length 0x%04x Parse_flags 0x%04x vlan 0x%04x Opaque data [0x%08x:0x%08x]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_ll2b_complete_rx_packet\00", [36 x i8] zeroinitializer }, align 32
@qed_ll2b_complete_rx_packet._entry_ptr = internal global ptr @qed_ll2b_complete_rx_packet._entry, section ".printk_index", align 4
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qed_ll2b_complete_rx_packet._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.114, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Failed to build SKB\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_ll2b_complete_rx_packet._entry_ptr.118 = internal global ptr @qed_ll2b_complete_rx_packet._entry.116, section ".printk_index", align 4
@qed_ll2b_complete_rx_packet._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Dropping the packet\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_ll2b_complete_rx_packet._entry_ptr.121 = internal global ptr @qed_ll2b_complete_rx_packet._entry.119, section ".printk_index", align 4
@qed_ll2_dealloc_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]All LL2 entries were removed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_ll2_dealloc_buffer\00", [41 x i8] zeroinitializer }, align 32
@qed_ll2_dealloc_buffer._entry_ptr = internal global ptr @qed_ll2_dealloc_buffer._entry, section ".printk_index", align 4
@qed_ll2_start_ooo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 2422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Failed to acquire LL2 OOO connection\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_ll2_start_ooo\00", [46 x i8] zeroinitializer }, align 32
@qed_ll2_start_ooo._entry_ptr = internal global ptr @qed_ll2_start_ooo._entry, section ".printk_index", align 4
@qed_ll2_start_ooo._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 2428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Failed to establish LL2 OOO connection\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_ll2_start_ooo._entry_ptr.128 = internal global ptr @qed_ll2_start_ooo._entry.126, section ".printk_index", align 4
@qed_ll2_stop_ooo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Stopping LL2 OOO queue [%02x]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_ll2_stop_ooo\00", [47 x i8] zeroinitializer }, align 32
@qed_ll2_stop_ooo._entry_ptr = internal global ptr @qed_ll2_stop_ooo._entry, section ".printk_index", align 4
@__qed_ll2_stop._entry = internal constant %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 2456, ptr null, ptr null }, align 1
@.str.131 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to terminate LL2 connection\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__qed_ll2_stop\00", [17 x i8] zeroinitializer }, align 32
@__qed_ll2_stop._entry_ptr = internal global ptr @__qed_ll2_stop._entry, section ".printk_index", align 4
@qed_ll2_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 2485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Failed to stop LL2 on engine 0\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_ll2_stop\00", [19 x i8] zeroinitializer }, align 32
@qed_ll2_stop._entry_ptr = internal global ptr @qed_ll2_stop._entry, section ".printk_index", align 4
@qed_ll2_stop._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 2490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Failed to stop LL2\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_ll2_stop._entry_ptr.137 = internal global ptr @qed_ll2_stop._entry.135, section ".printk_index", align 4
@qed_ll2_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 2686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Cannot transmit a checksummed packet\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_ll2_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@qed_ll2_start_xmit._entry_ptr = internal global ptr @qed_ll2_start_xmit._entry, section ".printk_index", align 4
@qed_ll2_start_xmit._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 2697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[%s:%d(%s)]Cannot transmit a packet with %d fragments\0A\00", [39 x i8] zeroinitializer }, align 32
@qed_ll2_start_xmit._entry_ptr.142 = internal global ptr @qed_ll2_start_xmit._entry.140, section ".printk_index", align 4
@qed_ll2_start_xmit._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.2, i32 2704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]SKB mapping failed\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_ll2_start_xmit._entry_ptr.145 = internal global ptr @qed_ll2_start_xmit._entry.143, section ".printk_index", align 4
@qed_ll2_start_xmit._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 2748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Unable to map frag - dropping packet\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_ll2_start_xmit._entry_ptr.148 = internal global ptr @qed_ll2_start_xmit._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@qed_ll2_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 2784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Failed to get LL2 stats\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_ll2_stats\00", [18 x i8] zeroinitializer }, align 32
@qed_ll2_stats._entry_ptr = internal global ptr @qed_ll2_stats._entry, section ".printk_index", align 4
@qed_ll2_stats._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 2794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Failed to get LL2 stats on engine 0\0A\00", [46 x i8] zeroinitializer }, align 32
@qed_ll2_stats._entry_ptr.154 = internal global ptr @qed_ll2_stats._entry.152, section ".printk_index", align 4
@switch.table.qed_ll2_acquire_connection = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.qed_ll2_prepare_tx_packet = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 16384, i16 -16384], [26 x i8] zeroinitializer }, align 32
@switch.table.__qed_ll2_start = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 1, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.157 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1437, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1592, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1603, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1627, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1647, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1653, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2204, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2220, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"qed_ll2_ops_pass\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2802, i32 26 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1191, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1200, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1210, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1214, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1257, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1263, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1316, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 675, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 701, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 716, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 772, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 908, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 553, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 454, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 461, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 492, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 505, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 382, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1101, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1916, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 1986, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2331, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2583, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2591, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2601, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2606, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2623, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2633, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2640, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2643, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2651, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 118, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 126, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 326, i32 6 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2529, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2535, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2547, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2561, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [8 x i8] c"ll2_cbs\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2376, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 173, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 183, i32 18 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 205, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 230, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 146, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2422, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2428, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 948, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2456, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2484, i32 4 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2490, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2686, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2696, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2704, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2747, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 598, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2784, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.616 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_ll2.c\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 2793, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant [40 x i8] c"switch.table.qed_ll2_acquire_connection\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [39 x i8] c"switch.table.qed_ll2_prepare_tx_packet\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [29 x i8] c"switch.table.__qed_ll2_start\00", align 1
@llvm.compiler.used = appending global [217 x ptr] [ptr @__qed_ll2_get_stats._entry, ptr @__qed_ll2_get_stats._entry_ptr, ptr @__qed_ll2_start._entry, ptr @__qed_ll2_start._entry.104, ptr @__qed_ll2_start._entry.107, ptr @__qed_ll2_start._entry.110, ptr @__qed_ll2_start._entry_ptr, ptr @__qed_ll2_start._entry_ptr.106, ptr @__qed_ll2_start._entry_ptr.109, ptr @__qed_ll2_start._entry_ptr.112, ptr @__qed_ll2_stop._entry, ptr @__qed_ll2_stop._entry_ptr, ptr @qed_ll2_acquire_connection._entry, ptr @qed_ll2_acquire_connection._entry_ptr, ptr @qed_ll2_acquire_connection_ooo._entry, ptr @qed_ll2_acquire_connection_ooo._entry_ptr, ptr @qed_ll2_acquire_connection_rx._entry, ptr @qed_ll2_acquire_connection_rx._entry.20, ptr @qed_ll2_acquire_connection_rx._entry.23, ptr @qed_ll2_acquire_connection_rx._entry.26, ptr @qed_ll2_acquire_connection_rx._entry_ptr, ptr @qed_ll2_acquire_connection_rx._entry_ptr.22, ptr @qed_ll2_acquire_connection_rx._entry_ptr.25, ptr @qed_ll2_acquire_connection_rx._entry_ptr.28, ptr @qed_ll2_acquire_connection_tx._entry, ptr @qed_ll2_acquire_connection_tx._entry.31, ptr @qed_ll2_acquire_connection_tx._entry_ptr, ptr @qed_ll2_acquire_connection_tx._entry_ptr.33, ptr @qed_ll2_alloc._entry, ptr @qed_ll2_alloc._entry_ptr, ptr @qed_ll2_alloc_buffer._entry, ptr @qed_ll2_alloc_buffer._entry.97, ptr @qed_ll2_alloc_buffer._entry_ptr, ptr @qed_ll2_alloc_buffer._entry_ptr.99, ptr @qed_ll2_dealloc_buffer._entry, ptr @qed_ll2_dealloc_buffer._entry_ptr, ptr @qed_ll2_establish_connection._entry, ptr @qed_ll2_establish_connection._entry.12, ptr @qed_ll2_establish_connection._entry.9, ptr @qed_ll2_establish_connection._entry_ptr, ptr @qed_ll2_establish_connection._entry_ptr.11, ptr @qed_ll2_establish_connection._entry_ptr.14, ptr @qed_ll2_handle_slowpath._entry, ptr @qed_ll2_handle_slowpath._entry.53, ptr @qed_ll2_handle_slowpath._entry_ptr, ptr @qed_ll2_handle_slowpath._entry_ptr.55, ptr @qed_ll2_lb_rxq_handler._entry, ptr @qed_ll2_lb_rxq_handler._entry.38, ptr @qed_ll2_lb_rxq_handler._entry.41, ptr @qed_ll2_lb_rxq_handler._entry.44, ptr @qed_ll2_lb_rxq_handler._entry_ptr, ptr @qed_ll2_lb_rxq_handler._entry_ptr.40, ptr @qed_ll2_lb_rxq_handler._entry_ptr.43, ptr @qed_ll2_lb_rxq_handler._entry_ptr.46, ptr @qed_ll2_lb_txq_completion._entry, ptr @qed_ll2_lb_txq_completion._entry_ptr, ptr @qed_ll2_prepare_tx_packet_set_bd._entry, ptr @qed_ll2_prepare_tx_packet_set_bd._entry_ptr, ptr @qed_ll2_rxq_completion._entry, ptr @qed_ll2_rxq_completion._entry_ptr, ptr @qed_ll2_rxq_handle_completion._entry, ptr @qed_ll2_rxq_handle_completion._entry.58, ptr @qed_ll2_rxq_handle_completion._entry_ptr, ptr @qed_ll2_rxq_handle_completion._entry_ptr.60, ptr @qed_ll2_start._entry, ptr @qed_ll2_start._entry.74, ptr @qed_ll2_start._entry.77, ptr @qed_ll2_start._entry.80, ptr @qed_ll2_start._entry.83, ptr @qed_ll2_start._entry.86, ptr @qed_ll2_start._entry.89, ptr @qed_ll2_start._entry.92, ptr @qed_ll2_start._entry_ptr, ptr @qed_ll2_start._entry_ptr.76, ptr @qed_ll2_start._entry_ptr.79, ptr @qed_ll2_start._entry_ptr.82, ptr @qed_ll2_start._entry_ptr.85, ptr @qed_ll2_start._entry_ptr.88, ptr @qed_ll2_start._entry_ptr.91, ptr @qed_ll2_start._entry_ptr.94, ptr @qed_ll2_start_ooo._entry, ptr @qed_ll2_start_ooo._entry.126, ptr @qed_ll2_start_ooo._entry_ptr, ptr @qed_ll2_start_ooo._entry_ptr.128, ptr @qed_ll2_start_xmit._entry, ptr @qed_ll2_start_xmit._entry.140, ptr @qed_ll2_start_xmit._entry.143, ptr @qed_ll2_start_xmit._entry.146, ptr @qed_ll2_start_xmit._entry_ptr, ptr @qed_ll2_start_xmit._entry_ptr.142, ptr @qed_ll2_start_xmit._entry_ptr.145, ptr @qed_ll2_start_xmit._entry_ptr.148, ptr @qed_ll2_stats._entry, ptr @qed_ll2_stats._entry.152, ptr @qed_ll2_stats._entry_ptr, ptr @qed_ll2_stats._entry_ptr.154, ptr @qed_ll2_stop._entry, ptr @qed_ll2_stop._entry.135, ptr @qed_ll2_stop._entry_ptr, ptr @qed_ll2_stop._entry_ptr.137, ptr @qed_ll2_stop_ooo._entry, ptr @qed_ll2_stop_ooo._entry_ptr, ptr @qed_ll2_tx_packet_notify._entry, ptr @qed_ll2_tx_packet_notify._entry_ptr, ptr @qed_ll2_txq_completion._entry, ptr @qed_ll2_txq_completion._entry_ptr, ptr @qed_ll2b_complete_rx_packet._entry, ptr @qed_ll2b_complete_rx_packet._entry.116, ptr @qed_ll2b_complete_rx_packet._entry.119, ptr @qed_ll2b_complete_rx_packet._entry_ptr, ptr @qed_ll2b_complete_rx_packet._entry_ptr.118, ptr @qed_ll2b_complete_rx_packet._entry_ptr.121, ptr @qed_sp_ll2_tx_queue_start._entry, ptr @qed_sp_ll2_tx_queue_start._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qed_ll2_establish_connection.__key, ptr @.str.4, ptr @qed_ll2_establish_connection.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @qed_ll2_setup.__key, ptr @.str.17, ptr @qed_ll2_ops_pass, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @qed_ll2_start.__key, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @ll2_cbs, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @switch.table.qed_ll2_acquire_connection, ptr @switch.table.qed_ll2_prepare_tx_packet, ptr @switch.table.__qed_ll2_start], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_establish_connection.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_establish_connection.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_establish_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_establish_connection._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_establish_connection._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_ops_pass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_rx._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_rx._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_rx._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_tx._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_acquire_connection_ooo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_lb_rxq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_lb_rxq_handler._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_lb_rxq_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_lb_rxq_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_lb_txq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_rxq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_handle_slowpath._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_handle_slowpath._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_rxq_handle_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_rxq_handle_completion._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_txq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_ll2_tx_queue_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_prepare_tx_packet_set_bd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_tx_packet_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_alloc_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_alloc_buffer._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll2_cbs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2b_complete_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2b_complete_rx_packet._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2b_complete_rx_packet._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_dealloc_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start_ooo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start_ooo._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_stop_ooo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_stop._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start_xmit._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start_xmit._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_start_xmit._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ll2_stats._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_ll2_acquire_connection to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_ll2_prepare_tx_packet to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__qed_ll2_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_acquire_connection(ptr noundef %cxt, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %params.i203 = alloca %struct.qed_chain_init_params, align 4
  %params.i = alloca %struct.qed_chain_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_connection_handle = getelementptr inbounds %struct.qed_ll2_acquire_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %p_connection_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_connection_handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %p_ll2_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %2 = ptrtoint ptr %p_ll2_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ll2_info1, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %..i = select i1 %cmp.i, i8 0, i8 3
  %.2.i = select i1 %cmp.i, i8 3, i8 4
  call void @__sanitizer_cov_trace_cmp1(i8 %..i, i8 %.2.i)
  %cmp276 = icmp ult i8 %..i, %.2.i
  br i1 %cmp276, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %6 = zext i8 %..i to i32
  %wide.trip.count = zext i8 %.2.i to i32
  br label %for.body

for.body:                                         ; preds = %if.then10.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %6, %for.body.preheader ], [ %indvars.iv.next, %if.then10.for.body_crit_edge ]
  %7 = ptrtoint ptr %p_ll2_info1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_ll2_info1, align 8
  %arrayidx = getelementptr %struct.qed_ll2_info, ptr %8, i32 %indvars.iv
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #9
  %9 = ptrtoint ptr %p_ll2_info1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_ll2_info1, align 8
  %b_active = getelementptr %struct.qed_ll2_info, ptr %10, i32 %indvars.iv, i32 6
  %11 = ptrtoint ptr %b_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %b_active, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %for.end, label %if.then10

if.then10:                                        ; preds = %for.body
  %arrayidx8 = getelementptr %struct.qed_ll2_info, ptr %10, i32 %indvars.iv
  tail call void @mutex_unlock(ptr noundef %arrayidx8) #9
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then10.cleanup_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.body
  %13 = trunc i32 %indvars.iv to i8
  %14 = ptrtoint ptr %b_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %b_active, align 1
  %15 = ptrtoint ptr %p_ll2_info1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_ll2_info1, align 8
  %arrayidx22 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv
  tail call void @mutex_unlock(ptr noundef %arrayidx22) #9
  %tobool27.not = icmp eq ptr %arrayidx22, null
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %if.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %for.end
  %input = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 1
  %17 = call ptr @memcpy(ptr %input, ptr %data, i32 36)
  %tx_dest = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 10
  %18 = ptrtoint ptr %tx_dest to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %switch.lookup, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end29
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_ll2_acquire_connection, i32 0, i32 %19
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  %tx_dest36 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 7
  %22 = ptrtoint ptr %tx_dest36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.load, ptr %tx_dest36, align 4
  %conn_type = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp38 = icmp eq i32 %24, 3
  br i1 %cmp38, label %switch.lookup.if.end46_crit_edge, label %lor.lhs.false40

switch.lookup.if.end46_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

lor.lhs.false40:                                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %secondary_queue = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 13
  %25 = ptrtoint ptr %secondary_queue to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %secondary_queue, align 4, !range !290
  %27 = xor i8 %26, 1
  br label %if.end46

if.end46:                                         ; preds = %lor.lhs.false40, %switch.lookup.if.end46_crit_edge
  %.sink289 = phi i8 [ 0, %switch.lookup.if.end46_crit_edge ], [ %27, %lor.lhs.false40 ]
  %main_func_queue45 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 9
  %28 = ptrtoint ptr %main_func_queue45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink289, ptr %main_func_queue45, align 1
  %tx_max_bds_per_packet = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 1, i32 8
  %29 = ptrtoint ptr %tx_max_bds_per_packet to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_max_bds_per_packet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp49 = icmp eq i8 %30, 0
  %31 = tail call i8 @llvm.umin.i8(i8 %30, i8 12)
  %storemerge = select i1 %cmp49, i8 12, i8 %31
  %32 = ptrtoint ptr %tx_max_bds_per_packet to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge, ptr %tx_max_bds_per_packet, align 1
  %cbs = getelementptr inbounds %struct.qed_ll2_acquire_data, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cbs, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end46.do.body_crit_edge, label %lor.lhs.false.i

if.end46.do.body_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end46
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %rx_release_cb.i = getelementptr inbounds %struct.qed_ll2_cbs, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %rx_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_release_cb.i, align 4
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.do.body_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.do.body_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %tx_comp_cb.i = getelementptr inbounds %struct.qed_ll2_cbs, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %tx_comp_cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_comp_cb.i, align 4
  %tobool5.not.i = icmp eq ptr %40, null
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.do.body_crit_edge, label %lor.lhs.false6.i

lor.lhs.false4.i.do.body_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %tx_release_cb.i = getelementptr inbounds %struct.qed_ll2_cbs, ptr %34, i32 0, i32 3
  %41 = ptrtoint ptr %tx_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_release_cb.i, align 4
  %tobool7.not.i = icmp eq ptr %42, null
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.do.body_crit_edge, label %lor.lhs.false8.i

lor.lhs.false6.i.do.body_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false6.i
  %cookie.i = getelementptr inbounds %struct.qed_ll2_cbs, ptr %34, i32 0, i32 5
  %43 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cookie.i, align 4
  %tobool9.not.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.do.body_crit_edge, label %if.end82

lor.lhs.false8.i.do.body_crit_edge:               ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false8.i.do.body_crit_edge, %lor.lhs.false6.i.do.body_crit_edge, %lor.lhs.false4.i.do.body_crit_edge, %lor.lhs.false2.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end46.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %45 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp64 = icmp ult i8 %46, 3
  br i1 %cmp64, label %do.end, label %do.body.q_allocate_fail_crit_edge, !prof !291

do.body.q_allocate_fail_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %q_allocate_fail

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool71.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool71.not, ptr @.str.3, ptr %name
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1437, ptr noundef nonnull %spec.select) #12
  br label %q_allocate_fail

if.end82:                                         ; preds = %lor.lhs.false8.i
  %cbs11.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 12
  %47 = ptrtoint ptr %cbs11.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %36, ptr %cbs11.i, align 4
  %48 = ptrtoint ptr %rx_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_release_cb.i, align 4
  %rx_release_cb15.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 12, i32 1
  %50 = ptrtoint ptr %rx_release_cb15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %rx_release_cb15.i, align 4
  %51 = ptrtoint ptr %tx_comp_cb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_comp_cb.i, align 4
  %tx_comp_cb18.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 12, i32 2
  %53 = ptrtoint ptr %tx_comp_cb18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %tx_comp_cb18.i, align 4
  %54 = ptrtoint ptr %tx_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_release_cb.i, align 4
  %tx_release_cb21.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 12, i32 3
  %56 = ptrtoint ptr %tx_release_cb21.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %tx_release_cb21.i, align 4
  %slowpath_cb.i = getelementptr inbounds %struct.qed_ll2_cbs, ptr %34, i32 0, i32 4
  %57 = ptrtoint ptr %slowpath_cb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %slowpath_cb.i, align 4
  %slowpath_cb23.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 12, i32 4
  %59 = ptrtoint ptr %slowpath_cb23.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %slowpath_cb23.i, align 4
  %60 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cookie.i, align 4
  %cookie26.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 12, i32 5
  %62 = ptrtoint ptr %cookie26.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %cookie26.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i) #9
  %63 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 1
  %64 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 2
  %65 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 3
  %66 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 4
  %67 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 5
  %68 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 6
  %69 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i, i32 0, i32 7
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %63, align 4
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %64, align 4
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %65, align 4
  %rx_num_desc.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 1, i32 3
  %73 = ptrtoint ptr %rx_num_desc.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rx_num_desc.i, align 2
  %conv.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv.i, ptr %66, align 4
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %68, align 4
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %69, align 4
  %78 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cxt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i200 = icmp eq i16 %74, 0
  br i1 %tobool.not.i200, label %if.end82.if.end86_crit_edge, label %if.end.i201

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.end.i201:                                      ; preds = %if.end82
  %80 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %params.i, align 4
  %81 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16, ptr %67, align 4
  %rxq_chain.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 1
  %call.i = call i32 @qed_chain_alloc(ptr noundef %79, ptr noundef %rxq_chain.i, ptr noundef nonnull %params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i201
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %82 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %cmp.i202 = icmp ult i8 %83, 3
  br i1 %cmp.i202, label %do.end.i, label %do.body.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge, !prof !291

do.body.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_acquire_connection_rx.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 1191, ptr noundef nonnull %name.i) #12
  br label %qed_ll2_acquire_connection_rx.exit.thread

if.end21.i:                                       ; preds = %if.end.i201
  %capacity.i.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 1, i32 4
  %84 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %capacity.i.i, align 4
  %86 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %85, i32 40) #9
  %87 = extractvalue { i32, i1 } %86, 1
  br i1 %87, label %if.end21.i.if.then27.i_crit_edge, label %if.end7.i.i.i, !prof !291

if.end21.i.if.then27.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

if.end7.i.i.i:                                    ; preds = %if.end21.i
  %88 = extractvalue { i32, i1 } %86, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %88, i32 noundef 3520) #13
  %tobool26.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool26.not.i, label %if.end7.i.i.i.if.then27.i_crit_edge, label %if.end57.i

if.end7.i.i.i.if.then27.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end7.i.i.i.if.then27.i_crit_edge, %if.end21.i.if.then27.i_crit_edge
  %dp_level29.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %89 = ptrtoint ptr %dp_level29.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dp_level29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %90)
  %cmp31.i = icmp ult i8 %90, 3
  br i1 %cmp31.i, label %do.end42.i, label %if.then27.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge, !prof !291

if.then27.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_acquire_connection_rx.exit.thread

do.end42.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %name44.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 1200, ptr noundef nonnull %name44.i) #12
  br label %qed_ll2_acquire_connection_rx.exit.thread

if.end57.i:                                       ; preds = %if.end7.i.i.i
  %descq_array.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 10
  %91 = ptrtoint ptr %descq_array.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call8.i.i.i, ptr %descq_array.i, align 4
  %92 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %params.i, align 4
  %93 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 32, ptr %67, align 4
  %rcq_chain.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 2
  %call62.i = call i32 @qed_chain_alloc(ptr noundef %79, ptr noundef %rcq_chain.i, ptr noundef nonnull %params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  %dp_level96.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %94 = ptrtoint ptr %dp_level96.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dp_level96.i, align 8
  br i1 %tobool63.not.i, label %do.body95.i, label %do.body65.i

do.body65.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %95)
  %cmp68.i = icmp ult i8 %95, 3
  br i1 %cmp68.i, label %do.end79.i, label %do.body65.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge, !prof !291

do.body65.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge: ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_acquire_connection_rx.exit.thread

do.end79.i:                                       ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  %name81.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 1210, ptr noundef nonnull %name81.i) #12
  br label %qed_ll2_acquire_connection_rx.exit.thread

do.body95.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp98.i = icmp eq i8 %95, 0
  br i1 %cmp98.i, label %land.rhs.i, label %do.body95.i.if.end86_crit_edge

do.body95.i.if.end86_crit_edge:                   ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

land.rhs.i:                                       ; preds = %do.body95.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %96 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %97, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool100.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool100.not.i, label %land.rhs.i.if.end86_crit_edge, label %do.end110.i, !prof !292

land.rhs.i.if.end86_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end110.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %name112.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %conn_type.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 1, i32 1
  %98 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %conn_type.i, align 4
  %100 = ptrtoint ptr %rx_num_desc.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rx_num_desc.i, align 2
  %conv124.i = zext i16 %101 to i32
  %call125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19, i32 noundef 1216, ptr noundef nonnull %name112.i, i32 noundef %99, i32 noundef %conv124.i) #12
  br label %if.end86

qed_ll2_acquire_connection_rx.exit.thread:        ; preds = %do.end79.i, %do.body65.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge, %do.end42.i, %if.then27.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge, %do.end.i, %do.body.i.qed_ll2_acquire_connection_rx.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i) #9
  br label %q_allocate_fail

if.end86:                                         ; preds = %do.end110.i, %land.rhs.i.if.end86_crit_edge, %do.body95.i.if.end86_crit_edge, %if.end82.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i203) #9
  %102 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 1
  %103 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 2
  %104 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 3
  %105 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 4
  %106 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 5
  %107 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 6
  %108 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i203, i32 0, i32 7
  %109 = ptrtoint ptr %params.i203 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %params.i203, align 4
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %102, align 4
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %103, align 4
  %112 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %104, align 4
  %tx_num_desc.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 1, i32 7
  %113 = ptrtoint ptr %tx_num_desc.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %tx_num_desc.i, align 4
  %conv.i204 = zext i16 %114 to i32
  %115 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv.i204, ptr %105, align 4
  %116 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 16, ptr %106, align 4
  %117 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %107, align 4
  %118 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.not.i205 = icmp eq i16 %114, 0
  br i1 %tobool.not.i205, label %if.end86.if.end90_crit_edge, label %if.end.i208

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.end.i208:                                      ; preds = %if.end86
  %119 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cxt, align 8
  %txq_chain.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 11, i32 1
  %call.i206 = call i32 @qed_chain_alloc(ptr noundef %120, ptr noundef %txq_chain.i, ptr noundef nonnull %params.i203) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool3.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool3.not.i207, label %if.end5.i, label %if.end.i208.do.body37.i_crit_edge

if.end.i208.do.body37.i_crit_edge:                ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37.i

if.end5.i:                                        ; preds = %if.end.i208
  %capacity.i.i209 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 11, i32 1, i32 4
  %121 = ptrtoint ptr %capacity.i.i209 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %capacity.i.i209, align 4
  %123 = ptrtoint ptr %tx_max_bds_per_packet to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tx_max_bds_per_packet, align 2
  %conv10.i = zext i8 %124 to i32
  %125 = mul nuw nsw i32 %conv10.i, 12
  %spec.select.i98.i = add nuw nsw i32 %125, 16
  %126 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 %spec.select.i98.i) #9
  %127 = extractvalue { i32, i1 } %126, 1
  br i1 %127, label %if.end5.i.do.body37.i_crit_edge, label %if.end7.i.i.i240, !prof !291

if.end5.i.do.body37.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37.i

if.end7.i.i.i240:                                 ; preds = %if.end5.i
  %128 = extractvalue { i32, i1 } %126, 0
  %call8.i.i.i239 = call noalias align 128 ptr @__kmalloc(i32 noundef %128, i32 noundef 3520) #13
  %tobool13.not.i = icmp eq ptr %call8.i.i.i239, null
  br i1 %tobool13.not.i, label %if.end7.i.i.i240.do.body37.i_crit_edge, label %if.end15.i

if.end7.i.i.i240.do.body37.i_crit_edge:           ; preds = %if.end7.i.i.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37.i

if.end15.i:                                       ; preds = %if.end7.i.i.i240
  %descq_mem.i = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 11, i32 15
  %129 = ptrtoint ptr %descq_mem.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call8.i.i.i239, ptr %descq_mem.i, align 4
  %dp_level.i243 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %130 = ptrtoint ptr %dp_level.i243 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dp_level.i243, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp.i244 = icmp eq i8 %131, 0
  br i1 %cmp.i244, label %land.rhs.i247, label %if.end15.i.if.end90_crit_edge

if.end15.i.if.end90_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

land.rhs.i247:                                    ; preds = %if.end15.i
  %dp_module.i245 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %132 = ptrtoint ptr %dp_module.i245 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dp_module.i245, align 4
  %and.i246 = and i32 %133, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %tobool19.not.i = icmp eq i32 %and.i246, 0
  br i1 %tobool19.not.i, label %land.rhs.i247.if.end90_crit_edge, label %do.end.i250, !prof !292

land.rhs.i247.if.end90_crit_edge:                 ; preds = %land.rhs.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.end.i250:                                      ; preds = %land.rhs.i247
  call void @__sanitizer_cov_trace_pc() #11
  %name.i248 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %conn_type.i249 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 1, i32 1
  %134 = ptrtoint ptr %conn_type.i249 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %conn_type.i249, align 4
  %136 = ptrtoint ptr %tx_num_desc.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %tx_num_desc.i, align 4
  %conv30.i = zext i16 %137 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1259, ptr noundef nonnull %name.i248, i32 noundef %135, i32 noundef %conv30.i) #12
  br label %if.end90

do.body37.i:                                      ; preds = %if.end7.i.i.i240.do.body37.i_crit_edge, %if.end5.i.do.body37.i_crit_edge, %if.end.i208.do.body37.i_crit_edge
  %dp_level38.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %138 = ptrtoint ptr %dp_level38.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %dp_level38.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %139)
  %cmp40.i = icmp ult i8 %139, 3
  br i1 %cmp40.i, label %do.end51.i, label %do.body37.i.qed_ll2_acquire_connection_tx.exit_crit_edge, !prof !291

do.body37.i.qed_ll2_acquire_connection_tx.exit_crit_edge: ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_acquire_connection_tx.exit

do.end51.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #11
  %name53.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %140 = ptrtoint ptr %tx_num_desc.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %tx_num_desc.i, align 4
  %conv64.i = zext i16 %141 to i32
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 1265, ptr noundef nonnull %name53.i, i32 noundef %conv64.i) #12
  br label %qed_ll2_acquire_connection_tx.exit

qed_ll2_acquire_connection_tx.exit:               ; preds = %do.end51.i, %do.body37.i.qed_ll2_acquire_connection_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i203) #9
  br label %q_allocate_fail

if.end90:                                         ; preds = %do.end.i250, %land.rhs.i247.if.end90_crit_edge, %if.end15.i.if.end90_crit_edge, %if.end86.if.end90_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i203) #9
  %mtu = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 2
  %142 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %mtu, align 4
  %call92 = call fastcc i32 @qed_ll2_acquire_connection_ooo(ptr noundef %cxt, ptr noundef nonnull %arrayidx22, i16 noundef zeroext %143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end90.q_allocate_fail_crit_edge

if.end90.q_allocate_fail_crit_edge:               ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %q_allocate_fail

if.end95:                                         ; preds = %if.end90
  %144 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %145)
  %cmp98 = icmp eq i32 %145, 3
  %qed_ll2_lb_txq_completion.qed_ll2_txq_completion = select i1 %cmp98, ptr @qed_ll2_lb_txq_completion, ptr @qed_ll2_txq_completion
  %rx_num_desc = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 3
  %146 = ptrtoint ptr %rx_num_desc to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %rx_num_desc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool104.not = icmp eq i16 %147, 0
  br i1 %tobool104.not, label %if.end95.if.end112_crit_edge, label %if.then105

if.end95.if.end112_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then105:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %qed_ll2_lb_rxq_completion.qed_ll2_rxq_completion = select i1 %cmp98, ptr @qed_ll2_lb_rxq_completion, ptr @qed_ll2_rxq_completion
  %148 = ptrtoint ptr %p_ll2_info1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %p_ll2_info1, align 8
  %arrayidx108 = getelementptr %struct.qed_ll2_info, ptr %149, i32 %indvars.iv
  %rx_sb_index = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 3
  %p_fw_cons = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 6
  %call110 = call i32 @qed_int_register_cb(ptr noundef %cxt, ptr noundef nonnull %qed_ll2_lb_rxq_completion.qed_ll2_rxq_completion, ptr noundef %arrayidx108, ptr noundef %rx_sb_index, ptr noundef %p_fw_cons) #9
  %b_cb_registered = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 10, i32 5
  %150 = ptrtoint ptr %b_cb_registered to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %b_cb_registered, align 2
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %if.end95.if.end112_crit_edge
  %tx_num_desc = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 7
  %151 = ptrtoint ptr %tx_num_desc to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %tx_num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool114.not = icmp eq i16 %152, 0
  br i1 %tobool114.not, label %if.end112.if.end124_crit_edge, label %if.then115

if.end112.if.end124_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %p_ll2_info1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %p_ll2_info1, align 8
  %arrayidx118 = getelementptr %struct.qed_ll2_info, ptr %154, i32 %indvars.iv
  %tx_sb_index = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 11, i32 2
  %p_fw_cons120 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 11, i32 4
  %call121 = call i32 @qed_int_register_cb(ptr noundef %cxt, ptr noundef nonnull %qed_ll2_lb_txq_completion.qed_ll2_txq_completion, ptr noundef %arrayidx118, ptr noundef %tx_sb_index, ptr noundef %p_fw_cons120) #9
  %b_cb_registered123 = getelementptr %struct.qed_ll2_info, ptr %16, i32 %indvars.iv, i32 11, i32 3
  %155 = ptrtoint ptr %b_cb_registered123 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %b_cb_registered123, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.then115, %if.end112.if.end124_crit_edge
  %156 = ptrtoint ptr %p_connection_handle to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %p_connection_handle, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %13, ptr %157, align 1
  br label %cleanup

q_allocate_fail:                                  ; preds = %if.end90.q_allocate_fail_crit_edge, %qed_ll2_acquire_connection_tx.exit, %qed_ll2_acquire_connection_rx.exit.thread, %do.end, %do.body.q_allocate_fail_crit_edge
  call void @qed_ll2_release_connection(ptr noundef %cxt, i8 noundef zeroext %13)
  br label %cleanup

cleanup:                                          ; preds = %q_allocate_fail, %if.end124, %if.end29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %q_allocate_fail ], [ 0, %if.end124 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %for.end.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_ll2_acquire_connection_ooo(ptr noundef %p_hwfn, ptr nocapture noundef %p_ll2_info, i16 noundef zeroext %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_type = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_info, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup50_crit_edge

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

if.end:                                           ; preds = %entry
  %rx_num_ooo_buffers = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_info, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %rx_num_ooo_buffers to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_num_ooo_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.then2:                                         ; preds = %if.end
  %rx_num_desc = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_info, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %rx_num_desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_num_desc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not = icmp eq i16 %5, 0
  br i1 %tobool4.not, label %if.then2.cleanup50_crit_edge, label %if.end10

if.then2.cleanup50_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

if.end10:                                         ; preds = %if.then2
  %mul = shl i16 %5, 1
  %6 = ptrtoint ptr %rx_num_ooo_buffers to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %mul, ptr %rx_num_ooo_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %cmp1584.not = icmp eq i16 %mul, 0
  br i1 %cmp1584.not, label %if.end10.do.body_crit_edge, label %if.end10.for.body.lr.ph_crit_edge

if.end10.for.body.lr.ph_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end10.for.body.lr.ph_crit_edge, %if.end.for.body.lr.ph_crit_edge
  %conv20 = zext i16 %mtu to i32
  %sub = add nuw nsw i32 %conv20, 153
  %and = and i32 %sub, 131008
  %p_ooo_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %buf_idx.085 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %if.end29.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 28) #14
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %for.body.cleanup50_crit_edge, label %if.end19

for.body.cleanup50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

if.end19:                                         ; preds = %for.body
  %rx_buffer_size = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %rx_buffer_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %rx_buffer_size, align 8
  %9 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 50
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %rx_buffer_phys_addr = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %rx_buffer_phys_addr, i32 noundef 3264, i32 noundef 0) #9
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup50

if.end29:                                         ; preds = %if.end19
  %rx_buffer_virt_addr = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buffer_virt_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %rx_buffer_virt_addr, align 8
  %14 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_ooo_info, align 4
  tail call void @qed_ooo_put_free_buffer(ptr noundef %p_hwfn, ptr noundef %15, ptr noundef nonnull %call7.i.i) #9
  %inc = add nuw i16 %buf_idx.085, 1
  %16 = ptrtoint ptr %rx_num_ooo_buffers to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_num_ooo_buffers, align 4
  %cmp15 = icmp ult i16 %inc, %17
  br i1 %cmp15, label %if.end29.for.body_crit_edge, label %do.body.loopexit

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body.loopexit:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = zext i16 %17 to i32
  br label %do.body

do.body:                                          ; preds = %do.body.loopexit, %if.end10.do.body_crit_edge
  %p_buf.0.lcssa = phi ptr [ null, %if.end10.do.body_crit_edge ], [ %call7.i.i, %do.body.loopexit ]
  %.lcssa = phi i32 [ 0, %if.end10.do.body_crit_edge ], [ %phi.cast, %do.body.loopexit ]
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp31 = icmp eq i8 %19, 0
  br i1 %cmp31, label %land.rhs, label %do.body.cleanup50_crit_edge

do.body.cleanup50_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %20 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_module, align 4
  %and33 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.rhs.cleanup50_crit_edge, label %do.end, !prof !292

land.rhs.cleanup50_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool39.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool39.not, ptr @.str.3, ptr %name
  %rx_buffer_size45 = getelementptr inbounds %struct.qed_ooo_buffer, ptr %p_buf.0.lcssa, i32 0, i32 3
  %22 = ptrtoint ptr %rx_buffer_size45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buffer_size45, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1318, ptr noundef nonnull %spec.select, i32 noundef %.lcssa, i32 noundef %23) #12
  br label %cleanup50

cleanup50:                                        ; preds = %do.end, %land.rhs.cleanup50_crit_edge, %do.body.cleanup50_crit_edge, %if.then28, %for.body.cleanup50_crit_edge, %if.then2.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup50_crit_edge ], [ -12, %if.then28 ], [ 0, %do.end ], [ 0, %land.rhs.cleanup50_crit_edge ], [ 0, %do.body.cleanup50_crit_edge ], [ -22, %if.then2.cleanup50_crit_edge ], [ -12, %for.body.cleanup50_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_lb_rxq_completion(ptr noundef %p_hwfn, ptr noundef %p_cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_cookie, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_cb_registered = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %b_cb_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_cb_registered, align 2, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %p_fw_cons.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 6
  %2 = ptrtoint ptr %p_fw_cons.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_fw_cons.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %rcq_chain.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 2
  %u.i.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 2, i32 3
  %cons_idx.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cons_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cons_idx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.i = icmp eq i16 %6, %8
  br i1 %cmp.i, label %if.end3.if.end6_crit_edge, label %while.body.lr.ph.i

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %if.end3
  %p_ooo_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %active_descq.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 7
  %dp_level194.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %name209.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %rxq_chain.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 1
  %free_descq.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 8
  %prev.i322.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 10, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call8.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rcq_chain.i) #9
  %9 = ptrtoint ptr %cons_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cons_idx.i.i, align 2
  %11 = ptrtoint ptr %call8.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call8.i, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %while.body.i.do.body.i_crit_edge [
    i8 3, label %if.then14.i
    i8 1, label %if.end43.i
  ], !prof !293

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then14.i:                                      ; preds = %while.body.i
  %ramrod_cmd_id.i.i = getelementptr inbounds %struct.core_rx_slow_path_cqe, ptr %call8.i, i32 0, i32 1
  %14 = ptrtoint ptr %ramrod_cmd_id.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ramrod_cmd_id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp.not.i.i = icmp eq i8 %15, 5
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then14.i.do.body.i_crit_edge

if.then14.i.do.body.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.then14.i
  %opaque_data.i.i = getelementptr inbounds %struct.core_rx_slow_path_cqe, ptr %call8.i, i32 0, i32 3
  %ooo_opcode.i.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ooo_opcode.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ooo_opcode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp3.not.i.i = icmp eq i8 %17, 5
  br i1 %cmp3.not.i.i, label %qed_ll2_lb_rxq_handler_slowpath.exit.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

qed_ll2_lb_rxq_handler_slowpath.exit.i:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %opaque_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opaque_data.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_ooo_info.i, align 4
  tail call void @qed_ooo_release_connection_isles(ptr noundef %p_hwfn, ptr noundef %22, i32 noundef %20) #9
  br label %cleanup.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %if.then14.i.do.body.i_crit_edge, %while.body.i.do.body.i_crit_edge
  %23 = ptrtoint ptr %dp_level194.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level194.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp25.i = icmp ult i8 %24, 3
  br i1 %cmp25.i, label %do.end.i, label %do.body.i.cleanup_crit_edge, !prof !291

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.le.i = zext i8 %12 to i32
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 677, ptr noundef nonnull %name209.i, i32 noundef %conv11.le.i) #12
  br label %cleanup

if.end43.i:                                       ; preds = %while.body.i
  %placement_offset44.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call8.i, i32 0, i32 1
  %25 = ptrtoint ptr %placement_offset44.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %placement_offset44.i, align 1
  %parse_flags45.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call8.i, i32 0, i32 2
  %27 = ptrtoint ptr %parse_flags45.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %parse_flags45.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %packet_length46.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call8.i, i32 0, i32 3
  %30 = ptrtoint ptr %packet_length46.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %packet_length46.i, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #9
  %vlan47.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call8.i, i32 0, i32 4
  %33 = ptrtoint ptr %vlan47.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan47.i, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  %opaque_data.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call8.i, i32 0, i32 5
  %36 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_ooo_info.i, align 4
  tail call void @qed_ooo_save_history_entry(ptr noundef %p_hwfn, ptr noundef %37, ptr noundef %opaque_data.i) #9
  %38 = ptrtoint ptr %opaque_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %opaque_data.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %drop_size.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i, i32 0, i32 2
  %41 = ptrtoint ptr %drop_size.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %drop_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool49.not.i = icmp eq i8 %42, 0
  br i1 %tobool49.not.i, label %if.end43.i.if.end53.i_crit_edge, label %if.then50.i

if.end43.i.if.end53.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_ooo_info.i, align 4
  %drop_isle.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call8.i, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %drop_isle.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %drop_isle.i, align 4
  tail call void @qed_ooo_delete_isles(ptr noundef %p_hwfn, ptr noundef %44, i32 noundef %40, i8 noundef zeroext %46, i8 noundef zeroext %42) #9
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.end43.i.if.end53.i_crit_edge
  %ooo_opcode.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i, i32 0, i32 3
  %47 = ptrtoint ptr %ooo_opcode.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ooo_opcode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %48)
  %cmp55.i = icmp eq i8 %48, 6
  br i1 %cmp55.i, label %if.end53.i.cleanup.i_crit_edge, label %if.end58.i

if.end53.i.cleanup.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end58.i:                                       ; preds = %if.end53.i
  %49 = ptrtoint ptr %active_descq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %active_descq.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %active_descq.i
  br i1 %cmp.i.not.i, label %do.body68.i, label %if.end97.i, !prof !291

do.body68.i:                                      ; preds = %if.end58.i
  %51 = ptrtoint ptr %dp_level194.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level194.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp71.i = icmp ult i8 %52, 3
  br i1 %cmp71.i, label %do.end82.i, label %do.body68.i.cleanup_crit_edge, !prof !291

do.body68.i.cleanup_crit_edge:                    ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end82.i:                                       ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #11
  %call93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 703, ptr noundef nonnull %name209.i) #12
  br label %cleanup

if.end97.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %48)
  %switch.i = icmp ult i8 %48, 5
  br i1 %switch.i, label %if.then128.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end97.i
  %53 = ptrtoint ptr %dp_level194.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dp_level194.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %54)
  %cmp196.i = icmp ult i8 %54, 3
  br i1 %cmp196.i, label %do.end207.i, label %lor.rhs.i.cleanup.i_crit_edge, !prof !291

lor.rhs.i.cleanup.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then128.i:                                     ; preds = %if.end97.i
  %tobool129.not.i = icmp eq ptr %50, null
  br i1 %tobool129.not.i, label %do.body139.i, label %if.end168.i, !prof !291

do.body139.i:                                     ; preds = %if.then128.i
  %55 = ptrtoint ptr %dp_level194.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dp_level194.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %56)
  %cmp142.i = icmp ult i8 %56, 3
  br i1 %cmp142.i, label %do.end153.i, label %do.body139.i.cleanup_crit_edge, !prof !291

do.body139.i.cleanup_crit_edge:                   ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end153.i:                                      ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  %call164.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef 717, ptr noundef nonnull %name209.i) #12
  br label %cleanup

if.end168.i:                                      ; preds = %if.then128.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %50) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end168.i.list_del.exit.i_crit_edge

if.end168.i.list_del.exit.i_crit_edge:            ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %50, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end168.i.list_del.exit.i_crit_edge
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cookie.i = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %50, i32 0, i32 4
  %65 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cookie.i, align 4
  %packet_length169.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %packet_length169.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %32, ptr %packet_length169.i, align 4
  %parse_flags170.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %66, i32 0, i32 5
  %68 = ptrtoint ptr %parse_flags170.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %29, ptr %parse_flags170.i, align 2
  %vlan171.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %66, i32 0, i32 6
  %69 = ptrtoint ptr %vlan171.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %35, ptr %vlan171.i, align 4
  %placement_offset172.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %66, i32 0, i32 7
  %70 = ptrtoint ptr %placement_offset172.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %26, ptr %placement_offset172.i, align 2
  %call173.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rxq_chain.i) #9
  %71 = ptrtoint ptr %prev.i322.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i322.i, align 4
  %call.i.i323.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %50, ptr noundef %72, ptr noundef %free_descq.i) #9
  br i1 %call.i.i323.i, label %if.end.i.i324.i, label %list_del.exit.i.list_add_tail.exit.i_crit_edge

list_del.exit.i.list_add_tail.exit.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i324.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %prev.i322.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %50, ptr %prev.i322.i, align 4
  %74 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %free_descq.i, ptr %50, align 4
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %50, ptr %72, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i324.i, %list_del.exit.i.list_add_tail.exit.i_crit_edge
  %77 = ptrtoint ptr %ooo_opcode.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ooo_opcode.i, align 2
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %78, label %list_add_tail.exit.i.cleanup.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb178.i
    i8 3, label %sw.bb181.i
    i8 4, label %sw.bb184.i
    i8 0, label %sw.bb191.i
  ]

list_add_tail.exit.i.cleanup.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

sw.bb.i:                                          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p_ooo_info.i, align 4
  %ooo_isle.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i, i32 0, i32 4
  %82 = ptrtoint ptr %ooo_isle.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ooo_isle.i, align 1
  tail call void @qed_ooo_add_new_isle(ptr noundef %p_hwfn, ptr noundef %81, i32 noundef %40, i8 noundef zeroext %83, ptr noundef %66) #9
  br label %cleanup.i

sw.bb178.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %p_ooo_info.i, align 4
  %ooo_isle180.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i, i32 0, i32 4
  %86 = ptrtoint ptr %ooo_isle180.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ooo_isle180.i, align 1
  tail call void @qed_ooo_add_new_buffer(ptr noundef %p_hwfn, ptr noundef %85, i32 noundef %40, i8 noundef zeroext %87, ptr noundef %66, i8 noundef zeroext 1) #9
  br label %cleanup.i

sw.bb181.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %p_ooo_info.i, align 4
  %ooo_isle183.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i, i32 0, i32 4
  %90 = ptrtoint ptr %ooo_isle183.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ooo_isle183.i, align 1
  tail call void @qed_ooo_add_new_buffer(ptr noundef %p_hwfn, ptr noundef %89, i32 noundef %40, i8 noundef zeroext %91, ptr noundef %66, i8 noundef zeroext 0) #9
  br label %cleanup.i

sw.bb184.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %p_ooo_info.i, align 4
  %ooo_isle186.i = getelementptr inbounds %struct.ooo_opaque, ptr %opaque_data.i, i32 0, i32 4
  %94 = ptrtoint ptr %ooo_isle186.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ooo_isle186.i, align 1
  %add.i = add i8 %95, 1
  tail call void @qed_ooo_add_new_buffer(ptr noundef %p_hwfn, ptr noundef %93, i32 noundef %40, i8 noundef zeroext %add.i, ptr noundef %66, i8 noundef zeroext 0) #9
  %96 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p_ooo_info.i, align 4
  %98 = ptrtoint ptr %ooo_isle186.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ooo_isle186.i, align 1
  tail call void @qed_ooo_join_isles(ptr noundef %p_hwfn, ptr noundef %97, i32 noundef %40, i8 noundef zeroext %99) #9
  br label %cleanup.i

sw.bb191.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p_ooo_info.i, align 4
  tail call void @qed_ooo_put_ready_buffer(ptr noundef %p_hwfn, ptr noundef %101, ptr noundef %66, i8 noundef zeroext 1) #9
  br label %cleanup.i

do.end207.i:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv219.i = zext i8 %48 to i32
  %call220.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37, i32 noundef 774, ptr noundef nonnull %name209.i, i32 noundef %conv219.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end207.i, %sw.bb191.i, %sw.bb184.i, %sw.bb181.i, %sw.bb178.i, %sw.bb.i, %list_add_tail.exit.i.cleanup.i_crit_edge, %lor.rhs.i.cleanup.i_crit_edge, %if.end53.i.cleanup.i_crit_edge, %qed_ll2_lb_rxq_handler_slowpath.exit.i
  %cmp5.not.i = icmp eq i16 %6, %10
  br i1 %cmp5.not.i, label %cleanup.i.if.end6_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.if.end6_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %cleanup.i.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %p_ooo_info.i15 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %my_id.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i16.while.cond.i_crit_edge, %if.end6
  %102 = ptrtoint ptr %p_ooo_info.i15 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p_ooo_info.i15, align 4
  %call.i = tail call ptr @qed_ooo_get_free_buffer(ptr noundef %p_hwfn, ptr noundef %103) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.i.qed_ooo_submit_rx_buffers.exit_crit_edge, label %while.body.i16

while.cond.i.qed_ooo_submit_rx_buffers.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ooo_submit_rx_buffers.exit

while.body.i16:                                   ; preds = %while.cond.i
  %104 = ptrtoint ptr %my_id.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %my_id.i, align 4
  %rx_buffer_phys_addr.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call.i, i32 0, i32 2
  %106 = ptrtoint ptr %rx_buffer_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_buffer_phys_addr.i, align 4
  %call1.i = tail call i32 @qed_ll2_post_rx_buffer(ptr noundef %p_hwfn, i8 noundef zeroext %105, i32 noundef %107, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i8 noundef zeroext 1) #9
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %while.body.i16.while.cond.i_crit_edge, label %if.then.i

while.body.i16.while.cond.i_crit_edge:            ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %p_ooo_info.i15 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %p_ooo_info.i15, align 4
  tail call void @qed_ooo_put_free_buffer(ptr noundef %p_hwfn, ptr noundef %109, ptr noundef nonnull %call.i) #9
  br label %qed_ooo_submit_rx_buffers.exit

qed_ooo_submit_rx_buffers.exit:                   ; preds = %if.then.i, %while.cond.i.qed_ooo_submit_rx_buffers.exit_crit_edge
  tail call fastcc void @qed_ooo_submit_tx_buffers(ptr noundef %p_hwfn, ptr noundef nonnull %p_cookie)
  br label %cleanup

cleanup:                                          ; preds = %qed_ooo_submit_rx_buffers.exit, %do.end153.i, %do.body139.i.cleanup_crit_edge, %do.end82.i, %do.body68.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qed_ooo_submit_rx_buffers.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -5, %do.end82.i ], [ -5, %do.body68.i.cleanup_crit_edge ], [ -5, %do.end153.i ], [ -5, %do.body139.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_lb_txq_completion(ptr noundef %p_hwfn, ptr noundef %p_cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_cookie, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !291

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_cb_registered = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %b_cb_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_cb_registered, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end15, !prof !291

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %p_fw_cons = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %p_fw_cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_fw_cons, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %bds_idx = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 11
  %7 = ptrtoint ptr %bds_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bds_idx, align 4
  %sub = sub i16 %6, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %tobool18.not = icmp eq i16 %sub, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %while.cond.preheader, !prof !291

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end15
  %active_descq = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 5
  %txq_chain = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 1
  %free_descq = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 6
  %prev.i124 = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 6, i32 1
  %my_id = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 3
  %p_ooo_info86 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader
  %num_bds.0129 = phi i16 [ %sub, %while.cond.preheader ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %b_dont_submit_rx.0.off0128 = phi i1 [ false, %while.cond.preheader ], [ %b_dont_submit_rx.0.off0.be, %while.cond.backedge.while.body_crit_edge ]
  %9 = ptrtoint ptr %active_descq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active_descq, align 4
  %cmp.i = icmp eq ptr %10, %active_descq
  %tobool34.not = icmp eq ptr %10, null
  %or.cond = or i1 %cmp.i, %tobool34.not
  br i1 %or.cond, label %while.body.cleanup_crit_edge, label %if.end44, !prof !294

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %while.body
  %bd_used = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bd_used to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bd_used, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.not = icmp eq i16 %12, 1
  br i1 %cmp.not, label %if.end75, label %do.body, !prof !292

do.body:                                          ; preds = %if.end44
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp55 = icmp ult i8 %14, 3
  br i1 %cmp55, label %do.end, label %do.body.cleanup_crit_edge, !prof !291

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool66.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool66.not, ptr @.str.3, ptr %name
  %conv70 = zext i16 %12 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 910, ptr noundef nonnull %spec.select, i32 noundef %conv70) #12
  br label %cleanup

if.end75:                                         ; preds = %if.end44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end75.list_del.exit_crit_edge

if.end75.list_del.exit_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end75.list_del.exit_crit_edge
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dec = add i16 %num_bds.0129, -1
  %23 = ptrtoint ptr %bds_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bds_idx, align 4
  %inc = add i16 %24, 1
  store i16 %inc, ptr %bds_idx, align 4
  %call77 = tail call fastcc ptr @qed_chain_consume(ptr noundef %txq_chain)
  %cookie = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %10, i32 0, i32 3
  %25 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cookie, align 4
  %27 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i124, align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %10, ptr noundef %28, ptr noundef %free_descq) #9
  br i1 %call.i.i125, label %if.end.i.i126, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i126:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %10, ptr %prev.i124, align 4
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free_descq, ptr %10, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %10, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i126, %list_del.exit.list_add_tail.exit_crit_edge
  br i1 %b_dont_submit_rx.0.off0128, label %if.then80, label %if.end81

if.then80:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %p_ooo_info86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_ooo_info86, align 4
  tail call void @qed_ooo_put_free_buffer(ptr noundef %p_hwfn, ptr noundef %34, ptr noundef %26) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end87, %if.then80
  %b_dont_submit_rx.0.off0.be = phi i1 [ true, %if.then80 ], [ %41, %if.end87 ]
  %tobool29.not = icmp eq i16 %dec, 0
  br i1 %tobool29.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end81:                                         ; preds = %list_add_tail.exit
  %35 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %my_id, align 4
  %rx_buffer_phys_addr = getelementptr inbounds %struct.qed_ooo_buffer, ptr %26, i32 0, i32 2
  %37 = ptrtoint ptr %rx_buffer_phys_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buffer_phys_addr, align 4
  %call82 = tail call i32 @qed_ll2_post_rx_buffer(ptr noundef %p_hwfn, i8 noundef zeroext %36, i32 noundef %38, i16 noundef zeroext 0, ptr noundef %26, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 0
  br i1 %cmp83.not, label %if.end81.if.end87_crit_edge, label %if.then85

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %p_ooo_info86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p_ooo_info86, align 4
  tail call void @qed_ooo_put_free_buffer(ptr noundef %p_hwfn, ptr noundef %40, ptr noundef %26) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end81.if.end87_crit_edge
  %41 = xor i1 %cmp83.not, true
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qed_ooo_submit_tx_buffers(ptr noundef %p_hwfn, ptr noundef nonnull %p_cookie)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %do.body.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_rxq_completion(ptr noundef %p_hwfn, ptr noundef %cookie) #0 align 64 {
entry:
  %data.i = alloca %struct.qed_ll2_comp_rx_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_queue = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10
  %tobool.not = icmp eq ptr %cookie, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_queue) #9
  %b_cb_registered = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %b_cb_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_cb_registered, align 2, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue, i32 noundef %call2) #9
  br label %cleanup

if.end9:                                          ; preds = %do.body1
  %p_fw_cons = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 6
  %2 = ptrtoint ptr %p_fw_cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_fw_cons, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %rcq_chain = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 2
  %u.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 2, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %7 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cons_idx.i, align 2
  %conv11 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp13.not93 = icmp eq i16 %6, %8
  br i1 %cmp13.not93, label %if.end9.while.end_crit_edge, label %while.body.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool35.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool35.not, ptr @.str.3, ptr %name
  %active_descq.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 7
  %parse_flags1.i117.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 2
  %qp_id3.i.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 11
  %src_qp4.i.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 10
  %err_flags3.i.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 7
  %10 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 8
  %12 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 9
  %13 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 12
  %rxq_chain.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 1
  %free_descq.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 8
  %prev.i124.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 10, i32 8, i32 1
  %my_id.i88 = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 3
  %connection_handle.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 6
  %rx_buf_addr72.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 1
  %b_last_packet.i = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data.i, i32 0, i32 5
  %cbs.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 12
  %cookie76.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 12, i32 5
  %conn_type.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 1, i32 1
  %slowpath_cb.i = getelementptr inbounds %struct.qed_ll2_info, ptr %cookie, i32 0, i32 12, i32 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %flags.094 = phi i32 [ %call2, %while.body.lr.ph ], [ %flags.3, %sw.epilog.while.body_crit_edge ]
  %call20 = call fastcc ptr @qed_chain_consume(ptr noundef %rcq_chain)
  %14 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cons_idx.i, align 2
  %16 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp25 = icmp eq i8 %17, 0
  br i1 %cmp25, label %land.rhs, label %while.body.do.end44_crit_edge

while.body.do.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.rhs:                                         ; preds = %while.body
  %18 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dp_module, align 4
  %and = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %land.rhs.do.end44_crit_edge, label %do.end33, !prof !292

land.rhs.do.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

do.end33:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %conv38 = zext i16 %15 to i32
  %20 = ptrtoint ptr %call20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call20, align 4
  %conv40 = zext i8 %21 to i32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 556, ptr noundef nonnull %spec.select, i32 noundef %conv38, i32 noundef %conv11, i32 noundef %conv40) #12
  br label %do.end44

do.end44:                                         ; preds = %do.end33, %land.rhs.do.end44_crit_edge, %while.body.do.end44_crit_edge
  %22 = ptrtoint ptr %call20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call20, align 4
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %23, label %do.end44.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %do.end44.sw.bb48_crit_edge
    i8 1, label %do.end44.sw.bb48_crit_edge96
  ]

do.end44.sw.bb48_crit_edge96:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

do.end44.sw.bb48_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

do.end44.sw.epilog_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end44
  %ramrod_cmd_id.i = getelementptr inbounds %struct.core_rx_slow_path_cqe, ptr %call20, i32 0, i32 1
  %25 = ptrtoint ptr %ramrod_cmd_id.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ramrod_cmd_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %cmp.not.i = icmp eq i8 %26, 5
  br i1 %cmp.not.i, label %if.end15.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  %27 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp3.i = icmp ult i8 %28, 3
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.sw.epilog_crit_edge, !prof !291

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i = zext i8 %26 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 456, ptr noundef nonnull %name, i32 noundef %conv12.i) #12
  br label %sw.epilog

if.end15.i:                                       ; preds = %sw.bb
  %29 = ptrtoint ptr %slowpath_cb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slowpath_cb.i, align 4
  %tobool16.not.i = icmp eq ptr %30, null
  br i1 %tobool16.not.i, label %do.body18.i, label %if.end47.i

do.body18.i:                                      ; preds = %if.end15.i
  %31 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp21.i = icmp ult i8 %32, 3
  br i1 %cmp21.i, label %do.end32.i, label %do.body18.i.sw.epilog_crit_edge, !prof !291

do.body18.i.sw.epilog_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end32.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 462, ptr noundef nonnull %name) #12
  br label %sw.epilog

if.end47.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue, i32 noundef %flags.094) #9
  %33 = ptrtoint ptr %slowpath_cb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slowpath_cb.i, align 4
  %35 = ptrtoint ptr %cookie76.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cookie76.i, align 4
  %37 = ptrtoint ptr %my_id.i88 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %my_id.i88, align 4
  %opaque_data.i = getelementptr inbounds %struct.core_rx_slow_path_cqe, ptr %call20, i32 0, i32 3
  %39 = ptrtoint ptr %opaque_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %opaque_data.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #9
  %arrayidx53.i = getelementptr %struct.core_rx_slow_path_cqe, ptr %call20, i32 0, i32 3, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx53.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #9
  call void %34(ptr noundef %36, i8 noundef zeroext %38, i32 noundef %41, i32 noundef %44) #9
  %call61.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_queue) #9
  br label %sw.epilog

sw.bb48:                                          ; preds = %do.end44.sw.bb48_crit_edge, %do.end44.sw.bb48_crit_edge96
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data.i) #9
  %45 = call ptr @memset(ptr %data.i, i32 255, i32 36)
  %46 = ptrtoint ptr %active_descq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %active_descq.i, align 4
  %cmp.i.i = icmp eq ptr %47, %active_descq.i
  %tobool2.not.i = icmp eq ptr %47, null
  %or.cond.i = or i1 %cmp.i.i, %tobool2.not.i
  br i1 %or.cond.i, label %do.body.i85, label %if.end24.i, !prof !294

do.body.i85:                                      ; preds = %sw.bb48
  %48 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp.i = icmp ult i8 %49, 3
  br i1 %cmp.i, label %do.end.i87, label %do.body.i85.qed_ll2_rxq_handle_completion.exit_crit_edge, !prof !291

do.body.i85.qed_ll2_rxq_handle_completion.exit_crit_edge: ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_rxq_handle_completion.exit

do.end.i87:                                       ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %conn_type.i, align 4
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 494, ptr noundef nonnull %name, i32 noundef %51) #12
  br label %qed_ll2_rxq_handle_completion.exit

if.end24.i:                                       ; preds = %sw.bb48
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %47) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.i.list_del.exit.i_crit_edge

if.end24.i.list_del.exit.i_crit_edge:             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end24.i.list_del.exit.i_crit_edge
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %call20 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %call20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp26.i = icmp eq i8 %61, 1
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %parse_flags.i.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 2
  %62 = ptrtoint ptr %parse_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %parse_flags.i.i, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63) #9
  %65 = ptrtoint ptr %parse_flags1.i117.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %parse_flags1.i117.i, align 4
  %err_flags.i.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 6
  %66 = ptrtoint ptr %err_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %err_flags.i.i, align 4
  %68 = call i16 @llvm.bswap.i16(i16 %67) #9
  %69 = ptrtoint ptr %err_flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %err_flags3.i.i, align 2
  %packet_length.i.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 3
  %70 = ptrtoint ptr %packet_length.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %packet_length.i.i, align 4
  %72 = call i16 @llvm.bswap.i16(i16 %71) #9
  %vlan.i.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 4
  %73 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vlan.i.i, align 2
  %75 = call i16 @llvm.bswap.i16(i16 %74) #9
  %opaque_data.i.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 5
  %76 = ptrtoint ptr %opaque_data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %opaque_data.i.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #9
  %arrayidx8.i.i = getelementptr %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 5, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx8.i.i, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80) #9
  %placement_offset.i.i = getelementptr inbounds %struct.core_rx_fast_path_cqe, ptr %call20, i32 0, i32 1
  %82 = ptrtoint ptr %placement_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %placement_offset.i.i, align 1
  br label %if.end29.i

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %parse_flags.i116.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 2
  %84 = ptrtoint ptr %parse_flags.i116.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %parse_flags.i116.i, align 2
  %86 = call i16 @llvm.bswap.i16(i16 %85) #9
  %87 = ptrtoint ptr %parse_flags1.i117.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %parse_flags1.i117.i, align 4
  %data_length.i.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 3
  %88 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %data_length.i.i, align 4
  %90 = call i16 @llvm.bswap.i16(i16 %89) #9
  %vlan.i119.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 4
  %91 = ptrtoint ptr %vlan.i119.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vlan.i119.i, align 2
  %93 = call i16 @llvm.bswap.i16(i16 %92) #9
  %src_mac_addrhi.i.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 5
  %94 = ptrtoint ptr %src_mac_addrhi.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %src_mac_addrhi.i.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  %src_mac_addrlo.i.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 6
  %97 = ptrtoint ptr %src_mac_addrlo.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %src_mac_addrlo.i.i, align 4
  %99 = call i16 @llvm.bswap.i16(i16 %98) #9
  %conv.i121.i = zext i16 %99 to i32
  %data_length_error.i.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 1
  %100 = ptrtoint ptr %data_length_error.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %data_length_error.i.i, align 1
  %qp_id.i.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 7
  %102 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %qp_id.i.i, align 2
  %104 = call i16 @llvm.bswap.i16(i16 %103) #9
  %105 = ptrtoint ptr %qp_id3.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %qp_id3.i.i, align 4
  %src_qp.i.i = getelementptr inbounds %struct.core_rx_gsi_offload_cqe, ptr %call20, i32 0, i32 8
  %106 = ptrtoint ptr %src_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %src_qp.i.i, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #9
  %109 = ptrtoint ptr %src_qp4.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %src_qp4.i.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then28.i
  %.sink131.i = phi i16 [ %72, %if.then28.i ], [ %90, %if.else.i ]
  %.sink130.i = phi i16 [ %75, %if.then28.i ], [ %93, %if.else.i ]
  %.sink129.i = phi i32 [ %78, %if.then28.i ], [ %96, %if.else.i ]
  %conv.i121.sink.i = phi i32 [ %81, %if.then28.i ], [ %conv.i121.i, %if.else.i ]
  %.sink.i = phi i8 [ %83, %if.then28.i ], [ %101, %if.else.i ]
  %110 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %.sink131.i, ptr %9, align 4
  %111 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %.sink130.i, ptr %10, align 4
  %112 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink129.i, ptr %11, align 4
  %113 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv.i121.sink.i, ptr %12, align 4
  %114 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink.i, ptr %13, align 2
  %call30.i = call fastcc ptr @qed_chain_consume(ptr noundef %rxq_chain.i) #9
  %rxq_bd.i = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %47, i32 0, i32 1
  %115 = ptrtoint ptr %rxq_bd.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rxq_bd.i, align 4
  %cmp31.not.i = icmp eq ptr %call30.i, %116
  br i1 %cmp31.not.i, label %if.end29.i.if.end69.i_crit_edge, label %do.body40.i, !prof !292

if.end29.i.if.end69.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

do.body40.i:                                      ; preds = %if.end29.i
  %117 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %cmp43.i = icmp ult i8 %118, 3
  br i1 %cmp43.i, label %do.end54.i, label %do.body40.i.if.end69.i_crit_edge, !prof !291

do.body40.i.if.end69.i_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

do.end54.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 506, ptr noundef nonnull %name) #12
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end54.i, %do.body40.i.if.end69.i_crit_edge, %if.end29.i.if.end69.i_crit_edge
  %119 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i124.i, align 4
  %call.i.i125.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %47, ptr noundef %120, ptr noundef %free_descq.i) #9
  br i1 %call.i.i125.i, label %if.end.i.i126.i, label %if.end69.i.list_add_tail.exit.i_crit_edge

if.end69.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i126.i:                                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %47, ptr %prev.i124.i, align 4
  %122 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %free_descq.i, ptr %47, align 4
  %123 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %47, ptr %120, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i126.i, %if.end69.i.list_add_tail.exit.i_crit_edge
  %125 = ptrtoint ptr %my_id.i88 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %my_id.i88, align 4
  %127 = ptrtoint ptr %connection_handle.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %connection_handle.i, align 1
  %cookie.i89 = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %47, i32 0, i32 4
  %128 = ptrtoint ptr %cookie.i89 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cookie.i89, align 4
  %130 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %data.i, align 4
  %rx_buf_addr.i = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %47, i32 0, i32 2
  %131 = ptrtoint ptr %rx_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_buf_addr.i, align 4
  %133 = ptrtoint ptr %rx_buf_addr72.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %rx_buf_addr72.i, align 4
  %134 = ptrtoint ptr %b_last_packet.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %b_last_packet.i, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue, i32 noundef %flags.094) #9
  %135 = ptrtoint ptr %cbs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cbs.i, align 4
  %137 = ptrtoint ptr %cookie76.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cookie76.i, align 4
  call void %136(ptr noundef %138, ptr noundef nonnull %data.i) #9
  %call84.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_queue) #9
  br label %qed_ll2_rxq_handle_completion.exit

qed_ll2_rxq_handle_completion.exit:               ; preds = %list_add_tail.exit.i, %do.end.i87, %do.body.i85.qed_ll2_rxq_handle_completion.exit_crit_edge
  %flags.2 = phi i32 [ %flags.094, %do.end.i87 ], [ %flags.094, %do.body.i85.qed_ll2_rxq_handle_completion.exit_crit_edge ], [ %call84.i, %list_add_tail.exit.i ]
  %retval.0.i90 = phi i32 [ -5, %do.end.i87 ], [ -5, %do.body.i85.qed_ll2_rxq_handle_completion.exit_crit_edge ], [ 0, %list_add_tail.exit.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %qed_ll2_rxq_handle_completion.exit, %if.end47.i, %do.end32.i, %do.body18.i.sw.epilog_crit_edge, %do.end.i, %do.body.i.sw.epilog_crit_edge, %do.end44.sw.epilog_crit_edge
  %flags.3 = phi i32 [ %flags.094, %do.end44.sw.epilog_crit_edge ], [ %flags.2, %qed_ll2_rxq_handle_completion.exit ], [ %flags.094, %do.end32.i ], [ %flags.094, %do.body18.i.sw.epilog_crit_edge ], [ %call61.i, %if.end47.i ], [ %flags.094, %do.end.i ], [ %flags.094, %do.body.i.sw.epilog_crit_edge ]
  %rc.1 = phi i32 [ -5, %do.end44.sw.epilog_crit_edge ], [ %retval.0.i90, %qed_ll2_rxq_handle_completion.exit ], [ -22, %do.end32.i ], [ -22, %do.body18.i.sw.epilog_crit_edge ], [ 0, %if.end47.i ], [ -22, %do.end.i ], [ -22, %do.body.i.sw.epilog_crit_edge ]
  %cmp13.not = icmp eq i16 %6, %15
  br i1 %cmp13.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end9.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %if.end9.while.end_crit_edge ], [ %flags.3, %sw.epilog.while.end_crit_edge ]
  %rc.0.lcssa = phi i32 [ 0, %if.end9.while.end_crit_edge ], [ %rc.1, %sw.epilog.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue, i32 noundef %flags.0.lcssa) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.lcssa, %while.end ], [ 0, %if.then7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_txq_completion(ptr noundef %p_hwfn, ptr noundef %p_cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11
  %tobool.not = icmp eq ptr %p_cookie, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue) #9
  %b_completing_packet = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 14
  %0 = ptrtoint ptr %b_completing_packet to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_completing_packet, align 2, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.end7, label %do.body1.out_crit_edge

do.body1.out_crit_edge:                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %do.body1
  %p_fw_cons = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %p_fw_cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_fw_cons, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %bds_idx = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 11
  %7 = ptrtoint ptr %bds_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bds_idx, align 4
  %sub = sub i16 %6, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %tobool11.not147 = icmp eq i16 %sub, 0
  br i1 %tobool11.not147, label %if.end7.while.end92_crit_edge, label %while.body.lr.ph

if.end7.while.end92_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end92

while.body.lr.ph:                                 ; preds = %if.end7
  %active_descq = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 5
  %cur_completing_packet = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 17
  %txq_chain = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 1
  %cur_completing_bd_idx = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 8
  %free_descq = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 6
  %prev.i140 = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 11, i32 6, i32 1
  %tx_comp_cb = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 12, i32 2
  %cookie = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 12, i32 5
  %my_id = getelementptr inbounds %struct.qed_ll2_info, ptr %p_cookie, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %num_bds.0149 = phi i16 [ %sub, %while.body.lr.ph ], [ %sub54, %list_add_tail.exit.while.body_crit_edge ]
  %flags.0148 = phi i32 [ %call2, %while.body.lr.ph ], [ %call87, %list_add_tail.exit.while.body_crit_edge ]
  %9 = ptrtoint ptr %active_descq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active_descq, align 4
  %cmp.i = icmp eq ptr %10, %active_descq
  %tobool18.not = icmp eq ptr %10, null
  %or.cond = or i1 %cmp.i, %tobool18.not
  br i1 %or.cond, label %while.body.out_crit_edge, label %if.end20

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end20:                                         ; preds = %while.body
  %11 = ptrtoint ptr %b_completing_packet to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %b_completing_packet, align 2
  %12 = call ptr @memcpy(ptr %cur_completing_packet, ptr %10, i32 16)
  %bd_used = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %bd_used to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bd_used, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del.exit_crit_edge

if.end20.list_del.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end20.list_del.exit_crit_edge
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %num_bds.0149, i16 %14)
  %cmp24 = icmp ult i16 %num_bds.0149, %14
  br i1 %cmp24, label %do.body29, label %if.end51, !prof !291

do.body29:                                        ; preds = %list_del.exit
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %23 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp31 = icmp ult i8 %24, 3
  br i1 %cmp31, label %do.end42, label %do.body29.out_crit_edge, !prof !291

do.body29.out_crit_edge:                          ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end42:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool44.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool44.not, ptr @.str.3, ptr %name
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 383, ptr noundef nonnull %spec.select) #12
  br label %out

if.end51:                                         ; preds = %list_del.exit
  %sub54 = sub i16 %num_bds.0149, %14
  %25 = ptrtoint ptr %bds_idx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bds_idx, align 4
  %add = add i16 %26, %14
  store i16 %add, ptr %bds_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool61.not145 = icmp eq i16 %14, 0
  br i1 %tobool61.not145, label %if.end51.while.end_crit_edge, label %if.end51.while.body62_crit_edge

if.end51.while.body62_crit_edge:                  ; preds = %if.end51
  br label %while.body62

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body62:                                     ; preds = %while.body62.while.body62_crit_edge, %if.end51.while.body62_crit_edge
  %num_bds_in_packet.0146 = phi i16 [ %dec, %while.body62.while.body62_crit_edge ], [ %14, %if.end51.while.body62_crit_edge ]
  %dec = add i16 %num_bds_in_packet.0146, -1
  %call63 = tail call fastcc ptr @qed_chain_consume(ptr noundef %txq_chain)
  %tobool61.not = icmp eq i16 %dec, 0
  br i1 %tobool61.not, label %while.body62.while.end_crit_edge, label %while.body62.while.body62_crit_edge

while.body62.while.body62_crit_edge:              ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body62

while.body62.while.end_crit_edge:                 ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body62.while.end_crit_edge, %if.end51.while.end_crit_edge
  %27 = ptrtoint ptr %cur_completing_bd_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %cur_completing_bd_idx, align 4
  %28 = ptrtoint ptr %bd_used to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bd_used, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp68 = icmp eq i16 %29, 1
  %30 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i140, align 4
  %call.i.i141 = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %31, ptr noundef %free_descq) #9
  br i1 %call.i.i141, label %if.end.i.i142, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i142:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %10, ptr %prev.i140, align 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_descq, ptr %10, align 4
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %10, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i142, %while.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue, i32 noundef %flags.0148) #9
  %36 = ptrtoint ptr %tx_comp_cb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_comp_cb, align 4
  %38 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cookie, align 4
  %40 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %my_id, align 4
  %cookie73 = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %10, i32 0, i32 3
  %42 = ptrtoint ptr %cookie73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cookie73, align 4
  %tx_frag = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %10, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %tx_frag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_frag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub54)
  %tobool75.not = icmp eq i16 %sub54, 0
  tail call void %37(ptr noundef %39, i8 noundef zeroext %41, ptr noundef %43, i32 noundef %45, i1 noundef zeroext %cmp68, i1 noundef zeroext %tobool75.not) #9
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue) #9
  br i1 %tobool75.not, label %list_add_tail.exit.while.end92_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_add_tail.exit.while.end92_crit_edge:         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end92

while.end92:                                      ; preds = %list_add_tail.exit.while.end92_crit_edge, %if.end7.while.end92_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %if.end7.while.end92_crit_edge ], [ %call87, %list_add_tail.exit.while.end92_crit_edge ]
  %46 = ptrtoint ptr %b_completing_packet to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %b_completing_packet, align 2
  br label %out

out:                                              ; preds = %while.end92, %do.end42, %do.body29.out_crit_edge, %while.body.out_crit_edge, %do.body1.out_crit_edge
  %flags.1 = phi i32 [ %flags.0148, %do.end42 ], [ %flags.0148, %do.body29.out_crit_edge ], [ %flags.0.lcssa, %while.end92 ], [ %call2, %do.body1.out_crit_edge ], [ %flags.0148, %while.body.out_crit_edge ]
  %rc.0 = phi i32 [ -22, %do.end42 ], [ -22, %do.body29.out_crit_edge ], [ 0, %while.end92 ], [ -16, %do.body1.out_crit_edge ], [ -22, %while.body.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue, i32 noundef %flags.1) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_int_register_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ll2_release_connection(ptr noundef %cxt, i8 noundef zeroext %connection_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp.i.i = icmp ugt i8 %connection_handle, 3
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %p_ll2_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i
  %b_active.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 6
  %2 = ptrtoint ptr %b_active.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_active.i.i, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not.i.i = icmp eq i8 %3, 0
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = select i1 %tobool11.not.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end4.i.i.cleanup_crit_edge, label %if.end

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %descq_mem = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 15
  %4 = ptrtoint ptr %descq_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descq_mem, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cxt, align 8
  %txq_chain = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 1
  tail call void @qed_chain_free(ptr noundef %7, ptr noundef %txq_chain) #9
  %descq_array = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 10
  %8 = ptrtoint ptr %descq_array to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %descq_array, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cxt, align 8
  %rxq_chain = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1
  tail call void @qed_chain_free(ptr noundef %11, ptr noundef %rxq_chain) #9
  %12 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cxt, align 8
  %rcq_chain = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2
  tail call void @qed_chain_free(ptr noundef %13, ptr noundef %rcq_chain) #9
  %cid = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 2
  %14 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cid, align 4
  tail call void @qed_cxt_release_cid(ptr noundef %cxt, i32 noundef %15) #9
  %conn_type.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %conn_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end.qed_ll2_release_connection_ooo.exit_crit_edge

if.end.qed_ll2_release_connection_ooo.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_release_connection_ooo.exit

if.end.i:                                         ; preds = %if.end
  %p_ooo_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 31
  %18 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_ooo_info.i, align 4
  tail call void @qed_ooo_release_all_isles(ptr noundef %cxt, ptr noundef %19) #9
  %20 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_ooo_info.i, align 4
  %call9.i = tail call ptr @qed_ooo_get_free_buffer(ptr noundef %cxt, ptr noundef %21) #9
  %tobool.not10.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not10.i, label %if.end.i.qed_ll2_release_connection_ooo.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.qed_ll2_release_connection_ooo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_release_connection_ooo.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %call11.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call9.i, %if.end.i.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cxt, align 8
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %23, i32 0, i32 50
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %rx_buffer_size.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call11.i, i32 0, i32 3
  %26 = ptrtoint ptr %rx_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_buffer_size.i, align 4
  %rx_buffer_virt_addr.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call11.i, i32 0, i32 1
  %28 = ptrtoint ptr %rx_buffer_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buffer_virt_addr.i, align 4
  %rx_buffer_phys_addr.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call11.i, i32 0, i32 2
  %30 = ptrtoint ptr %rx_buffer_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buffer_phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #9
  tail call void @kfree(ptr noundef nonnull %call11.i) #9
  %32 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_ooo_info.i, align 4
  %call.i = tail call ptr @qed_ooo_get_free_buffer(ptr noundef %cxt, ptr noundef %33) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.qed_ll2_release_connection_ooo.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.qed_ll2_release_connection_ooo.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_release_connection_ooo.exit

qed_ll2_release_connection_ooo.exit:              ; preds = %while.body.i.qed_ll2_release_connection_ooo.exit_crit_edge, %if.end.i.qed_ll2_release_connection_ooo.exit_crit_edge, %if.end.qed_ll2_release_connection_ooo.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull %arrayidx.i.i, i32 noundef 0) #9
  %34 = ptrtoint ptr %b_active.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %b_active.i.i, align 1
  tail call void @mutex_unlock(ptr noundef nonnull %arrayidx.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %qed_ll2_release_connection_ooo.exit, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_establish_connection(ptr noundef %cxt, i8 noundef zeroext %connection_handle) local_unnamed_addr #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  %p_ent.i.i = alloca ptr, align 4
  %init_data.i.i = alloca %struct.qed_sp_init_data, align 4
  %cxt_info = alloca %struct.qed_cxt_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cxt_info) #9
  %0 = ptrtoint ptr %cxt_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cxt_info, align 4, !annotation !295
  %1 = getelementptr inbounds %struct.qed_cxt_info, ptr %cxt_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !295
  %3 = getelementptr inbounds %struct.qed_cxt_info, ptr %cxt_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !295
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %cxt) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i.i = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp.i.i = icmp ugt i8 %connection_handle, 3
  br i1 %cmp.i.i, label %if.end.out_crit_edge, label %if.end.i.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i:                                       ; preds = %if.end
  %p_ll2_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %5 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i.out_crit_edge, label %if.end4.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i.i, i32 noundef 0) #9
  %b_active27.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 6
  %7 = ptrtoint ptr %b_active27.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_active27.i.i, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not28.i.i = icmp eq i8 %8, 0
  tail call void @mutex_unlock(ptr noundef %arrayidx.i.i) #9
  %tobool2.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = or i1 %tobool2.not, %tobool11.not28.i.i
  br i1 %or.cond, label %if.end4.i.i.out_crit_edge, label %if.end4

if.end4.i.i.out_crit_edge:                        ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end4.i.i
  %rx_queue = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10
  %tx_queue = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11
  %rxq_chain = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1
  %cnt_type.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 13
  %9 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %u.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %u.i, align 4
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %12 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %cons_idx.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %u.i, align 4
  %cons_idx5.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %cons_idx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cons_idx5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %p_virt_addr.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 16
  %15 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_virt_addr.i, align 4
  %p_cons_elem.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 1
  %17 = ptrtoint ptr %p_cons_elem.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %p_cons_elem.i, align 4
  %18 = ptrtoint ptr %rxq_chain to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %rxq_chain, align 4
  %mode.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 6
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp7.i = icmp eq i32 %20, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  %page_cnt.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 5
  %21 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_cnt.i, align 4
  %sub.i = add i32 %22, -1
  br i1 %cmp.i, label %if.then11.i, label %if.else15.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %sub.i to i16
  %c.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %c.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %c.i, align 4
  %cons_page_idx.i = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i, i32 0, i32 1
  %24 = ptrtoint ptr %cons_page_idx.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %cons_page_idx.i, align 2
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %c17.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %c17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i, ptr %c17.i, align 4
  %cons_page_idx21.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 2, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %cons_page_idx21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %cons_page_idx21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.then11.i, %if.end.i.if.end23.i_crit_edge
  %intended_use.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 19
  %27 = ptrtoint ptr %intended_use.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %intended_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cond.i = icmp eq i32 %28, 1
  br i1 %cond.i, label %for.cond.preheader.i, label %if.end23.i.qed_chain_reset.exit_crit_edge

if.end23.i.qed_chain_reset.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit

for.cond.preheader.i:                             ; preds = %if.end23.i
  %capacity.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 4
  %29 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2449.not.i = icmp eq i32 %30, 0
  br i1 %cmp2449.not.i, label %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qed_chain_reset.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %elem_per_page_mask13.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 8
  %usable_per_page16.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 11
  %elem_unusable21.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %31 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %u.i, align 4
  %33 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %and52.i.i = and i16 %34, %32
  %35 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %usable_per_page16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i, i16 %36)
  %cmp3.i.i = icmp eq i16 %and52.i.i, %36
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.then31.i.i_crit_edge

if.then.i.i.if.then31.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv6.i.i = zext i8 %38 to i16
  %add.i.i = add i16 %32, %conv6.i.i
  %39 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add.i.i, ptr %u.i, align 4
  br label %if.then31.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %40 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %u.i, align 4
  %42 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %conv14.i.i = zext i16 %43 to i32
  %and15.i.i = and i32 %41, %conv14.i.i
  %44 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %usable_per_page16.i.i, align 4
  %conv17.i.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i, i32 %conv17.i.i)
  %cmp18.i.i = icmp eq i32 %and15.i.i, %conv17.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.else.i.i.if.else34.i.i_crit_edge

if.else.i.i.if.else34.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv22.i.i = zext i8 %47 to i32
  %add25.i.i = add i32 %41, %conv22.i.i
  %48 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add25.i.i, ptr %u.i, align 4
  br label %if.else34.i.i

if.then31.i.i:                                    ; preds = %if.then5.i.i, %if.then.i.i.if.then31.i.i_crit_edge
  %49 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %u.i, align 4
  %inc.i.i = add i16 %50, 1
  store i16 %inc.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

if.else34.i.i:                                    ; preds = %if.then20.i.i, %if.else.i.i.if.else34.i.i_crit_edge
  %51 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %u.i, align 4
  %inc37.i.i = add i32 %52, 1
  store i32 %inc37.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

qed_chain_recycle_consumed.exit.i:                ; preds = %if.else34.i.i, %if.then31.i.i
  %inc.i = add nuw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not.i, label %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, label %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge

qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit

qed_chain_reset.exit:                             ; preds = %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, %if.end23.i.qed_chain_reset.exit_crit_edge
  %rcq_chain = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2
  %cnt_type.i393 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 13
  %53 = ptrtoint ptr %cnt_type.i393 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cnt_type.i393, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i394 = icmp eq i32 %54, 0
  %u.i395 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 3
  br i1 %cmp.i394, label %if.then.i397, label %if.else.i399

if.then.i397:                                     ; preds = %qed_chain_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %u.i395 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %u.i395, align 4
  %cons_idx.i396 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i395, i32 0, i32 1
  %56 = ptrtoint ptr %cons_idx.i396 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %cons_idx.i396, align 2
  br label %if.end.i404

if.else.i399:                                     ; preds = %qed_chain_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %u.i395 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %u.i395, align 4
  %cons_idx5.i398 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 3, i32 0, i32 1
  %58 = ptrtoint ptr %cons_idx5.i398 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %cons_idx5.i398, align 4
  br label %if.end.i404

if.end.i404:                                      ; preds = %if.else.i399, %if.then.i397
  %p_virt_addr.i400 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 16
  %59 = ptrtoint ptr %p_virt_addr.i400 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p_virt_addr.i400, align 4
  %p_cons_elem.i401 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 1
  %61 = ptrtoint ptr %p_cons_elem.i401 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %p_cons_elem.i401, align 4
  %62 = ptrtoint ptr %rcq_chain to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %rcq_chain, align 4
  %mode.i402 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 6
  %63 = ptrtoint ptr %mode.i402 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode.i402, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp7.i403 = icmp eq i32 %64, 2
  br i1 %cmp7.i403, label %if.then8.i407, label %if.end.i404.if.end23.i417_crit_edge

if.end.i404.if.end23.i417_crit_edge:              ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i417

if.then8.i407:                                    ; preds = %if.end.i404
  %page_cnt.i405 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 5
  %65 = ptrtoint ptr %page_cnt.i405 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %page_cnt.i405, align 4
  %sub.i406 = add i32 %66, -1
  br i1 %cmp.i394, label %if.then11.i411, label %if.else15.i414

if.then11.i411:                                   ; preds = %if.then8.i407
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i408 = trunc i32 %sub.i406 to i16
  %c.i409 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 2, i32 1
  %67 = ptrtoint ptr %c.i409 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i408, ptr %c.i409, align 4
  %cons_page_idx.i410 = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i409, i32 0, i32 1
  %68 = ptrtoint ptr %cons_page_idx.i410 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i408, ptr %cons_page_idx.i410, align 2
  br label %if.end23.i417

if.else15.i414:                                   ; preds = %if.then8.i407
  call void @__sanitizer_cov_trace_pc() #11
  %c17.i412 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 2, i32 1
  %69 = ptrtoint ptr %c17.i412 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub.i406, ptr %c17.i412, align 4
  %cons_page_idx21.i413 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 2, i32 1, i32 0, i32 1
  %70 = ptrtoint ptr %cons_page_idx21.i413 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.i406, ptr %cons_page_idx21.i413, align 4
  br label %if.end23.i417

if.end23.i417:                                    ; preds = %if.else15.i414, %if.then11.i411, %if.end.i404.if.end23.i417_crit_edge
  %intended_use.i415 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 19
  %71 = ptrtoint ptr %intended_use.i415 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %intended_use.i415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cond.i416 = icmp eq i32 %72, 1
  br i1 %cond.i416, label %for.cond.preheader.i420, label %if.end23.i417.qed_chain_reset.exit449_crit_edge

if.end23.i417.qed_chain_reset.exit449_crit_edge:  ; preds = %if.end23.i417
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit449

for.cond.preheader.i420:                          ; preds = %if.end23.i417
  %capacity.i418 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 4
  %73 = ptrtoint ptr %capacity.i418 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %capacity.i418, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp2449.not.i419 = icmp eq i32 %74, 0
  br i1 %cmp2449.not.i419, label %for.cond.preheader.i420.qed_chain_reset.exit449_crit_edge, label %for.body.lr.ph.i425

for.cond.preheader.i420.qed_chain_reset.exit449_crit_edge: ; preds = %for.cond.preheader.i420
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit449

for.body.lr.ph.i425:                              ; preds = %for.cond.preheader.i420
  %elem_per_page_mask13.i.i422 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 8
  %usable_per_page16.i.i423 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 11
  %elem_unusable21.i.i424 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 12
  br label %for.body.i427

for.body.i427:                                    ; preds = %qed_chain_recycle_consumed.exit.i448.for.body.i427_crit_edge, %for.body.lr.ph.i425
  %i.050.i426 = phi i32 [ 0, %for.body.lr.ph.i425 ], [ %inc.i446, %qed_chain_recycle_consumed.exit.i448.for.body.i427_crit_edge ]
  br i1 %cmp.i394, label %if.then.i.i430, label %if.else.i.i438

if.then.i.i430:                                   ; preds = %for.body.i427
  %75 = ptrtoint ptr %u.i395 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %u.i395, align 4
  %77 = ptrtoint ptr %elem_per_page_mask13.i.i422 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %elem_per_page_mask13.i.i422, align 2
  %and52.i.i428 = and i16 %78, %76
  %79 = ptrtoint ptr %usable_per_page16.i.i423 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %usable_per_page16.i.i423, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i428, i16 %80)
  %cmp3.i.i429 = icmp eq i16 %and52.i.i428, %80
  br i1 %cmp3.i.i429, label %if.then5.i.i433, label %if.then.i.i430.if.then31.i.i443_crit_edge

if.then.i.i430.if.then31.i.i443_crit_edge:        ; preds = %if.then.i.i430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i.i443

if.then5.i.i433:                                  ; preds = %if.then.i.i430
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %elem_unusable21.i.i424 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %elem_unusable21.i.i424, align 2
  %conv6.i.i431 = zext i8 %82 to i16
  %add.i.i432 = add i16 %76, %conv6.i.i431
  %83 = ptrtoint ptr %u.i395 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %add.i.i432, ptr %u.i395, align 4
  br label %if.then31.i.i443

if.else.i.i438:                                   ; preds = %for.body.i427
  %84 = ptrtoint ptr %u.i395 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %u.i395, align 4
  %86 = ptrtoint ptr %elem_per_page_mask13.i.i422 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %elem_per_page_mask13.i.i422, align 2
  %conv14.i.i434 = zext i16 %87 to i32
  %and15.i.i435 = and i32 %85, %conv14.i.i434
  %88 = ptrtoint ptr %usable_per_page16.i.i423 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %usable_per_page16.i.i423, align 4
  %conv17.i.i436 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i435, i32 %conv17.i.i436)
  %cmp18.i.i437 = icmp eq i32 %and15.i.i435, %conv17.i.i436
  br i1 %cmp18.i.i437, label %if.then20.i.i441, label %if.else.i.i438.if.else34.i.i445_crit_edge

if.else.i.i438.if.else34.i.i445_crit_edge:        ; preds = %if.else.i.i438
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34.i.i445

if.then20.i.i441:                                 ; preds = %if.else.i.i438
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %elem_unusable21.i.i424 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %elem_unusable21.i.i424, align 2
  %conv22.i.i439 = zext i8 %91 to i32
  %add25.i.i440 = add i32 %85, %conv22.i.i439
  %92 = ptrtoint ptr %u.i395 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add25.i.i440, ptr %u.i395, align 4
  br label %if.else34.i.i445

if.then31.i.i443:                                 ; preds = %if.then5.i.i433, %if.then.i.i430.if.then31.i.i443_crit_edge
  %93 = ptrtoint ptr %u.i395 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %u.i395, align 4
  %inc.i.i442 = add i16 %94, 1
  store i16 %inc.i.i442, ptr %u.i395, align 4
  br label %qed_chain_recycle_consumed.exit.i448

if.else34.i.i445:                                 ; preds = %if.then20.i.i441, %if.else.i.i438.if.else34.i.i445_crit_edge
  %95 = ptrtoint ptr %u.i395 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %u.i395, align 4
  %inc37.i.i444 = add i32 %96, 1
  store i32 %inc37.i.i444, ptr %u.i395, align 4
  br label %qed_chain_recycle_consumed.exit.i448

qed_chain_recycle_consumed.exit.i448:             ; preds = %if.else34.i.i445, %if.then31.i.i443
  %inc.i446 = add nuw i32 %i.050.i426, 1
  %exitcond.not.i447 = icmp eq i32 %inc.i446, %74
  br i1 %exitcond.not.i447, label %qed_chain_recycle_consumed.exit.i448.qed_chain_reset.exit449_crit_edge, label %qed_chain_recycle_consumed.exit.i448.for.body.i427_crit_edge

qed_chain_recycle_consumed.exit.i448.for.body.i427_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i448
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i427

qed_chain_recycle_consumed.exit.i448.qed_chain_reset.exit449_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i448
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit449

qed_chain_reset.exit449:                          ; preds = %qed_chain_recycle_consumed.exit.i448.qed_chain_reset.exit449_crit_edge, %for.cond.preheader.i420.qed_chain_reset.exit449_crit_edge, %if.end23.i417.qed_chain_reset.exit449_crit_edge
  %active_descq = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 7
  %97 = ptrtoint ptr %active_descq to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %active_descq, ptr %active_descq, align 4
  %prev.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 7, i32 1
  %98 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %active_descq, ptr %prev.i, align 4
  %free_descq = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 8
  %99 = ptrtoint ptr %free_descq to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %free_descq, ptr %free_descq, align 4
  %prev.i450 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 8, i32 1
  %100 = ptrtoint ptr %prev.i450 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %free_descq, ptr %prev.i450, align 4
  %posting_descq = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 9
  %101 = ptrtoint ptr %posting_descq to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %posting_descq, ptr %posting_descq, align 4
  %prev.i451 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 9, i32 1
  %102 = ptrtoint ptr %prev.i451 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %posting_descq, ptr %prev.i451, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %rx_queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @qed_ll2_establish_connection.__key, i16 noundef signext 3) #9
  %capacity.i452 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 4
  %103 = ptrtoint ptr %capacity.i452 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %capacity.i452, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp561.not = icmp eq i32 %104, 0
  br i1 %cmp561.not, label %qed_chain_reset.exit449.for.end_crit_edge, label %for.body.lr.ph

qed_chain_reset.exit449.for.end_crit_edge:        ; preds = %qed_chain_reset.exit449
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %qed_chain_reset.exit449
  %descq_array = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 10
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0562 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %105 = ptrtoint ptr %descq_array to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %descq_array, align 4
  %arrayidx = getelementptr %struct.qed_ll2_rx_packet, ptr %106, i32 %i.0562
  %107 = ptrtoint ptr %prev.i450 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i450, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %108, ptr noundef %free_descq) #9
  br i1 %call.i.i, label %if.end.i.i454, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i454:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %prev.i450 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx, ptr %prev.i450, align 4
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %free_descq, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %arrayidx, ptr %108, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i454, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.0562, 1
  %exitcond.not = icmp eq i32 %inc, %104
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %qed_chain_reset.exit449.for.end_crit_edge
  %p_fw_cons = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 6
  %113 = ptrtoint ptr %p_fw_cons to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %p_fw_cons, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %114, align 2
  %txq_chain = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1
  %cnt_type.i455 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 13
  %116 = ptrtoint ptr %cnt_type.i455 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cnt_type.i455, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i456 = icmp eq i32 %117, 0
  %u.i457 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 3
  br i1 %cmp.i456, label %if.then.i459, label %if.else.i461

if.then.i459:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %u.i457 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %u.i457, align 4
  %cons_idx.i458 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i457, i32 0, i32 1
  %119 = ptrtoint ptr %cons_idx.i458 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %cons_idx.i458, align 2
  br label %if.end.i466

if.else.i461:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %u.i457 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %u.i457, align 4
  %cons_idx5.i460 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 3, i32 0, i32 1
  %121 = ptrtoint ptr %cons_idx5.i460 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %cons_idx5.i460, align 4
  br label %if.end.i466

if.end.i466:                                      ; preds = %if.else.i461, %if.then.i459
  %p_virt_addr.i462 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 16
  %122 = ptrtoint ptr %p_virt_addr.i462 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %p_virt_addr.i462, align 4
  %p_cons_elem.i463 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 1
  %124 = ptrtoint ptr %p_cons_elem.i463 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %p_cons_elem.i463, align 4
  %125 = ptrtoint ptr %txq_chain to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %123, ptr %txq_chain, align 4
  %mode.i464 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 6
  %126 = ptrtoint ptr %mode.i464 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mode.i464, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp7.i465 = icmp eq i32 %127, 2
  br i1 %cmp7.i465, label %if.then8.i469, label %if.end.i466.if.end23.i479_crit_edge

if.end.i466.if.end23.i479_crit_edge:              ; preds = %if.end.i466
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i479

if.then8.i469:                                    ; preds = %if.end.i466
  %page_cnt.i467 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 5
  %128 = ptrtoint ptr %page_cnt.i467 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %page_cnt.i467, align 4
  %sub.i468 = add i32 %129, -1
  br i1 %cmp.i456, label %if.then11.i473, label %if.else15.i476

if.then11.i473:                                   ; preds = %if.then8.i469
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i470 = trunc i32 %sub.i468 to i16
  %c.i471 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 2, i32 1
  %130 = ptrtoint ptr %c.i471 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i470, ptr %c.i471, align 4
  %cons_page_idx.i472 = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i471, i32 0, i32 1
  %131 = ptrtoint ptr %cons_page_idx.i472 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i470, ptr %cons_page_idx.i472, align 2
  br label %if.end23.i479

if.else15.i476:                                   ; preds = %if.then8.i469
  call void @__sanitizer_cov_trace_pc() #11
  %c17.i474 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 2, i32 1
  %132 = ptrtoint ptr %c17.i474 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub.i468, ptr %c17.i474, align 4
  %cons_page_idx21.i475 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 2, i32 1, i32 0, i32 1
  %133 = ptrtoint ptr %cons_page_idx21.i475 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub.i468, ptr %cons_page_idx21.i475, align 4
  br label %if.end23.i479

if.end23.i479:                                    ; preds = %if.else15.i476, %if.then11.i473, %if.end.i466.if.end23.i479_crit_edge
  %intended_use.i477 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 19
  %134 = ptrtoint ptr %intended_use.i477 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %intended_use.i477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cond.i478 = icmp eq i32 %135, 1
  br i1 %cond.i478, label %for.cond.preheader.i482, label %if.end23.i479.qed_chain_reset.exit511_crit_edge

if.end23.i479.qed_chain_reset.exit511_crit_edge:  ; preds = %if.end23.i479
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit511

for.cond.preheader.i482:                          ; preds = %if.end23.i479
  %capacity.i480 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 4
  %136 = ptrtoint ptr %capacity.i480 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %capacity.i480, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp2449.not.i481 = icmp eq i32 %137, 0
  br i1 %cmp2449.not.i481, label %for.cond.preheader.i482.qed_chain_reset.exit511_crit_edge, label %for.body.lr.ph.i487

for.cond.preheader.i482.qed_chain_reset.exit511_crit_edge: ; preds = %for.cond.preheader.i482
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit511

for.body.lr.ph.i487:                              ; preds = %for.cond.preheader.i482
  %elem_per_page_mask13.i.i484 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 8
  %usable_per_page16.i.i485 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 11
  %elem_unusable21.i.i486 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 12
  br label %for.body.i489

for.body.i489:                                    ; preds = %qed_chain_recycle_consumed.exit.i510.for.body.i489_crit_edge, %for.body.lr.ph.i487
  %i.050.i488 = phi i32 [ 0, %for.body.lr.ph.i487 ], [ %inc.i508, %qed_chain_recycle_consumed.exit.i510.for.body.i489_crit_edge ]
  br i1 %cmp.i456, label %if.then.i.i492, label %if.else.i.i500

if.then.i.i492:                                   ; preds = %for.body.i489
  %138 = ptrtoint ptr %u.i457 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %u.i457, align 4
  %140 = ptrtoint ptr %elem_per_page_mask13.i.i484 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %elem_per_page_mask13.i.i484, align 2
  %and52.i.i490 = and i16 %141, %139
  %142 = ptrtoint ptr %usable_per_page16.i.i485 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %usable_per_page16.i.i485, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i490, i16 %143)
  %cmp3.i.i491 = icmp eq i16 %and52.i.i490, %143
  br i1 %cmp3.i.i491, label %if.then5.i.i495, label %if.then.i.i492.if.then31.i.i505_crit_edge

if.then.i.i492.if.then31.i.i505_crit_edge:        ; preds = %if.then.i.i492
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i.i505

if.then5.i.i495:                                  ; preds = %if.then.i.i492
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %elem_unusable21.i.i486 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %elem_unusable21.i.i486, align 2
  %conv6.i.i493 = zext i8 %145 to i16
  %add.i.i494 = add i16 %139, %conv6.i.i493
  %146 = ptrtoint ptr %u.i457 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %add.i.i494, ptr %u.i457, align 4
  br label %if.then31.i.i505

if.else.i.i500:                                   ; preds = %for.body.i489
  %147 = ptrtoint ptr %u.i457 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %u.i457, align 4
  %149 = ptrtoint ptr %elem_per_page_mask13.i.i484 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %elem_per_page_mask13.i.i484, align 2
  %conv14.i.i496 = zext i16 %150 to i32
  %and15.i.i497 = and i32 %148, %conv14.i.i496
  %151 = ptrtoint ptr %usable_per_page16.i.i485 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %usable_per_page16.i.i485, align 4
  %conv17.i.i498 = zext i16 %152 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i497, i32 %conv17.i.i498)
  %cmp18.i.i499 = icmp eq i32 %and15.i.i497, %conv17.i.i498
  br i1 %cmp18.i.i499, label %if.then20.i.i503, label %if.else.i.i500.if.else34.i.i507_crit_edge

if.else.i.i500.if.else34.i.i507_crit_edge:        ; preds = %if.else.i.i500
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34.i.i507

if.then20.i.i503:                                 ; preds = %if.else.i.i500
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %elem_unusable21.i.i486 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %elem_unusable21.i.i486, align 2
  %conv22.i.i501 = zext i8 %154 to i32
  %add25.i.i502 = add i32 %148, %conv22.i.i501
  %155 = ptrtoint ptr %u.i457 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %add25.i.i502, ptr %u.i457, align 4
  br label %if.else34.i.i507

if.then31.i.i505:                                 ; preds = %if.then5.i.i495, %if.then.i.i492.if.then31.i.i505_crit_edge
  %156 = ptrtoint ptr %u.i457 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %u.i457, align 4
  %inc.i.i504 = add i16 %157, 1
  store i16 %inc.i.i504, ptr %u.i457, align 4
  br label %qed_chain_recycle_consumed.exit.i510

if.else34.i.i507:                                 ; preds = %if.then20.i.i503, %if.else.i.i500.if.else34.i.i507_crit_edge
  %158 = ptrtoint ptr %u.i457 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %u.i457, align 4
  %inc37.i.i506 = add i32 %159, 1
  store i32 %inc37.i.i506, ptr %u.i457, align 4
  br label %qed_chain_recycle_consumed.exit.i510

qed_chain_recycle_consumed.exit.i510:             ; preds = %if.else34.i.i507, %if.then31.i.i505
  %inc.i508 = add nuw i32 %i.050.i488, 1
  %exitcond.not.i509 = icmp eq i32 %inc.i508, %137
  br i1 %exitcond.not.i509, label %qed_chain_recycle_consumed.exit.i510.qed_chain_reset.exit511_crit_edge, label %qed_chain_recycle_consumed.exit.i510.for.body.i489_crit_edge

qed_chain_recycle_consumed.exit.i510.for.body.i489_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i510
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i489

qed_chain_recycle_consumed.exit.i510.qed_chain_reset.exit511_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i510
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_reset.exit511

qed_chain_reset.exit511:                          ; preds = %qed_chain_recycle_consumed.exit.i510.qed_chain_reset.exit511_crit_edge, %for.cond.preheader.i482.qed_chain_reset.exit511_crit_edge, %if.end23.i479.qed_chain_reset.exit511_crit_edge
  %active_descq9 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 5
  %160 = ptrtoint ptr %active_descq9 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %active_descq9, ptr %active_descq9, align 4
  %prev.i512 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 5, i32 1
  %161 = ptrtoint ptr %prev.i512 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %active_descq9, ptr %prev.i512, align 4
  %free_descq10 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 6
  %162 = ptrtoint ptr %free_descq10 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %free_descq10, ptr %free_descq10, align 4
  %prev.i513 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 6, i32 1
  %163 = ptrtoint ptr %prev.i513 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %free_descq10, ptr %prev.i513, align 4
  %sending_descq = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 7
  %164 = ptrtoint ptr %sending_descq to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %sending_descq, ptr %sending_descq, align 4
  %prev.i514 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 7, i32 1
  %165 = ptrtoint ptr %prev.i514 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %sending_descq, ptr %prev.i514, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %tx_queue, ptr noundef nonnull @.str.6, ptr noundef nonnull @qed_ll2_establish_connection.__key.5, i16 noundef signext 3) #9
  %capacity.i515 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 4
  %166 = ptrtoint ptr %capacity.i515 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %capacity.i515, align 4
  %input = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1
  %tx_max_bds_per_packet = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 8
  %168 = ptrtoint ptr %tx_max_bds_per_packet to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %tx_max_bds_per_packet, align 2
  %conv = zext i8 %169 to i32
  %170 = mul nuw nsw i32 %conv, 12
  %spec.select.i560 = add nuw nsw i32 %170, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp20563.not = icmp eq i32 %167, 0
  br i1 %cmp20563.not, label %qed_chain_reset.exit511.for.end27_crit_edge, label %for.body22.lr.ph

qed_chain_reset.exit511.for.end27_crit_edge:      ; preds = %qed_chain_reset.exit511
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body22.lr.ph:                                 ; preds = %qed_chain_reset.exit511
  %descq_mem = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 15
  br label %for.body22

for.body22:                                       ; preds = %list_add_tail.exit520.for.body22_crit_edge, %for.body22.lr.ph
  %i.1564 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc26, %list_add_tail.exit520.for.body22_crit_edge ]
  %171 = ptrtoint ptr %descq_mem to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %descq_mem, align 4
  %mul = mul i32 %i.1564, %spec.select.i560
  %add.ptr = getelementptr i8, ptr %172, i32 %mul
  %173 = ptrtoint ptr %prev.i513 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i513, align 4
  %call.i.i517 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %174, ptr noundef %free_descq10) #9
  br i1 %call.i.i517, label %if.end.i.i519, label %for.body22.list_add_tail.exit520_crit_edge

for.body22.list_add_tail.exit520_crit_edge:       ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit520

if.end.i.i519:                                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %prev.i513 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %add.ptr, ptr %prev.i513, align 4
  %176 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %free_descq10, ptr %add.ptr, align 4
  %prev3.i.i518 = getelementptr inbounds %struct.list_head, ptr %add.ptr, i32 0, i32 1
  %177 = ptrtoint ptr %prev3.i.i518 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev3.i.i518, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %add.ptr, ptr %174, align 4
  br label %list_add_tail.exit520

list_add_tail.exit520:                            ; preds = %if.end.i.i519, %for.body22.list_add_tail.exit520_crit_edge
  %inc26 = add nuw i32 %i.1564, 1
  %exitcond565.not = icmp eq i32 %inc26, %167
  br i1 %exitcond565.not, label %list_add_tail.exit520.for.end27_crit_edge, label %list_add_tail.exit520.for.body22_crit_edge

list_add_tail.exit520.for.body22_crit_edge:       ; preds = %list_add_tail.exit520
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

list_add_tail.exit520.for.end27_crit_edge:        ; preds = %list_add_tail.exit520
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.end27:                                        ; preds = %list_add_tail.exit520.for.end27_crit_edge, %qed_chain_reset.exit511.for.end27_crit_edge
  %cur_completing_bd_idx = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 8
  %179 = ptrtoint ptr %cur_completing_bd_idx to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %cur_completing_bd_idx, align 4
  %bds_idx = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 11
  %cur_send_packet = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 16
  %180 = ptrtoint ptr %cur_send_packet to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %cur_send_packet, align 4
  %p_fw_cons28 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 4
  %181 = call ptr @memset(ptr %bds_idx, i32 0, i32 7)
  %182 = ptrtoint ptr %p_fw_cons28 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %p_fw_cons28, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %183, align 2
  %cid = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 2
  %call29 = tail call i32 @qed_cxt_acquire_cid(ptr noundef %cxt, i32 noundef 3, ptr noundef %cid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.end27.out_crit_edge

for.end27.out_crit_edge:                          ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end32:                                         ; preds = %for.end27
  %185 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cid, align 4
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %1, align 4
  %call34 = call i32 @qed_cxt_get_cid_info(ptr noundef %cxt, ptr noundef nonnull %cxt_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end55, label %do.body37

do.body37:                                        ; preds = %if.end32
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %188 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %189)
  %cmp39 = icmp ult i8 %189, 3
  br i1 %cmp39, label %do.end46, label %do.body37.out_crit_edge, !prof !291

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end46:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool47.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool47.not, ptr @.str.3, ptr %name
  %190 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cid, align 4
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1628, ptr noundef nonnull %spec.select, i32 noundef %191) #12
  br label %out

if.end55:                                         ; preds = %if.end32
  %192 = ptrtoint ptr %cxt_info to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cxt_info, align 4
  %194 = call ptr @memset(ptr %193, i32 0, i32 896)
  %195 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %input, align 4
  %conv58 = trunc i32 %196 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv58)
  %cmp.i521 = icmp eq i8 %conv58, 0
  br i1 %cmp.i521, label %qed_ll2_handle_to_queue_id.exit.thread, label %if.else.i526

qed_ll2_handle_to_queue_id.exit.thread:           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.qed_hwfn, ptr %cxt, i32 0, i32 17, i32 1, i32 10
  %197 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i, align 4
  %199 = trunc i32 %198 to i8
  %conv3.i = add i8 %199, %connection_handle
  br label %qed_ll2_handle_to_stats_id.exit

if.else.i526:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6.i = getelementptr %struct.qed_hwfn, ptr %cxt, i32 0, i32 17, i32 1, i32 11
  %200 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx6.i, align 4
  %202 = trunc i32 %201 to i8
  %203 = add i8 %connection_handle, 29
  %conv12.i = add i8 %203, %202
  %abs_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 3
  %204 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %abs_pf_id.i, align 2
  %add.i = add i8 %205, 32
  br label %qed_ll2_handle_to_stats_id.exit

qed_ll2_handle_to_stats_id.exit:                  ; preds = %if.else.i526, %qed_ll2_handle_to_queue_id.exit.thread
  %retval.0.i524548 = phi i8 [ %conv12.i, %if.else.i526 ], [ %conv3.i, %qed_ll2_handle_to_queue_id.exit.thread ]
  %stats_id.0.i = phi i8 [ %add.i, %if.else.i526 ], [ %conv3.i, %qed_ll2_handle_to_queue_id.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %stats_id.0.i)
  %cmp5.i = icmp ult i8 %stats_id.0.i, 48
  %stats_id.0..i = select i1 %cmp5.i, i8 %stats_id.0.i, i8 -1
  %queue_id = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 4
  %206 = ptrtoint ptr %queue_id to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %retval.0.i524548, ptr %queue_id, align 1
  %tx_stats_id = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 5
  %207 = ptrtoint ptr %tx_stats_id to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %stats_id.0..i, ptr %tx_stats_id, align 2
  %conv65 = zext i8 %stats_id.0..i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %stats_id.0..i)
  %cmp66 = icmp eq i8 %stats_id.0..i, -1
  br i1 %cmp66, label %if.then68, label %qed_ll2_handle_to_stats_id.exit.do.body101_crit_edge

qed_ll2_handle_to_stats_id.exit.do.body101_crit_edge: ; preds = %qed_ll2_handle_to_stats_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body101

if.then68:                                        ; preds = %qed_ll2_handle_to_stats_id.exit
  %tx_stats_en = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 8
  %208 = ptrtoint ptr %tx_stats_en to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %tx_stats_en, align 4
  %dp_level70 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %209 = ptrtoint ptr %dp_level70 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %dp_level70, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %cmp72 = icmp eq i8 %210, 0
  br i1 %cmp72, label %land.rhs, label %if.then68.do.body101_crit_edge

if.then68.do.body101_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body101

land.rhs:                                         ; preds = %if.then68
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %211 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dp_module, align 4
  %and = and i32 %212, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %land.rhs.do.body101_crit_edge, label %do.end84, !prof !292

land.rhs.do.body101_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body101

do.end84:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %name86 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool88.not = icmp eq ptr %name86, null
  %spec.select391 = select i1 %tobool88.not, ptr @.str.3, ptr %name86
  %conv95 = zext i8 %retval.0.i524548 to i32
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 1650, ptr noundef nonnull %spec.select391, i32 noundef %conv95) #12
  br label %do.body101

do.body101:                                       ; preds = %do.end84, %land.rhs.do.body101_crit_edge, %if.then68.do.body101_crit_edge, %qed_ll2_handle_to_stats_id.exit.do.body101_crit_edge
  %dp_level102 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %213 = ptrtoint ptr %dp_level102 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %dp_level102, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %cmp104 = icmp eq i8 %214, 0
  br i1 %cmp104, label %land.rhs106, label %do.body101.do.end139_crit_edge

do.body101.do.end139_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end139

land.rhs106:                                      ; preds = %do.body101
  %dp_module107 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %215 = ptrtoint ptr %dp_module107 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dp_module107, align 4
  %and108 = and i32 %216, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %land.rhs106.do.end139_crit_edge, label %do.end120, !prof !292

land.rhs106.do.end139_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end139

do.end120:                                        ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #11
  %name122 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool124.not = icmp eq ptr %name122, null
  %spec.select392 = select i1 %tobool124.not, ptr @.str.3, ptr %name122
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 2
  %217 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rel_pf_id, align 1
  %conv131 = zext i8 %218 to i32
  %219 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %input, align 4
  %conv134 = zext i8 %retval.0.i524548 to i32
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 1657, ptr noundef nonnull %spec.select392, i32 noundef %conv131, i32 noundef %220, i32 noundef %conv134, i32 noundef %conv65) #12
  br label %do.end139

do.end139:                                        ; preds = %do.end120, %land.rhs106.do.end139_crit_edge, %do.body101.do.end139_crit_edge
  %221 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp142 = icmp eq i32 %222, 0
  br i1 %cmp142, label %if.then144, label %if.else

if.then144:                                       ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 12
  %223 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regview, align 4
  %225 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cxt, align 8
  %iro_arr = getelementptr inbounds %struct.qed_dev, ptr %226, i32 0, i32 31
  %227 = ptrtoint ptr %iro_arr to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %iro_arr, align 8
  %arrayidx145 = getelementptr %struct.iro, ptr %228, i32 23
  %229 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx145, align 4
  %conv146 = zext i8 %retval.0.i524548 to i32
  %m1 = getelementptr %struct.iro, ptr %228, i32 23, i32 1
  %231 = ptrtoint ptr %m1 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %m1, align 4
  %conv150 = zext i16 %232 to i32
  %mul151 = mul nuw nsw i32 %conv150, %conv146
  %add = add i32 %230, 65536
  %add152 = add i32 %add, %mul151
  %add.ptr153 = getelementptr i8, ptr %224, i32 %add152
  br label %if.end183

if.else:                                          ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #11
  %ctx_based = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 4
  %233 = ptrtoint ptr %ctx_based to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 1, ptr %ctx_based, align 1
  %doorbells = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 13
  %234 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %doorbells, align 8
  %dpi_start_offset = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 58
  %236 = ptrtoint ptr %dpi_start_offset to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %dpi_start_offset, align 4
  %add.ptr154 = getelementptr i8, ptr %235, i32 %237
  %add.ptr155 = getelementptr i8, ptr %add.ptr154, i32 760
  %238 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cid, align 4
  %conv158 = trunc i32 %239 to i16
  %240 = call i16 @llvm.bswap.i16(i16 %conv158)
  %db_data = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 12
  %241 = ptrtoint ptr %db_data to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %db_data, align 4
  %params = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 12, i32 2
  %242 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %params, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.else, %if.then144
  %add.ptr155.sink = phi ptr [ %add.ptr153, %if.then144 ], [ %add.ptr155, %if.else ]
  %243 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 11
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %add.ptr155.sink, ptr %243, align 4
  %doorbells184 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 13
  %245 = ptrtoint ptr %doorbells184 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %doorbells184, align 8
  %247 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cid, align 4
  %mul.i = shl i32 %248, 2
  %add.ptr187 = getelementptr i8, ptr %246, i32 %mul.i
  %doorbell_addr = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 9
  %249 = ptrtoint ptr %doorbell_addr to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %add.ptr187, ptr %doorbell_addr, align 4
  %db_msg = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 10
  %250 = ptrtoint ptr %db_msg to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %db_msg, align 4
  %252 = and i8 %251, 48
  %253 = or i8 %252, -124
  store i8 %253, ptr %db_msg, align 4
  %agg_flags = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 10, i32 1
  %254 = ptrtoint ptr %agg_flags to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 16, ptr %agg_flags, align 1
  %b_cb_registered.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 5
  %255 = ptrtoint ptr %b_cb_registered.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %b_cb_registered.i, align 2, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.i = icmp eq i8 %256, 0
  br i1 %tobool.not.i, label %if.end183.if.end230_crit_edge, label %do.body.i

if.end183.if.end230_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

do.body.i:                                        ; preds = %if.end183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  call void @arm_heavy_mb() #9
  %257 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %243, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 0) #9, !srcloc !297
  %ai_err_packet_too_big.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 11
  %259 = ptrtoint ptr %ai_err_packet_too_big.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ai_err_packet_too_big.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %260)
  %261 = icmp ult i32 %260, 3
  %switch.idx.cast = trunc i32 %260 to i8
  %retval.0.i.i528 = select i1 %261, i8 %switch.idx.cast, i8 1
  %ai_err_no_buf.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 12
  %262 = ptrtoint ptr %ai_err_no_buf.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %ai_err_no_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %263)
  %264 = icmp ult i32 %263, 3
  %switch.idx.cast566 = trunc i32 %263 to i8
  %switch.idx.mult = shl i8 %switch.idx.cast566, 2
  %retval.0.i56.i = select i1 %264, i8 %switch.idx.mult, i8 4
  %or18.i = or i8 %retval.0.i56.i, %retval.0.i.i528
  %conn_type1.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 1
  %265 = ptrtoint ptr %conn_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %conn_type1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i.i) #9
  %267 = ptrtoint ptr %p_ent.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr null, ptr %p_ent.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i.i) #9
  %268 = getelementptr inbounds i8, ptr %init_data.i.i, i32 4
  %269 = call ptr @memset(ptr %268, i32 0, i32 12)
  %270 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %cid, align 4
  %272 = ptrtoint ptr %init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %init_data.i.i, align 4
  %hw_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17
  %opaque_fid.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17, i32 10
  %273 = ptrtoint ptr %opaque_fid.i.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %opaque_fid.i.i, align 4
  %275 = ptrtoint ptr %268 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %274, ptr %268, align 4
  %comp_mode.i.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i.i, i32 0, i32 2
  %276 = ptrtoint ptr %comp_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 2, ptr %comp_mode.i.i, align 4
  %call.i.i529 = call i32 @qed_sp_init_request(ptr noundef %cxt, ptr noundef nonnull %p_ent.i.i, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %init_data.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i529)
  %tobool.not.i.i530 = icmp eq i32 %call.i.i529, 0
  br i1 %tobool.not.i.i530, label %if.end.i.i532, label %qed_sp_ll2_rx_queue_start.exit.thread.i

qed_sp_ll2_rx_queue_start.exit.thread.i:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i.i) #9
  br label %out

if.end.i.i532:                                    ; preds = %do.body.i
  %277 = ptrtoint ptr %p_ent.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %p_ent.i.i, align 4
  %ramrod.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3
  %279 = call ptr @memset(ptr %ramrod.i.i, i32 0, i32 40)
  %call4.i.i = call zeroext i16 @qed_int_get_sp_sb_id(ptr noundef %cxt) #9
  %280 = call i16 @llvm.bswap.i16(i16 %call4.i.i) #9
  %sb_id.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %281 = ptrtoint ptr %sb_id.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %280, ptr %sb_id.i.i, align 2
  %rx_sb_index.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 3
  %282 = ptrtoint ptr %rx_sb_index.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %rx_sb_index.i.i, align 4
  %sb_index.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %284 = ptrtoint ptr %sb_index.i.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %sb_index.i.i, align 4
  %complete_event_flg.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 6
  %285 = ptrtoint ptr %complete_event_flg.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 1, ptr %complete_event_flg.i.i, align 2
  %mtu.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 2
  %286 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %mtu.i.i, align 4
  %288 = call i16 @llvm.bswap.i16(i16 %287) #9
  %mtu6.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1
  %289 = ptrtoint ptr %mtu6.i.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %mtu6.i.i, align 4
  %p_phys_addr.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 1, i32 17
  %hi.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %290 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %hi.i.i, align 4
  %291 = ptrtoint ptr %p_phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %p_phys_addr.i.i, align 4
  %293 = call i32 @llvm.bswap.i32(i32 %292) #9
  %294 = ptrtoint ptr %ramrod.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %ramrod.i.i, align 4
  %page_cnt.i.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 5
  %295 = ptrtoint ptr %page_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %page_cnt.i.i.i, align 4
  %conv.i.i531 = trunc i32 %296 to i16
  %297 = call i16 @llvm.bswap.i16(i16 %conv.i.i531) #9
  %num_of_pbl_pages.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %298 = ptrtoint ptr %num_of_pbl_pages.i.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %297, ptr %num_of_pbl_pages.i.i, align 4
  %table_phys.i.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 2, i32 15, i32 1
  %cqe_pbl_addr.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %hi17.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %299 = ptrtoint ptr %hi17.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %hi17.i.i, align 4
  %300 = ptrtoint ptr %table_phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %table_phys.i.i.i, align 4
  %302 = call i32 @llvm.bswap.i32(i32 %301) #9
  %303 = ptrtoint ptr %cqe_pbl_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %cqe_pbl_addr.i.i, align 4
  %rx_drop_ttl0_flg.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 5
  %304 = ptrtoint ptr %rx_drop_ttl0_flg.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %rx_drop_ttl0_flg.i.i, align 2
  %drop_ttl0_flg.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 7
  %306 = ptrtoint ptr %drop_ttl0_flg.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %drop_ttl0_flg.i.i, align 1
  %rx_vlan_removal_en.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 6
  %307 = ptrtoint ptr %rx_vlan_removal_en.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %rx_vlan_removal_en.i.i, align 1
  %inner_vlan_stripping_en.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 9
  %309 = ptrtoint ptr %inner_vlan_stripping_en.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %inner_vlan_stripping_en.i.i, align 2
  %310 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cxt, align 8
  %mf_bits.i.i = getelementptr inbounds %struct.qed_dev, ptr %311, i32 0, i32 15
  %312 = ptrtoint ptr %mf_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load volatile i32, ptr %mf_bits.i.i, align 4
  %314 = and i32 %313, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool28.not.i.i = icmp eq i32 %314, 0
  br i1 %tobool28.not.i.i, label %if.end.i.i532.if.end33.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i532.if.end33.i.i_crit_edge:             ; preds = %if.end.i.i532
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i532
  %315 = ptrtoint ptr %conn_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %conn_type1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp.i.i533 = icmp eq i32 %316, 0
  br i1 %cmp.i.i533, label %if.then32.i.i, label %land.lhs.true.i.i.if.end33.i.i_crit_edge

land.lhs.true.i.i.if.end33.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %report_outer_vlan.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 10
  %317 = ptrtoint ptr %report_outer_vlan.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 1, ptr %report_outer_vlan.i.i, align 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then32.i.i, %land.lhs.true.i.i.if.end33.i.i_crit_edge, %if.end.i.i532.if.end33.i.i_crit_edge
  %318 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %queue_id, align 1
  %queue_id34.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %320 = ptrtoint ptr %queue_id34.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %queue_id34.i.i, align 4
  %main_func_queue.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 9
  %321 = ptrtoint ptr %main_func_queue.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %main_func_queue.i.i, align 1, !range !290
  %main_func_queue38.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 12
  %323 = ptrtoint ptr %main_func_queue38.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %322, ptr %main_func_queue38.i.i, align 1
  %324 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cxt, align 8
  %mf_bits40.i.i = getelementptr inbounds %struct.qed_dev, ptr %325, i32 0, i32 15
  %326 = ptrtoint ptr %mf_bits40.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load volatile i32, ptr %mf_bits40.i.i, align 4
  %328 = and i32 %327, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool42.not.i.i = icmp eq i32 %328, 0
  br i1 %tobool42.not.i.i, label %if.end33.i.i.if.else.i.i534_crit_edge, label %land.lhs.true43.i.i

if.end33.i.i.if.else.i.i534_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i534

land.lhs.true43.i.i:                              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool46.not.i.i = icmp eq i8 %322, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %266)
  %cmp48.not.i.i = icmp eq i32 %266, 5
  %or.cond.i.i = select i1 %tobool46.not.i.i, i1 true, i1 %cmp48.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %266)
  %cmp51.not.i.i = icmp eq i32 %266, 6
  %or.cond114.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp51.not.i.i
  br i1 %or.cond114.i.i, label %land.lhs.true43.i.i.if.else.i.i534_crit_edge, label %land.lhs.true53.i.i

land.lhs.true43.i.i.if.else.i.i534_crit_edge:     ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i534

land.lhs.true53.i.i:                              ; preds = %land.lhs.true43.i.i
  %329 = ptrtoint ptr %hw_info.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %hw_info.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %330)
  %cmp55.i.i = icmp eq i32 %330, 3
  br i1 %cmp55.i.i, label %land.lhs.true53.i.i.if.else.i.i534_crit_edge, label %land.lhs.true53.i.i.qed_sp_ll2_rx_queue_start.exit.i_crit_edge

land.lhs.true53.i.i.qed_sp_ll2_rx_queue_start.exit.i_crit_edge: ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_sp_ll2_rx_queue_start.exit.i

land.lhs.true53.i.i.if.else.i.i534_crit_edge:     ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i534

if.else.i.i534:                                   ; preds = %land.lhs.true53.i.i.if.else.i.i534_crit_edge, %land.lhs.true43.i.i.if.else.i.i534_crit_edge, %if.end33.i.i.if.else.i.i534_crit_edge
  br label %qed_sp_ll2_rx_queue_start.exit.i

qed_sp_ll2_rx_queue_start.exit.i:                 ; preds = %if.else.i.i534, %land.lhs.true53.i.i.qed_sp_ll2_rx_queue_start.exit.i_crit_edge
  %.sink118.i.i = phi i8 [ 0, %if.else.i.i534 ], [ 1, %land.lhs.true53.i.i.qed_sp_ll2_rx_queue_start.exit.i_crit_edge ]
  %mf_si_bcast_accept_all58.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 13
  %331 = ptrtoint ptr %mf_si_bcast_accept_all58.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %.sink118.i.i, ptr %mf_si_bcast_accept_all58.i.i, align 2
  %mf_si_mcast_accept_all59.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 14
  %332 = ptrtoint ptr %mf_si_mcast_accept_all59.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %.sink118.i.i, ptr %mf_si_mcast_accept_all59.i.i, align 1
  %action_on_error61.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %333 = ptrtoint ptr %action_on_error61.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %or18.i, ptr %action_on_error61.i.i, align 4
  %gsi_enable.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 14
  %334 = ptrtoint ptr %gsi_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %gsi_enable.i.i, align 1
  %gsi_offload_flag.i.i = getelementptr inbounds %struct.core_rx_start_ramrod_data, ptr %ramrod.i.i, i32 0, i32 16
  %336 = ptrtoint ptr %gsi_offload_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %gsi_offload_flag.i.i, align 1
  %zero_prod_flg.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %278, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %337 = ptrtoint ptr %zero_prod_flg.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 1, ptr %zero_prod_flg.i.i, align 4
  %338 = ptrtoint ptr %p_ent.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %p_ent.i.i, align 4
  %call63.i.i = call i32 @qed_spq_post(ptr noundef %cxt, ptr noundef %339, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool23.not.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %qed_sp_ll2_rx_queue_start.exit.i.out_crit_edge

qed_sp_ll2_rx_queue_start.exit.i.out_crit_edge:   ; preds = %qed_sp_ll2_rx_queue_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end25.i:                                       ; preds = %qed_sp_ll2_rx_queue_start.exit.i
  %ctx_based.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 4
  %340 = ptrtoint ptr %ctx_based.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %ctx_based.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool27.not.i = icmp eq i8 %341, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end230_crit_edge, label %qed_ll2_establish_connection_rx.exit

if.end25.i.if.end230_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

qed_ll2_establish_connection_rx.exit:             ; preds = %if.end25.i
  %342 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %cxt, align 8
  %344 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %243, align 4
  %db_data.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 10, i32 12
  %call32.i = call i32 @qed_db_recovery_add(ptr noundef %343, ptr noundef %345, ptr noundef %db_data.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool228.not = icmp eq i32 %call32.i, 0
  br i1 %tobool228.not, label %qed_ll2_establish_connection_rx.exit.if.end230_crit_edge, label %qed_ll2_establish_connection_rx.exit.out_crit_edge

qed_ll2_establish_connection_rx.exit.out_crit_edge: ; preds = %qed_ll2_establish_connection_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

qed_ll2_establish_connection_rx.exit.if.end230_crit_edge: ; preds = %qed_ll2_establish_connection_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.end230:                                        ; preds = %qed_ll2_establish_connection_rx.exit.if.end230_crit_edge, %if.end25.i.if.end230_crit_edge, %if.end183.if.end230_crit_edge
  %conn_type1.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 1
  %346 = ptrtoint ptr %conn_type1.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %conn_type1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #9
  %348 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #9
  %b_cb_registered.i536 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 3
  %349 = ptrtoint ptr %b_cb_registered.i536 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %b_cb_registered.i536, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %tobool.not.i537 = icmp eq i8 %350, 0
  br i1 %tobool.not.i537, label %qed_sp_ll2_tx_queue_start.exit.thread557, label %if.end.i539

qed_sp_ll2_tx_queue_start.exit.thread557:         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #9
  br label %if.end234

if.end.i539:                                      ; preds = %if.end230
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %347)
  %cmp.i538 = icmp eq i32 %347, 3
  br i1 %cmp.i538, label %if.end.i539.if.end9.i_crit_edge, label %if.else.i540, !prof !292

if.end.i539.if.end9.i_crit_edge:                  ; preds = %if.end.i539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.else.i540:                                     ; preds = %if.end.i539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i540, %if.end.i539.if.end9.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.else.i540 ], [ 0, %if.end.i539.if.end9.i_crit_edge ]
  %351 = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 8
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %.sink.i, ptr %351, align 4
  %353 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %354 = call ptr @memset(ptr %353, i32 0, i32 12)
  %355 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %cid, align 4
  %357 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %init_data.i, align 4
  %hw_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17
  %opaque_fid.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17, i32 10
  %358 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %opaque_fid.i, align 4
  %360 = ptrtoint ptr %353 to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %359, ptr %353, align 4
  %comp_mode.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %361 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 2, ptr %comp_mode.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cxt, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 2, i8 noundef zeroext 3, ptr noundef nonnull %init_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge

if.end9.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_sp_ll2_tx_queue_start.exit.thread

if.end14.i:                                       ; preds = %if.end9.i
  %362 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %p_ent.i, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3
  %call15.i = call zeroext i16 @qed_int_get_sp_sb_id(ptr noundef %cxt) #9
  %364 = call i16 @llvm.bswap.i16(i16 %call15.i) #9
  %sb_id.i = getelementptr inbounds %struct.core_tx_start_ramrod_data, ptr %ramrod.i, i32 0, i32 2
  %365 = ptrtoint ptr %sb_id.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %364, ptr %sb_id.i, align 2
  %tx_sb_index.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 2
  %366 = ptrtoint ptr %tx_sb_index.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %tx_sb_index.i, align 4
  %sb_index.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %368 = ptrtoint ptr %sb_index.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %367, ptr %sb_index.i, align 4
  %mtu.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 2
  %369 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %mtu.i, align 4
  %371 = call i16 @llvm.bswap.i16(i16 %370) #9
  %mtu17.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %372 = ptrtoint ptr %mtu17.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %371, ptr %mtu17.i, align 4
  %373 = ptrtoint ptr %351 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %351, align 4
  %stats_en.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 9
  %375 = ptrtoint ptr %stats_en.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %374, ptr %stats_en.i, align 1
  %376 = ptrtoint ptr %tx_stats_id to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %tx_stats_id, align 2
  %stats_id.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 10
  %378 = ptrtoint ptr %stats_id.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %stats_id.i, align 2
  %table_phys.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 15, i32 1
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %379 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %hi.i, align 4
  %380 = ptrtoint ptr %table_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %table_phys.i.i, align 4
  %382 = call i32 @llvm.bswap.i32(i32 %381) #9
  %383 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %ramrod.i, align 4
  %page_cnt.i.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 11, i32 1, i32 5
  %384 = ptrtoint ptr %page_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %page_cnt.i.i, align 4
  %conv.i541 = trunc i32 %385 to i16
  %386 = call i16 @llvm.bswap.i16(i16 %conv.i541) #9
  %pbl_size26.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 1
  %387 = ptrtoint ptr %pbl_size26.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %386, ptr %pbl_size26.i, align 4
  %tx_tc.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 9
  %388 = ptrtoint ptr %tx_tc.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %tx_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %389)
  %switch.selectcmp.i = icmp eq i8 %389, 9
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8, i32 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %389)
  %switch.selectcmp142.i = icmp eq i8 %389, 8
  %switch.select143.i = select i1 %switch.selectcmp142.i, i32 4, i32 %switch.select.i
  %call32.i542 = call zeroext i16 @qed_get_cm_pq_idx(ptr noundef %cxt, i32 noundef %switch.select143.i) #9
  %390 = call i16 @llvm.bswap.i16(i16 %call32.i542) #9
  %qm_pq_id.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %391 = ptrtoint ptr %qm_pq_id.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 %390, ptr %qm_pq_id.i, align 2
  %392 = zext i32 %347 to i64
  call void @__sanitizer_cov_trace_switch(i64 %392, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %347, label %sw.default54.i [
    i32 0, label %sw.bb33.i
    i32 1, label %sw.bb35.i
    i32 5, label %sw.bb37.i
    i32 6, label %sw.bb39.i
    i32 3, label %sw.bb41.i
  ]

sw.bb33.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %conn_type34.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  %393 = ptrtoint ptr %conn_type34.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 1, ptr %conn_type34.i, align 1
  br label %sw.epilog77.i

sw.bb35.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %conn_type36.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  %394 = ptrtoint ptr %conn_type36.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 0, ptr %conn_type36.i, align 1
  br label %sw.epilog77.i

sw.bb37.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %conn_type38.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  %395 = ptrtoint ptr %conn_type38.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 2, ptr %conn_type38.i, align 1
  br label %sw.epilog77.i

sw.bb39.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %conn_type40.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  %396 = ptrtoint ptr %conn_type40.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 5, ptr %conn_type40.i, align 1
  br label %sw.epilog77.i

sw.bb41.i:                                        ; preds = %if.end14.i
  %397 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %hw_info.i, align 8
  %399 = and i32 %398, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %399)
  %switch.i = icmp eq i32 %399, 2
  %conn_type50.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  br i1 %switch.i, label %if.then49.i, label %if.else51.i

if.then49.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  %400 = ptrtoint ptr %conn_type50.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 0, ptr %conn_type50.i, align 1
  br label %sw.epilog77.i

if.else51.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  %401 = ptrtoint ptr %conn_type50.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 5, ptr %conn_type50.i, align 1
  br label %sw.epilog77.i

sw.default54.i:                                   ; preds = %if.end14.i
  %conn_type55.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  %402 = ptrtoint ptr %conn_type55.i to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 4, ptr %conn_type55.i, align 1
  %403 = ptrtoint ptr %dp_level102 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %dp_level102, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %404)
  %cmp58.i = icmp ult i8 %404, 3
  br i1 %cmp58.i, label %do.end69.i, label %sw.default54.i.sw.epilog77.i_crit_edge, !prof !291

sw.default54.i.sw.epilog77.i_crit_edge:           ; preds = %sw.default54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog77.i

do.end69.i:                                       ; preds = %sw.default54.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 1101, ptr noundef nonnull %name.i, i32 noundef %347) #12
  br label %sw.epilog77.i

sw.epilog77.i:                                    ; preds = %do.end69.i, %sw.default54.i.sw.epilog77.i_crit_edge, %if.else51.i, %if.then49.i, %sw.bb39.i, %sw.bb37.i, %sw.bb35.i, %sw.bb33.i
  %gsi_enable.i = getelementptr %struct.qed_ll2_info, ptr %6, i32 %conv.i.i, i32 1, i32 14
  %405 = ptrtoint ptr %gsi_enable.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %gsi_enable.i, align 1
  %gsi_offload_flag.i = getelementptr inbounds %struct.qed_spq_entry, ptr %363, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %407 = ptrtoint ptr %gsi_offload_flag.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %406, ptr %gsi_offload_flag.i, align 4
  %408 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %p_ent.i, align 4
  %call79.i = call i32 @qed_spq_post(ptr noundef %cxt, ptr noundef %409, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %qed_sp_ll2_tx_queue_start.exit, label %sw.epilog77.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge

sw.epilog77.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge: ; preds = %sw.epilog77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_sp_ll2_tx_queue_start.exit.thread

qed_sp_ll2_tx_queue_start.exit.thread:            ; preds = %sw.epilog77.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge, %if.end9.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge
  %retval.0.i543.ph = phi i32 [ %call79.i, %sw.epilog77.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge ], [ %call.i, %if.end9.i.qed_sp_ll2_tx_queue_start.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #9
  br label %out

qed_sp_ll2_tx_queue_start.exit:                   ; preds = %sw.epilog77.i
  %410 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %cxt, align 8
  %412 = ptrtoint ptr %doorbell_addr to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %doorbell_addr, align 4
  %call83.i = call i32 @qed_db_recovery_add(ptr noundef %411, ptr noundef %413, ptr noundef %db_msg, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool232.not = icmp eq i32 %call83.i, 0
  br i1 %tobool232.not, label %qed_sp_ll2_tx_queue_start.exit.if.end234_crit_edge, label %qed_sp_ll2_tx_queue_start.exit.out_crit_edge

qed_sp_ll2_tx_queue_start.exit.out_crit_edge:     ; preds = %qed_sp_ll2_tx_queue_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

qed_sp_ll2_tx_queue_start.exit.if.end234_crit_edge: ; preds = %qed_sp_ll2_tx_queue_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

if.end234:                                        ; preds = %qed_sp_ll2_tx_queue_start.exit.if.end234_crit_edge, %qed_sp_ll2_tx_queue_start.exit.thread557
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17
  %414 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %hw_info, align 8
  %.off = add i32 %415, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.end234.if.end251_crit_edge, label %if.then250

if.end234.if.end251_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251

if.then250:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  call void @qed_wr(ptr noundef %cxt, ptr noundef nonnull %call, i32 noundef 2034028, i32 noundef 1) #9
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %if.end234.if.end251_crit_edge
  call fastcc void @qed_ll2_establish_connection_ooo(ptr noundef %cxt, ptr noundef %arrayidx.i.i)
  %416 = ptrtoint ptr %conn_type1.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %conn_type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %417)
  %cmp253 = icmp eq i32 %417, 0
  br i1 %cmp253, label %if.then255, label %if.end251.out_crit_edge

if.end251.out_crit_edge:                          ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then255:                                       ; preds = %if.end251
  %418 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %cxt, align 8
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %419, i32 0, i32 15
  %420 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load volatile i32, ptr %mf_bits, align 4
  %422 = and i32 %421, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %tobool258.not = icmp eq i32 %422, 0
  br i1 %tobool258.not, label %if.then259, label %if.then255.if.end262_crit_edge

if.then255.if.end262_crit_edge:                   ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262

if.then259:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #11
  %call261 = call i32 @qed_llh_add_protocol_filter(ptr noundef %419, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext -30458, i16 noundef zeroext 0) #9
  br label %if.end262

if.end262:                                        ; preds = %if.then259, %if.then255.if.end262_crit_edge
  %423 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %cxt, align 8
  %call264 = call i32 @qed_llh_add_protocol_filter(ptr noundef %424, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext -30444, i16 noundef zeroext 0) #9
  br label %out

out:                                              ; preds = %if.end262, %if.end251.out_crit_edge, %qed_sp_ll2_tx_queue_start.exit.out_crit_edge, %qed_sp_ll2_tx_queue_start.exit.thread, %qed_ll2_establish_connection_rx.exit.out_crit_edge, %qed_sp_ll2_rx_queue_start.exit.i.out_crit_edge, %qed_sp_ll2_rx_queue_start.exit.thread.i, %do.end46, %do.body37.out_crit_edge, %for.end27.out_crit_edge, %if.end4.i.i.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call29, %for.end27.out_crit_edge ], [ %call34, %do.end46 ], [ %call34, %do.body37.out_crit_edge ], [ %call32.i, %qed_ll2_establish_connection_rx.exit.out_crit_edge ], [ %call83.i, %qed_sp_ll2_tx_queue_start.exit.out_crit_edge ], [ 0, %if.end262 ], [ 0, %if.end251.out_crit_edge ], [ %retval.0.i543.ph, %qed_sp_ll2_tx_queue_start.exit.thread ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end.i.i.out_crit_edge ], [ -22, %if.end4.i.i.out_crit_edge ], [ %call.i.i529, %qed_sp_ll2_rx_queue_start.exit.thread.i ], [ %call63.i.i, %qed_sp_ll2_rx_queue_start.exit.i.out_crit_edge ]
  call void @qed_ptt_release(ptr noundef %cxt, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cxt_info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_acquire_cid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_cid_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_ll2_establish_connection_ooo(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_ll2_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_type = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %p_ooo_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %2 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ooo_info, align 4
  tail call void @qed_ooo_release_all_isles(ptr noundef %p_hwfn, ptr noundef %3) #9
  %my_id.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %4 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_ooo_info, align 4
  %call.i = tail call ptr @qed_ooo_get_free_buffer(ptr noundef %p_hwfn, ptr noundef %5) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.i.return_crit_edge, label %while.body.i

while.cond.i.return_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

while.body.i:                                     ; preds = %while.cond.i
  %6 = ptrtoint ptr %my_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %my_id.i, align 4
  %rx_buffer_phys_addr.i = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %rx_buffer_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buffer_phys_addr.i, align 4
  %call1.i = tail call i32 @qed_ll2_post_rx_buffer(ptr noundef %p_hwfn, i8 noundef zeroext %7, i32 noundef %9, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i8 noundef zeroext 1) #9
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.then.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_ooo_info, align 4
  tail call void @qed_ooo_put_free_buffer(ptr noundef %p_hwfn, ptr noundef %11, ptr noundef nonnull %call.i) #9
  br label %return

return:                                           ; preds = %if.then.i, %while.cond.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_llh_add_protocol_filter(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_post_rx_buffer(ptr nocapture noundef readonly %cxt, i8 noundef zeroext %connection_handle, i32 noundef %addr, i16 noundef zeroext %buf_len, ptr noundef %cookie, i8 noundef zeroext %notify_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp.i.i = icmp ugt i8 %connection_handle, 3
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %p_ll2_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i
  %b_active.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 6
  %2 = ptrtoint ptr %b_active.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_active.i.i, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not.i.i = icmp eq i8 %3, 0
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = select i1 %tobool11.not.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end4.i.i.cleanup_crit_edge, label %if.end

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %rx_queue = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10
  %set_prod_addr = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 11
  %4 = ptrtoint ptr %set_prod_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_prod_addr, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_queue) #9
  %free_descq = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 8
  %6 = ptrtoint ptr %free_descq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %free_descq, align 4
  %cmp.i = icmp eq ptr %7, %free_descq
  %tobool15.not = icmp eq ptr %7, null
  %or.cond120 = or i1 %cmp.i, %tobool15.not
  br i1 %or.cond120, label %do.body4.out_notify_crit_edge, label %if.then16

do.body4.out_notify_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_notify

if.then16:                                        ; preds = %do.body4
  %rxq_chain = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1
  %capacity.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1, i32 4
  %8 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capacity.i, align 4
  %u.i.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1, i32 3
  %10 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %u.i.i.i, align 4
  %conv.i.i80 = zext i16 %11 to i32
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp.i.i81 = icmp ult i16 %11, %13
  %add.i.i = or i32 %conv.i.i80, 65536
  %spec.select.i.i82 = select i1 %cmp.i.i81, i32 %add.i.i, i32 %conv.i.i80
  %14 = trunc i32 %spec.select.i.i82 to i16
  %conv5.i.i = sub i16 %14, %13
  %mode.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1, i32 6
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.i.i = icmp eq i32 %16, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.then16.qed_chain_get_elem_left.exit_crit_edge

if.then16.qed_chain_get_elem_left.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_get_elem_left.exit

if.then8.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %elem_per_page3.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1, i32 7
  %17 = ptrtoint ptr %elem_per_page3.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %elem_per_page3.i.i, align 4
  %conv9.i.i = zext i16 %18 to i32
  %div.i.i = udiv i32 %spec.select.i.i82, %conv9.i.i
  %19 = udiv i16 %13, %18
  %20 = trunc i32 %div.i.i to i16
  %conv13.neg.i.i = sub i16 %conv5.i.i, %20
  %sub16.i.i = add i16 %conv13.neg.i.i, %19
  br label %qed_chain_get_elem_left.exit

qed_chain_get_elem_left.exit:                     ; preds = %if.then8.i.i, %if.then16.qed_chain_get_elem_left.exit_crit_edge
  %used.0.i.i = phi i16 [ %sub16.i.i, %if.then8.i.i ], [ %conv5.i.i, %if.then16.qed_chain_get_elem_left.exit_crit_edge ]
  %21 = trunc i32 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %used.0.i.i, i16 %21)
  %tobool19.not = icmp eq i16 %used.0.i.i, %21
  br i1 %tobool19.not, label %qed_chain_get_elem_left.exit.out_notify_crit_edge, label %land.lhs.true

qed_chain_get_elem_left.exit.out_notify_crit_edge: ; preds = %qed_chain_get_elem_left.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_notify

land.lhs.true:                                    ; preds = %qed_chain_get_elem_left.exit
  %rcq_chain = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2
  %capacity.i83 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2, i32 4
  %22 = ptrtoint ptr %capacity.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capacity.i83, align 4
  %u.i.i.i84 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2, i32 3
  %24 = ptrtoint ptr %u.i.i.i84 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %u.i.i.i84, align 4
  %conv.i.i85 = zext i16 %25 to i32
  %cons_idx.i.i.i86 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i84, i32 0, i32 1
  %26 = ptrtoint ptr %cons_idx.i.i.i86 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cons_idx.i.i.i86, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.i.i87 = icmp ult i16 %25, %27
  %add.i.i88 = or i32 %conv.i.i85, 65536
  %spec.select.i.i89 = select i1 %cmp.i.i87, i32 %add.i.i88, i32 %conv.i.i85
  %28 = trunc i32 %spec.select.i.i89 to i16
  %conv5.i.i90 = sub i16 %28, %27
  %mode.i.i91 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2, i32 6
  %29 = ptrtoint ptr %mode.i.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp6.i.i92 = icmp eq i32 %30, 0
  br i1 %cmp6.i.i92, label %if.then8.i.i98, label %land.lhs.true.qed_chain_get_elem_left.exit101_crit_edge

land.lhs.true.qed_chain_get_elem_left.exit101_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_get_elem_left.exit101

if.then8.i.i98:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %elem_per_page3.i.i93 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2, i32 7
  %31 = ptrtoint ptr %elem_per_page3.i.i93 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %elem_per_page3.i.i93, align 4
  %conv9.i.i94 = zext i16 %32 to i32
  %div.i.i95 = udiv i32 %spec.select.i.i89, %conv9.i.i94
  %33 = udiv i16 %27, %32
  %34 = trunc i32 %div.i.i95 to i16
  %conv13.neg.i.i96 = sub i16 %conv5.i.i90, %34
  %sub16.i.i97 = add i16 %conv13.neg.i.i96, %33
  br label %qed_chain_get_elem_left.exit101

qed_chain_get_elem_left.exit101:                  ; preds = %if.then8.i.i98, %land.lhs.true.qed_chain_get_elem_left.exit101_crit_edge
  %used.0.i.i99 = phi i16 [ %sub16.i.i97, %if.then8.i.i98 ], [ %conv5.i.i90, %land.lhs.true.qed_chain_get_elem_left.exit101_crit_edge ]
  %35 = trunc i32 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %used.0.i.i99, i16 %35)
  %tobool22.not = icmp eq i16 %used.0.i.i99, %35
  br i1 %tobool22.not, label %qed_chain_get_elem_left.exit101.out_notify_crit_edge, label %if.end29

qed_chain_get_elem_left.exit101.out_notify_crit_edge: ; preds = %qed_chain_get_elem_left.exit101
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_notify

if.end29:                                         ; preds = %qed_chain_get_elem_left.exit101
  %call25 = tail call fastcc ptr @qed_chain_produce(ptr noundef %rxq_chain)
  %call27 = tail call fastcc ptr @qed_chain_produce(ptr noundef %rcq_chain)
  %tobool31.not = icmp eq ptr %call25, null
  br i1 %tobool31.not, label %if.end29.out_notify_crit_edge, label %do.body34

if.end29.out_notify_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_notify

do.body34:                                        ; preds = %if.end29
  %hi = getelementptr inbounds %struct.regpair, ptr %call25, i32 0, i32 1
  %36 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hi, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %38 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %call25, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %buf_len)
  %buff_length = getelementptr inbounds %struct.core_rx_bd_with_buff_len, ptr %call25, i32 0, i32 1
  %40 = ptrtoint ptr %buff_length to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %buff_length, align 4
  %rx_buf_addr = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %7, i32 0, i32 2
  %41 = ptrtoint ptr %rx_buf_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %addr, ptr %rx_buf_addr, align 4
  %cookie40 = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %7, i32 0, i32 4
  %42 = ptrtoint ptr %cookie40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cookie, ptr %cookie40, align 4
  %rxq_bd = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %7, i32 0, i32 1
  %43 = ptrtoint ptr %rxq_bd to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call25, ptr %rxq_bd, align 4
  %buf_length = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %7, i32 0, i32 3
  %44 = ptrtoint ptr %buf_length to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %buf_len, ptr %buf_length, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %7) #9
  br i1 %call.i.i, label %if.end.i.i102, label %do.body34.list_del.exit_crit_edge

do.body34.list_del.exit_crit_edge:                ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i102:                                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i102, %do.body34.list_del.exit_crit_edge
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %notify_fw)
  %tobool41.not = icmp eq i8 %notify_fw, 0
  br i1 %tobool41.not, label %if.then42, label %list_del.exit.out_notify_crit_edge

list_del.exit.out_notify_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_notify

if.then42:                                        ; preds = %list_del.exit
  %posting_descq = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 9
  %prev.i103 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 9, i32 1
  %53 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i103, align 4
  %call.i.i104 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %7, ptr noundef %54, ptr noundef %posting_descq) #9
  br i1 %call.i.i104, label %if.end.i.i105, label %if.then42.out_crit_edge

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i105:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %7, ptr %prev.i103, align 4
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %posting_descq, ptr %7, align 4
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %7, ptr %54, align 4
  br label %out

out_notify:                                       ; preds = %list_del.exit.out_notify_crit_edge, %if.end29.out_notify_crit_edge, %qed_chain_get_elem_left.exit101.out_notify_crit_edge, %qed_chain_get_elem_left.exit.out_notify_crit_edge, %do.body4.out_notify_crit_edge
  %p_curp.1 = phi ptr [ %7, %list_del.exit.out_notify_crit_edge ], [ null, %if.end29.out_notify_crit_edge ], [ null, %qed_chain_get_elem_left.exit101.out_notify_crit_edge ], [ null, %qed_chain_get_elem_left.exit.out_notify_crit_edge ], [ null, %do.body4.out_notify_crit_edge ]
  %rc.0 = phi i32 [ 0, %list_del.exit.out_notify_crit_edge ], [ -16, %if.end29.out_notify_crit_edge ], [ -16, %qed_chain_get_elem_left.exit101.out_notify_crit_edge ], [ -16, %qed_chain_get_elem_left.exit.out_notify_crit_edge ], [ -16, %do.body4.out_notify_crit_edge ]
  %posting_descq.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 9
  %59 = ptrtoint ptr %posting_descq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %posting_descq.i, align 4
  %cmp.i.not5.i = icmp eq ptr %60, %posting_descq.i
  br i1 %cmp.i.not5.i, label %while.end.thread.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %out_notify
  %active_descq.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 7
  %prev.i2.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 7, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %list_move_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %61 = phi ptr [ %60, %while.body.lr.ph.i ], [ %75, %list_move_tail.exit.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %61) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.__list_del_entry.exit.i.i_crit_edge

while.body.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %while.body.i.__list_del_entry.exit.i.i_crit_edge
  %68 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %61, ptr noundef %69, ptr noundef %active_descq.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %61, ptr %prev.i2.i.i, align 4
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %active_descq.i, ptr %61, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %61, ptr %69, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %74 = ptrtoint ptr %posting_descq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %posting_descq.i, align 4
  %cmp.i.not.i = icmp eq ptr %75, %posting_descq.i
  br i1 %cmp.i.not.i, label %while.end.i, label %list_move_tail.exit.i.while.body.i_crit_edge

list_move_tail.exit.i.while.body.i_crit_edge:     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %list_move_tail.exit.i
  %tobool2.not.i = icmp eq ptr %p_curp.1, null
  br i1 %tobool2.not.i, label %while.end.i.if.end7.i_crit_edge, label %while.end.i.if.then.i_crit_edge

while.end.i.if.then.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

while.end.i.if.end7.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

while.end.thread.i:                               ; preds = %out_notify
  %tobool2.not6.i = icmp eq ptr %p_curp.1, null
  br i1 %tobool2.not6.i, label %while.end.thread.i.out_crit_edge, label %while.end.thread.i.if.then.i_crit_edge

while.end.thread.i.if.then.i_crit_edge:           ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

while.end.thread.i.out_crit_edge:                 ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %while.end.thread.i.if.then.i_crit_edge, %while.end.i.if.then.i_crit_edge
  %active_descq4.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 7
  %prev.i.i106 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 7, i32 1
  %76 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i106, align 4
  %call.i.i1.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %p_curp.1, ptr noundef %77, ptr noundef %active_descq4.i) #9
  br i1 %call.i.i1.i, label %if.end.i.i2.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i.i2.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %p_curp.1, ptr %prev.i.i106, align 4
  %79 = ptrtoint ptr %p_curp.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %active_descq4.i, ptr %p_curp.1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p_curp.1, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %p_curp.1, ptr %77, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i.i2.i, %if.then.i.if.end7.i_crit_edge, %while.end.i.if.end7.i_crit_edge
  %u.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 1, i32 3
  %82 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %u.i.i, align 4
  %u.i3.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 2, i32 3
  %84 = ptrtoint ptr %u.i3.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %u.i3.i, align 4
  %ctx_based.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 4
  %86 = ptrtoint ptr %ctx_based.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ctx_based.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool10.not.i = icmp eq i8 %87, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = tail call i16 @llvm.bswap.i16(i16 %83) #9
  %db_data.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 12
  %prod.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 12, i32 3
  %89 = ptrtoint ptr %prod.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %prod.i, align 4
  %90 = tail call i16 @llvm.bswap.i16(i16 %85) #9
  %cqe_prod.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 12, i32 3, i32 1
  %91 = ptrtoint ptr %cqe_prod.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %cqe_prod.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !298
  %92 = ptrtoint ptr %db_data.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %db_data.i, align 4
  %94 = ptrtoint ptr %set_prod_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_prod_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !299
  tail call void @arm_heavy_mb() #9
  %conv.i4.i = trunc i64 %93 to i32
  %96 = tail call i32 @llvm.bswap.i32(i32 %conv.i4.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %96) #9, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  tail call void @arm_heavy_mb() #9
  %shr.i.i = lshr i64 %93, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %97 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %97) #9, !srcloc !297
  br label %out

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  tail call void @arm_heavy_mb() #9
  %98 = zext i16 %83 to i32
  %99 = zext i16 %85 to i32
  %100 = shl nuw i32 %99, 16
  %101 = or i32 %100, %98
  %102 = ptrtoint ptr %set_prod_addr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %set_prod_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #9, !srcloc !297
  br label %out

out:                                              ; preds = %if.else.i, %if.then11.i, %while.end.thread.i.out_crit_edge, %if.end.i.i105, %if.then42.out_crit_edge
  %rc.1 = phi i32 [ 0, %if.then42.out_crit_edge ], [ 0, %if.end.i.i105 ], [ %rc.0, %while.end.thread.i.out_crit_edge ], [ %rc.0, %if.then11.i ], [ %rc.0, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -5, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @qed_chain_produce(ptr noundef %p_chain) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cnt_type = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 13
  %0 = ptrtoint ptr %cnt_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %u = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %elem_per_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %4 = ptrtoint ptr %elem_per_page_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %elem_per_page_mask, align 2
  %and57 = and i16 %5, %3
  %next_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %6 = ptrtoint ptr %next_page_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_page_mask, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57, i16 %7)
  %cmp3 = icmp eq i16 %and57, %7
  br i1 %cmp3, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %9, label %if.then5.if.end_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %sw.bb6.i
    i32 2, label %if.end25.i
  ]

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_chain, align 4
  %next_virt.i = getelementptr inbounds %struct.qed_chain_next, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %next_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_virt.i, align 4
  store ptr %14, ptr %p_chain, align 4
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %15 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %elem_unusable.i, align 2
  %conv.i = zext i8 %16 to i16
  %add.i = add i16 %3, %conv.i
  %17 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i, ptr %u, align 2
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %18 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_virt_addr.i, align 4
  %20 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %p_chain, align 4
  br label %if.end

if.end25.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %c = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %c, align 2
  %inc.i = add i16 %22, 1
  %conv12.i = zext i16 %inc.i to i32
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %23 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %24, %conv12.i
  %spec.store.select.i = select i1 %cmp13.i, i16 0, i16 %inc.i
  %25 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.store.select.i, ptr %c, align 2
  %conv17.i = zext i16 %spec.store.select.i to i32
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %26 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbl.i, align 4
  %arrayidx.i = getelementptr %struct.addr_tbl_entry, ptr %27, i32 %conv17.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %p_chain, align 4
  br label %if.end

if.end:                                           ; preds = %if.end25.i, %sw.bb6.i, %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %u, align 4
  %inc = add i16 %32, 1
  store i16 %inc, ptr %u, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %33 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %u, align 4
  %elem_per_page_mask12 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %35 = ptrtoint ptr %elem_per_page_mask12 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask12, align 2
  %conv13 = zext i16 %36 to i32
  %and14 = and i32 %34, %conv13
  %next_page_mask15 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %37 = ptrtoint ptr %next_page_mask15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_page_mask15, align 2
  %conv16 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv16)
  %cmp17 = icmp eq i32 %and14, %conv16
  br i1 %cmp17, label %if.then19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.else
  %mode.i58 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %39 = ptrtoint ptr %mode.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i58, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %40, label %if.then19.if.end26_crit_edge [
    i32 0, label %if.else.i69
    i32 1, label %sw.bb6.i71
    i32 2, label %if.end25.i90
  ]

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else.i69:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_chain, align 4
  %next_virt.i59 = getelementptr inbounds %struct.qed_chain_next, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %next_virt.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next_virt.i59, align 4
  store ptr %45, ptr %p_chain, align 4
  %elem_unusable.i62 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %46 = ptrtoint ptr %elem_unusable.i62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %elem_unusable.i62, align 2
  %conv4.i67 = zext i8 %47 to i32
  %add5.i68 = add i32 %34, %conv4.i67
  %48 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add5.i68, ptr %u, align 4
  br label %if.end26

sw.bb6.i71:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %p_virt_addr.i70 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %49 = ptrtoint ptr %p_virt_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_virt_addr.i70, align 4
  %51 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %p_chain, align 4
  br label %if.end26

if.end25.i90:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %c23 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %c23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c23, align 4
  %inc19.i82 = add i32 %53, 1
  %page_cnt20.i83 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %54 = ptrtoint ptr %page_cnt20.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_cnt20.i83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82, i32 %55)
  %cmp21.i84 = icmp eq i32 %inc19.i82, %55
  %spec.store.select43.i85 = select i1 %cmp21.i84, i32 0, i32 %inc19.i82
  %56 = ptrtoint ptr %c23 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select43.i85, ptr %c23, align 4
  %pbl.i88 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %57 = ptrtoint ptr %pbl.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pbl.i88, align 4
  %arrayidx.i89 = getelementptr %struct.addr_tbl_entry, ptr %58, i32 %spec.store.select43.i85
  %59 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i89, align 4
  %61 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %p_chain, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25.i90, %sw.bb6.i71, %if.else.i69, %if.then19.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %62 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %u, align 4
  %inc29 = add i32 %63, 1
  store i32 %inc29, ptr %u, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end
  %64 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_chain, align 4
  %elem_size = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 9
  %66 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %elem_size, align 4
  %conv33 = zext i16 %67 to i32
  %add.ptr = getelementptr i8, ptr %65, i32 %conv33
  store ptr %add.ptr, ptr %p_chain, align 4
  ret ptr %65
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_prepare_tx_packet(ptr noundef %cxt, i8 noundef zeroext %connection_handle, ptr nocapture noundef %pkt, i1 noundef zeroext %notify_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp.i.i = icmp ugt i8 %connection_handle, 3
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %p_ll2_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i
  %b_active.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 6
  %2 = ptrtoint ptr %b_active.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_active.i.i, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not.i.i = icmp eq i8 %3, 0
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = select i1 %tobool11.not.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end4.i.i.cleanup_crit_edge, label %if.end, !prof !294

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %tx_queue = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11
  %txq_chain = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 1
  %num_of_bds = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 7
  %4 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_of_bds, align 2
  %tx_max_bds_per_packet = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 1, i32 8
  %6 = ptrtoint ptr %tx_max_bds_per_packet to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_max_bds_per_packet, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp ugt i8 %5, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body14, !prof !291

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue) #9
  %cur_send_packet = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 16
  %8 = ptrtoint ptr %cur_send_packet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_send_packet, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end29, label %do.body14.out_crit_edge, !prof !292

do.body14.out_crit_edge:                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end29:                                         ; preds = %do.body14
  %free_descq = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 6
  %10 = ptrtoint ptr %free_descq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %free_descq, align 4
  %cmp.i.not = icmp eq ptr %11, %free_descq
  br i1 %cmp.i.not, label %if.end29.out_crit_edge, label %if.end43, !prof !292

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end43:                                         ; preds = %if.end29
  %tobool44.not = icmp eq ptr %11, null
  br i1 %tobool44.not, label %if.end43.out_crit_edge, label %land.rhs

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.rhs:                                         ; preds = %if.end43
  %capacity.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 1, i32 4
  %12 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capacity.i, align 4
  %u.i.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 1, i32 3
  %14 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u.i.i.i, align 4
  %conv.i.i98 = zext i16 %15 to i32
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp.i.i99 = icmp ult i16 %15, %17
  %add.i.i = or i32 %conv.i.i98, 65536
  %spec.select.i.i100 = select i1 %cmp.i.i99, i32 %add.i.i, i32 %conv.i.i98
  %18 = trunc i32 %spec.select.i.i100 to i16
  %conv5.i.i = sub i16 %18, %17
  %mode.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 1, i32 6
  %19 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i.i = icmp eq i32 %20, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %land.rhs.qed_chain_get_elem_left.exit_crit_edge

land.rhs.qed_chain_get_elem_left.exit_crit_edge:  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_chain_get_elem_left.exit

if.then8.i.i:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %elem_per_page3.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 1, i32 7
  %21 = ptrtoint ptr %elem_per_page3.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %elem_per_page3.i.i, align 4
  %conv9.i.i = zext i16 %22 to i32
  %div.i.i = udiv i32 %spec.select.i.i100, %conv9.i.i
  %23 = udiv i16 %17, %22
  %24 = trunc i32 %div.i.i to i16
  %conv13.neg.i.i = sub i16 %conv5.i.i, %24
  %sub16.i.i = add i16 %conv13.neg.i.i, %23
  br label %qed_chain_get_elem_left.exit

qed_chain_get_elem_left.exit:                     ; preds = %if.then8.i.i, %land.rhs.qed_chain_get_elem_left.exit_crit_edge
  %used.0.i.i = phi i16 [ %sub16.i.i, %if.then8.i.i ], [ %conv5.i.i, %land.rhs.qed_chain_get_elem_left.exit_crit_edge ]
  %25 = trunc i32 %13 to i16
  %conv1.i = sub i16 %25, %used.0.i.i
  %26 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_of_bds, align 2
  %28 = zext i8 %27 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i, i16 %28)
  %cmp49 = icmp ult i16 %conv1.i, %28
  br i1 %cmp49, label %qed_chain_get_elem_left.exit.out_crit_edge, label %if.end69, !prof !291

qed_chain_get_elem_left.exit.out_crit_edge:       ; preds = %qed_chain_get_elem_left.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end69:                                         ; preds = %qed_chain_get_elem_left.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %11) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end69.qed_ll2_prepare_tx_packet_set.exit_crit_edge

if.end69.qed_ll2_prepare_tx_packet_set.exit_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_prepare_tx_packet_set.exit

if.end.i.i.i:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %qed_ll2_prepare_tx_packet_set.exit

qed_ll2_prepare_tx_packet_set.exit:               ; preds = %if.end.i.i.i, %if.end69.qed_ll2_prepare_tx_packet_set.exit_crit_edge
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pkt, align 4
  %cookie1.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 3
  %39 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %cookie1.i, align 4
  %40 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_of_bds, align 2
  %conv.i101 = zext i8 %41 to i16
  %bd_used.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 1
  %42 = ptrtoint ptr %bd_used.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i101, ptr %bd_used.i, align 4
  %notify_fw2.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 2
  %frombool.i = zext i1 %notify_fw to i8
  %43 = ptrtoint ptr %notify_fw2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool.i, ptr %notify_fw2.i, align 2
  %44 = ptrtoint ptr %cur_send_packet to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %11, ptr %cur_send_packet, align 4
  %cur_send_frag_num.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 12
  %45 = ptrtoint ptr %cur_send_frag_num.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %cur_send_frag_num.i, align 2
  %first_frag.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 1
  %46 = ptrtoint ptr %first_frag.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_frag.i, align 4
  %tx_frag.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %11, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %tx_frag.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_frag.i, align 4
  %first_frag_len.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 6
  %49 = ptrtoint ptr %first_frag_len.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %first_frag_len.i, align 4
  %51 = load i16, ptr %cur_send_frag_num.i, align 2
  %idxprom6.i = zext i16 %51 to i32
  %frag_len.i = getelementptr %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 4, i32 %idxprom6.i, i32 2
  %52 = ptrtoint ptr %frag_len.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %50, ptr %frag_len.i, align 4
  %53 = load i16, ptr %cur_send_frag_num.i, align 2
  %inc.i = add i16 %53, 1
  store i16 %inc.i, ptr %cur_send_frag_num.i, align 2
  %54 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %u.i.i.i, align 4
  %qed_roce_flavor.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 3
  %56 = ptrtoint ptr %qed_roce_flavor.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qed_roce_flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i = icmp eq i32 %57, 0
  %tx_dest1.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 2
  %58 = ptrtoint ptr %tx_dest1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_dest1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %switch.lookup, label %qed_ll2_prepare_tx_packet_set.exit.sw.epilog.i_crit_edge

qed_ll2_prepare_tx_packet_set.exit.sw.epilog.i_crit_edge: ; preds = %qed_ll2_prepare_tx_packet_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %qed_ll2_prepare_tx_packet_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.qed_ll2_prepare_tx_packet, i32 0, i32 %59
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %61)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %qed_ll2_prepare_tx_packet_set.exit.sw.epilog.i_crit_edge
  %tx_dest.0.i = phi i16 [ %switch.load, %switch.lookup ], [ 16384, %qed_ll2_prepare_tx_packet_set.exit.sw.epilog.i_crit_edge ]
  %call4.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %txq_chain) #9
  %hw_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17
  %62 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hw_info.i, align 8
  %.off.i = add i32 %63, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.rhs.i, label %sw.epilog.i.if.else.i_crit_edge, !prof !303

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.rhs.i:                                       ; preds = %sw.epilog.i
  %conn_type.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 1, i32 1
  %64 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %conn_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp9.i = icmp eq i32 %65, 3
  br i1 %cmp9.i, label %if.then.i, label %land.rhs.i.if.else.i_crit_edge, !prof !292

land.rhs.i.if.else.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %nw_vlan_or_lb_echo.i = getelementptr inbounds %struct.core_tx_bd, ptr %call4.i, i32 0, i32 2
  %66 = ptrtoint ptr %nw_vlan_or_lb_echo.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 256, ptr %nw_vlan_or_lb_echo.i, align 2
  br label %if.end18.i

if.else.i:                                        ; preds = %land.rhs.i.if.else.i_crit_edge, %sw.epilog.i.if.else.i_crit_edge
  %vlan.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 4
  %67 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vlan.i, align 4
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #9
  %nw_vlan_or_lb_echo11.i = getelementptr inbounds %struct.core_tx_bd, ptr %call4.i, i32 0, i32 2
  %70 = ptrtoint ptr %nw_vlan_or_lb_echo11.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %nw_vlan_or_lb_echo11.i, align 2
  %71 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cxt, align 8
  %mf_bits.i = getelementptr inbounds %struct.qed_dev, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %mf_bits.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %mf_bits.i, align 4
  %75 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool13.not.i = icmp eq i32 %75, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %conn_type15.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 1, i32 1
  %76 = ptrtoint ptr %conn_type15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %conn_type15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp16.i = icmp eq i32 %77, 0
  br i1 %cmp16.i, label %if.then17.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %remove_stag.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 12
  %78 = ptrtoint ptr %remove_stag.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %remove_stag.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true.i.if.end18.i_crit_edge, %if.else.i.if.end18.i_crit_edge, %if.then.i
  %bitfield119.i = getelementptr inbounds %struct.core_tx_bd, ptr %call4.i, i32 0, i32 4
  %l4_hdr_offset_w.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 5
  %79 = ptrtoint ptr %l4_hdr_offset_w.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %l4_hdr_offset_w.i, align 2
  %81 = and i16 %80, 16383
  %or31.i = or i16 %81, %tx_dest.0.i
  %82 = tail call i16 @llvm.bswap.i16(i16 %or31.i) #9
  %83 = ptrtoint ptr %bitfield119.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %bitfield119.i, align 2
  %bd_flags.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 8
  %84 = ptrtoint ptr %bd_flags.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bd_flags.i, align 1
  %86 = or i8 %85, 4
  %87 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_of_bds, align 2
  %conv53.i = zext i8 %88 to i16
  %shl54.i = shl nuw i16 %conv53.i, 8
  %conv55.i = zext i8 %86 to i16
  %and62.i = or i16 %shl54.i, %conv55.i
  %shl65.i = select i1 %cmp.not.i, i16 0, i16 4096
  %and62.masked.i = and i16 %and62.i, -28697
  %enable_ip_cksum.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 9
  %89 = ptrtoint ptr %enable_ip_cksum.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %enable_ip_cksum.i, align 4, !range !290
  %91 = shl nuw nsw i8 %90, 3
  %shl81.i = zext i8 %91 to i16
  %enable_l4_cksum.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 10
  %92 = ptrtoint ptr %enable_l4_cksum.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %enable_l4_cksum.i, align 1, !range !290
  %94 = shl nuw nsw i8 %93, 4
  %shl97.i = zext i8 %94 to i16
  %calc_ip_len.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 11
  %95 = ptrtoint ptr %calc_ip_len.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %calc_ip_len.i, align 2, !range !290
  %97 = zext i8 %96 to i16
  %shl113.i = shl nuw nsw i16 %97, 13
  %remove_stag123.i = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 12
  %98 = ptrtoint ptr %remove_stag123.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %remove_stag123.i, align 1, !range !290
  %100 = zext i8 %99 to i16
  %shl130.i = shl nuw nsw i16 %100, 14
  %and73.i = or i16 %shl65.i, %shl81.i
  %or83.i = or i16 %and73.i, %shl97.i
  %or99.i = or i16 %or83.i, %and62.masked.i
  %or115.i = or i16 %or99.i, %shl113.i
  %or132.i = or i16 %or115.i, %shl130.i
  %101 = tail call i16 @llvm.bswap.i16(i16 %or132.i) #9
  %bd_data136.i = getelementptr inbounds %struct.core_tx_bd, ptr %call4.i, i32 0, i32 3
  %102 = ptrtoint ptr %bd_data136.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %bd_data136.i, align 4
  %hi.i = getelementptr inbounds %struct.regpair, ptr %call4.i, i32 0, i32 1
  %103 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %hi.i, align 4
  %104 = ptrtoint ptr %first_frag.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %first_frag.i, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  %107 = ptrtoint ptr %call4.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %call4.i, align 4
  %108 = ptrtoint ptr %first_frag_len.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %first_frag_len.i, align 4
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #9
  %nbytes.i = getelementptr inbounds %struct.core_tx_bd, ptr %call4.i, i32 0, i32 1
  %111 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %nbytes.i, align 4
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %112 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp146.i = icmp eq i8 %113, 0
  br i1 %cmp146.i, label %land.rhs148.i, label %if.end18.i.do.end181.i_crit_edge

if.end18.i.do.end181.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end181.i

land.rhs148.i:                                    ; preds = %if.end18.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %114 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dp_module.i, align 4
  %and149.i = and i32 %115, 16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %land.rhs148.i.do.end181.i_crit_edge, label %do.end161.i, !prof !292

land.rhs148.i.do.end181.i_crit_edge:              ; preds = %land.rhs148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end181.i

do.end161.i:                                      ; preds = %land.rhs148.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %queue_id.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 4
  %116 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %queue_id.i, align 1
  %conv166.i = zext i8 %117 to i32
  %cid.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 2
  %118 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cid.i, align 4
  %conn_type168.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 1, i32 1
  %120 = ptrtoint ptr %conn_type168.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %conn_type168.i, align 4
  %conv169.i = zext i16 %55 to i32
  %122 = ptrtoint ptr %first_frag_len.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %first_frag_len.i, align 4
  %conv171.i = zext i16 %123 to i32
  %124 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %num_of_bds, align 2
  %conv173.i = zext i8 %125 to i32
  %call178.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 1926, ptr noundef nonnull %name.i, i32 noundef %conv166.i, i32 noundef %119, i32 noundef %121, i32 noundef %conv169.i, i32 noundef %conv171.i, i32 noundef %conv173.i, i32 noundef 0, i32 noundef %105) #12
  br label %do.end181.i

do.end181.i:                                      ; preds = %do.end161.i, %land.rhs148.i.do.end181.i_crit_edge, %if.end18.i.do.end181.i_crit_edge
  %126 = ptrtoint ptr %cur_send_frag_num.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %cur_send_frag_num.i, align 2
  %128 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %num_of_bds, align 2
  %130 = zext i8 %129 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %130)
  %cmp195283.i = icmp ult i16 %127, %130
  br i1 %cmp195283.i, label %for.body.preheader.i, label %do.end181.i.qed_ll2_prepare_tx_packet_set_bd.exit_crit_edge

do.end181.i.qed_ll2_prepare_tx_packet_set_bd.exit_crit_edge: ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_prepare_tx_packet_set_bd.exit

for.body.preheader.i:                             ; preds = %do.end181.i
  %131 = zext i16 %127 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ %131, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 4, i32 %indvars.iv.i
  %call197.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %txq_chain) #9
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call197.i, ptr %arrayidx.i, align 4
  %bd_data198.i = getelementptr inbounds %struct.core_tx_bd, ptr %call197.i, i32 0, i32 3
  %133 = ptrtoint ptr %bd_data198.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %bd_data198.i, align 4
  %134 = load ptr, ptr %arrayidx.i, align 4
  %bitfield1200.i = getelementptr inbounds %struct.core_tx_bd, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %bitfield1200.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %bitfield1200.i, align 2
  %tx_frag.i106 = getelementptr %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 4, i32 %indvars.iv.i, i32 1
  %136 = ptrtoint ptr %tx_frag.i106 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %tx_frag.i106, align 4
  %frag_len.i107 = getelementptr %struct.qed_ll2_tx_packet, ptr %11, i32 0, i32 4, i32 %indvars.iv.i, i32 2
  %137 = ptrtoint ptr %frag_len.i107 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %frag_len.i107, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %138 = ptrtoint ptr %num_of_bds to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_of_bds, align 2
  %140 = zext i8 %139 to i32
  %cmp195.i = icmp ult i32 %indvars.iv.next.i, %140
  br i1 %cmp195.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.qed_ll2_prepare_tx_packet_set_bd.exit_crit_edge

for.body.i.qed_ll2_prepare_tx_packet_set_bd.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_prepare_tx_packet_set_bd.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qed_ll2_prepare_tx_packet_set_bd.exit:            ; preds = %for.body.i.qed_ll2_prepare_tx_packet_set_bd.exit_crit_edge, %do.end181.i.qed_ll2_prepare_tx_packet_set_bd.exit_crit_edge
  tail call fastcc void @qed_ll2_tx_packet_notify(ptr noundef %cxt, ptr noundef nonnull %arrayidx.i.i)
  br label %out

out:                                              ; preds = %qed_ll2_prepare_tx_packet_set_bd.exit, %qed_chain_get_elem_left.exit.out_crit_edge, %if.end43.out_crit_edge, %if.end29.out_crit_edge, %do.body14.out_crit_edge
  %rc.0 = phi i32 [ 0, %qed_ll2_prepare_tx_packet_set_bd.exit ], [ -17, %do.body14.out_crit_edge ], [ -16, %if.end43.out_crit_edge ], [ -16, %if.end29.out_crit_edge ], [ -16, %qed_chain_get_elem_left.exit.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -5, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_ll2_tx_packet_notify(ptr noundef %p_hwfn, ptr noundef %p_ll2_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_send_packet = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 16
  %0 = ptrtoint ptr %cur_send_packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_send_packet, align 4
  %cur_send_frag_num = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 12
  %2 = ptrtoint ptr %cur_send_frag_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cur_send_frag_num, align 2
  %bd_used = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bd_used to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bd_used, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %notify_fw = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %notify_fw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %notify_fw, align 2, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %sending_descq = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 7
  %prev.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %9, ptr noundef %sending_descq) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sending_descq, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %1, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %14 = ptrtoint ptr %cur_send_packet to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cur_send_packet, align 4
  %15 = ptrtoint ptr %cur_send_frag_num to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %cur_send_frag_num, align 2
  br i1 %tobool.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.end16

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %list_add_tail.exit
  %u.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 1, i32 3
  %16 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %u.i, align 4
  %18 = ptrtoint ptr %sending_descq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sending_descq, align 4
  %cmp.i80 = icmp eq ptr %19, %sending_descq
  %tobool22.not81 = icmp eq ptr %19, null
  %or.cond82 = or i1 %cmp.i80, %tobool22.not81
  br i1 %or.cond82, label %if.end16.while.end_crit_edge, label %if.end24.lr.ph

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end24.lr.ph:                                   ; preds = %if.end16
  %active_descq = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 5
  %prev.i2.i = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 5, i32 1
  br label %if.end24

if.end24:                                         ; preds = %list_move_tail.exit.if.end24_crit_edge, %if.end24.lr.ph
  %20 = phi ptr [ %19, %if.end24.lr.ph ], [ %34, %list_move_tail.exit.if.end24_crit_edge ]
  %call.i.i78 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %20) #9
  br i1 %call.i.i78, label %if.end.i.i79, label %if.end24.__list_del_entry.exit.i_crit_edge

if.end24.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i79:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i79, %if.end24.__list_del_entry.exit.i_crit_edge
  %27 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %20, ptr noundef %28, ptr noundef %active_descq) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %20, ptr %prev.i2.i, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %active_descq, ptr %20, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %20, ptr %28, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %33 = ptrtoint ptr %sending_descq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %sending_descq, align 4
  %cmp.i = icmp eq ptr %34, %sending_descq
  %tobool22.not = icmp eq ptr %34, null
  %or.cond = or i1 %cmp.i, %tobool22.not
  br i1 %or.cond, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.if.end24_crit_edge

list_move_tail.exit.if.end24_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %if.end16.while.end_crit_edge
  %35 = tail call i16 @llvm.bswap.i16(i16 %17)
  %db_msg = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 10
  %spq_prod = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 10, i32 2
  %36 = ptrtoint ptr %spq_prod to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %spq_prod, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !305
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %db_msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %db_msg, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %doorbell_addr = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 11, i32 9
  %40 = ptrtoint ptr %doorbell_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %doorbell_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !297
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %42 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp32 = icmp eq i8 %43, 0
  br i1 %cmp32, label %land.rhs, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %while.end
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %44 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dp_module, align 4
  %and = and i32 %45, 16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %land.rhs.cleanup_crit_edge, label %do.end41, !prof !292

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool43.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool43.not, ptr @.str.3, ptr %name
  %queue_id = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 4
  %46 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %queue_id, align 1
  %conv46 = zext i8 %47 to i32
  %cid = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 2
  %48 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cid, align 4
  %conn_type = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %conn_type, align 4
  %52 = ptrtoint ptr %spq_prod to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %spq_prod, align 2
  %conv49 = zext i16 %53 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 1991, ptr noundef nonnull %spec.select, i32 noundef %conv46, i32 noundef %49, i32 noundef %51, i32 noundef %conv49) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %land.rhs.cleanup_crit_edge, %while.end.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_set_fragment_of_tx_packet(ptr noundef %cxt, i8 noundef zeroext %connection_handle, i32 noundef %addr, i16 noundef zeroext %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp.i.i = icmp ugt i8 %connection_handle, 3
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %p_ll2_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i
  %b_active.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 6
  %2 = ptrtoint ptr %b_active.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_active.i.i, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not.i.i = icmp eq i8 %3, 0
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = select i1 %tobool11.not.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end4.i.i.cleanup_crit_edge, label %if.end, !prof !294

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %tx_queue = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11
  %cur_send_packet = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 16
  %4 = ptrtoint ptr %cur_send_packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_send_packet, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !291

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %cur_send_frag_num18 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 12
  %6 = ptrtoint ptr %cur_send_frag_num18 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cur_send_frag_num18, align 2
  %bd_used = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %bd_used to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bd_used, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.not = icmp ult i16 %7, %9
  br i1 %cmp.not, label %if.end28, label %if.end14.cleanup_crit_edge, !prof !292

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.qed_ll2_tx_packet, ptr %5, i32 0, i32 4, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %hi = getelementptr inbounds %struct.regpair, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %hi, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %11, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %nbytes)
  %nbytes32 = getelementptr inbounds %struct.core_tx_bd, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %nbytes32 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %nbytes32, align 4
  %tx_frag = getelementptr %struct.qed_ll2_tx_packet, ptr %5, i32 0, i32 4, i32 %conv, i32 1
  %17 = ptrtoint ptr %tx_frag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addr, ptr %tx_frag, align 4
  %frag_len = getelementptr %struct.qed_ll2_tx_packet, ptr %5, i32 0, i32 4, i32 %conv, i32 2
  %18 = ptrtoint ptr %frag_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %nbytes, ptr %frag_len, align 4
  %19 = ptrtoint ptr %cur_send_frag_num18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cur_send_frag_num18, align 2
  %inc = add i16 %20, 1
  store i16 %inc, ptr %cur_send_frag_num18, align 2
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue) #9
  tail call fastcc void @qed_ll2_tx_packet_notify(ptr noundef %cxt, ptr noundef nonnull %arrayidx.i.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue, i32 noundef %call47) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_terminate_connection(ptr noundef %cxt, i8 noundef zeroext %connection_handle) local_unnamed_addr #0 align 64 {
entry:
  %p_ent.i97 = alloca ptr, align 4
  %init_data.i98 = alloca %struct.qed_sp_init_data, align 4
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %cxt) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i.i = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp.i.i = icmp ugt i8 %connection_handle, 3
  br i1 %cmp.i.i, label %if.end.out_crit_edge, label %if.end.i.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i:                                       ; preds = %if.end
  %p_ll2_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i.out_crit_edge, label %if.end4.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i.i, i32 noundef 0) #9
  %b_active27.i.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 6
  %2 = ptrtoint ptr %b_active27.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_active27.i.i, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not28.i.i = icmp eq i8 %3, 0
  tail call void @mutex_unlock(ptr noundef %arrayidx.i.i) #9
  %tobool2.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = or i1 %tobool2.not, %tobool11.not28.i.i
  br i1 %or.cond, label %if.end4.i.i.out_crit_edge, label %if.end4

if.end4.i.i.out_crit_edge:                        ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end4.i.i
  %b_cb_registered = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 3
  %4 = ptrtoint ptr %b_cb_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b_cb_registered, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end18_crit_edge, label %if.then6

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then6:                                         ; preds = %if.end4
  %6 = ptrtoint ptr %b_cb_registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b_cb_registered, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #9
  %7 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #9
  %8 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cxt, align 8
  %doorbell_addr.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 9
  %10 = ptrtoint ptr %doorbell_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %doorbell_addr.i, align 4
  %db_msg.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 10
  %call.i = tail call i32 @qed_db_recovery_del(ptr noundef %9, ptr noundef %11, ptr noundef %db_msg.i) #9
  %12 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 12)
  %cid.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 2
  %14 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cid.i, align 4
  %16 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17, i32 10
  %17 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %opaque_fid.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %12, align 4
  %comp_mode.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %20 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %comp_mode.i, align 4
  %call3.i = call i32 @qed_sp_init_request(ptr noundef %cxt, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 4, i8 noundef zeroext 3, ptr noundef nonnull %init_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %qed_sp_ll2_tx_queue_stop.exit, label %qed_sp_ll2_tx_queue_stop.exit.thread

qed_sp_ll2_tx_queue_stop.exit.thread:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #9
  br label %out

qed_sp_ll2_tx_queue_stop.exit:                    ; preds = %if.then6
  %21 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_ent.i, align 4
  %call4.i = call i32 @qed_spq_post(ptr noundef %cxt, ptr noundef %22, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool13.not = icmp eq i32 %call4.i, 0
  br i1 %tobool13.not, label %if.end.i.i.i, label %qed_sp_ll2_tx_queue_stop.exit.out_crit_edge

qed_sp_ll2_tx_queue_stop.exit.out_crit_edge:      ; preds = %qed_sp_ll2_tx_queue_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i.i:                                     ; preds = %qed_sp_ll2_tx_queue_stop.exit
  %23 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  %arrayidx.i.i.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i
  %tobool.not.i93 = icmp eq ptr %arrayidx.i.i.i, null
  %or.cond.i = or i1 %tobool.not.i.i.i, %tobool.not.i93
  br i1 %or.cond.i, label %if.end.i.i.i.qed_ll2_txq_flush.exit_crit_edge, label %if.end.i95

if.end.i.i.i.qed_ll2_txq_flush.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_txq_flush.exit

if.end.i95:                                       ; preds = %if.end.i.i.i
  %tx_queue.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 11
  %call3.i94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue.i) #9
  %active_descq.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 11, i32 5
  %25 = ptrtoint ptr %active_descq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %active_descq.i, align 4
  %cmp.i89.i = icmp eq ptr %26, %active_descq.i
  %tobool10.not90.i = icmp eq ptr %26, null
  %or.cond8891.i = or i1 %cmp.i89.i, %tobool10.not90.i
  br i1 %or.cond8891.i, label %if.end.i95.while.end.i_crit_edge, label %if.end12.lr.ph.i

if.end.i95.while.end.i_crit_edge:                 ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end12.lr.ph.i:                                 ; preds = %if.end.i95
  %free_descq.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 11, i32 6
  %prev.i83.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 11, i32 6, i32 1
  %conn_type.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 1, i32 1
  %cur_completing_packet.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 11, i32 17
  %cur_completing_bd_idx.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 11, i32 8
  %tx_release_cb.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 12, i32 3
  %cookie29.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 12, i32 5
  %my_id.i = getelementptr %struct.qed_ll2_info, ptr %24, i32 %conv.i.i, i32 3
  %p_ooo_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 31
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.body35.i.if.end12.i_crit_edge, %if.end12.lr.ph.i
  %27 = phi ptr [ %26, %if.end12.lr.ph.i ], [ %65, %do.body35.i.if.end12.i_crit_edge ]
  %flags.092.i = phi i32 [ %call3.i94, %if.end12.lr.ph.i ], [ %call43.i, %do.body35.i.if.end12.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %27) #9
  br i1 %call.i.i.i, label %if.end.i.i80.i, label %if.end12.i.list_del.exit.i_crit_edge

if.end12.i.list_del.exit.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i80.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i80.i, %if.end12.i.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %active_descq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %active_descq.i, align 4
  %cmp.i81.i = icmp eq ptr %37, %active_descq.i
  %38 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i83.i, align 4
  %call.i.i84.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %27, ptr noundef %39, ptr noundef %free_descq.i) #9
  br i1 %call.i.i84.i, label %if.end.i.i85.i, label %list_del.exit.i.list_add_tail.exit.i_crit_edge

list_del.exit.i.list_add_tail.exit.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i85.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %27, ptr %prev.i83.i, align 4
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %free_descq.i, ptr %27, align 4
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %27, ptr %39, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i85.i, %list_del.exit.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue.i, i32 noundef %flags.092.i) #9
  %44 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %conn_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp18.i = icmp eq i32 %45, 3
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %cookie.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %27, i32 0, i32 3
  %46 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cookie.i, align 4
  %48 = ptrtoint ptr %p_ooo_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p_ooo_info.i, align 4
  call void @qed_ooo_put_free_buffer(ptr noundef %cxt, ptr noundef %49, ptr noundef %47) #9
  br label %do.body35.i

if.else.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = call ptr @memcpy(ptr %cur_completing_packet.i, ptr %27, i32 16)
  %51 = ptrtoint ptr %cur_completing_bd_idx.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %cur_completing_bd_idx.i, align 4
  %bd_used.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %27, i32 0, i32 1
  %52 = ptrtoint ptr %bd_used.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bd_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp24.i = icmp eq i16 %53, 1
  %tx_frag27.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %27, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %tx_frag27.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_frag27.i, align 4
  %56 = ptrtoint ptr %tx_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_release_cb.i, align 4
  %58 = ptrtoint ptr %cookie29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cookie29.i, align 4
  %60 = ptrtoint ptr %my_id.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %my_id.i, align 4
  %cookie30.i = getelementptr inbounds %struct.qed_ll2_tx_packet, ptr %27, i32 0, i32 3
  %62 = ptrtoint ptr %cookie30.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cookie30.i, align 4
  call void %57(ptr noundef %59, i8 noundef zeroext %61, ptr noundef %63, i32 noundef %55, i1 noundef zeroext %cmp24.i, i1 noundef zeroext %cmp.i81.i) #9
  br label %do.body35.i

do.body35.i:                                      ; preds = %if.else.i, %if.then20.i
  %call43.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue.i) #9
  %64 = ptrtoint ptr %active_descq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %active_descq.i, align 4
  %cmp.i.i96 = icmp eq ptr %65, %active_descq.i
  %tobool10.not.i = icmp eq ptr %65, null
  %or.cond88.i = or i1 %cmp.i.i96, %tobool10.not.i
  br i1 %or.cond88.i, label %do.body35.i.while.end.i_crit_edge, label %do.body35.i.if.end12.i_crit_edge

do.body35.i.if.end12.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

do.body35.i.while.end.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.body35.i.while.end.i_crit_edge, %if.end.i95.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call3.i94, %if.end.i95.while.end.i_crit_edge ], [ %call43.i, %do.body35.i.while.end.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue.i, i32 noundef %flags.0.lcssa.i) #9
  br label %qed_ll2_txq_flush.exit

qed_ll2_txq_flush.exit:                           ; preds = %while.end.i, %if.end.i.i.i.qed_ll2_txq_flush.exit_crit_edge
  %tx_sb_index = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 11, i32 2
  %66 = ptrtoint ptr %tx_sb_index to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tx_sb_index, align 4
  %call17 = call i32 @qed_int_unregister_cb(ptr noundef %cxt, i8 noundef zeroext %67) #9
  br label %if.end18

if.end18:                                         ; preds = %qed_ll2_txq_flush.exit, %if.end4.if.end18_crit_edge
  %rc.0 = phi i32 [ 0, %qed_ll2_txq_flush.exit ], [ -22, %if.end4.if.end18_crit_edge ]
  %b_cb_registered19 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 5
  %68 = ptrtoint ptr %b_cb_registered19 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %b_cb_registered19, align 2, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool20.not = icmp eq i8 %69, 0
  br i1 %tobool20.not, label %if.end18.if.end43_crit_edge, label %if.then21

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then21:                                        ; preds = %if.end18
  %70 = ptrtoint ptr %b_cb_registered19 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %b_cb_registered19, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !307
  %ctx_based = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 4
  %71 = ptrtoint ptr %ctx_based to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ctx_based, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool31.not = icmp eq i8 %72, 0
  br i1 %tobool31.not, label %if.then21.if.end36_crit_edge, label %if.then32

if.then21.if.end36_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then32:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cxt, align 8
  %set_prod_addr = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 11
  %75 = ptrtoint ptr %set_prod_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %set_prod_addr, align 4
  %db_data = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 12
  %call35 = call i32 @qed_db_recovery_del(ptr noundef %74, ptr noundef %76, ptr noundef %db_data) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then21.if.end36_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i97) #9
  %77 = ptrtoint ptr %p_ent.i97 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %p_ent.i97, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i98) #9
  %78 = getelementptr inbounds i8, ptr %init_data.i98, i32 4
  %79 = call ptr @memset(ptr %78, i32 0, i32 12)
  %cid.i99 = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 2
  %80 = ptrtoint ptr %cid.i99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cid.i99, align 4
  %82 = ptrtoint ptr %init_data.i98 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %init_data.i98, align 4
  %opaque_fid.i100 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 17, i32 10
  %83 = ptrtoint ptr %opaque_fid.i100 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %opaque_fid.i100, align 4
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %78, align 4
  %comp_mode.i102 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i98, i32 0, i32 2
  %86 = ptrtoint ptr %comp_mode.i102 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %comp_mode.i102, align 4
  %call.i103 = call i32 @qed_sp_init_request(ptr noundef %cxt, ptr noundef nonnull %p_ent.i97, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef nonnull %init_data.i98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %qed_sp_ll2_rx_queue_stop.exit, label %qed_sp_ll2_rx_queue_stop.exit.thread

qed_sp_ll2_rx_queue_stop.exit.thread:             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i98) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i97) #9
  br label %out

qed_sp_ll2_rx_queue_stop.exit:                    ; preds = %if.end36
  %87 = ptrtoint ptr %p_ent.i97 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %p_ent.i97, align 4
  %complete_event_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %88, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %complete_event_flg.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %complete_event_flg.i, align 1
  %queue_id.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 4
  %90 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %queue_id.i, align 1
  %queue_id3.i = getelementptr inbounds %struct.qed_spq_entry, ptr %88, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %queue_id3.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %queue_id3.i, align 2
  %call4.i105 = call i32 @qed_spq_post(ptr noundef %cxt, ptr noundef %88, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i98) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i105)
  %tobool38.not = icmp eq i32 %call4.i105, 0
  br i1 %tobool38.not, label %if.end.i.i.i115, label %qed_sp_ll2_rx_queue_stop.exit.out_crit_edge

qed_sp_ll2_rx_queue_stop.exit.out_crit_edge:      ; preds = %qed_sp_ll2_rx_queue_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i.i115:                                  ; preds = %qed_sp_ll2_rx_queue_stop.exit
  %93 = ptrtoint ptr %p_ll2_info.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %p_ll2_info.i.i, align 8
  %tobool.not.i.i.i111 = icmp eq ptr %94, null
  %arrayidx.i.i.i112 = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i
  %tobool.not.i113 = icmp eq ptr %arrayidx.i.i.i112, null
  %or.cond.i114 = or i1 %tobool.not.i.i.i111, %tobool.not.i113
  br i1 %or.cond.i114, label %if.end.i.i.i115.qed_ll2_rxq_flush.exit_crit_edge, label %if.end.i118

if.end.i.i.i115.qed_ll2_rxq_flush.exit_crit_edge: ; preds = %if.end.i.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_rxq_flush.exit

if.end.i118:                                      ; preds = %if.end.i.i.i115
  %rx_queue.i = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 10
  %call3.i116 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_queue.i) #9
  %active_descq.i117 = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 10, i32 7
  %95 = ptrtoint ptr %active_descq.i117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %active_descq.i117, align 4
  %cmp.i70.i = icmp eq ptr %96, %active_descq.i117
  %tobool10.not71.i = icmp eq ptr %96, null
  %or.cond6972.i = or i1 %cmp.i70.i, %tobool10.not71.i
  br i1 %or.cond6972.i, label %if.end.i118.while.end.i133_crit_edge, label %if.end12.lr.ph.i123

if.end.i118.while.end.i133_crit_edge:             ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i133

if.end12.lr.ph.i123:                              ; preds = %if.end.i118
  %free_descq.i119 = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 10, i32 8
  %prev.i2.i.i = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 10, i32 8, i32 1
  %conn_type.i120 = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 1, i32 1
  %rx_release_cb.i = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 12, i32 1
  %cookie24.i = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 12, i32 5
  %my_id.i121 = getelementptr %struct.qed_ll2_info, ptr %94, i32 %conv.i.i, i32 3
  %p_ooo_info.i122 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 31
  br label %if.end12.i125

if.end12.i125:                                    ; preds = %do.body28.i.if.end12.i125_crit_edge, %if.end12.lr.ph.i123
  %97 = phi ptr [ %96, %if.end12.lr.ph.i123 ], [ %129, %do.body28.i.if.end12.i125_crit_edge ]
  %flags.073.i = phi i32 [ %call3.i116, %if.end12.lr.ph.i123 ], [ %call36.i, %do.body28.i.if.end12.i125_crit_edge ]
  %call.i.i.i124 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %97) #9
  br i1 %call.i.i.i124, label %if.end.i.i64.i, label %if.end12.i125.__list_del_entry.exit.i.i_crit_edge

if.end12.i125.__list_del_entry.exit.i.i_crit_edge: ; preds = %if.end12.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i64.i:                                   ; preds = %if.end12.i125
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i126, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %97, align 4
  %prev1.i.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i.i127, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i64.i, %if.end12.i125.__list_del_entry.exit.i.i_crit_edge
  %104 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %97, ptr noundef %105, ptr noundef %free_descq.i119) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %97, ptr %prev.i2.i.i, align 4
  %107 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %free_descq.i119, ptr %97, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev3.i.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %97, ptr %105, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue.i, i32 noundef %flags.073.i) #9
  %110 = ptrtoint ptr %conn_type.i120 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %conn_type.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp14.i = icmp eq i32 %111, 3
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i129

if.then16.i:                                      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %cookie.i128 = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %97, i32 0, i32 4
  %112 = ptrtoint ptr %cookie.i128 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cookie.i128, align 4
  %114 = ptrtoint ptr %p_ooo_info.i122 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %p_ooo_info.i122, align 4
  call void @qed_ooo_put_free_buffer(ptr noundef %cxt, ptr noundef %115, ptr noundef %113) #9
  br label %do.body28.i

if.else.i129:                                     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_buf_addr17.i = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %97, i32 0, i32 2
  %116 = ptrtoint ptr %rx_buf_addr17.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_buf_addr17.i, align 4
  %cookie19.i = getelementptr inbounds %struct.qed_ll2_rx_packet, ptr %97, i32 0, i32 4
  %118 = ptrtoint ptr %cookie19.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cookie19.i, align 4
  %120 = ptrtoint ptr %active_descq.i117 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %active_descq.i117, align 4
  %cmp.i65.i = icmp eq ptr %121, %active_descq.i117
  %122 = ptrtoint ptr %rx_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rx_release_cb.i, align 4
  %124 = ptrtoint ptr %cookie24.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cookie24.i, align 4
  %126 = ptrtoint ptr %my_id.i121 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %my_id.i121, align 4
  call void %123(ptr noundef %125, i8 noundef zeroext %127, ptr noundef %119, i32 noundef %117, i1 noundef zeroext %cmp.i65.i) #9
  br label %do.body28.i

do.body28.i:                                      ; preds = %if.else.i129, %if.then16.i
  %call36.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_queue.i) #9
  %128 = ptrtoint ptr %active_descq.i117 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %active_descq.i117, align 4
  %cmp.i.i130 = icmp eq ptr %129, %active_descq.i117
  %tobool10.not.i131 = icmp eq ptr %129, null
  %or.cond69.i = or i1 %cmp.i.i130, %tobool10.not.i131
  br i1 %or.cond69.i, label %do.body28.i.while.end.i133_crit_edge, label %do.body28.i.if.end12.i125_crit_edge

do.body28.i.if.end12.i125_crit_edge:              ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i125

do.body28.i.while.end.i133_crit_edge:             ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i133

while.end.i133:                                   ; preds = %do.body28.i.while.end.i133_crit_edge, %if.end.i118.while.end.i133_crit_edge
  %flags.0.lcssa.i132 = phi i32 [ %call3.i116, %if.end.i118.while.end.i133_crit_edge ], [ %call36.i, %do.body28.i.while.end.i133_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_queue.i, i32 noundef %flags.0.lcssa.i132) #9
  br label %qed_ll2_rxq_flush.exit

qed_ll2_rxq_flush.exit:                           ; preds = %while.end.i133, %if.end.i.i.i115.qed_ll2_rxq_flush.exit_crit_edge
  %rx_sb_index = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 10, i32 3
  %130 = ptrtoint ptr %rx_sb_index to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %rx_sb_index, align 4
  %call42 = call i32 @qed_int_unregister_cb(ptr noundef %cxt, i8 noundef zeroext %131) #9
  br label %if.end43

if.end43:                                         ; preds = %qed_ll2_rxq_flush.exit, %if.end18.if.end43_crit_edge
  %rc.1 = phi i32 [ 0, %qed_ll2_rxq_flush.exit ], [ %rc.0, %if.end18.if.end43_crit_edge ]
  %conn_type = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv.i.i, i32 1, i32 1
  %132 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp = icmp eq i32 %133, 3
  br i1 %cmp, label %if.then44, label %if.end43.if.end45_crit_edge

if.end43.if.end45_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %p_ooo_info = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 31
  %134 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %p_ooo_info, align 4
  call void @qed_ooo_release_all_isles(ptr noundef %cxt, ptr noundef %135) #9
  %136 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr = load i32, ptr %conn_type, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end43.if.end45_crit_edge
  %137 = phi i32 [ %.pr, %if.then44 ], [ %133, %if.end43.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp48 = icmp eq i32 %137, 0
  br i1 %cmp48, label %if.then49, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then49:                                        ; preds = %if.end45
  %138 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cxt, align 8
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %139, i32 0, i32 15
  %140 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %mf_bits, align 4
  %142 = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool52.not = icmp eq i32 %142, 0
  br i1 %tobool52.not, label %if.then53, label %if.then49.if.end55_crit_edge

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  call void @qed_llh_remove_protocol_filter(ptr noundef %139, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext -30458, i16 noundef zeroext 0) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then49.if.end55_crit_edge
  %143 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cxt, align 8
  call void @qed_llh_remove_protocol_filter(ptr noundef %144, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext -30444, i16 noundef zeroext 0) #9
  br label %out

out:                                              ; preds = %if.end55, %if.end45.out_crit_edge, %qed_sp_ll2_rx_queue_stop.exit.out_crit_edge, %qed_sp_ll2_rx_queue_stop.exit.thread, %qed_sp_ll2_tx_queue_stop.exit.out_crit_edge, %qed_sp_ll2_tx_queue_stop.exit.thread, %if.end4.i.i.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end.out_crit_edge
  %rc.2 = phi i32 [ %call4.i, %qed_sp_ll2_tx_queue_stop.exit.out_crit_edge ], [ %call4.i105, %qed_sp_ll2_rx_queue_stop.exit.out_crit_edge ], [ %rc.1, %if.end55 ], [ %rc.1, %if.end45.out_crit_edge ], [ %call3.i, %qed_sp_ll2_tx_queue_stop.exit.thread ], [ %call.i103, %qed_sp_ll2_rx_queue_stop.exit.thread ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end.i.i.out_crit_edge ], [ -22, %if.end4.i.i.out_crit_edge ]
  call void @qed_ptt_release(ptr noundef %cxt, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_int_unregister_cb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_recovery_del(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_release_all_isles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_llh_remove_protocol_filter(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_chain_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_cxt_release_cid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_alloc(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2624) #14
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.body, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %my_id = getelementptr %struct.qed_ll2_info, ptr %call7.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %my_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %my_id, align 4
  %my_id.1 = getelementptr %struct.qed_ll2_info, ptr %call7.i.i.i, i32 1, i32 3
  %2 = ptrtoint ptr %my_id.1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %my_id.1, align 4
  %my_id.2 = getelementptr %struct.qed_ll2_info, ptr %call7.i.i.i, i32 2, i32 3
  %3 = ptrtoint ptr %my_id.2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %my_id.2, align 4
  %my_id.3 = getelementptr %struct.qed_ll2_info, ptr %call7.i.i.i, i32 3, i32 3
  %4 = ptrtoint ptr %my_id.3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %my_id.3, align 4
  %p_ll2_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 30
  %5 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %p_ll2_info, align 8
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ult i8 %7, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !291

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 2204, ptr noundef nonnull %spec.select) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %for.body.preheader
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ll2_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ll2_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info, align 8
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @qed_ll2_setup.__key) #9
  %2 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ll2_info, align 8
  %arrayidx.1 = getelementptr %struct.qed_ll2_info, ptr %3, i32 1
  tail call void @__mutex_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @qed_ll2_setup.__key) #9
  %4 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_ll2_info, align 8
  %arrayidx.2 = getelementptr %struct.qed_ll2_info, ptr %5, i32 2
  tail call void @__mutex_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.17, ptr noundef nonnull @qed_ll2_setup.__key) #9
  %6 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_ll2_info, align 8
  %arrayidx.3 = getelementptr %struct.qed_ll2_info, ptr %7, i32 3
  tail call void @__mutex_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @qed_ll2_setup.__key) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ll2_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ll2_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p_ll2_info, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_get_stats(ptr noundef %cxt, i8 noundef zeroext %connection_handle, ptr nocapture noundef %p_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p_stats, i32 0, i32 144)
  %call = tail call fastcc i32 @__qed_ll2_get_stats(ptr noundef %cxt, i8 noundef zeroext %connection_handle, ptr noundef %p_stats)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qed_ll2_get_stats(ptr noundef %cxt, i8 noundef zeroext %connection_handle, ptr nocapture noundef %p_stats) unnamed_addr #0 align 64 {
entry:
  %pstats.i = alloca %struct.core_ll2_pstorm_per_queue_stat, align 4
  %ustats.i = alloca %struct.core_ll2_ustorm_per_queue_stat, align 4
  %tstats.i = alloca %struct.core_ll2_tstorm_per_queue_stat, align 4
  %port_stats.i = alloca %struct.core_ll2_port_stats, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %connection_handle to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %connection_handle)
  %cmp = icmp ugt i8 %connection_handle, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %p_ll2_info = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 30
  %0 = ptrtoint ptr %p_ll2_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ll2_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %cxt) #9
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 2331, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %gsi_enable = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv, i32 1, i32 14
  %2 = ptrtoint ptr %gsi_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gsi_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %port_stats.i) #9
  %4 = getelementptr inbounds %struct.regpair, ptr %port_stats.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.core_ll2_port_stats, ptr %port_stats.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.core_ll2_port_stats, ptr %port_stats.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.core_ll2_port_stats, ptr %port_stats.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.core_ll2_port_stats, ptr %port_stats.i, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.core_ll2_port_stats, ptr %port_stats.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.core_ll2_port_stats, ptr %port_stats.i, i32 0, i32 3, i32 1
  %11 = call ptr @memset(ptr %port_stats.i, i32 0, i32 32)
  %12 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cxt, align 8
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %13, i32 0, i32 31
  %14 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i = getelementptr %struct.iro, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %abs_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 3
  %18 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %abs_pf_id.i, align 2
  %conv.i = zext i8 %19 to i32
  %call.i = tail call i32 @qed_device_num_ports(ptr noundef %13) #9
  %rem.i = srem i32 %conv.i, %call.i
  %20 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cxt, align 8
  %iro_arr3.i = getelementptr inbounds %struct.qed_dev, ptr %21, i32 0, i32 31
  %22 = ptrtoint ptr %iro_arr3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iro_arr3.i, align 8
  %m1.i = getelementptr %struct.iro, ptr %23, i32 3, i32 1
  %24 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %m1.i, align 4
  %conv5.i = zext i16 %25 to i32
  %mul.i = mul nuw nsw i32 %rem.i, %conv5.i
  %add.i = add i32 %17, 29884416
  %add6.i = add i32 %add.i, %mul.i
  call void @qed_memcpy_from(ptr noundef %cxt, ptr noundef nonnull %call, ptr noundef nonnull %port_stats.i, i32 noundef %add6.i, i32 noundef 32) #9
  %26 = ptrtoint ptr %port_stats.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %__regpair.sroa.0.0.copyload.i = load i32, ptr %port_stats.i, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %__regpair.sroa.5.0.copyload.i = load i32, ptr %4, align 4
  %28 = zext i32 %__regpair.sroa.5.0.copyload.i to i64
  %29 = zext i32 %__regpair.sroa.0.0.copyload.i to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = call i64 @llvm.bswap.i64(i64 %31) #9
  %33 = ptrtoint ptr %p_stats to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %p_stats, align 8
  %add11.i = add i64 %32, %34
  store i64 %add11.i, ptr %p_stats, align 8
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %__regpair12.sroa.0.0.copyload.i = load i32, ptr %5, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %__regpair12.sroa.5.0.copyload.i = load i32, ptr %6, align 4
  %37 = zext i32 %__regpair12.sroa.5.0.copyload.i to i64
  %38 = zext i32 %__regpair12.sroa.0.0.copyload.i to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = call i64 @llvm.bswap.i64(i64 %40) #9
  %gsi_invalid_pkt_length20.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 1
  %42 = ptrtoint ptr %gsi_invalid_pkt_length20.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %gsi_invalid_pkt_length20.i, align 8
  %add21.i = add i64 %41, %43
  store i64 %add21.i, ptr %gsi_invalid_pkt_length20.i, align 8
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %__regpair22.sroa.0.0.copyload.i = load i32, ptr %7, align 4
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %__regpair22.sroa.5.0.copyload.i = load i32, ptr %8, align 4
  %46 = zext i32 %__regpair22.sroa.5.0.copyload.i to i64
  %47 = zext i32 %__regpair22.sroa.0.0.copyload.i to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %50 = call i64 @llvm.bswap.i64(i64 %49) #9
  %gsi_unsupported_pkt_typ30.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 2
  %51 = ptrtoint ptr %gsi_unsupported_pkt_typ30.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gsi_unsupported_pkt_typ30.i, align 8
  %add31.i = add i64 %50, %52
  store i64 %add31.i, ptr %gsi_unsupported_pkt_typ30.i, align 8
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %__regpair32.sroa.0.0.copyload.i = load i32, ptr %9, align 4
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %__regpair32.sroa.5.0.copyload.i = load i32, ptr %10, align 4
  %55 = zext i32 %__regpair32.sroa.5.0.copyload.i to i64
  %56 = zext i32 %__regpair32.sroa.0.0.copyload.i to i64
  %57 = shl nuw i64 %56, 32
  %58 = or i64 %57, %55
  %59 = call i64 @llvm.bswap.i64(i64 %58) #9
  %gsi_crcchksm_error40.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 3
  %60 = ptrtoint ptr %gsi_crcchksm_error40.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %gsi_crcchksm_error40.i, align 8
  %add41.i = add i64 %59, %61
  store i64 %add41.i, ptr %gsi_crcchksm_error40.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %port_stats.i) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tstats.i) #9
  %62 = getelementptr inbounds %struct.regpair, ptr %tstats.i, i32 0, i32 1
  %63 = getelementptr inbounds %struct.core_ll2_tstorm_per_queue_stat, ptr %tstats.i, i32 0, i32 1
  %64 = getelementptr inbounds %struct.core_ll2_tstorm_per_queue_stat, ptr %tstats.i, i32 0, i32 1, i32 1
  %queue_id.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv, i32 4
  %65 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %queue_id.i, align 1
  %67 = call ptr @memset(ptr %tstats.i, i32 0, i32 16)
  %68 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cxt, align 8
  %iro_arr.i43 = getelementptr inbounds %struct.qed_dev, ptr %69, i32 0, i32 31
  %70 = ptrtoint ptr %iro_arr.i43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iro_arr.i43, align 8
  %arrayidx.i44 = getelementptr %struct.iro, ptr %71, i32 24
  %72 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i44, align 4
  %conv.i45 = zext i8 %66 to i32
  %m1.i46 = getelementptr %struct.iro, ptr %71, i32 24, i32 1
  %74 = ptrtoint ptr %m1.i46 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %m1.i46, align 4
  %conv4.i = zext i16 %75 to i32
  %mul.i47 = mul nuw nsw i32 %conv4.i, %conv.i45
  %add.i48 = add i32 %73, 29884416
  %add5.i = add i32 %add.i48, %mul.i47
  call void @qed_memcpy_from(ptr noundef %cxt, ptr noundef nonnull %call, ptr noundef nonnull %tstats.i, i32 noundef %add5.i, i32 noundef 16) #9
  %76 = ptrtoint ptr %tstats.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %__regpair.sroa.0.0.copyload.i49 = load i32, ptr %tstats.i, align 4
  %77 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %__regpair.sroa.5.0.copyload.i50 = load i32, ptr %62, align 4
  %78 = zext i32 %__regpair.sroa.5.0.copyload.i50 to i64
  %79 = zext i32 %__regpair.sroa.0.0.copyload.i49 to i64
  %80 = shl nuw i64 %79, 32
  %81 = or i64 %80, %78
  %82 = call i64 @llvm.bswap.i64(i64 %81) #9
  %packet_too_big_discard9.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 4
  %83 = ptrtoint ptr %packet_too_big_discard9.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %packet_too_big_discard9.i, align 8
  %add10.i = add i64 %82, %84
  store i64 %add10.i, ptr %packet_too_big_discard9.i, align 8
  %85 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %85)
  %__regpair11.sroa.0.0.copyload.i = load i32, ptr %63, align 4
  %86 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %__regpair11.sroa.5.0.copyload.i = load i32, ptr %64, align 4
  %87 = zext i32 %__regpair11.sroa.5.0.copyload.i to i64
  %88 = zext i32 %__regpair11.sroa.0.0.copyload.i to i64
  %89 = shl nuw i64 %88, 32
  %90 = or i64 %89, %87
  %91 = call i64 @llvm.bswap.i64(i64 %90) #9
  %no_buff_discard19.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 5
  %92 = ptrtoint ptr %no_buff_discard19.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %no_buff_discard19.i, align 8
  %add20.i = add i64 %91, %93
  store i64 %add20.i, ptr %no_buff_discard19.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tstats.i) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ustats.i) #9
  %94 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %queue_id.i, align 1
  %96 = call ptr @memset(ptr %ustats.i, i32 0, i32 48)
  %97 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cxt, align 8
  %iro_arr.i52 = getelementptr inbounds %struct.qed_dev, ptr %98, i32 0, i32 31
  %99 = ptrtoint ptr %iro_arr.i52 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %iro_arr.i52, align 8
  %arrayidx.i53 = getelementptr %struct.iro, ptr %100, i32 25
  %101 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i53, align 4
  %conv.i54 = zext i8 %95 to i32
  %m1.i55 = getelementptr %struct.iro, ptr %100, i32 25, i32 1
  %103 = ptrtoint ptr %m1.i55 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %m1.i55, align 4
  %conv4.i56 = zext i16 %104 to i32
  %mul.i57 = mul nuw nsw i32 %conv4.i56, %conv.i54
  %add.i58 = add i32 %102, 30932992
  %add5.i59 = add i32 %add.i58, %mul.i57
  call void @qed_memcpy_from(ptr noundef %cxt, ptr noundef nonnull %call, ptr noundef nonnull %ustats.i, i32 noundef %add5.i59, i32 noundef 48) #9
  %105 = ptrtoint ptr %ustats.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %__regpair.sroa.0.0.copyload.i60 = load i32, ptr %ustats.i, align 4
  %__regpair.sroa.5.0.rcv_ucast_bytes.sroa_idx.i = getelementptr inbounds i8, ptr %ustats.i, i32 4
  %106 = ptrtoint ptr %__regpair.sroa.5.0.rcv_ucast_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %__regpair.sroa.5.0.copyload.i61 = load i32, ptr %__regpair.sroa.5.0.rcv_ucast_bytes.sroa_idx.i, align 4
  %107 = zext i32 %__regpair.sroa.5.0.copyload.i61 to i64
  %108 = zext i32 %__regpair.sroa.0.0.copyload.i60 to i64
  %109 = shl nuw i64 %108, 32
  %110 = or i64 %109, %107
  %111 = call i64 @llvm.bswap.i64(i64 %110) #9
  %rcv_ucast_bytes9.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 6
  %112 = ptrtoint ptr %rcv_ucast_bytes9.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %rcv_ucast_bytes9.i, align 8
  %add10.i62 = add i64 %111, %113
  store i64 %add10.i62, ptr %rcv_ucast_bytes9.i, align 8
  %rcv_mcast_bytes.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 1
  %114 = ptrtoint ptr %rcv_mcast_bytes.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %__regpair11.sroa.0.0.copyload.i63 = load i32, ptr %rcv_mcast_bytes.i, align 4
  %__regpair11.sroa.5.0.rcv_mcast_bytes.sroa_idx.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %__regpair11.sroa.5.0.rcv_mcast_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %__regpair11.sroa.5.0.copyload.i64 = load i32, ptr %__regpair11.sroa.5.0.rcv_mcast_bytes.sroa_idx.i, align 4
  %116 = zext i32 %__regpair11.sroa.5.0.copyload.i64 to i64
  %117 = zext i32 %__regpair11.sroa.0.0.copyload.i63 to i64
  %118 = shl nuw i64 %117, 32
  %119 = or i64 %118, %116
  %120 = call i64 @llvm.bswap.i64(i64 %119) #9
  %rcv_mcast_bytes19.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 7
  %121 = ptrtoint ptr %rcv_mcast_bytes19.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %rcv_mcast_bytes19.i, align 8
  %add20.i65 = add i64 %120, %122
  store i64 %add20.i65, ptr %rcv_mcast_bytes19.i, align 8
  %rcv_bcast_bytes.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 2
  %123 = ptrtoint ptr %rcv_bcast_bytes.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %__regpair21.sroa.0.0.copyload.i = load i32, ptr %rcv_bcast_bytes.i, align 4
  %__regpair21.sroa.5.0.rcv_bcast_bytes.sroa_idx.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 2, i32 1
  %124 = ptrtoint ptr %__regpair21.sroa.5.0.rcv_bcast_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %__regpair21.sroa.5.0.copyload.i = load i32, ptr %__regpair21.sroa.5.0.rcv_bcast_bytes.sroa_idx.i, align 4
  %125 = zext i32 %__regpair21.sroa.5.0.copyload.i to i64
  %126 = zext i32 %__regpair21.sroa.0.0.copyload.i to i64
  %127 = shl nuw i64 %126, 32
  %128 = or i64 %127, %125
  %129 = call i64 @llvm.bswap.i64(i64 %128) #9
  %rcv_bcast_bytes29.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 8
  %130 = ptrtoint ptr %rcv_bcast_bytes29.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %rcv_bcast_bytes29.i, align 8
  %add30.i = add i64 %129, %131
  store i64 %add30.i, ptr %rcv_bcast_bytes29.i, align 8
  %rcv_ucast_pkts.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 3
  %132 = ptrtoint ptr %rcv_ucast_pkts.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %__regpair31.sroa.0.0.copyload.i = load i32, ptr %rcv_ucast_pkts.i, align 4
  %__regpair31.sroa.5.0.rcv_ucast_pkts.sroa_idx.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 3, i32 1
  %133 = ptrtoint ptr %__regpair31.sroa.5.0.rcv_ucast_pkts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %__regpair31.sroa.5.0.copyload.i = load i32, ptr %__regpair31.sroa.5.0.rcv_ucast_pkts.sroa_idx.i, align 4
  %134 = zext i32 %__regpair31.sroa.5.0.copyload.i to i64
  %135 = zext i32 %__regpair31.sroa.0.0.copyload.i to i64
  %136 = shl nuw i64 %135, 32
  %137 = or i64 %136, %134
  %138 = call i64 @llvm.bswap.i64(i64 %137) #9
  %rcv_ucast_pkts39.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 9
  %139 = ptrtoint ptr %rcv_ucast_pkts39.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %rcv_ucast_pkts39.i, align 8
  %add40.i = add i64 %138, %140
  store i64 %add40.i, ptr %rcv_ucast_pkts39.i, align 8
  %rcv_mcast_pkts.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 4
  %141 = ptrtoint ptr %rcv_mcast_pkts.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %__regpair41.sroa.0.0.copyload.i = load i32, ptr %rcv_mcast_pkts.i, align 4
  %__regpair41.sroa.5.0.rcv_mcast_pkts.sroa_idx.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 4, i32 1
  %142 = ptrtoint ptr %__regpair41.sroa.5.0.rcv_mcast_pkts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %__regpair41.sroa.5.0.copyload.i = load i32, ptr %__regpair41.sroa.5.0.rcv_mcast_pkts.sroa_idx.i, align 4
  %143 = zext i32 %__regpair41.sroa.5.0.copyload.i to i64
  %144 = zext i32 %__regpair41.sroa.0.0.copyload.i to i64
  %145 = shl nuw i64 %144, 32
  %146 = or i64 %145, %143
  %147 = call i64 @llvm.bswap.i64(i64 %146) #9
  %rcv_mcast_pkts49.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 10
  %148 = ptrtoint ptr %rcv_mcast_pkts49.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %rcv_mcast_pkts49.i, align 8
  %add50.i = add i64 %147, %149
  store i64 %add50.i, ptr %rcv_mcast_pkts49.i, align 8
  %rcv_bcast_pkts.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 5
  %150 = ptrtoint ptr %rcv_bcast_pkts.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %__regpair51.sroa.0.0.copyload.i = load i32, ptr %rcv_bcast_pkts.i, align 4
  %__regpair51.sroa.5.0.rcv_bcast_pkts.sroa_idx.i = getelementptr inbounds %struct.core_ll2_ustorm_per_queue_stat, ptr %ustats.i, i32 0, i32 5, i32 1
  %151 = ptrtoint ptr %__regpair51.sroa.5.0.rcv_bcast_pkts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %__regpair51.sroa.5.0.copyload.i = load i32, ptr %__regpair51.sroa.5.0.rcv_bcast_pkts.sroa_idx.i, align 4
  %152 = zext i32 %__regpair51.sroa.5.0.copyload.i to i64
  %153 = zext i32 %__regpair51.sroa.0.0.copyload.i to i64
  %154 = shl nuw i64 %153, 32
  %155 = or i64 %154, %152
  %156 = call i64 @llvm.bswap.i64(i64 %155) #9
  %rcv_bcast_pkts59.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 11
  %157 = ptrtoint ptr %rcv_bcast_pkts59.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %rcv_bcast_pkts59.i, align 8
  %add60.i = add i64 %156, %158
  store i64 %add60.i, ptr %rcv_bcast_pkts59.i, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ustats.i) #9
  %tx_stats_en = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv, i32 8
  %159 = ptrtoint ptr %tx_stats_en to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %tx_stats_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool16.not = icmp eq i8 %160, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pstats.i) #9
  %tx_stats_id.i = getelementptr %struct.qed_ll2_info, ptr %1, i32 %conv, i32 5
  %161 = ptrtoint ptr %tx_stats_id.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %tx_stats_id.i, align 2
  %163 = call ptr @memset(ptr %pstats.i, i32 0, i32 56)
  %164 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cxt, align 8
  %iro_arr.i66 = getelementptr inbounds %struct.qed_dev, ptr %165, i32 0, i32 31
  %166 = ptrtoint ptr %iro_arr.i66 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %iro_arr.i66, align 8
  %arrayidx.i67 = getelementptr %struct.iro, ptr %167, i32 26
  %168 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i67, align 4
  %conv.i68 = zext i8 %162 to i32
  %m1.i69 = getelementptr %struct.iro, ptr %167, i32 26, i32 1
  %170 = ptrtoint ptr %m1.i69 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %m1.i69, align 4
  %conv4.i70 = zext i16 %171 to i32
  %mul.i71 = mul nuw nsw i32 %conv4.i70, %conv.i68
  %add.i72 = add i32 %169, 32505856
  %add5.i73 = add i32 %add.i72, %mul.i71
  call void @qed_memcpy_from(ptr noundef %cxt, ptr noundef nonnull %call, ptr noundef nonnull %pstats.i, i32 noundef %add5.i73, i32 noundef 56) #9
  %172 = ptrtoint ptr %pstats.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %__regpair.sroa.0.0.copyload.i74 = load i32, ptr %pstats.i, align 4
  %__regpair.sroa.5.0.sent_ucast_bytes.sroa_idx.i = getelementptr inbounds i8, ptr %pstats.i, i32 4
  %173 = ptrtoint ptr %__regpair.sroa.5.0.sent_ucast_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %__regpair.sroa.5.0.copyload.i75 = load i32, ptr %__regpair.sroa.5.0.sent_ucast_bytes.sroa_idx.i, align 4
  %174 = zext i32 %__regpair.sroa.5.0.copyload.i75 to i64
  %175 = zext i32 %__regpair.sroa.0.0.copyload.i74 to i64
  %176 = shl nuw i64 %175, 32
  %177 = or i64 %176, %174
  %178 = call i64 @llvm.bswap.i64(i64 %177) #9
  %sent_ucast_bytes9.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 12
  %179 = ptrtoint ptr %sent_ucast_bytes9.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %sent_ucast_bytes9.i, align 8
  %add10.i76 = add i64 %178, %180
  store i64 %add10.i76, ptr %sent_ucast_bytes9.i, align 8
  %sent_mcast_bytes.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 1
  %181 = ptrtoint ptr %sent_mcast_bytes.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %__regpair11.sroa.0.0.copyload.i77 = load i32, ptr %sent_mcast_bytes.i, align 4
  %__regpair11.sroa.5.0.sent_mcast_bytes.sroa_idx.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 1, i32 1
  %182 = ptrtoint ptr %__regpair11.sroa.5.0.sent_mcast_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %__regpair11.sroa.5.0.copyload.i78 = load i32, ptr %__regpair11.sroa.5.0.sent_mcast_bytes.sroa_idx.i, align 4
  %183 = zext i32 %__regpair11.sroa.5.0.copyload.i78 to i64
  %184 = zext i32 %__regpair11.sroa.0.0.copyload.i77 to i64
  %185 = shl nuw i64 %184, 32
  %186 = or i64 %185, %183
  %187 = call i64 @llvm.bswap.i64(i64 %186) #9
  %sent_mcast_bytes19.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 13
  %188 = ptrtoint ptr %sent_mcast_bytes19.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %sent_mcast_bytes19.i, align 8
  %add20.i79 = add i64 %187, %189
  store i64 %add20.i79, ptr %sent_mcast_bytes19.i, align 8
  %sent_bcast_bytes.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 2
  %190 = ptrtoint ptr %sent_bcast_bytes.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %__regpair21.sroa.0.0.copyload.i80 = load i32, ptr %sent_bcast_bytes.i, align 4
  %__regpair21.sroa.5.0.sent_bcast_bytes.sroa_idx.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 2, i32 1
  %191 = ptrtoint ptr %__regpair21.sroa.5.0.sent_bcast_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %__regpair21.sroa.5.0.copyload.i81 = load i32, ptr %__regpair21.sroa.5.0.sent_bcast_bytes.sroa_idx.i, align 4
  %192 = zext i32 %__regpair21.sroa.5.0.copyload.i81 to i64
  %193 = zext i32 %__regpair21.sroa.0.0.copyload.i80 to i64
  %194 = shl nuw i64 %193, 32
  %195 = or i64 %194, %192
  %196 = call i64 @llvm.bswap.i64(i64 %195) #9
  %sent_bcast_bytes29.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 14
  %197 = ptrtoint ptr %sent_bcast_bytes29.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %sent_bcast_bytes29.i, align 8
  %add30.i82 = add i64 %196, %198
  store i64 %add30.i82, ptr %sent_bcast_bytes29.i, align 8
  %sent_ucast_pkts.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 3
  %199 = ptrtoint ptr %sent_ucast_pkts.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %__regpair31.sroa.0.0.copyload.i83 = load i32, ptr %sent_ucast_pkts.i, align 4
  %__regpair31.sroa.5.0.sent_ucast_pkts.sroa_idx.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 3, i32 1
  %200 = ptrtoint ptr %__regpair31.sroa.5.0.sent_ucast_pkts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %__regpair31.sroa.5.0.copyload.i84 = load i32, ptr %__regpair31.sroa.5.0.sent_ucast_pkts.sroa_idx.i, align 4
  %201 = zext i32 %__regpair31.sroa.5.0.copyload.i84 to i64
  %202 = zext i32 %__regpair31.sroa.0.0.copyload.i83 to i64
  %203 = shl nuw i64 %202, 32
  %204 = or i64 %203, %201
  %205 = call i64 @llvm.bswap.i64(i64 %204) #9
  %sent_ucast_pkts39.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 15
  %206 = ptrtoint ptr %sent_ucast_pkts39.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %sent_ucast_pkts39.i, align 8
  %add40.i85 = add i64 %205, %207
  store i64 %add40.i85, ptr %sent_ucast_pkts39.i, align 8
  %sent_mcast_pkts.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 4
  %208 = ptrtoint ptr %sent_mcast_pkts.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %__regpair41.sroa.0.0.copyload.i86 = load i32, ptr %sent_mcast_pkts.i, align 4
  %__regpair41.sroa.5.0.sent_mcast_pkts.sroa_idx.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 4, i32 1
  %209 = ptrtoint ptr %__regpair41.sroa.5.0.sent_mcast_pkts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %__regpair41.sroa.5.0.copyload.i87 = load i32, ptr %__regpair41.sroa.5.0.sent_mcast_pkts.sroa_idx.i, align 4
  %210 = zext i32 %__regpair41.sroa.5.0.copyload.i87 to i64
  %211 = zext i32 %__regpair41.sroa.0.0.copyload.i86 to i64
  %212 = shl nuw i64 %211, 32
  %213 = or i64 %212, %210
  %214 = call i64 @llvm.bswap.i64(i64 %213) #9
  %sent_mcast_pkts49.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 16
  %215 = ptrtoint ptr %sent_mcast_pkts49.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %sent_mcast_pkts49.i, align 8
  %add50.i88 = add i64 %214, %216
  store i64 %add50.i88, ptr %sent_mcast_pkts49.i, align 8
  %sent_bcast_pkts.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 5
  %217 = ptrtoint ptr %sent_bcast_pkts.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %__regpair51.sroa.0.0.copyload.i89 = load i32, ptr %sent_bcast_pkts.i, align 4
  %__regpair51.sroa.5.0.sent_bcast_pkts.sroa_idx.i = getelementptr inbounds %struct.core_ll2_pstorm_per_queue_stat, ptr %pstats.i, i32 0, i32 5, i32 1
  %218 = ptrtoint ptr %__regpair51.sroa.5.0.sent_bcast_pkts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %__regpair51.sroa.5.0.copyload.i90 = load i32, ptr %__regpair51.sroa.5.0.sent_bcast_pkts.sroa_idx.i, align 4
  %219 = zext i32 %__regpair51.sroa.5.0.copyload.i90 to i64
  %220 = zext i32 %__regpair51.sroa.0.0.copyload.i89 to i64
  %221 = shl nuw i64 %220, 32
  %222 = or i64 %221, %219
  %223 = call i64 @llvm.bswap.i64(i64 %222) #9
  %sent_bcast_pkts59.i = getelementptr inbounds %struct.qed_ll2_stats, ptr %p_stats, i32 0, i32 17
  %224 = ptrtoint ptr %sent_bcast_pkts59.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %sent_bcast_pkts59.i, align 8
  %add60.i91 = add i64 %223, %225
  store i64 %add60.i91, ptr %sent_bcast_pkts59.i, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pstats.i) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  call void @qed_ptt_release(ptr noundef %cxt, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_start(ptr noundef %cdev, ptr noundef %params) #0 align 64 {
entry:
  %data.i = alloca %struct.qed_ll2_acquire_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info.i, align 8
  %.off.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.rhs.i, label %entry.qed_ll2_is_storage_eng1.exit_crit_edge

entry.qed_ll2_is_storage_eng1.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_is_storage_eng1.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %fir_affin.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %2 = ptrtoint ptr %fir_affin.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in.i = load i8, ptr %fir_affin.i, align 1
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %cond.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn.i
  %cmp30.i = icmp ne ptr %cond.i, %hwfns.i
  br label %qed_ll2_is_storage_eng1.exit

qed_ll2_is_storage_eng1.exit:                     ; preds = %land.rhs.i, %entry.qed_ll2_is_storage_eng1.exit_crit_edge
  %3 = phi i1 [ %cmp30.i, %land.rhs.i ], [ false, %entry.qed_ll2_is_storage_eng1.exit_crit_edge ]
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %4 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %ll2_mac_address = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 5
  %5 = ptrtoint ptr %ll2_mac_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ll2_mac_address, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %qed_ll2_is_storage_eng1.exit.do.body_crit_edge

qed_ll2_is_storage_eng1.exit.do.body_crit_edge:   ; preds = %qed_ll2_is_storage_eng1.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

is_valid_ether_addr.exit:                         ; preds = %qed_ll2_is_storage_eng1.exit
  %add.ptr.i.i = getelementptr %struct.qed_ll2_params, ptr %params, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %or.i.i = or i32 %6, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body_crit_edge, label %if.end28

is_valid_ether_addr.exit.do.body_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %is_valid_ether_addr.exit.do.body_crit_edge, %qed_ll2_is_storage_eng1.exit.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp12 = icmp ult i8 %11, 3
  br i1 %cmp12, label %do.end, label %do.body.cleanup_crit_edge, !prof !291

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool18.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %name
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 2583, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end28:                                         ; preds = %is_valid_ether_addr.exit
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %12 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll2, align 8
  %cbs = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbs, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %do.end47, label %if.end28.if.end53_crit_edge, !prof !291

if.end28.if.end53_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end47:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2587, i32 noundef 9, ptr noundef null) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.end28.if.end53_crit_edge
  %16 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ll2, align 8
  %list = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %17, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i, align 4
  %20 = load ptr, ptr %ll2, align 8
  %lock = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %20, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.73, ptr noundef nonnull @qed_ll2_start.__key, i16 noundef signext 3) #9
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %params, align 2
  %conv67 = zext i16 %22 to i32
  %add = add nuw nsw i32 %conv67, 270
  %23 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ll2, align 8
  %rx_size = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %rx_size, align 4
  %mul = select i1 %3, i32 8192, i32 4096
  %dp_level73 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %26 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp75 = icmp ult i8 %27, 2
  br i1 %cmp75, label %do.end86, label %if.end53.for.body.preheader_crit_edge, !prof !291

if.end53.for.body.preheader_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

do.end86:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %name88 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool90.not = icmp eq ptr %name88, null
  %spec.select439 = select i1 %tobool90.not, ptr @.str.3, ptr %name88
  %28 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ll2, align 8
  %rx_size98 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %rx_size98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_size98, align 4
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72, i32 noundef 2602, ptr noundef nonnull %spec.select439, i32 noundef %mul, i32 noundef %31) #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end86, %if.end53.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.preheader
  %i.0464 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 16) #14
  %tobool106.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool106.not, label %do.body108, label %if.end137

do.body108:                                       ; preds = %for.body
  %33 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp111 = icmp ult i8 %34, 2
  br i1 %cmp111, label %do.end122, label %do.body108.err0_crit_edge, !prof !291

do.body108.err0_crit_edge:                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %err0

do.end122:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %name124 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool126.not = icmp eq ptr %name124, null
  %spec.select440 = select i1 %tobool126.not, ptr @.str.3, ptr %name124
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.72, i32 noundef 2606, ptr noundef nonnull %spec.select440) #12
  br label %err0

if.end137:                                        ; preds = %for.body
  %data = getelementptr inbounds %struct.qed_ll2_buffer, ptr %call7.i.i, i32 0, i32 1
  %phys_addr = getelementptr inbounds %struct.qed_ll2_buffer, ptr %call7.i.i, i32 0, i32 2
  %call138 = tail call fastcc i32 @qed_ll2_alloc_buffer(ptr noundef %cdev, ptr noundef %data, ptr noundef %phys_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.then140

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err0

if.end141:                                        ; preds = %if.end137
  %35 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ll2, align 8
  %list144 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %36, i32 0, i32 4
  %prev.i451 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %36, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i451 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i451, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %38, ptr noundef %list144) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end141.list_add_tail.exit_crit_edge

if.end141.list_add_tail.exit_crit_edge:           ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %prev.i451 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %prev.i451, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list144, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call7.i.i, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end141.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0464, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %call145 = tail call fastcc i32 @__qed_ll2_start(ptr noundef %cond, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end177, label %do.body148

do.body148:                                       ; preds = %for.end
  %43 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp151 = icmp ult i8 %44, 3
  br i1 %cmp151, label %do.end162, label %do.body148.err0_crit_edge, !prof !291

do.body148.err0_crit_edge:                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  br label %err0

do.end162:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  %name164 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool166.not = icmp eq ptr %name164, null
  %spec.select441 = select i1 %tobool166.not, ptr @.str.3, ptr %name164
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.72, i32 noundef 2623, ptr noundef nonnull %spec.select441) #12
  br label %err0

if.end177:                                        ; preds = %for.end
  br i1 %3, label %if.then179, label %if.end177.if.end221_crit_edge

if.end177.if.end221_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

if.then179:                                       ; preds = %if.end177
  %call182 = tail call fastcc i32 @__qed_ll2_start(ptr noundef %hwfns, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then179.if.end221_crit_edge, label %do.body185

if.then179.if.end221_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

do.body185:                                       ; preds = %if.then179
  %dp_level188 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %45 = ptrtoint ptr %dp_level188 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dp_level188, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp190 = icmp ult i8 %46, 3
  br i1 %cmp190, label %do.end201, label %do.body185.err1_crit_edge, !prof !291

do.body185.err1_crit_edge:                        ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

do.end201:                                        ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #11
  %name205 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool207.not = icmp eq ptr %name205, null
  %spec.select442 = select i1 %tobool207.not, ptr @.str.3, ptr %name205
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.72, i32 noundef 2634, ptr noundef nonnull %spec.select442) #12
  br label %err1

if.end221:                                        ; preds = %if.then179.if.end221_crit_edge, %if.end177.if.end221_crit_edge
  %hw_info222 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17
  %47 = ptrtoint ptr %hw_info222 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hw_info222, align 8
  %49 = and i32 %48, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %switch447 = icmp eq i32 %49, 2
  br i1 %switch447, label %do.body232, label %if.end221.if.then300_crit_edge

if.end221.if.then300_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then300

do.body232:                                       ; preds = %if.end221
  %50 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp235 = icmp eq i8 %51, 0
  br i1 %cmp235, label %land.rhs, label %do.body232.do.end261_crit_edge

do.body232.do.end261_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end261

land.rhs:                                         ; preds = %do.body232
  %52 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cdev, align 8
  %and = and i32 %53, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool237.not = icmp eq i32 %and, 0
  br i1 %tobool237.not, label %land.rhs.do.end261_crit_edge, label %do.end247, !prof !292

land.rhs.do.end261_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end261

do.end247:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %name249 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool251.not = icmp eq ptr %name249, null
  %spec.select443 = select i1 %tobool251.not, ptr @.str.3, ptr %name249
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.72, i32 noundef 2640, ptr noundef nonnull %spec.select443) #12
  br label %do.end261

do.end261:                                        ; preds = %do.end247, %land.rhs.do.end261_crit_edge, %do.body232.do.end261_crit_edge
  %ll2_ooo_queue_id.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 24
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %data.i) #9
  %54 = call ptr @memset(ptr %data.i, i32 0, i32 36)
  %conn_type1.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 1
  %55 = ptrtoint ptr %conn_type1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %conn_type1.i.i, align 4
  %56 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %params, align 2
  %mtu3.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 2
  %58 = ptrtoint ptr %mtu3.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %mtu3.i.i, align 4
  %rx_num_desc.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 3
  %59 = ptrtoint ptr %rx_num_desc.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 4096, ptr %rx_num_desc.i.i, align 2
  %drop_ttl0_packets.i.i = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 1
  %60 = ptrtoint ptr %drop_ttl0_packets.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %drop_ttl0_packets.i.i, align 2, !range !290
  %rx_drop_ttl0_flg.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 5
  %62 = ptrtoint ptr %rx_drop_ttl0_flg.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %rx_drop_ttl0_flg.i.i, align 2
  %rx_vlan_stripping.i.i = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 2
  %63 = ptrtoint ptr %rx_vlan_stripping.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rx_vlan_stripping.i.i, align 1, !range !290
  %rx_vlan_removal_en.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 6
  %65 = ptrtoint ptr %rx_vlan_removal_en.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %rx_vlan_removal_en.i.i, align 1
  %tx_num_desc.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 7
  %66 = ptrtoint ptr %tx_num_desc.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 256, ptr %tx_num_desc.i.i, align 4
  %p_connection_handle.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data, ptr %data.i, i32 0, i32 2
  %67 = ptrtoint ptr %p_connection_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %ll2_ooo_queue_id.i, ptr %p_connection_handle.i.i, align 4
  %cbs.i.i = getelementptr inbounds %struct.qed_ll2_acquire_data, ptr %data.i, i32 0, i32 1
  %68 = ptrtoint ptr %cbs.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ll2_cbs, ptr %cbs.i.i, align 4
  store ptr %cond, ptr getelementptr inbounds (%struct.qed_ll2_cbs, ptr @ll2_cbs, i32 0, i32 5), align 4
  %69 = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 9
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 9, ptr %69, align 1
  %71 = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data.i, i32 0, i32 10
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %71, align 4
  %call.i = call i32 @qed_ll2_acquire_connection(ptr noundef %cond, ptr noundef nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %do.body.i

do.body.i:                                        ; preds = %do.end261
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %73 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp.i = icmp ult i8 %74, 2
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.body265_crit_edge, !prof !291

do.body.i.do.body265_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body265

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef 2422, ptr noundef nonnull %name.i) #12
  br label %do.body265

if.end12.i:                                       ; preds = %do.end261
  %75 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ll2_ooo_queue_id.i, align 1
  %call13.i = tail call i32 @qed_ll2_establish_connection(ptr noundef %cond, i8 noundef zeroext %76) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end295, label %do.body16.i

do.body16.i:                                      ; preds = %if.end12.i
  %dp_level17.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %77 = ptrtoint ptr %dp_level17.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dp_level17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp19.i = icmp ult i8 %78, 2
  br i1 %cmp19.i, label %do.end30.i, label %do.body16.i.fail.i_crit_edge, !prof !291

do.body16.i.fail.i_crit_edge:                     ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.i

do.end30.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  %name32.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef 2428, ptr noundef nonnull %name32.i) #12
  br label %fail.i

fail.i:                                           ; preds = %do.end30.i, %do.body16.i.fail.i_crit_edge
  %79 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ll2_ooo_queue_id.i, align 1
  tail call void @qed_ll2_release_connection(ptr noundef %cond, i8 noundef zeroext %80) #9
  br label %do.body265

do.body265:                                       ; preds = %fail.i, %do.end.i, %do.body.i.do.body265_crit_edge
  %rc.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i, %do.body.i.do.body265_crit_edge ], [ %call13.i, %fail.i ]
  %81 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %ll2_ooo_queue_id.i, align 1
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %data.i) #9
  %82 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %cmp268 = icmp ult i8 %83, 3
  br i1 %cmp268, label %do.end279, label %do.body265.err2_crit_edge, !prof !291

do.body265.err2_crit_edge:                        ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

do.end279:                                        ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #11
  %name281 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool283.not = icmp eq ptr %name281, null
  %spec.select444 = select i1 %tobool283.not, ptr @.str.3, ptr %name281
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.72, i32 noundef 2643, ptr noundef nonnull %spec.select444) #12
  br label %err2

if.end295:                                        ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %data.i) #9
  %84 = ptrtoint ptr %hw_info222 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load i32, ptr %hw_info222, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp298 = icmp eq i32 %.pr, 3
  br i1 %cmp298, label %if.end295.if.end336_crit_edge, label %if.end295.if.then300_crit_edge

if.end295.if.then300_crit_edge:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then300

if.end295.if.end336_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end336

if.then300:                                       ; preds = %if.end295.if.then300_crit_edge, %if.end221.if.then300_crit_edge
  %call303 = tail call i32 @qed_llh_add_mac_filter(ptr noundef %cdev, i8 noundef zeroext 0, ptr noundef %ll2_mac_address) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.then300.if.end336_crit_edge, label %do.body306

if.then300.if.end336_crit_edge:                   ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end336

do.body306:                                       ; preds = %if.then300
  %85 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %86)
  %cmp309 = icmp ult i8 %86, 3
  br i1 %cmp309, label %do.end320, label %do.body306.err3_crit_edge, !prof !291

do.body306.err3_crit_edge:                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #11
  br label %err3

do.end320:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #11
  %name322 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool324.not = icmp eq ptr %name322, null
  %spec.select445 = select i1 %tobool324.not, ptr @.str.3, ptr %name322
  %call331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.72, i32 noundef 2651, ptr noundef nonnull %spec.select445) #12
  br label %err3

if.end336:                                        ; preds = %if.then300.if.end336_crit_edge, %if.end295.if.end336_crit_edge
  %ll2_mac_address337 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 59
  %87 = ptrtoint ptr %ll2_mac_address to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ll2_mac_address, align 4
  %89 = ptrtoint ptr %ll2_mac_address337 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %ll2_mac_address337, align 4
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 59, i32 4
  %92 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %add.ptr1.i, align 2
  br label %cleanup

err3:                                             ; preds = %do.end320, %do.body306.err3_crit_edge
  %93 = ptrtoint ptr %hw_info222 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hw_info222, align 8
  %95 = and i32 %94, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %switch449 = icmp eq i32 %95, 2
  br i1 %switch449, label %if.then350, label %err3.err2_crit_edge

err3.err2_crit_edge:                              ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.then350:                                       ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qed_ll2_stop_ooo(ptr noundef %cond)
  br label %err2

err2:                                             ; preds = %if.then350, %err3.err2_crit_edge, %do.end279, %do.body265.err2_crit_edge
  %rc.0 = phi i32 [ %rc.0.i, %do.end279 ], [ %rc.0.i, %do.body265.err2_crit_edge ], [ %call303, %if.then350 ], [ %call303, %err3.err2_crit_edge ]
  br i1 %3, label %if.then353, label %err2.err1_crit_edge

err2.err1_crit_edge:                              ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.then353:                                       ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #11
  %call356 = tail call fastcc i32 @__qed_ll2_stop(ptr noundef %hwfns)
  br label %err1

err1:                                             ; preds = %if.then353, %err2.err1_crit_edge, %do.end201, %do.body185.err1_crit_edge
  %rc.1 = phi i32 [ %call182, %do.end201 ], [ %call182, %do.body185.err1_crit_edge ], [ %rc.0, %if.then353 ], [ %rc.0, %err2.err1_crit_edge ]
  %96 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cond, align 8
  %ll2.i = getelementptr inbounds %struct.qed_dev, ptr %97, i32 0, i32 58
  %98 = ptrtoint ptr %ll2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ll2.i, align 8
  %handle.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %handle.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %handle.i, align 4
  %call.i452 = tail call i32 @qed_ll2_terminate_connection(ptr noundef %cond, i8 noundef zeroext %101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i452)
  %tobool.not.i453 = icmp eq i32 %call.i452, 0
  br i1 %tobool.not.i453, label %err1.__qed_ll2_stop.exit_crit_edge, label %do.body.i456

err1.__qed_ll2_stop.exit_crit_edge:               ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #11
  br label %__qed_ll2_stop.exit

do.body.i456:                                     ; preds = %err1
  %dp_level.i454 = getelementptr inbounds %struct.qed_dev, ptr %97, i32 0, i32 1
  %102 = ptrtoint ptr %dp_level.i454 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dp_level.i454, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp.i455 = icmp ult i8 %103, 2
  br i1 %cmp.i455, label %do.end.i458, label %do.body.i456.__qed_ll2_stop.exit_crit_edge, !prof !291

do.body.i456.__qed_ll2_stop.exit_crit_edge:       ; preds = %do.body.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %__qed_ll2_stop.exit

do.end.i458:                                      ; preds = %do.body.i456
  call void @__sanitizer_cov_trace_pc() #11
  %name.i457 = getelementptr inbounds %struct.qed_dev, ptr %97, i32 0, i32 2
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 2456, ptr noundef nonnull %name.i457) #12
  br label %__qed_ll2_stop.exit

__qed_ll2_stop.exit:                              ; preds = %do.end.i458, %do.body.i456.__qed_ll2_stop.exit_crit_edge, %err1.__qed_ll2_stop.exit_crit_edge
  %104 = ptrtoint ptr %ll2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ll2.i, align 8
  %handle15.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %handle15.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %handle15.i, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %cond, i8 noundef zeroext %107) #9
  br label %err0

err0:                                             ; preds = %__qed_ll2_stop.exit, %do.end162, %do.body148.err0_crit_edge, %if.then140, %do.end122, %do.body108.err0_crit_edge
  %rc.2 = phi i32 [ %call138, %if.then140 ], [ %call145, %do.end162 ], [ %call145, %do.body148.err0_crit_edge ], [ %rc.1, %__qed_ll2_stop.exit ], [ -12, %do.end122 ], [ -12, %do.body108.err0_crit_edge ]
  %108 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ll2, align 8
  %list.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %list.i, align 4
  %cmp.not20.i = icmp eq ptr %111, %list.i
  br i1 %cmp.not20.i, label %err0.qed_ll2_kill_buffers.exit_crit_edge, label %err0.for.body.i_crit_edge

err0.for.body.i_crit_edge:                        ; preds = %err0
  br label %for.body.i

err0.qed_ll2_kill_buffers.exit_crit_edge:         ; preds = %err0
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_kill_buffers.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err0.for.body.i_crit_edge
  %buffer.021.i = phi ptr [ %tmp_buffer.0.i, %for.body.i.for.body.i_crit_edge ], [ %111, %err0.for.body.i_crit_edge ]
  %112 = ptrtoint ptr %buffer.021.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %tmp_buffer.0.i = load ptr, ptr %buffer.021.i, align 4
  tail call fastcc void @qed_ll2_dealloc_buffer(ptr noundef %cdev, ptr noundef %buffer.021.i) #9
  %113 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ll2, align 8
  %list8.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %114, i32 0, i32 4
  %cmp.not.i = icmp eq ptr %tmp_buffer.0.i, %list8.i
  br i1 %cmp.not.i, label %for.body.i.qed_ll2_kill_buffers.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qed_ll2_kill_buffers.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_kill_buffers.exit

qed_ll2_kill_buffers.exit:                        ; preds = %for.body.i.qed_ll2_kill_buffers.exit_crit_edge, %err0.qed_ll2_kill_buffers.exit_crit_edge
  %115 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ll2, align 8
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %handle to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -1, ptr %handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %qed_ll2_kill_buffers.exit, %if.end336, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %qed_ll2_kill_buffers.exit ], [ 0, %if.end336 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_stop(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info.i, align 8
  %.off.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.rhs.i, label %entry.qed_ll2_is_storage_eng1.exit_crit_edge

entry.qed_ll2_is_storage_eng1.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_is_storage_eng1.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %fir_affin.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %2 = ptrtoint ptr %fir_affin.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in.i = load i8, ptr %fir_affin.i, align 1
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %cond.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn.i
  %cmp30.i = icmp ne ptr %cond.i, %hwfns.i
  br label %qed_ll2_is_storage_eng1.exit

qed_ll2_is_storage_eng1.exit:                     ; preds = %land.rhs.i, %entry.qed_ll2_is_storage_eng1.exit_crit_edge
  %3 = phi i1 [ %cmp30.i, %land.rhs.i ], [ false, %entry.qed_ll2_is_storage_eng1.exit_crit_edge ]
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %4 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %5 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ll2, align 8
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp11 = icmp eq i8 %8, -1
  br i1 %cmp11, label %qed_ll2_is_storage_eng1.exit.cleanup_crit_edge, label %if.end

qed_ll2_is_storage_eng1.exit.cleanup_crit_edge:   ; preds = %qed_ll2_is_storage_eng1.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %qed_ll2_is_storage_eng1.exit
  %hw_info13 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17
  %9 = ptrtoint ptr %hw_info13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_info13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp15 = icmp eq i32 %10, 3
  br i1 %cmp15, label %if.end.if.end18_crit_edge, label %if.then17

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ll2_mac_address = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 59
  tail call void @qed_llh_remove_mac_filter(ptr noundef %cdev, i8 noundef zeroext 0, ptr noundef %ll2_mac_address) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.if.end18_crit_edge
  %ll2_mac_address19 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 59
  tail call void @qed_llh_remove_mac_filter(ptr noundef %cdev, i8 noundef zeroext 0, ptr noundef %ll2_mac_address19) #9
  %11 = call ptr @memset(ptr %ll2_mac_address19, i32 0, i32 6)
  %12 = ptrtoint ptr %hw_info13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_info13, align 8
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch135 = icmp eq i32 %14, 2
  br i1 %switch135, label %if.then32, label %if.end18.if.end33_crit_edge

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end18
  %ll2_ooo_queue_id.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 24
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %15 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp eq i8 %16, 0
  br i1 %cmp.i, label %land.rhs.i136, label %if.then32.qed_ll2_stop_ooo.exit_crit_edge

if.then32.qed_ll2_stop_ooo.exit_crit_edge:        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_stop_ooo.exit

land.rhs.i136:                                    ; preds = %if.then32
  %dp_module.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 6
  %17 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %18, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i136.qed_ll2_stop_ooo.exit_crit_edge, label %do.end.i, !prof !292

land.rhs.i136.qed_ll2_stop_ooo.exit_crit_edge:    ; preds = %land.rhs.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_stop_ooo.exit

do.end.i:                                         ; preds = %land.rhs.i136
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %19 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ll2_ooo_queue_id.i, align 1
  %conv8.i = zext i8 %20 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 949, ptr noundef nonnull %name.i, i32 noundef %conv8.i) #12
  br label %qed_ll2_stop_ooo.exit

qed_ll2_stop_ooo.exit:                            ; preds = %do.end.i, %land.rhs.i136.qed_ll2_stop_ooo.exit_crit_edge, %if.then32.qed_ll2_stop_ooo.exit_crit_edge
  %21 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ll2_ooo_queue_id.i, align 1
  %call11.i = tail call i32 @qed_ll2_terminate_connection(ptr noundef %cond, i8 noundef zeroext %22) #9
  %23 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ll2_ooo_queue_id.i, align 1
  tail call void @qed_ll2_release_connection(ptr noundef %cond, i8 noundef zeroext %24) #9
  %25 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %ll2_ooo_queue_id.i, align 1
  br label %if.end33

if.end33:                                         ; preds = %qed_ll2_stop_ooo.exit, %if.end18.if.end33_crit_edge
  br i1 %3, label %if.then34, label %if.end33.if.end66_crit_edge

if.end33.if.end66_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then34:                                        ; preds = %if.end33
  %26 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwfns, align 8
  %ll2.i = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 58
  %28 = ptrtoint ptr %ll2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ll2.i, align 8
  %handle.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %handle.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %handle.i, align 4
  %call.i137 = tail call i32 @qed_ll2_terminate_connection(ptr noundef %hwfns, i8 noundef zeroext %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %__qed_ll2_stop.exit, label %do.body.i

do.body.i:                                        ; preds = %if.then34
  %dp_level.i139 = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %dp_level.i139 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i140 = icmp ult i8 %33, 2
  br i1 %cmp.i140, label %do.end.i142, label %do.body.i.do.body_crit_edge, !prof !291

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end.i142:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i141 = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 2
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 2456, ptr noundef nonnull %name.i141) #12
  br label %do.body

__qed_ll2_stop.exit:                              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ll2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ll2.i, align 8
  %handle15.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %handle15.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %handle15.i, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %hwfns, i8 noundef zeroext %37) #9
  br label %if.end66

do.body:                                          ; preds = %do.end.i142, %do.body.i.do.body_crit_edge
  %38 = ptrtoint ptr %ll2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ll2.i, align 8
  %handle15.i156 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %handle15.i156 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %handle15.i156, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %hwfns, i8 noundef zeroext %41) #9
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %42 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp43 = icmp ult i8 %43, 3
  br i1 %cmp43, label %do.end, label %do.body.if.end66_crit_edge, !prof !291

do.body.if.end66_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool52.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool52.not, ptr @.str.3, ptr %name
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef 2485, ptr noundef nonnull %spec.select) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end, %do.body.if.end66_crit_edge, %__qed_ll2_stop.exit, %if.end33.if.end66_crit_edge
  %rc2.0 = phi i32 [ %call.i137, %do.end ], [ %call.i137, %do.body.if.end66_crit_edge ], [ 0, %__qed_ll2_stop.exit ], [ 0, %if.end33.if.end66_crit_edge ]
  %44 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cond, align 8
  %ll2.i143 = getelementptr inbounds %struct.qed_dev, ptr %45, i32 0, i32 58
  %46 = ptrtoint ptr %ll2.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ll2.i143, align 8
  %handle.i144 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %handle.i144 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %handle.i144, align 4
  %call.i145 = tail call i32 @qed_ll2_terminate_connection(ptr noundef %cond, i8 noundef zeroext %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %__qed_ll2_stop.exit154, label %do.body.i149

do.body.i149:                                     ; preds = %if.end66
  %dp_level.i147 = getelementptr inbounds %struct.qed_dev, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %dp_level.i147 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dp_level.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i148 = icmp ult i8 %51, 2
  br i1 %cmp.i148, label %do.end.i152, label %do.body.i149.do.body70_crit_edge, !prof !291

do.body.i149.do.body70_crit_edge:                 ; preds = %do.body.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

do.end.i152:                                      ; preds = %do.body.i149
  call void @__sanitizer_cov_trace_pc() #11
  %name.i150 = getelementptr inbounds %struct.qed_dev, ptr %45, i32 0, i32 2
  %call10.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 2456, ptr noundef nonnull %name.i150) #12
  br label %do.body70

__qed_ll2_stop.exit154:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %ll2.i143 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ll2.i143, align 8
  %handle15.i153 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %handle15.i153 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %handle15.i153, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %cond, i8 noundef zeroext %55) #9
  br label %if.end99

do.body70:                                        ; preds = %do.end.i152, %do.body.i149.do.body70_crit_edge
  %56 = ptrtoint ptr %ll2.i143 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ll2.i143, align 8
  %handle15.i153157 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %handle15.i153157 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %handle15.i153157, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %cond, i8 noundef zeroext %59) #9
  %dp_level71 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %60 = ptrtoint ptr %dp_level71 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dp_level71, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp73 = icmp ult i8 %61, 3
  br i1 %cmp73, label %do.end84, label %do.body70.if.end99_crit_edge, !prof !291

do.body70.if.end99_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

do.end84:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %name86 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %tobool88.not = icmp eq ptr %name86, null
  %spec.select133 = select i1 %tobool88.not, ptr @.str.3, ptr %name86
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.134, i32 noundef 2490, ptr noundef nonnull %spec.select133) #12
  br label %if.end99

if.end99:                                         ; preds = %do.end84, %do.body70.if.end99_crit_edge, %__qed_ll2_stop.exit154
  %62 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ll2, align 8
  %list.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list.i, align 4
  %cmp.not20.i = icmp eq ptr %65, %list.i
  br i1 %cmp.not20.i, label %if.end99.qed_ll2_kill_buffers.exit_crit_edge, label %if.end99.for.body.i_crit_edge

if.end99.for.body.i_crit_edge:                    ; preds = %if.end99
  br label %for.body.i

if.end99.qed_ll2_kill_buffers.exit_crit_edge:     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_kill_buffers.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end99.for.body.i_crit_edge
  %buffer.021.i = phi ptr [ %tmp_buffer.0.i, %for.body.i.for.body.i_crit_edge ], [ %65, %if.end99.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %buffer.021.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %tmp_buffer.0.i = load ptr, ptr %buffer.021.i, align 4
  tail call fastcc void @qed_ll2_dealloc_buffer(ptr noundef %cdev, ptr noundef %buffer.021.i) #9
  %67 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ll2, align 8
  %list8.i = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %68, i32 0, i32 4
  %cmp.not.i = icmp eq ptr %tmp_buffer.0.i, %list8.i
  br i1 %cmp.not.i, label %for.body.i.qed_ll2_kill_buffers.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qed_ll2_kill_buffers.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_kill_buffers.exit

qed_ll2_kill_buffers.exit:                        ; preds = %for.body.i.qed_ll2_kill_buffers.exit_crit_edge, %if.end99.qed_ll2_kill_buffers.exit_crit_edge
  %69 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ll2, align 8
  %handle101 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %handle101 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %handle101, align 4
  %or = or i32 %call.i145, %rc2.0
  br label %cleanup

cleanup:                                          ; preds = %qed_ll2_kill_buffers.exit, %qed_ll2_is_storage_eng1.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %qed_ll2_kill_buffers.exit ], [ 0, %qed_ll2_is_storage_eng1.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_start_xmit(ptr noundef %cdev, ptr noundef %skb, i32 noundef %xmit_flags) #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  %xmit_flags.addr = alloca i32, align 4
  %pkt = alloca %struct.qed_ll2_tx_pkt_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xmit_flags.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %xmit_flags, ptr %xmit_flags.addr, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %1 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_info, align 8
  %.off = add i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %3 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt) #9
  %4 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 1
  %5 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 2
  %6 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 4
  %7 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 6
  %8 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 7
  %9 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 8
  %10 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %pkt, i32 0, i32 12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %ip_summed, align 8
  %12 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp11.not = icmp eq i16 %12, 0
  br i1 %cmp11.not, label %if.end34, label %do.body, !prof !292

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp15 = icmp ult i8 %14, 2
  br i1 %cmp15, label %do.end, label %do.body.cleanup_crit_edge, !prof !291

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool25.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool25.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef 2686, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end34:                                         ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %nr_frags36 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %nr_frags36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_frags36, align 2
  %conv37 = zext i8 %18 to i32
  %add = add nuw nsw i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %18)
  %cmp38 = icmp ugt i8 %18, 11
  br i1 %cmp38, label %do.end50, label %if.end66, !prof !291

do.end50:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %name52 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool54.not = icmp eq ptr %name52, null
  %spec.select279 = select i1 %tobool54.not, ptr @.str.3, ptr %name52
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139, i32 noundef 2697, ptr noundef nonnull %spec.select279, i32 noundef %add) #12
  br label %cleanup

if.end66:                                         ; preds = %if.end34
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %22) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end66
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !292

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.100, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.101, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %22, i32 noundef %24) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %22 to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i283 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %29, i32 %shr.i283
  %and.i = and i32 %30, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %24, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev69, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.body79, label %if.end108

do.body79:                                        ; preds = %dma_map_single_attrs.exit
  %dp_level80 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %33 = ptrtoint ptr %dp_level80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level80, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp82 = icmp ult i8 %34, 3
  br i1 %cmp82, label %do.end93, label %do.body79.cleanup_crit_edge, !prof !291

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end93:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %name95 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool97.not = icmp eq ptr %name95, null
  %spec.select280 = select i1 %tobool97.not, ptr @.str.3, ptr %name95
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.139, i32 noundef 2704, ptr noundef nonnull %spec.select280) #12
  br label %cleanup

if.end108:                                        ; preds = %dma_map_single_attrs.exit
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %37 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %39 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.160)
  switch i16 %36, label %if.end108.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %if.end108.if.then.i.i_crit_edge
    i16 -32512, label %if.end108.if.then.i.i_crit_edge298
  ]

if.end108.if.then.i.i_crit_edge298:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end108.if.then.i.i_crit_edge:                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end108.vlan_get_protocol.exit_crit_edge:       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %if.end108.if.then.i.i_crit_edge, %if.end108.if.then.i.i_crit_edge298
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i.i284 = icmp eq i16 %38, 0
  br i1 %tobool.not.i.i284, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %38)
  %cmp.i.i = icmp ult i16 %38, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !291

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.149, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %if.then117

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %40 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #9
  %41 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !295
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %40, align 2, !annotation !295
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %45 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i.i.i.i, align 8
  %47 = add i32 %vlan_depth.1.i.i, %46
  %sub.i1.i.i.i = sub i32 %44, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !292

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %49, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !291
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %50 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !291
  br i1 %50, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !291

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #9
  br label %if.then117

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #9
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %52, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge299
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge299: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge299
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %if.end108.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %36, %if.end108.vlan_get_protocol.exit_crit_edge ], [ %52, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i)
  %cmp111 = icmp eq i16 %retval.2.i.i, -31011
  br i1 %cmp111, label %land.lhs.true, label %vlan_get_protocol.exit.if.then117_crit_edge

vlan_get_protocol.exit.if.then117_crit_edge:      ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

land.lhs.true:                                    ; preds = %vlan_get_protocol.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %56 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i285 = zext i16 %57 to i32
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %conv.i.i285
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %59)
  %cmp115 = icmp eq i8 %59, 41
  br i1 %cmp115, label %land.lhs.true.if.end120_crit_edge, label %land.lhs.true.if.then117_crit_edge

land.lhs.true.if.then117_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then117:                                       ; preds = %land.lhs.true.if.then117_crit_edge, %vlan_get_protocol.exit.if.then117_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %land.lhs.true.if.end120_crit_edge
  %flags.0 = phi i8 [ 0, %land.lhs.true.if.end120_crit_edge ], [ 8, %if.then117 ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %60 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %bf.load121 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load121)
  %tobool124.not = icmp sgt i32 %bf.load121, -1
  br i1 %tobool124.not, label %if.end120.if.end129_crit_edge, label %if.then125

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then125:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %61 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vlan_tci, align 2
  %63 = or i8 %flags.0, 2
  br label %if.end129

if.end129:                                        ; preds = %if.then125, %if.end120.if.end129_crit_edge
  %vlan.0 = phi i16 [ %62, %if.then125 ], [ 0, %if.end120.if.end129_crit_edge ]
  %flags.1 = phi i8 [ %63, %if.then125 ], [ %flags.0, %if.end120.if.end129_crit_edge ]
  %64 = getelementptr inbounds i8, ptr %pkt, i32 12
  %65 = call ptr @memset(ptr %64, i32 0, i32 16)
  %conv132 = trunc i32 %add to i8
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv132, ptr %8, align 2
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %vlan.0, ptr %6, align 4
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %flags.1, ptr %9, align 1
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %5, align 4
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i, ptr %4, align 4
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  %conv135 = trunc i32 %72 to i16
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv135, ptr %7, align 4
  %74 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %skb, ptr %pkt, align 4
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 15
  %75 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %mf_bits, align 4
  %77 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool137.not = icmp eq i32 %77, 0
  br i1 %tobool137.not, label %if.end129.if.end142_crit_edge, label %land.lhs.true138

if.end129.if.end142_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

land.lhs.true138:                                 ; preds = %if.end129
  %78 = ptrtoint ptr %xmit_flags.addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %xmit_flags.addr.0.xmit_flags.addr.0. = load volatile i32, ptr %xmit_flags.addr, align 4
  %and1.i282 = and i32 %xmit_flags.addr.0.xmit_flags.addr.0., 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i282)
  %tobool140.not = icmp eq i32 %and1.i282, 0
  br i1 %tobool140.not, label %land.lhs.true138.if.end142_crit_edge, label %if.then141

land.lhs.true138.if.end142_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then141:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %10, align 1
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %land.lhs.true138.if.end142_crit_edge, %if.end129.if.end142_crit_edge
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %80 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ll2, align 8
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %handle, align 4
  %call143 = call i32 @qed_ll2_prepare_tx_packet(ptr noundef %cond, i8 noundef zeroext %83, ptr noundef nonnull %pkt, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %for.cond.preheader, label %if.end142.err_crit_edge, !prof !292

if.end142.err_crit_edge:                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.preheader:                               ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp154294.not = icmp eq i8 %18, 0
  br i1 %cmp154294.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %if.end202
  %inc = add nuw nsw i32 %i.0295, 1
  %exitcond.not = icmp eq i32 %inc, %conv37
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0295 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %84 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i, align 4
  %arrayidx157 = getelementptr %struct.skb_shared_info, ptr %85, i32 0, i32 12, i32 %i.0295
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %85, i32 0, i32 12, i32 %i.0295, i32 1
  %88 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bv_len.i, align 4
  %90 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx157, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %85, i32 0, i32 12, i32 %i.0295, i32 2
  %92 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %dev159, ptr noundef %91, i32 noundef %93, i32 noundef %89, i32 noundef 1, i32 noundef 0) #9
  %94 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev, align 8
  %dev163 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev163, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i287.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i287.not, label %do.body173, label %if.end202, !prof !291

do.body173:                                       ; preds = %for.body
  %dp_level174 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %96 = ptrtoint ptr %dp_level174 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %dp_level174, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %97)
  %cmp176 = icmp ult i8 %97, 3
  br i1 %cmp176, label %do.end187, label %do.body173.err_crit_edge, !prof !291

do.body173.err_crit_edge:                         ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

do.end187:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  %name189 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool191.not = icmp eq ptr %name189, null
  %spec.select281 = select i1 %tobool191.not, ptr @.str.3, ptr %name189
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.139, i32 noundef 2748, ptr noundef nonnull %spec.select281) #12
  br label %err

if.end202:                                        ; preds = %for.body
  %98 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ll2, align 8
  %handle204 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %handle204 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %handle204, align 4
  %102 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bv_len.i, align 4
  %conv206 = trunc i32 %103 to i16
  %call207 = call i32 @qed_ll2_set_fragment_of_tx_packet(ptr noundef %cond, i8 noundef zeroext %101, i32 noundef %call2.i, i16 noundef zeroext %conv206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %for.cond, label %if.end202.cleanup_crit_edge, !prof !292

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %do.end187, %do.body173.err_crit_edge, %if.end142.err_crit_edge
  %rc.0 = phi i32 [ %call143, %if.end142.err_crit_edge ], [ -12, %do.end187 ], [ -12, %do.body173.err_crit_edge ]
  %mapping.0 = phi i32 [ %retval.0.i, %if.end142.err_crit_edge ], [ -1, %do.end187 ], [ -1, %do.body173.err_crit_edge ]
  %104 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev, align 8
  %dev218 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %106 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev218, i32 noundef %mapping.0, i32 noundef %107, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end202.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end93, %do.body79.cleanup_crit_edge, %do.end50, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end50 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end93 ], [ -22, %do.body79.cleanup_crit_edge ], [ %rc.0, %err ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call207, %if.end202.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qed_ll2_register_cb_ops(ptr nocapture noundef readonly %cdev, ptr noundef %ops, ptr noundef %cookie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %0 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll2, align 8
  %cbs = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %cbs, align 4
  %3 = load ptr, ptr %ll2, align 8
  %cb_cookie = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cb_cookie to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cookie, ptr %cb_cookie, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ll2_stats(ptr noundef %cdev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info.i, align 8
  %.off.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.rhs.i, label %entry.qed_ll2_is_storage_eng1.exit_crit_edge

entry.qed_ll2_is_storage_eng1.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qed_ll2_is_storage_eng1.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %fir_affin.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %2 = ptrtoint ptr %fir_affin.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in.i = load i8, ptr %fir_affin.i, align 1
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %cond.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn.i
  %cmp30.i = icmp ne ptr %cond.i, %hwfns.i
  br label %qed_ll2_is_storage_eng1.exit

qed_ll2_is_storage_eng1.exit:                     ; preds = %land.rhs.i, %entry.qed_ll2_is_storage_eng1.exit_crit_edge
  %3 = phi i1 [ %cmp30.i, %land.rhs.i ], [ false, %entry.qed_ll2_is_storage_eng1.exit_crit_edge ]
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %4 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %5 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ll2, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %qed_ll2_is_storage_eng1.exit.cleanup_crit_edge, label %if.end

qed_ll2_is_storage_eng1.exit.cleanup_crit_edge:   ; preds = %qed_ll2_is_storage_eng1.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %qed_ll2_is_storage_eng1.exit
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %handle, align 4
  %9 = call ptr @memset(ptr %stats, i32 0, i32 144)
  %call.i = tail call fastcc i32 @__qed_ll2_get_stats(ptr noundef %cond, i8 noundef zeroext %8, ptr noundef %stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end32, label %do.body

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp15 = icmp ult i8 %11, 3
  br i1 %cmp15, label %do.end, label %do.body.cleanup_crit_edge, !prof !291

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %tobool21.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool21.not, ptr @.str.3, ptr %name
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, i32 noundef 2784, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end
  br i1 %3, label %if.then34, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  %12 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll2, align 8
  %handle38 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %handle38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %handle38, align 4
  %call39 = tail call fastcc i32 @__qed_ll2_get_stats(ptr noundef %hwfns, i8 noundef zeroext %15, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then34.cleanup_crit_edge, label %do.body42

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body42:                                        ; preds = %if.then34
  %dp_level45 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %16 = ptrtoint ptr %dp_level45 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level45, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp47 = icmp ult i8 %17, 3
  br i1 %cmp47, label %do.end58, label %do.body42.cleanup_crit_edge, !prof !291

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end58:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %name62 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool64.not = icmp eq ptr %name62, null
  %spec.select102 = select i1 %tobool64.not, ptr @.str.3, ptr %name62
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.151, i32 noundef 2794, ptr noundef nonnull %spec.select102) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %do.body42.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %qed_ll2_is_storage_eng1.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %qed_ll2_is_storage_eng1.exit.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call.i, %do.body.cleanup_crit_edge ], [ %call39, %do.end58 ], [ %call39, %do.body42.cleanup_crit_edge ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ll2_alloc_if(ptr nocapture noundef writeonly %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #14
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %1 = ptrtoint ptr %ll2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ll2, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ll2_dealloc_if(ptr nocapture noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %0 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll2, align 8
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %ll2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ll2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_chain_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_put_free_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_ooo_submit_tx_buffers(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_ll2_conn) unnamed_addr #0 align 64 {
entry:
  %tx_pkt = alloca %struct.qed_ll2_tx_pkt_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tx_pkt) #9
  %0 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %tx_pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %tx_pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %tx_pkt, i32 0, i32 4
  %3 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %tx_pkt, i32 0, i32 6
  %4 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %tx_pkt, i32 0, i32 7
  %5 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, ptr %tx_pkt, i32 0, i32 8
  %p_ooo_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %tx_dest = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 7
  %my_id = getelementptr inbounds %struct.qed_ll2_info, ptr %p_ll2_conn, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %tx_pkt, i32 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %entry
  %7 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_ooo_info, align 4
  %call = tail call ptr @qed_ooo_get_ready_buffer(ptr noundef %p_hwfn, ptr noundef %8) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  %rx_buffer_phys_addr = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %rx_buffer_phys_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buffer_phys_addr, align 4
  %placement_offset = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %placement_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %placement_offset, align 2
  %conv = zext i8 %12 to i32
  %add = add i32 %10, %conv
  %13 = call ptr @memset(ptr %6, i32 0, i32 20)
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %4, align 2
  %vlan = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %2, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 65, ptr %5, align 1
  %19 = ptrtoint ptr %tx_dest to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_dest, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %20, label %sw.default [
    i32 0, label %while.body.sw.epilog_crit_edge
    i32 1, label %while.body.sw.epilog.sink.split_crit_edge
  ]

while.body.sw.epilog.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %while.body.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.default ], [ %20, %while.body.sw.epilog.sink.split_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body.sw.epilog_crit_edge
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %0, align 4
  %packet_length = getelementptr inbounds %struct.qed_ooo_buffer, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %packet_length to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %packet_length, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %3, align 4
  %27 = ptrtoint ptr %tx_pkt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %tx_pkt, align 4
  %28 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %my_id, align 4
  %call23 = call i32 @qed_ll2_prepare_tx_packet(ptr noundef %p_hwfn, i8 noundef zeroext %29, ptr noundef nonnull %tx_pkt, i1 noundef zeroext true)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.epilog.while.cond_crit_edge, label %if.then

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_ooo_info, align 4
  tail call void @qed_ooo_put_ready_buffer(ptr noundef %p_hwfn, ptr noundef %31, ptr noundef nonnull %call, i8 noundef zeroext 0) #9
  br label %while.end

while.end:                                        ; preds = %if.then, %while.cond.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tx_pkt) #9
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @qed_chain_consume(ptr noundef %p_chain) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cnt_type = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 13
  %0 = ptrtoint ptr %cnt_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3
  %cons_idx = getelementptr inbounds %struct.qed_chain_u16, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %cons_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cons_idx, align 2
  %elem_per_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %4 = ptrtoint ptr %elem_per_page_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %elem_per_page_mask, align 2
  %and57 = and i16 %5, %3
  %next_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %6 = ptrtoint ptr %next_page_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_page_mask, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57, i16 %7)
  %cmp3 = icmp eq i16 %and57, %7
  br i1 %cmp3, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  %p_cons_elem = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %9, label %if.then5.if.end_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %sw.bb6.i
    i32 2, label %if.end25.i
  ]

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_cons_elem, align 4
  %next_virt.i = getelementptr inbounds %struct.qed_chain_next, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %next_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_virt.i, align 4
  store ptr %14, ptr %p_cons_elem, align 4
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %15 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %elem_unusable.i, align 2
  %conv.i = zext i8 %16 to i16
  %add.i = add i16 %3, %conv.i
  %17 = ptrtoint ptr %cons_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i, ptr %cons_idx, align 2
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %18 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_virt_addr.i, align 4
  %20 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %p_cons_elem, align 4
  br label %if.end

if.end25.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %c = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %cons_page_idx = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c, i32 0, i32 1
  %21 = ptrtoint ptr %cons_page_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cons_page_idx, align 2
  %inc.i = add i16 %22, 1
  %conv12.i = zext i16 %inc.i to i32
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %23 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %24, %conv12.i
  %spec.store.select.i = select i1 %cmp13.i, i16 0, i16 %inc.i
  %25 = ptrtoint ptr %cons_page_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.store.select.i, ptr %cons_page_idx, align 2
  %conv17.i = zext i16 %spec.store.select.i to i32
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %26 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbl.i, align 4
  %arrayidx.i = getelementptr %struct.addr_tbl_entry, ptr %27, i32 %conv17.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %p_cons_elem, align 4
  br label %if.end

if.end:                                           ; preds = %if.end25.i, %sw.bb6.i, %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %cons_idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cons_idx, align 2
  %inc = add i16 %32, 1
  store i16 %inc, ptr %cons_idx, align 2
  br label %if.end30

if.else:                                          ; preds = %entry
  %cons_idx11 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cons_idx11, align 4
  %elem_per_page_mask12 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %35 = ptrtoint ptr %elem_per_page_mask12 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask12, align 2
  %conv13 = zext i16 %36 to i32
  %and14 = and i32 %34, %conv13
  %next_page_mask15 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %37 = ptrtoint ptr %next_page_mask15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_page_mask15, align 2
  %conv16 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv16)
  %cmp17 = icmp eq i32 %and14, %conv16
  br i1 %cmp17, label %if.then19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.else
  %p_cons_elem25 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %mode.i58 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %39 = ptrtoint ptr %mode.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i58, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %40, label %if.then19.if.end26_crit_edge [
    i32 0, label %if.else.i69
    i32 1, label %sw.bb6.i71
    i32 2, label %if.end25.i90
  ]

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else.i69:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_cons_elem25, align 4
  %next_virt.i59 = getelementptr inbounds %struct.qed_chain_next, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %next_virt.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next_virt.i59, align 4
  store ptr %45, ptr %p_cons_elem25, align 4
  %elem_unusable.i62 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %46 = ptrtoint ptr %elem_unusable.i62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %elem_unusable.i62, align 2
  %conv4.i67 = zext i8 %47 to i32
  %add5.i68 = add i32 %34, %conv4.i67
  %48 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add5.i68, ptr %cons_idx11, align 4
  br label %if.end26

sw.bb6.i71:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %p_virt_addr.i70 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %49 = ptrtoint ptr %p_virt_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_virt_addr.i70, align 4
  %51 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %p_cons_elem25, align 4
  br label %if.end26

if.end25.i90:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %cons_page_idx24 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %cons_page_idx24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cons_page_idx24, align 4
  %inc19.i82 = add i32 %53, 1
  %page_cnt20.i83 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %54 = ptrtoint ptr %page_cnt20.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_cnt20.i83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82, i32 %55)
  %cmp21.i84 = icmp eq i32 %inc19.i82, %55
  %spec.store.select43.i85 = select i1 %cmp21.i84, i32 0, i32 %inc19.i82
  %56 = ptrtoint ptr %cons_page_idx24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select43.i85, ptr %cons_page_idx24, align 4
  %pbl.i88 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %57 = ptrtoint ptr %pbl.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pbl.i88, align 4
  %arrayidx.i89 = getelementptr %struct.addr_tbl_entry, ptr %58, i32 %spec.store.select43.i85
  %59 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i89, align 4
  %61 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %p_cons_elem25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25.i90, %sw.bb6.i71, %if.else.i69, %if.then19.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %62 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cons_idx11, align 4
  %inc29 = add i32 %63, 1
  store i32 %inc29, ptr %cons_idx11, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end
  %p_cons_elem31 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %64 = ptrtoint ptr %p_cons_elem31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_cons_elem31, align 4
  %elem_size = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 9
  %66 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %elem_size, align 4
  %conv33 = zext i16 %67 to i32
  %add.ptr = getelementptr i8, ptr %65, i32 %conv33
  store ptr %add.ptr, ptr %p_cons_elem31, align 4
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_save_history_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_delete_isles(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_add_new_isle(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_add_new_buffer(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_join_isles(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_put_ready_buffer(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ooo_release_connection_isles(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ooo_get_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ooo_get_ready_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_recovery_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_init_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_int_get_sp_sb_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_post(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_cm_pq_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_from(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_device_num_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_ll2_alloc_buffer(ptr noundef %cdev, ptr nocapture noundef %data, ptr nocapture noundef writeonly %phys_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %0 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll2, align 8
  %rx_size = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 2592) #13
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp ult i8 %6, 2
  br i1 %cmp, label %do.end, label %do.body.return_crit_edge, !prof !291

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 118, ptr noundef nonnull %spec.select) #12
  br label %return

if.end11:                                         ; preds = %entry
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %add.ptr = getelementptr i8, ptr %call9.i, i32 128
  %9 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ll2, align 8
  %rx_size13 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %rx_size13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_size13, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end11
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i63, !prof !292

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i63:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i62 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i62, label %if.end.i.i64, label %if.then.i63.dev_name.exit.i_crit_edge

if.then.i63.dev_name.exit.i_crit_edge:            ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i64:                                     ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i64, %if.then.i63.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i64 ], [ %14, %if.then.i63.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.100, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.101, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %12, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %19 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %phys_addr, align 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev16, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i65 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i65, label %do.body20, label %dma_map_single_attrs.exit.return_crit_edge

dma_map_single_attrs.exit.return_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body20:                                        ; preds = %dma_map_single_attrs.exit
  %dp_level21 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %22 = ptrtoint ptr %dp_level21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp23 = icmp ult i8 %23, 2
  br i1 %cmp23, label %do.end33, label %do.body20.do.end46_crit_edge, !prof !291

do.body20.do.end46_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end33:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %name35 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool37.not = icmp eq ptr %name35, null
  %spec.select61 = select i1 %tobool37.not, ptr @.str.3, ptr %name35
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 126, ptr noundef nonnull %spec.select61) #12
  br label %do.end46

do.end46:                                         ; preds = %do.end33, %do.body20.do.end46_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %25) #9
  br label %return

return:                                           ; preds = %do.end46, %dma_map_single_attrs.exit.return_crit_edge, %do.end, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end46 ], [ -12, %do.body.return_crit_edge ], [ -12, %do.end ], [ 0, %dma_map_single_attrs.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qed_ll2_start(ptr noundef %p_hwfn, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.qed_ll2_acquire_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %data) #9
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_info, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.__qed_ll2_start, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %conn_type.0 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %entry.sw.epilog_crit_edge ]
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 58
  %6 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ll2, align 8
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %7, i32 0, i32 2
  %8 = call ptr @memset(ptr %data, i32 0, i32 36)
  %conn_type1.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %conn_type1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conn_type.0, ptr %conn_type1.i, align 4
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %params, align 2
  %mtu3.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %mtu3.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %mtu3.i, align 4
  %rx_num_desc.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %rx_num_desc.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4096, ptr %rx_num_desc.i, align 2
  %drop_ttl0_packets.i = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %drop_ttl0_packets.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drop_ttl0_packets.i, align 2, !range !290
  %rx_drop_ttl0_flg.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %rx_drop_ttl0_flg.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %rx_drop_ttl0_flg.i, align 2
  %rx_vlan_stripping.i = getelementptr inbounds %struct.qed_ll2_params, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %rx_vlan_stripping.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_vlan_stripping.i, align 1, !range !290
  %rx_vlan_removal_en.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 6
  %19 = ptrtoint ptr %rx_vlan_removal_en.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rx_vlan_removal_en.i, align 1
  %tx_num_desc.i = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 7
  %20 = ptrtoint ptr %tx_num_desc.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %tx_num_desc.i, align 4
  %p_connection_handle.i = getelementptr inbounds %struct.qed_ll2_acquire_data, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %p_connection_handle.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %handle, ptr %p_connection_handle.i, align 4
  %cbs.i = getelementptr inbounds %struct.qed_ll2_acquire_data, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %cbs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ll2_cbs, ptr %cbs.i, align 4
  store ptr %p_hwfn, ptr getelementptr inbounds (%struct.qed_ll2_cbs, ptr @ll2_cbs, i32 0, i32 5), align 4
  %23 = getelementptr inbounds %struct.qed_ll2_acquire_data_inputs, ptr %data, i32 0, i32 10
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  %call = call i32 @qed_ll2_acquire_connection(ptr noundef %p_hwfn, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %do.body

do.body:                                          ; preds = %sw.epilog
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %25 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp = icmp ult i8 %26, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !291

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 2529, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end15:                                         ; preds = %sw.epilog
  %27 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ll2, align 8
  %handle17 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %handle17 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %handle17, align 4
  %call18 = tail call i32 @qed_ll2_establish_connection(ptr noundef %p_hwfn, i8 noundef zeroext %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end50, label %do.body21

do.body21:                                        ; preds = %if.end15
  %dp_level22 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %31 = ptrtoint ptr %dp_level22 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_level22, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp24 = icmp ult i8 %32, 2
  br i1 %cmp24, label %do.end35, label %do.body21.release_conn_crit_edge, !prof !291

do.body21.release_conn_crit_edge:                 ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_conn

do.end35:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %name37 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool39.not = icmp eq ptr %name37, null
  %spec.select208 = select i1 %tobool39.not, ptr @.str.3, ptr %name37
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, i32 noundef 2535, ptr noundef nonnull %spec.select208) #12
  br label %release_conn

if.end50:                                         ; preds = %if.end15
  %33 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ll2, align 8
  %lock = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %34, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %35 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ll2, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %list = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %36, i32 0, i32 4
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %list, align 4
  %cmp64.not213 = icmp eq ptr %40, %list
  br i1 %cmp64.not213, label %if.end50.for.end_crit_edge, label %for.body.lr.ph

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end50
  %dp_level74 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %name89 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool91.not = icmp eq ptr %name89, null
  %spec.select209 = select i1 %tobool91.not, ptr @.str.3, ptr %name89
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %41 = phi ptr [ %36, %for.body.lr.ph ], [ %68, %for.inc.for.body_crit_edge ]
  %buffer.0215 = phi ptr [ %40, %for.body.lr.ph ], [ %tmp_buffer.0217, %for.inc.for.body_crit_edge ]
  %rx_cnt.0214 = phi i32 [ %38, %for.body.lr.ph ], [ %rx_cnt.1, %for.inc.for.body_crit_edge ]
  %42 = ptrtoint ptr %buffer.0215 to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp_buffer.0217 = load ptr, ptr %buffer.0215, align 4
  %handle69 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %41, i32 0, i32 2
  %43 = ptrtoint ptr %handle69 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %handle69, align 4
  %phys_addr = getelementptr inbounds %struct.qed_ll2_buffer, ptr %buffer.0215, i32 0, i32 2
  %45 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_addr, align 4
  %call70 = tail call i32 @qed_ll2_post_rx_buffer(ptr noundef %p_hwfn, i8 noundef zeroext %44, i32 noundef %46, i16 noundef zeroext 0, ptr noundef %buffer.0215, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.else, label %do.body73

do.body73:                                        ; preds = %for.body
  %47 = ptrtoint ptr %dp_level74 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dp_level74, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp76 = icmp ult i8 %48, 2
  br i1 %cmp76, label %do.end87, label %do.body73.do.end101_crit_edge, !prof !291

do.body73.do.end101_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end101

do.end87:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef 2548, ptr noundef nonnull %spec.select209) #12
  br label %do.end101

do.end101:                                        ; preds = %do.end87, %do.body73.do.end101_crit_edge
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phys_addr, align 4
  %53 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ll2, align 8
  %rx_size = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %52, i32 noundef %56, i32 noundef 2, i32 noundef 0) #9
  %data104 = getelementptr inbounds %struct.qed_ll2_buffer, ptr %buffer.0215, i32 0, i32 1
  %57 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data104, align 4
  tail call void @kfree(ptr noundef %58) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buffer.0215) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end101.list_del.exit_crit_edge

do.end101.list_del.exit_crit_edge:                ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %buffer.0215, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %buffer.0215 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer.0215, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end101.list_del.exit_crit_edge
  %65 = ptrtoint ptr %buffer.0215 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %buffer.0215, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %buffer.0215, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %buffer.0215) #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %rx_cnt.0214, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %list_del.exit
  %rx_cnt.1 = phi i32 [ %rx_cnt.0214, %list_del.exit ], [ %inc, %if.else ]
  %67 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ll2, align 8
  %list63 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %68, i32 0, i32 4
  %cmp64.not = icmp eq ptr %tmp_buffer.0217, %list63
  br i1 %cmp64.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end50.for.end_crit_edge
  %rx_cnt.0.lcssa = phi i32 [ %38, %if.end50.for.end_crit_edge ], [ %rx_cnt.1, %for.inc.for.end_crit_edge ]
  %rc.0.lcssa = phi i32 [ 0, %if.end50.for.end_crit_edge ], [ %call70, %for.inc.for.end_crit_edge ]
  %.lcssa = phi ptr [ %36, %if.end50.for.end_crit_edge ], [ %68, %for.inc.for.end_crit_edge ]
  %lock113 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %.lcssa, i32 0, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock113) #9
  %69 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ll2, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_cnt.0.lcssa, i32 %72)
  %cmp116 = icmp eq i32 %rx_cnt.0.lcssa, %72
  br i1 %cmp116, label %do.body119, label %if.end148

do.body119:                                       ; preds = %for.end
  %dp_level120 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %73 = ptrtoint ptr %dp_level120 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dp_level120, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %cmp122 = icmp ult i8 %74, 3
  br i1 %cmp122, label %do.end133, label %do.body119.terminate_conn_crit_edge, !prof !291

do.body119.terminate_conn_crit_edge:              ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %terminate_conn

do.end133:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %name135 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool137.not = icmp eq ptr %name135, null
  %spec.select210 = select i1 %tobool137.not, ptr @.str.3, ptr %name135
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.103, i32 noundef 2561, ptr noundef nonnull %spec.select210) #12
  br label %terminate_conn

if.end148:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rx_cnt.0.lcssa, ptr %70, align 4
  br label %cleanup

terminate_conn:                                   ; preds = %do.end133, %do.body119.terminate_conn_crit_edge
  %76 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ll2, align 8
  %handle152 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %handle152 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %handle152, align 4
  %call153 = tail call i32 @qed_ll2_terminate_connection(ptr noundef %p_hwfn, i8 noundef zeroext %79)
  br label %release_conn

release_conn:                                     ; preds = %terminate_conn, %do.end35, %do.body21.release_conn_crit_edge
  %rc.1 = phi i32 [ %call18, %do.end35 ], [ %call18, %do.body21.release_conn_crit_edge ], [ %rc.0.lcssa, %terminate_conn ]
  %80 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ll2, align 8
  %handle155 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %handle155 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %handle155, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %p_hwfn, i8 noundef zeroext %83)
  br label %cleanup

cleanup:                                          ; preds = %release_conn, %if.end148, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %release_conn ], [ 0, %if.end148 ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_llh_add_mac_filter(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_ll2_stop_ooo(ptr noundef %p_hwfn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll2_ooo_queue_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 2, i32 24
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !292

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %4 = ptrtoint ptr %ll2_ooo_queue_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ll2_ooo_queue_id, align 1
  %conv8 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 949, ptr noundef nonnull %spec.select, i32 noundef %conv8) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %6 = ptrtoint ptr %ll2_ooo_queue_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ll2_ooo_queue_id, align 1
  %call11 = tail call i32 @qed_ll2_terminate_connection(ptr noundef %p_hwfn, i8 noundef zeroext %7)
  %8 = ptrtoint ptr %ll2_ooo_queue_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ll2_ooo_queue_id, align 1
  tail call void @qed_ll2_release_connection(ptr noundef %p_hwfn, i8 noundef zeroext %9)
  %10 = ptrtoint ptr %ll2_ooo_queue_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %ll2_ooo_queue_id, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qed_ll2_stop(ptr noundef %p_hwfn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll2, align 8
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %handle, align 4
  %call = tail call i32 @qed_ll2_terminate_connection(ptr noundef %p_hwfn, i8 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ult i8 %7, 2
  br i1 %cmp, label %do.end, label %do.body.if.end13_crit_edge, !prof !291

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 2456, ptr noundef nonnull %spec.select) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %entry.if.end13_crit_edge
  %8 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll2, align 8
  %handle15 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %handle15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %handle15, align 4
  tail call void @qed_ll2_release_connection(ptr noundef %p_hwfn, i8 noundef zeroext %11)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_ll2b_complete_rx_packet(ptr noundef %cxt, ptr nocapture noundef %data) #0 align 64 {
entry:
  %new_phys_addr = alloca i32, align 4
  %new_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cxt, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_phys_addr) #9
  %4 = ptrtoint ptr %new_phys_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new_phys_addr, align 4, !annotation !295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_data) #9
  %5 = ptrtoint ptr %new_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_data, align 4, !annotation !295
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %8 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_module, align 4
  %and = and i32 %9, 2103296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end15_crit_edge, label %do.end, !prof !292

land.rhs.do.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %rx_buf_addr = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %rx_buf_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buf_addr, align 4
  %conv9 = zext i32 %11 to i64
  %u = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 12
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %u, align 2
  %conv10 = zext i8 %13 to i32
  %length = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 7
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 4
  %conv11 = zext i16 %15 to i32
  %parse_flags = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %parse_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %parse_flags, align 4
  %conv12 = zext i16 %17 to i32
  %vlan = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan, align 4
  %conv13 = zext i16 %19 to i32
  %opaque_data_0 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %opaque_data_0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opaque_data_0, align 4
  %opaque_data_1 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 9
  %22 = ptrtoint ptr %opaque_data_1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opaque_data_1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 180, ptr noundef nonnull %spec.select, i64 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %21, i32 noundef %23) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end, %land.rhs.do.end15_crit_edge, %entry.do.end15_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 8
  %and17 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end15.if.end25_crit_edge, label %land.lhs.true

do.end15.if.end25_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %do.end15
  %data19 = getelementptr inbounds %struct.qed_ll2_buffer, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data19, align 4
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %land.lhs.true.if.end25_crit_edge, label %if.then21

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %length23 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 7
  %28 = ptrtoint ptr %length23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length23, align 4
  %conv24 = zext i16 %29 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %27, i32 noundef %conv24, i1 noundef zeroext false) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true.if.end25_crit_edge, %do.end15.if.end25_crit_edge
  %length26 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 7
  %30 = ptrtoint ptr %length26 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %31)
  %cmp28 = icmp ult i16 %31, 14
  br i1 %cmp28, label %if.end25.out_post_crit_edge, label %if.then33

if.end25.out_post_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_post

if.then33:                                        ; preds = %if.end25
  %32 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cxt, align 8
  %call35 = call fastcc i32 @qed_ll2_alloc_buffer(ptr noundef %33, ptr noundef nonnull %new_data, ptr noundef nonnull %new_phys_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %phi.cmp = icmp eq i32 %call35, 0
  br i1 %phi.cmp, label %if.end39, label %if.then33.out_post_crit_edge

if.then33.out_post_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_post

if.end39:                                         ; preds = %if.then33
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 50
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %phys_addr = getelementptr inbounds %struct.qed_ll2_buffer, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_addr, align 4
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 58
  %38 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ll2, align 8
  %rx_size = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %37, i32 noundef %41, i32 noundef 2, i32 noundef 0) #9
  %data40 = getelementptr inbounds %struct.qed_ll2_buffer, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data40, align 4
  %call41 = tail call ptr @build_skb(ptr noundef %43, i32 noundef 0) #9
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.body44, label %if.end74

do.body44:                                        ; preds = %if.end39
  %dp_level45 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %dp_level45 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp_level45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp47 = icmp ult i8 %45, 2
  br i1 %cmp47, label %do.end58, label %do.body44.do.end72_crit_edge, !prof !291

do.body44.do.end72_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

do.end58:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %name60 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 2
  %tobool62.not = icmp eq ptr %name60, null
  %spec.select206 = select i1 %tobool62.not, ptr @.str.3, ptr %name60
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.114, i32 noundef 205, ptr noundef nonnull %spec.select206) #12
  br label %do.end72

do.end72:                                         ; preds = %do.end58, %do.body44.do.end72_crit_edge
  %46 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data40, align 4
  tail call void @kfree(ptr noundef %47) #9
  br label %out_post1

if.end74:                                         ; preds = %if.end39
  %u75 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 12
  %48 = ptrtoint ptr %u75 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %u75, align 2
  %add = xor i8 %49, -128
  store i8 %add, ptr %u75, align 2
  %conv79 = zext i8 %add to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 19
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 %conv79
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %53, i32 %conv79
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %54 = ptrtoint ptr %length26 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %length26, align 4
  %conv81 = zext i16 %55 to i32
  %call82 = tail call ptr @skb_put(ptr noundef nonnull %call41, i32 noundef %conv81) #9
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 18
  %58 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 15, i32 0, i32 21
  %60 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %h_proto, align 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 15, i32 0, i32 18
  %63 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %protocol, align 8
  %64 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ll2, align 8
  %cbs = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cbs, align 4
  %tobool85.not = icmp eq ptr %67, null
  br i1 %tobool85.not, label %if.end74.do.body103_crit_edge, label %land.lhs.true86

if.end74.do.body103_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body103

land.lhs.true86:                                  ; preds = %if.end74
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool89.not = icmp eq ptr %69, null
  br i1 %tobool89.not, label %land.lhs.true86.do.body103_crit_edge, label %if.then90

land.lhs.true86.do.body103_crit_edge:             ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body103

if.then90:                                        ; preds = %land.lhs.true86
  %vlan91 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 4
  %70 = ptrtoint ptr %vlan91 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vlan91, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool92.not = icmp eq i16 %71, 0
  br i1 %tobool92.not, label %if.then90.if.end95_crit_edge, label %if.then93

if.then90.if.end95_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 15, i32 0, i32 9
  %72 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 15, i32 0, i32 10
  %73 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %71, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call41, i32 0, i32 15, i32 0, i32 3
  %74 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.then90.if.end95_crit_edge
  %75 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ll2, align 8
  %cbs97 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %cbs97 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cbs97, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %cb_cookie = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %76, i32 0, i32 6
  %81 = ptrtoint ptr %cb_cookie to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cb_cookie, align 4
  %opaque_data_0100 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 8
  %83 = ptrtoint ptr %opaque_data_0100 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %opaque_data_0100, align 4
  %opaque_data_1101 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, ptr %data, i32 0, i32 9
  %85 = ptrtoint ptr %opaque_data_1101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %opaque_data_1101, align 4
  %call102 = tail call i32 %80(ptr noundef %82, ptr noundef nonnull %call41, i32 noundef %84, i32 noundef %86) #9
  br label %out_post1

do.body103:                                       ; preds = %land.lhs.true86.do.body103_crit_edge, %if.end74.do.body103_crit_edge
  %87 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp106 = icmp eq i8 %88, 0
  br i1 %cmp106, label %land.rhs108, label %do.body103.do.end136_crit_edge

do.body103.do.end136_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end136

land.rhs108:                                      ; preds = %do.body103
  %dp_module109 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 6
  %89 = ptrtoint ptr %dp_module109 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dp_module109, align 4
  %and110 = and i32 %90, 18880512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %land.rhs108.do.end136_crit_edge, label %do.end122, !prof !292

land.rhs108.do.end136_crit_edge:                  ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end136

do.end122:                                        ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #11
  %name124 = getelementptr inbounds %struct.qed_hwfn, ptr %cxt, i32 0, i32 8
  %tobool126.not = icmp eq ptr %name124, null
  %spec.select207 = select i1 %tobool126.not, ptr @.str.3, ptr %name124
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.114, i32 noundef 232, ptr noundef nonnull %spec.select207) #12
  br label %do.end136

do.end136:                                        ; preds = %do.end122, %land.rhs108.do.end136_crit_edge, %do.body103.do.end136_crit_edge
  %91 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data40, align 4
  tail call void @kfree(ptr noundef %92) #9
  br label %out_post1

out_post1:                                        ; preds = %do.end136, %if.end95, %do.end72
  %93 = ptrtoint ptr %new_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %new_data, align 4
  %95 = ptrtoint ptr %data40 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %data40, align 4
  %96 = ptrtoint ptr %new_phys_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %new_phys_addr, align 4
  %98 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %phys_addr, align 4
  br label %out_post

out_post:                                         ; preds = %out_post1, %if.then33.out_post_crit_edge, %if.end25.out_post_crit_edge
  %ll2141 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 58
  %99 = ptrtoint ptr %ll2141 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ll2141, align 8
  %handle = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %handle to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %handle, align 4
  %phys_addr142 = getelementptr inbounds %struct.qed_ll2_buffer, ptr %1, i32 0, i32 2
  %103 = ptrtoint ptr %phys_addr142 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %phys_addr142, align 4
  %call143 = tail call i32 @qed_ll2_post_rx_buffer(ptr noundef %cxt, i8 noundef zeroext %102, i32 noundef %104, i16 noundef zeroext 0, ptr noundef %1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %out_post.if.end147_crit_edge, label %if.then145

out_post.if.end147_crit_edge:                     ; preds = %out_post
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then145:                                       ; preds = %out_post
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qed_ll2_dealloc_buffer(ptr noundef %3, ptr noundef %1)
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %out_post.if.end147_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_data) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_phys_addr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_ll2b_release_rx_packet(ptr nocapture noundef readonly %cxt, i8 noundef zeroext %connection_handle, ptr noundef %cookie, i32 noundef %rx_buf_addr, i1 noundef zeroext %b_last_packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxt, align 8
  tail call fastcc void @qed_ll2_dealloc_buffer(ptr noundef %1, ptr noundef %cookie)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_ll2b_complete_tx_packet(ptr nocapture noundef readonly %cxt, i8 noundef zeroext %connection_handle, ptr noundef %cookie, i32 noundef %first_frag_addr, i1 noundef zeroext %b_last_fragment, i1 noundef zeroext %b_last_packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxt, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %cookie, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %cookie, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %5, %7
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %first_frag_addr, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #9
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 58
  %8 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll2, align 8
  %cbs = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cbs, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_cb = getelementptr inbounds %struct.qed_ll2_cb_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tx_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_cb, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %cb_cookie = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %cb_cookie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb_cookie, align 4
  %call12 = tail call i32 %13(ptr noundef %15, ptr noundef %cookie, i1 noundef zeroext %b_last_fragment) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %cookie, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_ll2_dealloc_buffer(ptr noundef %cdev, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 58
  %0 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll2, align 8
  %lock = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %phys_addr = getelementptr inbounds %struct.qed_ll2_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  %6 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ll2, align 8
  %rx_size = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %5, i32 noundef %9, i32 noundef 2, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.qed_ll2_buffer, ptr %buffer, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %11) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buffer) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %buffer, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %buffer, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %buffer, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %20 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ll2, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %21, align 4
  %24 = load ptr, ptr %ll2, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %do.body, label %list_del.exit.if.end14_crit_edge

list_del.exit.if.end14_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body:                                          ; preds = %list_del.exit
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %27 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp = icmp ult i8 %28, 2
  br i1 %cmp, label %do.end, label %do.body.if.end14_crit_edge, !prof !291

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef 146, ptr noundef nonnull %spec.select) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %list_del.exit.if.end14_crit_edge
  %29 = ptrtoint ptr %ll2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ll2, align 8
  %lock16 = getelementptr inbounds %struct.qed_cb_ll2_info, ptr %30, i32 0, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_llh_remove_mac_filter(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !207, !208, !209, !210, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !274, !275, !276, !277, !279, !280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1437, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_ll2_acquire_connection._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_ll2_acquire_connection._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qed_ll2_establish_connection.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1592, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qed_ll2_establish_connection.__key.5, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1603, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1627, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qed_ll2_establish_connection._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @qed_ll2_establish_connection._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1647, i32 3}
!20 = !{ptr @qed_ll2_establish_connection._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qed_ll2_establish_connection._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1653, i32 2}
!24 = !{ptr @qed_ll2_establish_connection._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qed_ll2_establish_connection._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2204, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qed_ll2_alloc._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @qed_ll2_alloc._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @qed_ll2_setup.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2220, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qed_ll2_ops_pass, !35, !"qed_ll2_ops_pass", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2802, i32 26}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1191, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qed_ll2_acquire_connection_rx._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @qed_ll2_acquire_connection_rx._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1200, i32 3}
!43 = !{ptr @qed_ll2_acquire_connection_rx._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qed_ll2_acquire_connection_rx._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1210, i32 3}
!47 = !{ptr @qed_ll2_acquire_connection_rx._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qed_ll2_acquire_connection_rx._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1214, i32 2}
!51 = !{ptr @qed_ll2_acquire_connection_rx._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @qed_ll2_acquire_connection_rx._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1257, i32 2}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qed_ll2_acquire_connection_tx._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qed_ll2_acquire_connection_tx._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1263, i32 3}
!60 = !{ptr @qed_ll2_acquire_connection_tx._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qed_ll2_acquire_connection_tx._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1316, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qed_ll2_acquire_connection_ooo._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @qed_ll2_acquire_connection_ooo._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 675, i32 4}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @qed_ll2_lb_rxq_handler._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @qed_ll2_lb_rxq_handler._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 701, i32 4}
!74 = !{ptr @qed_ll2_lb_rxq_handler._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qed_ll2_lb_rxq_handler._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 716, i32 5}
!78 = !{ptr @qed_ll2_lb_rxq_handler._entry.41, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qed_ll2_lb_rxq_handler._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 772, i32 4}
!82 = !{ptr @qed_ll2_lb_rxq_handler._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @qed_ll2_lb_rxq_handler._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 908, i32 4}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qed_ll2_lb_txq_completion._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qed_ll2_lb_txq_completion._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 553, i32 3}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qed_ll2_rxq_completion._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qed_ll2_rxq_completion._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 454, i32 3}
!96 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qed_ll2_handle_slowpath._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qed_ll2_handle_slowpath._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 461, i32 3}
!101 = !{ptr @qed_ll2_handle_slowpath._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qed_ll2_handle_slowpath._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 492, i32 3}
!105 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @qed_ll2_rxq_handle_completion._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @qed_ll2_rxq_handle_completion._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 505, i32 3}
!110 = !{ptr @qed_ll2_rxq_handle_completion._entry.58, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @qed_ll2_rxq_handle_completion._entry_ptr.60, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 382, i32 4}
!114 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qed_ll2_txq_completion._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @qed_ll2_txq_completion._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1101, i32 3}
!119 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @qed_sp_ll2_tx_queue_start._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @qed_sp_ll2_tx_queue_start._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1916, i32 2}
!124 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @qed_ll2_prepare_tx_packet_set_bd._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @qed_ll2_prepare_tx_packet_set_bd._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 1986, i32 2}
!129 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @qed_ll2_tx_packet_notify._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @qed_ll2_tx_packet_notify._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2331, i32 3}
!134 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__qed_ll2_get_stats._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @__qed_ll2_get_stats._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2583, i32 3}
!139 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @qed_ll2_start._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @qed_ll2_start._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @qed_ll2_start.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2591, i32 2}
!144 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2601, i32 2}
!147 = !{ptr @qed_ll2_start._entry.74, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qed_ll2_start._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2606, i32 4}
!151 = !{ptr @qed_ll2_start._entry.77, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @qed_ll2_start._entry_ptr.79, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2623, i32 3}
!155 = !{ptr @qed_ll2_start._entry.80, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @qed_ll2_start._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2633, i32 4}
!159 = !{ptr @qed_ll2_start._entry.83, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @qed_ll2_start._entry_ptr.85, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2640, i32 3}
!163 = !{ptr @qed_ll2_start._entry.86, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @qed_ll2_start._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2643, i32 4}
!167 = !{ptr @qed_ll2_start._entry.89, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qed_ll2_start._entry_ptr.91, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2651, i32 4}
!171 = !{ptr @qed_ll2_start._entry.92, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qed_ll2_start._entry_ptr.94, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 118, i32 3}
!175 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @qed_ll2_alloc_buffer._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @qed_ll2_alloc_buffer._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 126, i32 3}
!180 = !{ptr @qed_ll2_alloc_buffer._entry.97, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @qed_ll2_alloc_buffer._entry_ptr.99, !179, !"_entry_ptr", i1 false, i1 false}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!184 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2529, i32 3}
!188 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @__qed_ll2_start._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @__qed_ll2_start._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2535, i32 3}
!193 = !{ptr @__qed_ll2_start._entry.104, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @__qed_ll2_start._entry_ptr.106, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2547, i32 4}
!197 = !{ptr @__qed_ll2_start._entry.107, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @__qed_ll2_start._entry_ptr.109, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2561, i32 3}
!201 = !{ptr @__qed_ll2_start._entry.110, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @__qed_ll2_start._entry_ptr.112, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @ll2_cbs, !204, !"ll2_cbs", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2376, i32 27}
!205 = !{ptr @.str.113, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 173, i32 2}
!207 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @qed_ll2b_complete_rx_packet._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @qed_ll2b_complete_rx_packet._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 183, i32 18}
!212 = !{ptr @.str.117, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 205, i32 3}
!214 = !{ptr @qed_ll2b_complete_rx_packet._entry.116, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @qed_ll2b_complete_rx_packet._entry_ptr.118, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 230, i32 3}
!218 = !{ptr @qed_ll2b_complete_rx_packet._entry.119, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @qed_ll2b_complete_rx_packet._entry_ptr.121, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 146, i32 3}
!222 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @qed_ll2_dealloc_buffer._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @qed_ll2_dealloc_buffer._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.124, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2422, i32 3}
!227 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @qed_ll2_start_ooo._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @qed_ll2_start_ooo._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.127, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2428, i32 3}
!232 = !{ptr @qed_ll2_start_ooo._entry.126, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @qed_ll2_start_ooo._entry_ptr.128, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.129, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 948, i32 2}
!236 = !{ptr @.str.130, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @qed_ll2_stop_ooo._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @qed_ll2_stop_ooo._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.131, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2456, i32 3}
!241 = !{ptr @.str.132, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__qed_ll2_stop._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @__qed_ll2_stop._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.133, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2484, i32 4}
!246 = !{ptr @.str.134, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @qed_ll2_stop._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @qed_ll2_stop._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.136, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2490, i32 3}
!251 = !{ptr @qed_ll2_stop._entry.135, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @qed_ll2_stop._entry_ptr.137, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.138, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2686, i32 3}
!255 = !{ptr @.str.139, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @qed_ll2_start_xmit._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @qed_ll2_start_xmit._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.141, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2696, i32 3}
!260 = !{ptr @qed_ll2_start_xmit._entry.140, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @qed_ll2_start_xmit._entry_ptr.142, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.144, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2704, i32 3}
!264 = !{ptr @qed_ll2_start_xmit._entry.143, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @qed_ll2_start_xmit._entry_ptr.145, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.147, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2747, i32 4}
!268 = !{ptr @qed_ll2_start_xmit._entry.146, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @qed_ll2_start_xmit._entry_ptr.148, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.149, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!272 = !{ptr @.str.150, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2784, i32 3}
!274 = !{ptr @.str.151, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @qed_ll2_stats._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @qed_ll2_stats._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.153, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ll2.c", i32 2793, i32 4}
!279 = !{ptr @qed_ll2_stats._entry.152, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @qed_ll2_stats._entry_ptr.154, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i8 0, i8 2}
!291 = !{!"branch_weights", i32 1, i32 2000}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!294 = !{!"branch_weights", i32 2002, i32 2000}
!295 = !{!"auto-init"}
!296 = !{i64 2159051172}
!297 = !{i64 6293485}
!298 = !{i64 2159066444}
!299 = !{i64 2157878773}
!300 = !{i64 2157879146}
!301 = !{i64 2159066862}
!302 = !{i64 2159067214}
!303 = !{!"branch_weights", i32 4001, i32 1}
!304 = !{i64 2159081730}
!305 = !{i64 2159082092}
!306 = !{i64 2159089758}
!307 = !{i64 2159089959}
