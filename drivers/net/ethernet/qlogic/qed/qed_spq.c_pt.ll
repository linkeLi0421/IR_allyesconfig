; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_spq.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_spq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_chain_init_params = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qed_spq = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qed_chain, i32, ptr, [8 x i32], i8, i32, i32, i32, i32, i32, i32, i32, %struct.core_db_data, [12 x ptr] }
%struct.qed_chain = type { ptr, ptr, %struct.anon.2, %union.anon.4, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.5, ptr, i32, i32, i32, i8 }
%struct.anon.2 = type { ptr, %union.anon.3 }
%union.anon.3 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.4 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.5 = type { ptr, i32, i32 }
%struct.core_db_data = type { i8, i8, i16 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.qed_eq = type { %struct.qed_chain, i8, ptr }
%struct.qed_chain_u16 = type { i16, i16 }
%struct.qed_chain_pbl_u16 = type { i16, i16 }
%struct.qed_chain_next = type { %struct.regpair, ptr }
%struct.regpair = type { i32, i32 }
%struct.addr_tbl_entry = type { ptr, i32 }
%struct.event_ring_entry = type { i8, i8, i8, i8, i16, i8, i8, %union.event_ring_data }
%union.event_ring_data = type { %struct.vf_pf_channel_eqe_data }
%struct.vf_pf_channel_eqe_data = type { %struct.regpair }
%struct.qed_spq_entry = type { %struct.list_head, i8, %struct.slow_path_element, %union.ramrod_data, i32, ptr, i32, %struct.qed_spq_comp_cb, %struct.qed_spq_comp_done, ptr }
%struct.slow_path_element = type { %struct.ramrod_header, %struct.regpair }
%struct.ramrod_header = type { i32, i8, i8, i16 }
%union.ramrod_data = type { %struct.iwarp_init_func_ramrod_data }
%struct.iwarp_init_func_ramrod_data = type { %struct.rdma_init_func_ramrod_data, %struct.tcp_init_params, %struct.iwarp_init_func_params }
%struct.rdma_init_func_ramrod_data = type { %struct.rdma_init_func_hdr, %struct.rdma_cnq_params, [128 x %struct.rdma_cnq_params] }
%struct.rdma_init_func_hdr = type { i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8 }
%struct.rdma_cnq_params = type { i16, i8, i8, i32, %struct.regpair, i16, [6 x i8] }
%struct.tcp_init_params = type { i32, i16, i8, [9 x i8] }
%struct.iwarp_init_func_params = type { i8, [7 x i8] }
%struct.qed_spq_comp_cb = type { ptr, ptr }
%struct.qed_spq_comp_done = type { i32, i8 }
%struct.eth_slow_path_rx_cqe = type { i8, i8, i8, [25 x i8], i16, i8, %struct.eth_pmd_flow_flags }
%struct.eth_pmd_flow_flags = type { i8 }
%struct.qed_cxt_info = type { ptr, i32, i32 }
%struct.core_conn_context = type { %struct.ystorm_core_conn_st_ctx, [2 x %struct.regpair], %struct.pstorm_core_conn_st_ctx, [2 x %struct.regpair], %struct.xstorm_core_conn_st_ctx, %struct.xstorm_core_conn_ag_ctx, %struct.tstorm_core_conn_ag_ctx, %struct.ustorm_core_conn_ag_ctx, %struct.mstorm_core_conn_st_ctx, %struct.ustorm_core_conn_st_ctx, [2 x %struct.regpair], %struct.tstorm_core_conn_st_ctx, [2 x %struct.regpair] }
%struct.ystorm_core_conn_st_ctx = type { [4 x i32] }
%struct.pstorm_core_conn_st_ctx = type { [20 x i32] }
%struct.xstorm_core_conn_st_ctx = type { %struct.regpair, [2 x i32], i16, [111 x i16] }
%struct.xstorm_core_conn_ag_ctx = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.tstorm_core_conn_ag_ctx = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, i8, i16, i16, i16, i32, i32 }
%struct.ustorm_core_conn_ag_ctx = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i16, i16 }
%struct.mstorm_core_conn_st_ctx = type { [40 x i32] }
%struct.ustorm_core_conn_st_ctx = type { [20 x i32] }
%struct.tstorm_core_conn_st_ctx = type { [4 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.105, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.105 = type { ptr }

@qed_eq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]fw_cons_idx %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_eq_completion\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_spq.c\00", [54 x i8] zeroinitializer }, align 32
@qed_eq_completion._entry_ptr = internal global ptr @qed_eq_completion._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_eq_completion._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]op %x prot %x res0 %x echo %x fwret %x flags %x\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_eq_completion._entry_ptr.6 = internal global ptr @qed_eq_completion._entry.4, section ".printk_index", align 4
@qed_eq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Failed to allocate EQ chain\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_eq_alloc\00", [19 x i8] zeroinitializer }, align 32
@qed_eq_alloc._entry_ptr = internal global ptr @qed_eq_alloc._entry, section ".printk_index", align 4
@qed_eth_cqe_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]Failed to handle RXQ CQE [cmd 0x%02x]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_eth_cqe_completion\00", [41 x i8] zeroinitializer }, align 32
@qed_eth_cqe_completion._entry_ptr = internal global ptr @qed_eth_cqe_completion._entry, section ".printk_index", align 4
@qed_spq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&p_spq->lock\00", [19 x i8] zeroinitializer }, align 32
@qed_spq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\015[%s:%d(%s)]Failed to register the SPQ doorbell with the doorbell recovery mechanism\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_spq_setup\00", [18 x i8] zeroinitializer }, align 32
@qed_spq_setup._entry_ptr = internal global ptr @qed_spq_setup._entry, section ".printk_index", align 4
@__const.qed_spq_alloc.params = private unnamed_addr constant %struct.qed_chain_init_params { i32 1, i32 0, i32 0, i32 0, i32 0, i32 16, ptr null, i32 0 }, align 4
@qed_spq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Failed to allocate SPQ chain\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_spq_alloc\00", [18 x i8] zeroinitializer }, align 32
@qed_spq_alloc._entry_ptr = internal global ptr @qed_spq_alloc._entry, section ".printk_index", align 4
@qed_spq_get_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Failed to allocate an SPQ entry for a pending ramrod\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_spq_get_entry\00", [46 x i8] zeroinitializer }, align 32
@qed_spq_get_entry._entry_ptr = internal global ptr @qed_spq_get_entry._entry, section ".printk_index", align 4
@qed_spq_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Got a NULL pointer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_spq_post\00", [19 x i8] zeroinitializer }, align 32
@qed_spq_post._entry_ptr = internal global ptr @qed_spq_post._entry, section ".printk_index", align 4
@qed_spq_post._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015[%s:%d(%s)]Recovery is in progress. Skip spq post [%s:%02x %s:%02x]\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_spq_post._entry_ptr.22 = internal global ptr @qed_spq_post._entry.20, section ".printk_index", align 4
@qed_spq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015[%s:%d(%s)]Got completion for echo %04x - doesn't match echo %04x in completion pending list\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_spq_completion\00", [45 x i8] zeroinitializer }, align 32
@qed_spq_completion._entry_ptr = internal global ptr @qed_spq_completion._entry, section ".printk_index", align 4
@qed_spq_completion._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]Failed to find an entry this EQE [echo %04x] completes\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_spq_completion._entry_ptr.27 = internal global ptr @qed_spq_completion._entry.25, section ".printk_index", align 4
@qed_spq_completion._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]Complete EQE [echo %04x]: func %p cookie %p)\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_spq_completion._entry_ptr.30 = internal global ptr @qed_spq_completion._entry.28, section ".printk_index", align 4
@qed_spq_completion._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]Got a completion without a callback function\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_spq_completion._entry_ptr.33 = internal global ptr @qed_spq_completion._entry.31, section ".printk_index", align 4
@__const.qed_consq_alloc.params = private unnamed_addr constant %struct.qed_chain_init_params { i32 2, i32 0, i32 0, i32 0, i32 32, i32 128, ptr null, i32 0 }, align 4
@qed_consq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Failed to allocate ConsQ chain\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_consq_alloc\00", [16 x i8] zeroinitializer }, align 32
@qed_consq_alloc._entry_ptr = internal global ptr @qed_consq_alloc._entry, section ".printk_index", align 4
@qed_async_event_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]Wrong protocol: %s:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_async_event_completion\00", [37 x i8] zeroinitializer }, align 32
@qed_async_event_completion._entry_ptr = internal global ptr @qed_async_event_completion._entry, section ".printk_index", align 4
@qed_async_event_completion._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Unknown Async completion for %s:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@qed_async_event_completion._entry_ptr.40 = internal global ptr @qed_async_event_completion._entry.38, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_spq_hw_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Cannot find context info for cid=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_spq_hw_initialize\00", [42 x i8] zeroinitializer }, align 32
@qed_spq_hw_initialize._entry_ptr = internal global ptr @qed_spq_hw_initialize._entry, section ".printk_index", align 4
@qed_spq_hw_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Failed to produce from SPQ chain\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_spq_hw_post\00", [16 x i8] zeroinitializer }, align 32
@qed_spq_hw_post._entry_ptr = internal global ptr @qed_spq_hw_post._entry, section ".printk_index", align 4
@qed_spq_hw_post._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\015[%s:%d(%s)]Doorbelled [0x%08x, CID 0x%08x] with Flags: %02x agg_params: %02x, prod: %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_spq_hw_post._entry_ptr.47 = internal global ptr @qed_spq_hw_post._entry.45, section ".printk_index", align 4
@qed_spq_fill_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Unknown SPQE completion mode %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_spq_fill_entry\00", [45 x i8] zeroinitializer }, align 32
@qed_spq_fill_entry._entry_ptr = internal global ptr @qed_spq_fill_entry._entry, section ".printk_index", align 4
@qed_spq_fill_entry._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\015[%s:%d(%s)]Ramrod hdr: [CID 0x%08x %s:0x%02x %s:0x%02x] Data ptr: [%08x:%08x] Cmpltion Mode: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_spq_fill_entry._entry_ptr.52 = internal global ptr @qed_spq_fill_entry._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODE_EBLOCK\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODE_BLOCK\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MODE_CB\00", [24 x i8] zeroinitializer }, align 32
@qed_spq_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]ptt, failed to acquire\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_spq_block\00", [18 x i8] zeroinitializer }, align 32
@qed_spq_block._entry_ptr = internal global ptr @qed_spq_block._entry, section ".printk_index", align 4
@qed_spq_block._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]Ramrod is stuck, requesting MCP drain\0A\00", [44 x i8] zeroinitializer }, align 32
@qed_spq_block._entry_ptr.60 = internal global ptr @qed_spq_block._entry.58, section ".printk_index", align 4
@qed_spq_block._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]MCP drain failed\0A\00", [33 x i8] zeroinitializer }, align 32
@qed_spq_block._entry_ptr.63 = internal global ptr @qed_spq_block._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Ramrod is stuck [CID %08x %s:%02x %s:%02x echo %04x]\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 347, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 365, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 416, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 473, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 497, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 545, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 572, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 638, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 842, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 847, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 962, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 974, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 980, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 988, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1023, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 284, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 296, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 209, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 244, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 261, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 171, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 176, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 114, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 118, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 122, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_spq.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 142, i32 6 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @qed_async_event_completion._entry, ptr @qed_async_event_completion._entry.38, ptr @qed_async_event_completion._entry_ptr, ptr @qed_async_event_completion._entry_ptr.40, ptr @qed_consq_alloc._entry, ptr @qed_consq_alloc._entry_ptr, ptr @qed_eq_alloc._entry, ptr @qed_eq_alloc._entry_ptr, ptr @qed_eq_completion._entry, ptr @qed_eq_completion._entry.4, ptr @qed_eq_completion._entry_ptr, ptr @qed_eq_completion._entry_ptr.6, ptr @qed_eth_cqe_completion._entry, ptr @qed_eth_cqe_completion._entry_ptr, ptr @qed_spq_alloc._entry, ptr @qed_spq_alloc._entry_ptr, ptr @qed_spq_block._entry, ptr @qed_spq_block._entry.58, ptr @qed_spq_block._entry.61, ptr @qed_spq_block._entry_ptr, ptr @qed_spq_block._entry_ptr.60, ptr @qed_spq_block._entry_ptr.63, ptr @qed_spq_completion._entry, ptr @qed_spq_completion._entry.25, ptr @qed_spq_completion._entry.28, ptr @qed_spq_completion._entry.31, ptr @qed_spq_completion._entry_ptr, ptr @qed_spq_completion._entry_ptr.27, ptr @qed_spq_completion._entry_ptr.30, ptr @qed_spq_completion._entry_ptr.33, ptr @qed_spq_fill_entry._entry, ptr @qed_spq_fill_entry._entry.50, ptr @qed_spq_fill_entry._entry_ptr, ptr @qed_spq_fill_entry._entry_ptr.52, ptr @qed_spq_get_entry._entry, ptr @qed_spq_get_entry._entry_ptr, ptr @qed_spq_hw_initialize._entry, ptr @qed_spq_hw_initialize._entry_ptr, ptr @qed_spq_hw_post._entry, ptr @qed_spq_hw_post._entry.45, ptr @qed_spq_hw_post._entry_ptr, ptr @qed_spq_hw_post._entry_ptr.47, ptr @qed_spq_post._entry, ptr @qed_spq_post._entry.20, ptr @qed_spq_post._entry_ptr, ptr @qed_spq_post._entry_ptr.22, ptr @qed_spq_setup._entry, ptr @qed_spq_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @qed_spq_setup.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eq_completion._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eth_cqe_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_get_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_post._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_completion._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_completion._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_completion._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_consq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_async_event_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_async_event_completion._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_hw_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_hw_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_hw_post._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_fill_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_fill_entry._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_block._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_spq_block._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_spq_register_async_cb(ptr nocapture noundef readonly %p_hwfn, i32 noundef %protocol_id, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq, align 8
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %protocol_id)
  %cmp = icmp ugt i32 %protocol_id, 11
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.qed_spq, ptr %1, i32 0, i32 18, i32 %protocol_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_spq_unregister_async_cb(ptr nocapture noundef readonly %p_hwfn, i32 noundef %protocol_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq, align 8
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %protocol_id)
  %cmp = icmp ugt i32 %protocol_id, 11
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.qed_spq, ptr %1, i32 0, i32 18, i32 %protocol_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_eq_prod_update(ptr nocapture noundef readonly %p_hwfn, i16 noundef zeroext %prod) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %iro_arr = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %iro_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iro_arr, align 8
  %arrayidx = getelementptr %struct.iro, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %6 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rel_pf_id, align 1
  %conv = zext i8 %7 to i32
  %m1 = getelementptr %struct.iro, ptr %3, i32 7, i32 1
  %8 = ptrtoint ptr %m1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m1, align 4
  %conv4 = zext i16 %9 to i32
  %mul = mul nuw nsw i32 %conv4, %conv
  %add = add i32 %5, 81920
  %add5 = add i32 %add, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %10 = tail call i16 @llvm.bswap.i16(i16 %prod)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %11 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %add5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %10) #10, !srcloc !130
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eq_completion(ptr noundef %p_hwfn, ptr noundef %cookie) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_fw_cons = getelementptr inbounds %struct.qed_eq, ptr %cookie, i32 0, i32 2
  %0 = ptrtoint ptr %p_fw_cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_fw_cons, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %7 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dp_module, align 4
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !131

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull %spec.select, i32 noundef %conv8) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %usable_per_page.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 11
  %9 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %usable_per_page.i, align 4
  %and14132 = and i16 %10, %4
  call void @__sanitizer_cov_trace_cmp2(i16 %and14132, i16 %10)
  %cmp17 = icmp eq i16 %and14132, %10
  br i1 %cmp17, label %if.then19, label %do.end10.if.end24_crit_edge

do.end10.if.end24_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 12
  %11 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %elem_unusable.i, align 2
  %conv21 = zext i8 %12 to i16
  %add = add i16 %4, %conv21
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.end10.if.end24_crit_edge
  %fw_cons_idx.0 = phi i16 [ %add, %if.then19 ], [ %4, %do.end10.if.end24_crit_edge ]
  %u.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %13 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cons_idx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %fw_cons_idx.0, i16 %14)
  %cmp28.not157 = icmp eq i16 %fw_cons_idx.0, %14
  br i1 %cmp28.not157, label %if.end24.while.end_crit_edge, label %while.body.lr.ph

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end24
  %cnt_type.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 13
  %cons_idx11.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 3, i32 0, i32 1
  %elem_per_page_mask12.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 8
  %next_page_mask15.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 10
  %p_cons_elem25.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 1
  %mode.i58.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 6
  %cons_page_idx24.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 2, i32 1, i32 0, i32 1
  %page_cnt20.i83.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 5
  %pbl.i88.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 2
  %p_virt_addr.i70.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 16
  %elem_unusable.i62.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 12
  %c.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 2, i32 1
  %cons_page_idx.i = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i, i32 0, i32 1
  %elem_size.i = getelementptr inbounds %struct.qed_chain, ptr %cookie, i32 0, i32 9
  %dp_module40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name55 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool57.not = icmp eq ptr %name55, null
  %spec.select133 = select i1 %tobool57.not, ptr @.str.3, ptr %name55
  %p_spq.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %15 = phi i16 [ %14, %while.body.lr.ph ], [ %149, %cleanup.while.body_crit_edge ]
  %16 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  %18 = ptrtoint ptr %elem_per_page_mask12.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %elem_per_page_mask12.i, align 2
  %and57.i = and i16 %19, %15
  %20 = ptrtoint ptr %next_page_mask15.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %next_page_mask15.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57.i, i16 %21)
  %cmp3.i = icmp eq i16 %and57.i, %21
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  %22 = ptrtoint ptr %mode.i58.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode.i58.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.then5.i.if.end.i_crit_edge [
    i32 0, label %if.then.i.i
    i32 1, label %sw.bb6.i.i
    i32 2, label %if.end25.i.i
  ]

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_cons_elem25.i, align 4
  %next_virt.i.i = getelementptr inbounds %struct.qed_chain_next, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %next_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next_virt.i.i, align 4
  store ptr %28, ptr %p_cons_elem25.i, align 4
  %29 = ptrtoint ptr %elem_unusable.i62.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %elem_unusable.i62.i, align 2
  %conv.i.i = zext i8 %30 to i16
  %add.i.i = add i16 %15, %conv.i.i
  %31 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %add.i.i, ptr %cons_idx.i, align 2
  br label %if.end.i

sw.bb6.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %p_virt_addr.i70.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_virt_addr.i70.i, align 4
  %34 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %p_cons_elem25.i, align 4
  br label %if.end.i

if.end25.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %cons_page_idx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cons_page_idx.i, align 2
  %inc.i.i = add i16 %36, 1
  %conv12.i.i = zext i16 %inc.i.i to i32
  %37 = ptrtoint ptr %page_cnt20.i83.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %page_cnt20.i83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv12.i.i)
  %cmp13.i.i = icmp eq i32 %38, %conv12.i.i
  %spec.store.select.i.i = select i1 %cmp13.i.i, i16 0, i16 %inc.i.i
  %39 = ptrtoint ptr %cons_page_idx.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %spec.store.select.i.i, ptr %cons_page_idx.i, align 2
  %conv17.i.i = zext i16 %spec.store.select.i.i to i32
  %40 = ptrtoint ptr %pbl.i88.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pbl.i88.i, align 4
  %arrayidx.i.i = getelementptr %struct.addr_tbl_entry, ptr %41, i32 %conv17.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %44 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %p_cons_elem25.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end25.i.i, %sw.bb6.i.i, %if.then.i.i, %if.then5.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %45 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cons_idx.i, align 2
  %inc.i = add i16 %46, 1
  store i16 %inc.i, ptr %cons_idx.i, align 2
  br label %qed_chain_consume.exit

if.else.i:                                        ; preds = %while.body
  %47 = ptrtoint ptr %cons_idx11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cons_idx11.i, align 4
  %49 = ptrtoint ptr %elem_per_page_mask12.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %elem_per_page_mask12.i, align 2
  %conv13.i = zext i16 %50 to i32
  %and14.i = and i32 %48, %conv13.i
  %51 = ptrtoint ptr %next_page_mask15.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %next_page_mask15.i, align 2
  %conv16.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.i, i32 %conv16.i)
  %cmp17.i = icmp eq i32 %and14.i, %conv16.i
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then19.i:                                      ; preds = %if.else.i
  %53 = ptrtoint ptr %mode.i58.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode.i58.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %54, label %if.then19.i.if.end26.i_crit_edge [
    i32 0, label %if.else.i69.i
    i32 1, label %sw.bb6.i71.i
    i32 2, label %if.end25.i90.i
  ]

if.then19.i.if.end26.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.else.i69.i:                                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p_cons_elem25.i, align 4
  %next_virt.i59.i = getelementptr inbounds %struct.qed_chain_next, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %next_virt.i59.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %next_virt.i59.i, align 4
  store ptr %59, ptr %p_cons_elem25.i, align 4
  %60 = ptrtoint ptr %elem_unusable.i62.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %elem_unusable.i62.i, align 2
  %conv4.i67.i = zext i8 %61 to i32
  %add5.i68.i = add i32 %48, %conv4.i67.i
  %62 = ptrtoint ptr %cons_idx11.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add5.i68.i, ptr %cons_idx11.i, align 4
  br label %if.end26.i

sw.bb6.i71.i:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %p_virt_addr.i70.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p_virt_addr.i70.i, align 4
  %65 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %p_cons_elem25.i, align 4
  br label %if.end26.i

if.end25.i90.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %cons_page_idx24.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cons_page_idx24.i, align 4
  %inc19.i82.i = add i32 %67, 1
  %68 = ptrtoint ptr %page_cnt20.i83.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %page_cnt20.i83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82.i, i32 %69)
  %cmp21.i84.i = icmp eq i32 %inc19.i82.i, %69
  %spec.store.select43.i85.i = select i1 %cmp21.i84.i, i32 0, i32 %inc19.i82.i
  %70 = ptrtoint ptr %cons_page_idx24.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select43.i85.i, ptr %cons_page_idx24.i, align 4
  %71 = ptrtoint ptr %pbl.i88.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pbl.i88.i, align 4
  %arrayidx.i89.i = getelementptr %struct.addr_tbl_entry, ptr %72, i32 %spec.store.select43.i85.i
  %73 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i89.i, align 4
  %75 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %p_cons_elem25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end25.i90.i, %sw.bb6.i71.i, %if.else.i69.i, %if.then19.i.if.end26.i_crit_edge, %if.else.i.if.end26.i_crit_edge
  %76 = ptrtoint ptr %cons_idx11.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cons_idx11.i, align 4
  %inc29.i = add i32 %77, 1
  store i32 %inc29.i, ptr %cons_idx11.i, align 4
  br label %qed_chain_consume.exit

qed_chain_consume.exit:                           ; preds = %if.end26.i, %if.end.i
  %78 = ptrtoint ptr %p_cons_elem25.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %p_cons_elem25.i, align 4
  %80 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %elem_size.i, align 4
  %conv33.i = zext i16 %81 to i32
  %add.ptr.i = getelementptr i8, ptr %79, i32 %conv33.i
  store ptr %add.ptr.i, ptr %p_cons_elem25.i, align 4
  %tobool31.not = icmp eq ptr %79, null
  br i1 %tobool31.not, label %qed_chain_consume.exit.while.end_crit_edge, label %do.body34

qed_chain_consume.exit.while.end_crit_edge:       ; preds = %qed_chain_consume.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body34:                                        ; preds = %qed_chain_consume.exit
  %82 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp37 = icmp eq i8 %83, 0
  br i1 %cmp37, label %land.rhs39, label %do.body34.do.end73_crit_edge

do.body34.do.end73_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

land.rhs39:                                       ; preds = %do.body34
  %84 = ptrtoint ptr %dp_module40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dp_module40, align 4
  %and41 = and i32 %85, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.rhs39.do.end73_crit_edge, label %do.end53, !prof !131

land.rhs39.do.end73_crit_edge:                    ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end53:                                         ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #12
  %opcode = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 1
  %86 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %opcode, align 1
  %conv64 = zext i8 %87 to i32
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %79, align 4
  %conv65 = zext i8 %89 to i32
  %reserved0 = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 2
  %90 = ptrtoint ptr %reserved0 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %reserved0, align 2
  %conv66 = zext i8 %91 to i32
  %echo = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 4
  %92 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %echo, align 4
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %conv67 = zext i16 %94 to i32
  %fw_return_code = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 5
  %95 = ptrtoint ptr %fw_return_code to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %fw_return_code, align 2
  %conv68 = zext i8 %96 to i32
  %flags = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 6
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags, align 1
  %conv69 = zext i8 %98 to i32
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef nonnull %spec.select133, i32 noundef %conv64, i32 noundef %conv65, i32 noundef %conv66, i32 noundef %conv67, i32 noundef %conv68, i32 noundef %conv69) #13
  br label %do.end73

do.end73:                                         ; preds = %do.end53, %land.rhs39.do.end73_crit_edge, %do.body34.do.end73_crit_edge
  %flags74 = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 6
  %99 = ptrtoint ptr %flags74 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags74, align 1
  %101 = and i8 %100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool77.not = icmp eq i8 %101, 0
  br i1 %tobool77.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %do.end73
  %102 = ptrtoint ptr %p_spq.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p_spq.i, align 8
  %tobool.not.i = icmp eq ptr %103, null
  br i1 %tobool.not.i, label %if.then78.if.end89_crit_edge, label %if.end.i138

if.then78.if.end89_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.end.i138:                                      ; preds = %if.then78
  %104 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %105)
  %cmp.i137 = icmp ugt i8 %105, 11
  %conv8.i = zext i8 %105 to i32
  br i1 %cmp.i137, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @qed_get_protocol_type_str(i32 noundef %conv8.i) #10
  %106 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %79, align 4
  %conv10.i = zext i8 %107 to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 286, ptr noundef nonnull %name55, ptr noundef %call.i, i32 noundef %conv10.i) #13
  br label %if.end89

if.end14.i:                                       ; preds = %if.end.i138
  %arrayidx.i = getelementptr %struct.qed_spq, ptr %103, i32 0, i32 18, i32 %conv8.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i, align 4
  %tobool17.not.i = icmp eq ptr %109, null
  br i1 %tobool17.not.i, label %do.body20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %opcode.i = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 1
  %110 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %opcode.i, align 1
  %echo.i = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 4
  %112 = ptrtoint ptr %echo.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %echo.i, align 4
  %data.i = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 7
  %fw_return_code.i = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 5
  %114 = ptrtoint ptr %fw_return_code.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fw_return_code.i, align 2
  %call19.i = tail call i32 %109(ptr noundef %p_hwfn, i8 noundef zeroext %111, i16 noundef zeroext %113, ptr noundef %data.i, i8 noundef zeroext %115) #10
  br label %if.end89

do.body20.i:                                      ; preds = %if.end14.i
  %116 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp22.i = icmp ult i8 %117, 3
  br i1 %cmp22.i, label %do.end29.i, label %do.body20.i.if.end89_crit_edge, !prof !132

do.body20.i.if.end89_crit_edge:                   ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

do.end29.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i = tail call ptr @qed_get_protocol_type_str(i32 noundef %conv8.i) #10
  %118 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %79, align 4
  %conv44.i = zext i8 %119 to i32
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 299, ptr noundef nonnull %name55, ptr noundef %call42.i, i32 noundef %conv44.i) #13
  br label %if.end89

if.else:                                          ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  %echo83 = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 4
  %120 = ptrtoint ptr %echo83 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %echo83, align 4
  %fw_return_code84 = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 5
  %122 = ptrtoint ptr %fw_return_code84 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %fw_return_code84, align 2
  %data = getelementptr inbounds %struct.event_ring_entry, ptr %79, i32 0, i32 7
  %call85 = tail call i32 @qed_spq_completion(ptr noundef %p_hwfn, i16 noundef zeroext %121, i8 noundef zeroext %123, ptr noundef %data)
  br label %if.end89

if.end89:                                         ; preds = %if.else, %do.end29.i, %do.body20.i.if.end89_crit_edge, %if.then18.i, %do.end.i, %if.then78.if.end89_crit_edge
  %124 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp.i140 = icmp eq i32 %125, 0
  br i1 %cmp.i140, label %if.then.i145, label %if.else.i148

if.then.i145:                                     ; preds = %if.end89
  %126 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %u.i, align 4
  %128 = ptrtoint ptr %elem_per_page_mask12.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %elem_per_page_mask12.i, align 2
  %and52.i = and i16 %129, %127
  %130 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %usable_per_page.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i, i16 %131)
  %cmp3.i144 = icmp eq i16 %and52.i, %131
  br i1 %cmp3.i144, label %if.then5.i147, label %if.then.i145.if.then31.i_crit_edge

if.then.i145.if.then31.i_crit_edge:               ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.then5.i147:                                    ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %elem_unusable.i62.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %elem_unusable.i62.i, align 2
  %conv6.i = zext i8 %133 to i16
  %add.i = add i16 %127, %conv6.i
  %134 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %add.i, ptr %u.i, align 4
  br label %if.then31.i

if.else.i148:                                     ; preds = %if.end89
  %135 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %u.i, align 4
  %137 = ptrtoint ptr %elem_per_page_mask12.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %elem_per_page_mask12.i, align 2
  %conv14.i = zext i16 %138 to i32
  %and15.i = and i32 %136, %conv14.i
  %139 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %usable_per_page.i, align 4
  %conv17.i = zext i16 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %conv17.i)
  %cmp18.i = icmp eq i32 %and15.i, %conv17.i
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i148.if.else34.i_crit_edge

if.else.i148.if.else34.i_crit_edge:               ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i

if.then20.i:                                      ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %elem_unusable.i62.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %elem_unusable.i62.i, align 2
  %conv22.i = zext i8 %142 to i32
  %add25.i = add i32 %136, %conv22.i
  %143 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add25.i, ptr %u.i, align 4
  br label %if.else34.i

if.then31.i:                                      ; preds = %if.then5.i147, %if.then.i145.if.then31.i_crit_edge
  %144 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %u.i, align 4
  %inc.i149 = add i16 %145, 1
  store i16 %inc.i149, ptr %u.i, align 4
  br label %cleanup

if.else34.i:                                      ; preds = %if.then20.i, %if.else.i148.if.else34.i_crit_edge
  %146 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %u.i, align 4
  %inc37.i = add i32 %147, 1
  store i32 %inc37.i, ptr %u.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else34.i, %if.then31.i
  %148 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %cons_idx.i, align 2
  %cmp28.not = icmp eq i16 %fw_cons_idx.0, %149
  br i1 %cmp28.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %qed_chain_consume.exit.while.end_crit_edge, %if.end24.while.end_crit_edge
  %150 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %u.i, align 4
  %152 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %p_hwfn, align 8
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %153, i32 0, i32 31
  %154 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i151 = getelementptr %struct.iro, ptr %155, i32 7
  %156 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i151, align 4
  %rel_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %158 = ptrtoint ptr %rel_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rel_pf_id.i, align 1
  %conv.i152 = zext i8 %159 to i32
  %m1.i = getelementptr %struct.iro, ptr %155, i32 7, i32 1
  %160 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %m1.i, align 4
  %conv4.i = zext i16 %161 to i32
  %mul.i = mul nuw nsw i32 %conv4.i, %conv.i152
  %add.i153 = add i32 %157, 81920
  %add5.i = add i32 %add.i153, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %162 = tail call i16 @llvm.bswap.i16(i16 %151) #10
  %regview.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %163 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regview.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %164, i32 %add5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i154, i16 %162) #10, !srcloc !130
  %p_spq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %165 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %p_spq, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %166) #10
  %call91 = tail call i32 @qed_spq_pend_post(ptr noundef %p_hwfn)
  %167 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %p_spq, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %168) #10
  ret i32 %call91
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_spq_completion(ptr noundef %p_hwfn, i16 noundef zeroext %echo, i8 noundef zeroext %fw_return_code, ptr noundef %p_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_hwfn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %1) #10
  %completion_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %completion_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %completion_pending, align 4
  %cmp.not214 = icmp eq ptr %3, %completion_pending
  br i1 %cmp.not214, label %if.end4.for.end.thread_crit_edge, label %for.body.lr.ph

if.end4.for.end.thread_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool29.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool29.not, ptr @.str.3, ptr %name
  %4 = tail call i16 @llvm.bswap.i16(i16 %echo)
  %conv32 = zext i16 %4 to i32
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end4.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %1) #10
  br label %do.body48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p_ent.0215 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.0216, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %p_ent.0215 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0216 = load ptr, ptr %p_ent.0215, align 4
  %echo12 = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.0215, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %echo12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %echo12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %echo)
  %cmp14 = icmp eq i16 %7, %echo
  br i1 %cmp14, label %if.then16, label %do.body

if.then16:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_ent.0215) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then16.for.end_crit_edge

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p_ent.0215, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %p_ent.0215 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_ent.0215, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %for.end

do.body:                                          ; preds = %for.body
  %14 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp20 = icmp eq i8 %15, 0
  br i1 %cmp20, label %land.rhs, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs:                                         ; preds = %do.body
  %16 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_module, align 4
  %and = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.rhs.for.inc_crit_edge, label %do.end, !prof !131

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv36 = zext i16 %18 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 965, ptr noundef nonnull %spec.select, i32 noundef %conv32, i32 noundef %conv36) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.rhs.for.inc_crit_edge, %do.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.0216, %completion_pending
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end:                                          ; preds = %if.end.i.i, %if.then16.for.end_crit_edge
  %19 = ptrtoint ptr %p_ent.0215 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %p_ent.0215, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p_ent.0215, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @qed_spq_comp_bmap_update(ptr noundef nonnull %p_hwfn, i16 noundef zeroext %echo)
  %comp_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %comp_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %comp_count, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %comp_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %1) #10
  %tobool46.not = icmp eq ptr %p_ent.0215, null
  br i1 %tobool46.not, label %for.end.do.body48_crit_edge, label %do.body79

for.end.do.body48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

do.body48:                                        ; preds = %for.end.do.body48_crit_edge, %for.end.thread
  %dp_level49 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %23 = ptrtoint ptr %dp_level49 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level49, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp51 = icmp ult i8 %24, 3
  br i1 %cmp51, label %do.end62, label %do.body48.cleanup_crit_edge, !prof !132

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end62:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %name64 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool66.not = icmp eq ptr %name64, null
  %spec.select207 = select i1 %tobool66.not, ptr @.str.3, ptr %name64
  %25 = tail call i16 @llvm.bswap.i16(i16 %echo)
  %conv73 = zext i16 %25 to i32
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 976, ptr noundef nonnull %spec.select207, i32 noundef %conv73) #13
  br label %cleanup

do.body79:                                        ; preds = %for.end
  %26 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp82 = icmp eq i8 %27, 0
  br i1 %cmp82, label %land.rhs84, label %do.body79.do.end114_crit_edge

do.body79.do.end114_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114

land.rhs84:                                       ; preds = %do.body79
  %28 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dp_module, align 4
  %and86 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %land.rhs84.do.end114_crit_edge, label %do.end98, !prof !131

land.rhs84.do.end114_crit_edge:                   ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114

do.end98:                                         ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #12
  %comp_cb = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.0215, i32 0, i32 7
  %30 = ptrtoint ptr %comp_cb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %comp_cb, align 4
  %cookie = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.0215, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cookie, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef 983, ptr noundef nonnull %spec.select, i32 noundef %conv32, ptr noundef %31, ptr noundef %33) #13
  br label %do.end114

do.end114:                                        ; preds = %do.end98, %land.rhs84.do.end114_crit_edge, %do.body79.do.end114_crit_edge
  %comp_cb115 = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.0215, i32 0, i32 7
  %34 = ptrtoint ptr %comp_cb115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %comp_cb115, align 4
  %tobool117.not = icmp eq ptr %35, null
  br i1 %tobool117.not, label %do.body123, label %if.then118

if.then118:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #12
  %cookie122 = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.0215, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %cookie122 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cookie122, align 4
  tail call void %35(ptr noundef nonnull %p_hwfn, ptr noundef %37, ptr noundef %p_data, i8 noundef zeroext %fw_return_code) #10
  br label %if.end157

do.body123:                                       ; preds = %do.end114
  %38 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp126 = icmp eq i8 %39, 0
  br i1 %cmp126, label %land.rhs128, label %do.body123.if.end157_crit_edge

do.body123.if.end157_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

land.rhs128:                                      ; preds = %do.body123
  %40 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dp_module, align 4
  %and130 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %land.rhs128.if.end157_crit_edge, label %do.end142, !prof !131

land.rhs128.if.end157_crit_edge:                  ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.end142:                                        ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #12
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, i32 noundef 990, ptr noundef nonnull %spec.select) #13
  br label %if.end157

if.end157:                                        ; preds = %do.end142, %land.rhs128.if.end157_crit_edge, %do.body123.if.end157_crit_edge, %if.then118
  %comp_mode = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.0215, i32 0, i32 6
  %42 = ptrtoint ptr %comp_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %comp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp158.not = icmp eq i32 %43, 2
  br i1 %cmp158.not, label %if.end157.cleanup_crit_edge, label %if.then160

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then160:                                       ; preds = %if.end157
  %44 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p_spq1, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %45) #10
  %46 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p_spq1, align 8
  %free_pool.i.i = getelementptr inbounds %struct.qed_spq, ptr %47, i32 0, i32 4
  %prev.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %p_ent.0215, ptr noundef %49, ptr noundef %free_pool.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then160.qed_spq_return_entry.exit_crit_edge

if.then160.qed_spq_return_entry.exit_crit_edge:   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_spq_return_entry.exit

if.end.i.i.i.i:                                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %p_ent.0215, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %p_ent.0215 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free_pool.i.i, ptr %p_ent.0215, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %p_ent.0215, ptr %49, align 4
  br label %qed_spq_return_entry.exit

qed_spq_return_entry.exit:                        ; preds = %if.end.i.i.i.i, %if.then160.qed_spq_return_entry.exit_crit_edge
  %54 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p_spq1, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %qed_spq_return_entry.exit, %if.end157.cleanup_crit_edge, %do.end62, %do.body48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -17, %do.end62 ], [ -17, %do.body48.cleanup_crit_edge ], [ 0, %qed_spq_return_entry.exit ], [ 0, %if.end157.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_spq_pend_post(ptr noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  %free_pool = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %free_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_pool, align 4
  %cmp.i.not24 = icmp eq ptr %3, %free_pool
  br i1 %cmp.i.not24, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %unlimited_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %unlimited_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %unlimited_pending, align 4
  %cmp.i19.not = icmp eq ptr %5, %unlimited_pending
  br i1 %cmp.i19.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del.exit_crit_edge

if.end7.list_del.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end7.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %priority = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %priority, align 4
  %call8 = tail call fastcc i32 @qed_spq_add_entry(ptr noundef %p_hwfn, ptr noundef nonnull %5, i32 noundef %15)
  %16 = ptrtoint ptr %free_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %free_pool, align 4
  %cmp.i.not = icmp eq ptr %17, %free_pool
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_spq1, align 8
  %capacity.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 5, i32 4
  %u.i.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 5, i32 3
  %cons_idx.i.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i.i, i32 0, i32 1
  %mode.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 5, i32 6
  %elem_per_page3.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 5, i32 7
  %completion_pending.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 3
  %prev.i2.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 3, i32 1
  %comp_sent_count.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 13
  %db_data.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 17
  %spq_prod.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 17, i32 2
  %doorbells.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 13
  %db_addr_offset.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 16
  %dp_level29.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name45.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %cid.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 15
  %agg_flags.i.i = getelementptr inbounds %struct.qed_spq, ptr %19, i32 0, i32 17, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.end
  %20 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %capacity.i.i, align 4
  %22 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %u.i.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %cons_idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cons_idx.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp.i.i.i = icmp ult i16 %23, %25
  %add.i.i.i = or i32 %conv.i.i.i, 65536
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i, i32 %conv.i.i.i
  %26 = trunc i32 %spec.select.i.i.i to i16
  %conv5.i.i.i = sub i16 %26, %25
  %27 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %while.cond.i.qed_chain_get_elem_left.exit.i_crit_edge

while.cond.i.qed_chain_get_elem_left.exit.i_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_get_elem_left.exit.i

if.then8.i.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %elem_per_page3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %elem_per_page3.i.i.i, align 4
  %conv9.i.i.i = zext i16 %30 to i32
  %div.i.i.i = udiv i32 %spec.select.i.i.i, %conv9.i.i.i
  %31 = udiv i16 %25, %30
  %32 = trunc i32 %div.i.i.i to i16
  %conv13.neg.i.i.i = sub i16 %conv5.i.i.i, %32
  %sub16.i.i.i = add i16 %conv13.neg.i.i.i, %31
  br label %qed_chain_get_elem_left.exit.i

qed_chain_get_elem_left.exit.i:                   ; preds = %if.then8.i.i.i, %while.cond.i.qed_chain_get_elem_left.exit.i_crit_edge
  %used.0.i.i.i = phi i16 [ %sub16.i.i.i, %if.then8.i.i.i ], [ %conv5.i.i.i, %while.cond.i.qed_chain_get_elem_left.exit.i_crit_edge ]
  %33 = trunc i32 %21 to i16
  %conv1.i.i = sub i16 %33, %used.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv1.i.i)
  %cmp.i21 = icmp ugt i16 %conv1.i.i, 1
  br i1 %cmp.i21, label %land.rhs.i, label %qed_chain_get_elem_left.exit.i.cleanup_crit_edge

qed_chain_get_elem_left.exit.i.cleanup_crit_edge: ; preds = %qed_chain_get_elem_left.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.i:                                       ; preds = %qed_chain_get_elem_left.exit.i
  %34 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %35, %pending
  br i1 %cmp.i.not.i, label %land.rhs.i.cleanup_crit_edge, label %while.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.__list_del_entry.exit.i.i_crit_edge

while.body.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %while.body.i.__list_del_entry.exit.i.i_crit_edge
  %42 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %43, ptr noundef %completion_pending.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %35, ptr %prev.i2.i.i, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %completion_pending.i, ptr %35, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %35, ptr %43, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %48 = ptrtoint ptr %comp_sent_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %comp_sent_count.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %comp_sent_count.i, align 4
  %50 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p_spq1, align 8
  %chain.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5
  %u.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 3
  %52 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %u.i.i.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #10
  %echo3.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %35, i32 0, i32 2, i32 0, i32 3
  %55 = ptrtoint ptr %echo3.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %echo3.i.i, align 2
  %cnt_type.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 13
  %56 = ptrtoint ptr %cnt_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cnt_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i1.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i1.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %list_move_tail.exit.i
  %58 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %u.i.i.i, align 4
  %elem_per_page_mask.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 8
  %60 = ptrtoint ptr %elem_per_page_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %elem_per_page_mask.i.i.i, align 2
  %and57.i.i.i = and i16 %61, %59
  %next_page_mask.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 10
  %62 = ptrtoint ptr %next_page_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %next_page_mask.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57.i.i.i, i16 %63)
  %cmp3.i.i.i = icmp eq i16 %and57.i.i.i, %63
  br i1 %cmp3.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.i.if.end.i.i2.i_crit_edge

if.then.i.i.i.if.end.i.i2.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i2.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  %mode.i.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 6
  %64 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode.i.i.i.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %65, label %if.then5.i.i.i.if.end.i.i2.i_crit_edge [
    i32 0, label %if.then.i.i.i.i
    i32 1, label %sw.bb6.i.i.i.i
    i32 2, label %if.end25.i.i.i.i
  ]

if.then5.i.i.i.if.end.i.i2.i_crit_edge:           ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i2.i

if.then.i.i.i.i:                                  ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chain.i.i, align 4
  %next_virt.i.i.i.i = getelementptr inbounds %struct.qed_chain_next, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %next_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %next_virt.i.i.i.i, align 4
  store ptr %70, ptr %chain.i.i, align 4
  %elem_unusable.i.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 12
  %71 = ptrtoint ptr %elem_unusable.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %elem_unusable.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %72 to i16
  %add.i.i.i.i = add i16 %59, %conv.i.i.i.i
  %73 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add.i.i.i.i, ptr %u.i.i.i, align 2
  br label %if.end.i.i2.i

sw.bb6.i.i.i.i:                                   ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %p_virt_addr.i.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 16
  %74 = ptrtoint ptr %p_virt_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p_virt_addr.i.i.i.i, align 4
  %76 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %chain.i.i, align 4
  br label %if.end.i.i2.i

if.end25.i.i.i.i:                                 ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %c.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 2, i32 1
  %77 = ptrtoint ptr %c.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %c.i.i.i, align 2
  %inc.i.i.i.i = add i16 %78, 1
  %conv12.i.i.i.i = zext i16 %inc.i.i.i.i to i32
  %page_cnt.i.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 5
  %79 = ptrtoint ptr %page_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %page_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv12.i.i.i.i)
  %cmp13.i.i.i.i = icmp eq i32 %80, %conv12.i.i.i.i
  %spec.store.select.i.i.i.i = select i1 %cmp13.i.i.i.i, i16 0, i16 %inc.i.i.i.i
  %81 = ptrtoint ptr %c.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %spec.store.select.i.i.i.i, ptr %c.i.i.i, align 2
  %conv17.i.i.i.i = zext i16 %spec.store.select.i.i.i.i to i32
  %pbl.i.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 2
  %82 = ptrtoint ptr %pbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pbl.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.addr_tbl_entry, ptr %83, i32 %conv17.i.i.i.i
  %84 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %86 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %chain.i.i, align 4
  br label %if.end.i.i2.i

if.end.i.i2.i:                                    ; preds = %if.end25.i.i.i.i, %sw.bb6.i.i.i.i, %if.then.i.i.i.i, %if.then5.i.i.i.if.end.i.i2.i_crit_edge, %if.then.i.i.i.if.end.i.i2.i_crit_edge
  %87 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %u.i.i.i, align 4
  %inc.i.i.i = add i16 %88, 1
  store i16 %inc.i.i.i, ptr %u.i.i.i, align 4
  br label %qed_chain_produce.exit.i.i

if.else.i.i.i:                                    ; preds = %list_move_tail.exit.i
  %89 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %u.i.i.i, align 4
  %elem_per_page_mask12.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 8
  %91 = ptrtoint ptr %elem_per_page_mask12.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %elem_per_page_mask12.i.i.i, align 2
  %conv13.i.i.i = zext i16 %92 to i32
  %and14.i.i.i = and i32 %90, %conv13.i.i.i
  %next_page_mask15.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 10
  %93 = ptrtoint ptr %next_page_mask15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %next_page_mask15.i.i.i, align 2
  %conv16.i.i.i = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.i.i.i, i32 %conv16.i.i.i)
  %cmp17.i.i.i = icmp eq i32 %and14.i.i.i, %conv16.i.i.i
  br i1 %cmp17.i.i.i, label %if.then19.i.i.i, label %if.else.i.i.i.if.end26.i.i.i_crit_edge

if.else.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i

if.then19.i.i.i:                                  ; preds = %if.else.i.i.i
  %mode.i58.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 6
  %95 = ptrtoint ptr %mode.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mode.i58.i.i.i, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %96, label %if.then19.i.i.i.if.end26.i.i.i_crit_edge [
    i32 0, label %if.else.i69.i.i.i
    i32 1, label %sw.bb6.i71.i.i.i
    i32 2, label %if.end25.i90.i.i.i
  ]

if.then19.i.i.i.if.end26.i.i.i_crit_edge:         ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i

if.else.i69.i.i.i:                                ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chain.i.i, align 4
  %next_virt.i59.i.i.i = getelementptr inbounds %struct.qed_chain_next, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %next_virt.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %next_virt.i59.i.i.i, align 4
  store ptr %101, ptr %chain.i.i, align 4
  %elem_unusable.i62.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 12
  %102 = ptrtoint ptr %elem_unusable.i62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %elem_unusable.i62.i.i.i, align 2
  %conv4.i67.i.i.i = zext i8 %103 to i32
  %add5.i68.i.i.i = add i32 %90, %conv4.i67.i.i.i
  %104 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add5.i68.i.i.i, ptr %u.i.i.i, align 4
  br label %if.end26.i.i.i

sw.bb6.i71.i.i.i:                                 ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %p_virt_addr.i70.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 16
  %105 = ptrtoint ptr %p_virt_addr.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p_virt_addr.i70.i.i.i, align 4
  %107 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %chain.i.i, align 4
  br label %if.end26.i.i.i

if.end25.i90.i.i.i:                               ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %c23.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 2, i32 1
  %108 = ptrtoint ptr %c23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %c23.i.i.i, align 4
  %inc19.i82.i.i.i = add i32 %109, 1
  %page_cnt20.i83.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 5
  %110 = ptrtoint ptr %page_cnt20.i83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %page_cnt20.i83.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82.i.i.i, i32 %111)
  %cmp21.i84.i.i.i = icmp eq i32 %inc19.i82.i.i.i, %111
  %spec.store.select43.i85.i.i.i = select i1 %cmp21.i84.i.i.i, i32 0, i32 %inc19.i82.i.i.i
  %112 = ptrtoint ptr %c23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.store.select43.i85.i.i.i, ptr %c23.i.i.i, align 4
  %pbl.i88.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 2
  %113 = ptrtoint ptr %pbl.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pbl.i88.i.i.i, align 4
  %arrayidx.i89.i.i.i = getelementptr %struct.addr_tbl_entry, ptr %114, i32 %spec.store.select43.i85.i.i.i
  %115 = ptrtoint ptr %arrayidx.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i89.i.i.i, align 4
  %117 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %chain.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i90.i.i.i, %sw.bb6.i71.i.i.i, %if.else.i69.i.i.i, %if.then19.i.i.i.if.end26.i.i.i_crit_edge, %if.else.i.i.i.if.end26.i.i.i_crit_edge
  %118 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %u.i.i.i, align 4
  %inc29.i.i.i = add i32 %119, 1
  store i32 %inc29.i.i.i, ptr %u.i.i.i, align 4
  br label %qed_chain_produce.exit.i.i

qed_chain_produce.exit.i.i:                       ; preds = %if.end26.i.i.i, %if.end.i.i2.i
  %120 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chain.i.i, align 4
  %elem_size.i.i.i = getelementptr inbounds %struct.qed_spq, ptr %51, i32 0, i32 5, i32 9
  %122 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %elem_size.i.i.i, align 4
  %conv33.i.i.i = zext i16 %123 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %121, i32 %conv33.i.i.i
  store ptr %add.ptr.i.i.i, ptr %chain.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end16.i.i

do.body.i.i:                                      ; preds = %qed_chain_produce.exit.i.i
  %124 = ptrtoint ptr %dp_level29.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dp_level29.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %125)
  %cmp.i3.i = icmp ult i8 %125, 3
  br i1 %cmp.i3.i, label %do.end.i.i, label %do.body.i.i.if.then.i_crit_edge, !prof !132

do.body.i.i.if.then.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 244, ptr noundef nonnull %name45.i.i) #13
  br label %if.then.i

if.end16.i.i:                                     ; preds = %qed_chain_produce.exit.i.i
  %elem2.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %35, i32 0, i32 2
  %126 = call ptr @memcpy(ptr %121, ptr %elem2.i.i, i32 16)
  %127 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %u.i.i.i, align 4
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #10
  %130 = ptrtoint ptr %spq_prod.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %spq_prod.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %131 = ptrtoint ptr %db_data.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %db_data.i.i, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  %134 = ptrtoint ptr %doorbells.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %doorbells.i.i, align 8
  %136 = ptrtoint ptr %db_addr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %db_addr_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %135, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %133) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %138 = ptrtoint ptr %dp_level29.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %dp_level29.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp31.i.i = icmp eq i8 %139, 0
  br i1 %cmp31.i.i, label %land.rhs.i.i, label %if.end16.i.i.while.cond.i.backedge_crit_edge

if.end16.i.i.while.cond.i.backedge_crit_edge:     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.backedge

land.rhs.i.i:                                     ; preds = %if.end16.i.i
  %140 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %141, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool33.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool33.not.i.i, label %land.rhs.i.i.while.cond.i.backedge_crit_edge, label %do.end43.i.i, !prof !131

land.rhs.i.i.while.cond.i.backedge_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.backedge

do.end43.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %db_addr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %db_addr_offset.i.i, align 4
  %144 = ptrtoint ptr %cid.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cid.i.i, align 4
  %146 = ptrtoint ptr %db_data.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %db_data.i.i, align 2
  %conv55.i.i = zext i8 %147 to i32
  %148 = ptrtoint ptr %agg_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %agg_flags.i.i, align 1
  %conv56.i.i = zext i8 %149 to i32
  %150 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %u.i.i.i, align 4
  %conv58.i.i = zext i16 %151 to i32
  %call59.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef 266, ptr noundef nonnull %name45.i.i, i32 noundef %143, i32 noundef %145, i32 noundef %conv55.i.i, i32 noundef %conv56.i.i, i32 noundef %conv58.i.i) #13
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.end43.i.i, %land.rhs.i.i.while.cond.i.backedge_crit_edge, %if.end16.i.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

if.then.i:                                        ; preds = %do.end.i.i, %do.body.i.i.if.then.i_crit_edge
  %call.i.i4.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #10
  br i1 %call.i.i4.i, label %if.end.i.i7.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i7.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i5.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i5.i, align 4
  %154 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %35, align 4
  %prev1.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i6.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i7.i, %if.then.i.list_del.exit.i_crit_edge
  %158 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i.i22 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i22, align 4
  %160 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %p_spq1, align 8
  %free_pool.i.i = getelementptr inbounds %struct.qed_spq, ptr %161, i32 0, i32 4
  %prev.i.i9.i = getelementptr inbounds %struct.qed_spq, ptr %161, i32 0, i32 4, i32 1
  %162 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i.i9.i, align 4
  %call.i.i.i10.i = tail call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %163, ptr noundef %free_pool.i.i) #10
  br i1 %call.i.i.i10.i, label %if.end.i.i.i12.i, label %list_del.exit.i.cleanup_crit_edge

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i12.i:                                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %35, ptr %prev.i.i9.i, align 4
  %165 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %free_pool.i.i, ptr %35, align 4
  %166 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %prev.i.i22, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %35, ptr %163, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i12.i, %list_del.exit.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %qed_chain_get_elem_left.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %list_del.exit.i.cleanup_crit_edge ], [ -22, %if.end.i.i.i12.i ], [ 0, %qed_chain_get_elem_left.exit.i.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eq_alloc(ptr noundef %p_hwfn, i16 noundef zeroext %num_elem) local_unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.qed_chain_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #10
  %0 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 4
  %4 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 5
  %5 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 6
  %6 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 7
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %params, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %conv = zext i16 %num_elem to i32
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 100) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_hwfn, align 8
  %call1 = call i32 @qed_chain_alloc(ptr noundef %17, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp = icmp ult i8 %19, 3
  br i1 %cmp, label %do.end, label %do.body.eq_allocate_fail_crit_edge, !prof !132

do.body.eq_allocate_fail_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %eq_allocate_fail

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 416, ptr noundef nonnull %spec.select) #13
  br label %eq_allocate_fail

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %eq_sb_index = getelementptr inbounds %struct.qed_eq, ptr %call7.i.i, i32 0, i32 1
  %p_fw_cons = getelementptr inbounds %struct.qed_eq, ptr %call7.i.i, i32 0, i32 2
  %call18 = call i32 @qed_int_register_cb(ptr noundef %p_hwfn, ptr noundef nonnull @qed_eq_completion, ptr noundef nonnull %call7.i.i, ptr noundef %eq_sb_index, ptr noundef %p_fw_cons) #10
  %p_eq19 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 20
  %20 = ptrtoint ptr %p_eq19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %p_eq19, align 4
  br label %cleanup

eq_allocate_fail:                                 ; preds = %do.end, %do.body.eq_allocate_fail_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %eq_allocate_fail, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %eq_allocate_fail ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_chain_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_int_register_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_eq_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_eq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 20
  %0 = ptrtoint ptr %p_eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_eq, align 4
  %cnt_type.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %u.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %u.i, align 4
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %5 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %cons_idx.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %u.i, align 4
  %cons_idx5.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %cons_idx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cons_idx5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_virt_addr.i, align 4
  %p_cons_elem.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %p_cons_elem.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %p_cons_elem.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %1, align 4
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp7.i = icmp eq i32 %13, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_cnt.i, align 4
  %sub.i = add i32 %15, -1
  br i1 %cmp.i, label %if.then11.i, label %if.else15.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %sub.i to i16
  %c.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %c.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %c.i, align 4
  %cons_page_idx.i = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i, i32 0, i32 1
  %17 = ptrtoint ptr %cons_page_idx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %cons_page_idx.i, align 2
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %c17.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %c17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %c17.i, align 4
  %cons_page_idx21.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %cons_page_idx21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %cons_page_idx21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.then11.i, %if.end.i.if.end23.i_crit_edge
  %intended_use.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %intended_use.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intended_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond.i = icmp eq i32 %21, 1
  br i1 %cond.i, label %for.cond.preheader.i, label %if.end23.i.qed_chain_reset.exit_crit_edge

if.end23.i.qed_chain_reset.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

for.cond.preheader.i:                             ; preds = %if.end23.i
  %capacity.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2449.not.i = icmp eq i32 %23, 0
  br i1 %cmp2449.not.i, label %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qed_chain_reset.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %elem_per_page_mask13.i.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 8
  %usable_per_page16.i.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 11
  %elem_unusable21.i.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %24 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %u.i, align 4
  %26 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %and52.i.i = and i16 %27, %25
  %28 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %usable_per_page16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i, i16 %29)
  %cmp3.i.i = icmp eq i16 %and52.i.i, %29
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.then31.i.i_crit_edge

if.then.i.i.if.then31.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv6.i.i = zext i8 %31 to i16
  %add.i.i = add i16 %25, %conv6.i.i
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add.i.i, ptr %u.i, align 4
  br label %if.then31.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %33 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %u.i, align 4
  %35 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %conv14.i.i = zext i16 %36 to i32
  %and15.i.i = and i32 %34, %conv14.i.i
  %37 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %usable_per_page16.i.i, align 4
  %conv17.i.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i, i32 %conv17.i.i)
  %cmp18.i.i = icmp eq i32 %and15.i.i, %conv17.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.else.i.i.if.else34.i.i_crit_edge

if.else.i.i.if.else34.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv22.i.i = zext i8 %40 to i32
  %add25.i.i = add i32 %34, %conv22.i.i
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add25.i.i, ptr %u.i, align 4
  br label %if.else34.i.i

if.then31.i.i:                                    ; preds = %if.then5.i.i, %if.then.i.i.if.then31.i.i_crit_edge
  %42 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %u.i, align 4
  %inc.i.i = add i16 %43, 1
  store i16 %inc.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

if.else34.i.i:                                    ; preds = %if.then20.i.i, %if.else.i.i.if.else34.i.i_crit_edge
  %44 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %u.i, align 4
  %inc37.i.i = add i32 %45, 1
  store i32 %inc37.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

qed_chain_recycle_consumed.exit.i:                ; preds = %if.else34.i.i, %if.then31.i.i
  %inc.i = add nuw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, label %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge

qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

qed_chain_reset.exit:                             ; preds = %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, %if.end23.i.qed_chain_reset.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_eq_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_eq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 20
  %0 = ptrtoint ptr %p_eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_eq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  tail call void @qed_chain_free(ptr noundef %3, ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %p_eq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_eq, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %p_eq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %p_eq, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_chain_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eth_cqe_completion(ptr noundef %p_hwfn, ptr nocapture noundef readonly %cqe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %qed_cqe_completion.exit, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

qed_cqe_completion.exit:                          ; preds = %entry
  %echo.i = getelementptr inbounds %struct.eth_slow_path_rx_cqe, ptr %cqe, i32 0, i32 4
  %4 = ptrtoint ptr %echo.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %echo.i, align 2
  %call.i = tail call i32 @qed_spq_completion(ptr noundef %p_hwfn, i16 noundef zeroext %5, i8 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %qed_cqe_completion.exit.if.end13_crit_edge, label %do.body

qed_cqe_completion.exit.if.end13_crit_edge:       ; preds = %qed_cqe_completion.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %qed_cqe_completion.exit
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ult i8 %7, 3
  br i1 %cmp, label %do.end, label %do.body.if.end13_crit_edge, !prof !132

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %ramrod_cmd_id = getelementptr inbounds %struct.eth_slow_path_rx_cqe, ptr %cqe, i32 0, i32 1
  %8 = ptrtoint ptr %ramrod_cmd_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ramrod_cmd_id, align 1
  %conv9 = zext i8 %9 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 475, ptr noundef nonnull %spec.select, i32 noundef %conv9) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %qed_cqe_completion.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  %retval.0.i21 = phi i32 [ %call.i, %do.body.if.end13_crit_edge ], [ %call.i, %do.end ], [ 0, %qed_cqe_completion.exit.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  ret i32 %retval.0.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_spq_setup(ptr noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  %cxt_info.i = alloca %struct.qed_cxt_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  %pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pending, ptr %prev.i, align 4
  %completion_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %completion_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %completion_pending, ptr %completion_pending, align 4
  %prev.i110 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %completion_pending, ptr %prev.i110, align 4
  %free_pool = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %free_pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %free_pool, ptr %free_pool, align 4
  %prev.i111 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_pool, ptr %prev.i111, align 4
  %unlimited_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %unlimited_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %unlimited_pending, ptr %unlimited_pending, align 4
  %prev.i112 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %unlimited_pending, ptr %prev.i112, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @qed_spq_setup.__key, i16 noundef signext 3) #10
  %chain = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5
  %capacity.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp116.not = icmp eq i32 %11, 0
  br i1 %cmp116.not, label %entry.for.end_crit_edge, label %do.body5.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body5.preheader:                               ; preds = %entry
  %p_virt3 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %p_virt3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_virt3, align 4
  %p_phys2 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %p_phys2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_phys2, align 4
  %add = add i32 %15, 28
  br label %do.body5

do.body5:                                         ; preds = %list_add_tail.exit.do.body5_crit_edge, %do.body5.preheader
  %i.0120 = phi i32 [ %inc, %list_add_tail.exit.do.body5_crit_edge ], [ 0, %do.body5.preheader ]
  %p_phys.0119 = phi i32 [ %add12, %list_add_tail.exit.do.body5_crit_edge ], [ %add, %do.body5.preheader ]
  %p_virt.0117 = phi ptr [ %incdec.ptr, %list_add_tail.exit.do.body5_crit_edge ], [ %13, %do.body5.preheader ]
  %data_ptr = getelementptr inbounds %struct.qed_spq_entry, ptr %p_virt.0117, i32 0, i32 2, i32 1
  %hi = getelementptr inbounds %struct.qed_spq_entry, ptr %p_virt.0117, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hi, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %p_phys.0119)
  %18 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data_ptr, align 4
  %19 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i111, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_virt.0117, ptr noundef %20, ptr noundef %free_pool) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body5.list_add_tail.exit_crit_edge

do.body5.list_add_tail.exit_crit_edge:            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %p_virt.0117, ptr %prev.i111, align 4
  %22 = ptrtoint ptr %p_virt.0117 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free_pool, ptr %p_virt.0117, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p_virt.0117, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %p_virt.0117, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body5.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.qed_spq_entry, ptr %p_virt.0117, i32 1
  %add12 = add i32 %p_phys.0119, 3196
  %inc = add nuw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.do.body5_crit_edge

list_add_tail.exit.do.body5_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %normal_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %normal_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %normal_count, align 4
  %comp_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %comp_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %comp_count, align 4
  %comp_sent_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %comp_sent_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %comp_sent_count, align 4
  %unlimited_pending_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %unlimited_pending_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %unlimited_pending_count, align 4
  %p_comp_bitmap = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 8
  %cid = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 15
  %29 = call ptr @memset(ptr %p_comp_bitmap, i32 0, i32 33)
  %call13 = tail call i32 @qed_cxt_acquire_cid(ptr noundef %p_hwfn, i32 noundef 3, ptr noundef %cid) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cxt_info.i) #10
  %30 = ptrtoint ptr %cxt_info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %cxt_info.i, align 4, !annotation !138
  %31 = getelementptr inbounds %struct.qed_cxt_info, ptr %cxt_info.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.qed_cxt_info, ptr %cxt_info.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !138
  %34 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cid, align 4
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %31, align 4
  %call.i = call i32 @qed_cxt_get_cid_info(ptr noundef %p_hwfn, ptr noundef nonnull %cxt_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %for.end
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %37 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp1.i = icmp ult i8 %38, 3
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.qed_spq_hw_initialize.exit_crit_edge, !prof !132

do.body.i.qed_spq_hw_initialize.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_spq_hw_initialize.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %39 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cid, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 210, ptr noundef nonnull %name.i, i32 noundef %40) #13
  br label %qed_spq_hw_initialize.exit

if.end13.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %cxt_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cxt_info.i, align 4
  %flags10.i = getelementptr inbounds %struct.core_conn_context, ptr %42, i32 0, i32 5, i32 12
  %43 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags10.i, align 4
  %45 = or i8 %44, 1
  store i8 %45, ptr %flags10.i, align 4
  %flags1.i = getelementptr inbounds %struct.core_conn_context, ptr %42, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags1.i, align 1
  %48 = or i8 %47, -128
  store i8 %48, ptr %flags1.i, align 1
  %flags9.i = getelementptr inbounds %struct.core_conn_context, ptr %42, i32 0, i32 5, i32 11
  %49 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags9.i, align 1
  %51 = or i8 %50, 64
  store i8 %51, ptr %flags9.i, align 1
  %call48.i = call zeroext i16 @qed_get_cm_pq_idx(ptr noundef %p_hwfn, i32 noundef 4) #10
  %52 = call i16 @llvm.bswap.i16(i16 %call48.i) #10
  %physical_q0.i = getelementptr inbounds %struct.core_conn_context, ptr %42, i32 0, i32 5, i32 18
  %53 = ptrtoint ptr %physical_q0.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %physical_q0.i, align 2
  %p_phys_addr.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 17
  %54 = ptrtoint ptr %p_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p_phys_addr.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #10
  %xstorm_st_context.i = getelementptr inbounds %struct.core_conn_context, ptr %42, i32 0, i32 4
  %57 = ptrtoint ptr %xstorm_st_context.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %xstorm_st_context.i, align 4
  %hi.i = getelementptr inbounds %struct.core_conn_context, ptr %42, i32 0, i32 4, i32 0, i32 1
  %58 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %hi.i, align 4
  br label %qed_spq_hw_initialize.exit

qed_spq_hw_initialize.exit:                       ; preds = %if.end13.i, %do.end.i, %do.body.i.qed_spq_hw_initialize.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cxt_info.i) #10
  %cnt_type.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 13
  %59 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i114 = icmp eq i32 %60, 0
  %u.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 3
  br i1 %cmp.i114, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %qed_spq_hw_initialize.exit
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %u.i, align 4
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %62 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %cons_idx.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %qed_spq_hw_initialize.exit
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %u.i, align 4
  %cons_idx5.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %cons_idx5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cons_idx5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %p_virt_addr.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 16
  %65 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p_virt_addr.i, align 4
  %p_cons_elem.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %p_cons_elem.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %p_cons_elem.i, align 4
  %68 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %chain, align 4
  %mode.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 6
  %69 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp7.i = icmp eq i32 %70, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  %page_cnt.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 5
  %71 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %page_cnt.i, align 4
  %sub.i = add i32 %72, -1
  br i1 %cmp.i114, label %if.then11.i, label %if.else15.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %sub.i to i16
  %c.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 2, i32 1
  %73 = ptrtoint ptr %c.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i, ptr %c.i, align 4
  %cons_page_idx.i = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i, i32 0, i32 1
  %74 = ptrtoint ptr %cons_page_idx.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i, ptr %cons_page_idx.i, align 2
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %c17.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 2, i32 1
  %75 = ptrtoint ptr %c17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.i, ptr %c17.i, align 4
  %cons_page_idx21.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 2, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %cons_page_idx21.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub.i, ptr %cons_page_idx21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.then11.i, %if.end.i.if.end23.i_crit_edge
  %intended_use.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 19
  %77 = ptrtoint ptr %intended_use.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %intended_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cond.i = icmp eq i32 %78, 1
  br i1 %cond.i, label %for.cond.preheader.i, label %if.end23.i.qed_chain_reset.exit_crit_edge

if.end23.i.qed_chain_reset.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

for.cond.preheader.i:                             ; preds = %if.end23.i
  %79 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp2449.not.i = icmp eq i32 %80, 0
  br i1 %cmp2449.not.i, label %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qed_chain_reset.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %elem_per_page_mask13.i.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 8
  %usable_per_page16.i.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 11
  %elem_unusable21.i.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge ]
  br i1 %cmp.i114, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %81 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %u.i, align 4
  %83 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %and52.i.i = and i16 %84, %82
  %85 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %usable_per_page16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i, i16 %86)
  %cmp3.i.i = icmp eq i16 %and52.i.i, %86
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.then31.i.i_crit_edge

if.then.i.i.if.then31.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv6.i.i = zext i8 %88 to i16
  %add.i.i = add i16 %82, %conv6.i.i
  %89 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %add.i.i, ptr %u.i, align 4
  br label %if.then31.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %90 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %u.i, align 4
  %92 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %conv14.i.i = zext i16 %93 to i32
  %and15.i.i = and i32 %91, %conv14.i.i
  %94 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %usable_per_page16.i.i, align 4
  %conv17.i.i = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i, i32 %conv17.i.i)
  %cmp18.i.i = icmp eq i32 %and15.i.i, %conv17.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.else.i.i.if.else34.i.i_crit_edge

if.else.i.i.if.else34.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv22.i.i = zext i8 %97 to i32
  %add25.i.i = add i32 %91, %conv22.i.i
  %98 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add25.i.i, ptr %u.i, align 4
  br label %if.else34.i.i

if.then31.i.i:                                    ; preds = %if.then5.i.i, %if.then.i.i.if.then31.i.i_crit_edge
  %99 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %u.i, align 4
  %inc.i.i = add i16 %100, 1
  store i16 %inc.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

if.else34.i.i:                                    ; preds = %if.then20.i.i, %if.else.i.i.if.else34.i.i_crit_edge
  %101 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %u.i, align 4
  %inc37.i.i = add i32 %102, 1
  store i32 %inc37.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

qed_chain_recycle_consumed.exit.i:                ; preds = %if.else34.i.i, %if.then31.i.i
  %inc.i = add nuw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %80
  br i1 %exitcond.not.i, label %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, label %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge

qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

qed_chain_reset.exit:                             ; preds = %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, %if.end23.i.qed_chain_reset.exit_crit_edge
  %103 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cid, align 4
  %mul.i = shl i32 %104, 2
  %db_addr_offset = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 16
  %105 = ptrtoint ptr %db_addr_offset to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul.i, ptr %db_addr_offset, align 4
  %db_data = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 17
  %106 = ptrtoint ptr %db_data to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 -1945108480, ptr %db_data, align 2
  %doorbells = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 13
  %107 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %doorbells, align 8
  %add.ptr = getelementptr i8, ptr %108, i32 %mul.i
  %109 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %p_hwfn, align 8
  %call49 = call i32 @qed_db_recovery_add(ptr noundef %110, ptr noundef %add.ptr, ptr noundef %db_data, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool.not = icmp eq i32 %call49, 0
  br i1 %tobool.not, label %qed_chain_reset.exit.if.end67_crit_edge, label %do.body50

qed_chain_reset.exit.if.end67_crit_edge:          ; preds = %qed_chain_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.body50:                                        ; preds = %qed_chain_reset.exit
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %111 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %112)
  %cmp52 = icmp ult i8 %112, 2
  br i1 %cmp52, label %do.end59, label %do.body50.if.end67_crit_edge, !prof !132

do.body50.if.end67_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end59:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool61.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool61.not, ptr @.str.3, ptr %name
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 546, ptr noundef nonnull %spec.select) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end59, %do.body50.if.end67_crit_edge, %qed_chain_reset.exit.if.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_acquire_cid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_recovery_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_spq_alloc(ptr noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.qed_chain_init_params, align 4
  %p_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #10
  %0 = call ptr @memcpy(ptr %params, ptr @__const.qed_spq_alloc.params, i32 32)
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_phys) #10
  %3 = ptrtoint ptr %p_phys to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %p_phys, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 292) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %chain = getelementptr inbounds %struct.qed_spq, ptr %call7.i.i, i32 0, i32 5
  %call2 = call i32 @qed_chain_alloc(ptr noundef %2, ptr noundef %chain, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.spq_chain_alloc_fail_crit_edge, !prof !132

do.body.spq_chain_alloc_fail_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %spq_chain_alloc_fail

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 572, ptr noundef nonnull %spec.select) #13
  br label %spq_chain_alloc_fail

if.end17:                                         ; preds = %if.end
  %capacity.i = getelementptr inbounds %struct.qed_spq, ptr %call7.i.i, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capacity.i, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 50
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %mul = mul i32 %8, 3196
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %p_phys, i32 noundef 3264, i32 noundef 0) #10
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %spq_alloc_fail, label %if.end23

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %p_virt24 = getelementptr inbounds %struct.qed_spq, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %p_virt24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %p_virt24, align 4
  %12 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_phys, align 4
  %p_phys25 = getelementptr inbounds %struct.qed_spq, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %p_phys25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %p_phys25, align 8
  %p_spq26 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %15 = ptrtoint ptr %p_spq26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %p_spq26, align 8
  br label %cleanup

spq_alloc_fail:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_chain_free(ptr noundef %2, ptr noundef %chain) #10
  br label %spq_chain_alloc_fail

spq_chain_alloc_fail:                             ; preds = %spq_alloc_fail, %do.end, %do.body.spq_chain_alloc_fail_crit_edge
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call2, %do.body.spq_chain_alloc_fail_crit_edge ], [ -12, %spq_alloc_fail ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %spq_chain_alloc_fail, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spq_chain_alloc_fail ], [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_spq_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %doorbells = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 13
  %2 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %doorbells, align 8
  %db_addr_offset = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %db_addr_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_addr_offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %db_data = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 17
  %call = tail call i32 @qed_db_recovery_del(ptr noundef %7, ptr noundef %add.ptr, ptr noundef %db_data) #10
  %p_virt = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %p_virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_virt, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %capacity.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity.i, align 4
  %12 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %mul = mul i32 %11, 3196
  %p_phys = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %9, i32 noundef %17, i32 noundef 0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %18 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_hwfn, align 8
  %chain9 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 5
  tail call void @qed_chain_free(ptr noundef %19, ptr noundef %chain9) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %20 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %p_spq1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_recovery_del(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_spq_get_entry(ptr noundef %p_hwfn, ptr nocapture noundef writeonly %pp_ent) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #10
  %free_pool = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %free_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_pool, align 4
  %cmp.i.not = icmp eq ptr %3, %free_pool
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 3196) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.out_unlock_crit_edge, !prof !132

do.body.out_unlock_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 639, ptr noundef nonnull %spec.select) #13
  br label %out_unlock

if.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %unlimited_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1
  %queue = getelementptr inbounds %struct.qed_spq_entry, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %unlimited_pending, ptr %queue, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2
  %queue19 = getelementptr inbounds %struct.qed_spq_entry, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %queue19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pending, ptr %queue19, align 4
  br label %if.end20

if.end20:                                         ; preds = %list_del.exit, %if.end16
  %p_ent.0 = phi ptr [ %call7.i.i, %if.end16 ], [ %3, %list_del.exit ]
  %17 = ptrtoint ptr %pp_ent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %p_ent.0, ptr %pp_ent, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end20, %do.end, %do.body.out_unlock_crit_edge
  %rc.0 = phi i32 [ 0, %if.end20 ], [ -12, %do.end ], [ -12, %do.body.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_spq_return_entry(ptr nocapture noundef readonly %p_hwfn, ptr noundef %p_ent) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #10
  %2 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_spq, align 8
  %free_pool.i = getelementptr inbounds %struct.qed_spq, ptr %3, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.qed_spq, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_ent, ptr noundef %5, ptr noundef %free_pool.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.__qed_spq_return_entry.exit_crit_edge

entry.__qed_spq_return_entry.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__qed_spq_return_entry.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %p_ent, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_pool.i, ptr %p_ent, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p_ent, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %p_ent, ptr %5, align 4
  br label %__qed_spq_return_entry.exit

__qed_spq_return_entry.exit:                      ; preds = %if.end.i.i.i, %entry.__qed_spq_return_entry.exit_crit_edge
  %10 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_spq, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_spq_get_cid(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cid = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cid, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_spq_add_entry(ptr nocapture noundef readonly %p_hwfn, ptr noundef %p_ent, i32 noundef %priority) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  %queue = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 5
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %unlimited_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %3, %unlimited_pending
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %free_pool = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %free_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %free_pool, align 4
  %cmp.i.not = icmp eq ptr %5, %free_pool
  br i1 %cmp.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %prev.i = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_ent, ptr noundef %7, ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_add_tail.exit_crit_edge

if.then2.list_add_tail.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %p_ent, ptr %prev.i, align 4
  %9 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %p_ent, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p_ent, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %p_ent, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then2.list_add_tail.exit_crit_edge
  %unlimited_pending_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 10
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then
  %call.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i39, label %if.end.i.i40, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i40:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i40, %if.else.list_del.exit_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i41 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i41, align 4
  %data_ptr = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 1
  %data_ptr7 = getelementptr inbounds %struct.qed_spq_entry, ptr %5, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %data_ptr7 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %data_ptr7, align 4
  %22 = ptrtoint ptr %data_ptr to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %data_ptr, align 4
  %23 = call ptr @memcpy(ptr %5, ptr %p_ent, i32 3196)
  %comp_mode = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 6
  %24 = ptrtoint ptr %comp_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %comp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp8.not = icmp eq i32 %25, 2
  br i1 %cmp8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %p_ent) #10
  br label %if.end12

if.else10:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %post_ent = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 9
  %26 = ptrtoint ptr %post_ent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %5, ptr %post_ent, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9, %entry.if.end12_crit_edge
  %p_ent.addr.0 = phi ptr [ %p_ent, %entry.if.end12_crit_edge ], [ %5, %if.else10 ], [ %5, %if.then9 ]
  %27 = zext i32 %priority to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %priority, label %if.end12.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2
  %prev.i42 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i42, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_ent.addr.0, ptr noundef %29, ptr noundef %pending) #10
  br i1 %call.i.i43, label %if.end.i.i45, label %sw.bb.list_add_tail.exit46_crit_edge

sw.bb.list_add_tail.exit46_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit46

if.end.i.i45:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %p_ent.addr.0, ptr %prev.i42, align 4
  %31 = ptrtoint ptr %p_ent.addr.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pending, ptr %p_ent.addr.0, align 4
  %prev3.i.i44 = getelementptr inbounds %struct.list_head, ptr %p_ent.addr.0, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i44, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %p_ent.addr.0, ptr %29, align 4
  br label %list_add_tail.exit46

list_add_tail.exit46:                             ; preds = %if.end.i.i45, %sw.bb.list_add_tail.exit46_crit_edge
  %normal_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 11
  br label %cleanup.sink.split

sw.bb15:                                          ; preds = %if.end12
  %pending17 = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %pending17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pending17, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_ent.addr.0, ptr noundef %pending17, ptr noundef %35) #10
  br i1 %call.i.i47, label %if.end.i.i49, label %sw.bb15.list_add.exit_crit_edge

sw.bb15.list_add.exit_crit_edge:                  ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i49:                                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %p_ent.addr.0, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %p_ent.addr.0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %p_ent.addr.0, align 4
  %prev3.i.i48 = getelementptr inbounds %struct.list_head, ptr %p_ent.addr.0, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pending17, ptr %prev3.i.i48, align 4
  %39 = ptrtoint ptr %pending17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %p_ent.addr.0, ptr %pending17, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i49, %sw.bb15.list_add.exit_crit_edge
  %high_count = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_add.exit, %list_add_tail.exit46, %list_add_tail.exit
  %normal_count.sink50 = phi ptr [ %normal_count, %list_add_tail.exit46 ], [ %high_count, %list_add.exit ], [ %unlimited_pending_count, %list_add_tail.exit ]
  %40 = ptrtoint ptr %normal_count.sink50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %normal_count.sink50, align 4
  %inc14 = add i32 %41, 1
  store i32 %inc14, ptr %normal_count.sink50, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end12.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %p_ent, ptr noundef %fw_return_code) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_hwfn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %p_spq1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %0 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_spq1, align 8
  %tobool3.not = icmp eq ptr %p_ent, null
  br i1 %tobool3.not, label %do.body, label %if.end20

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !132

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 842, ptr noundef nonnull %spec.select) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %recov_in_prog = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recov_in_prog, align 8, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool21.not = icmp eq i8 %7, 0
  br i1 %tobool21.not, label %if.end71, label %do.body23

do.body23:                                        ; preds = %if.end20
  %dp_level24 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level24 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level24, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp26 = icmp eq i8 %9, 0
  br i1 %cmp26, label %land.rhs, label %do.body23.do.end70_crit_edge

do.body23.do.end70_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

land.rhs:                                         ; preds = %do.body23
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %10 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module, align 4
  %and = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.rhs.do.end70_crit_edge, label %do.end38, !prof !131

land.rhs.do.end70_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

do.end38:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool42.not = icmp eq ptr %name40, null
  %spec.select159 = select i1 %tobool42.not, ptr @.str.3, ptr %name40
  %protocol_id = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol_id, align 1
  %conv49 = zext i8 %13 to i32
  %cmd_id = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_id, align 4
  %conv52 = zext i8 %15 to i32
  %call53 = tail call ptr @qed_get_ramrod_cmd_id_str(i32 noundef %conv49, i32 noundef %conv52) #10
  %16 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_id, align 4
  %conv57 = zext i8 %17 to i32
  %18 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol_id, align 1
  %conv61 = zext i8 %19 to i32
  %call62 = tail call ptr @qed_get_protocol_type_str(i32 noundef %conv61) #10
  %20 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %protocol_id, align 1
  %conv66 = zext i8 %21 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 854, ptr noundef nonnull %spec.select159, ptr noundef %call53, i32 noundef %conv57, ptr noundef %call62, i32 noundef %conv66) #13
  br label %do.end70

do.end70:                                         ; preds = %do.end38, %land.rhs.do.end70_crit_edge, %do.body23.do.end70_crit_edge
  %tobool.not.i = icmp eq ptr %fw_return_code, null
  br i1 %tobool.not.i, label %do.end70.cleanup_crit_edge, label %if.end.i

do.end70.cleanup_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.end70
  %protocol_id.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %protocol_id.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %23, label %if.end.i.cleanup_crit_edge [
    i8 2, label %if.end.i.if.then8.i_crit_edge
    i8 5, label %if.end.i.if.then8.i_crit_edge175
  ]

if.end.i.if.then8.i_crit_edge175:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge175
  %25 = ptrtoint ptr %fw_return_code to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fw_return_code, align 1
  br label %cleanup

if.end71:                                         ; preds = %if.end20
  %flags.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %flags.i, align 4
  %comp_mode.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 6
  %27 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %comp_mode.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %28, label %do.body.i [
    i32 2, label %if.end71.sw.bb.i_crit_edge
    i32 0, label %if.end71.sw.bb.i_crit_edge176
    i32 1, label %if.end71.do.body9.i_crit_edge
  ]

if.end71.do.body9.i_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

if.end71.sw.bb.i_crit_edge176:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end71.sw.bb.i_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end71.sw.bb.i_crit_edge, %if.end71.sw.bb.i_crit_edge176
  %comp_cb.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 7
  %30 = ptrtoint ptr %comp_cb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @qed_spq_blocking_cb, ptr %comp_cb.i, align 4
  br label %do.body9.i

do.body.i:                                        ; preds = %if.end71
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %31 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i = icmp ult i8 %32, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.qed_spq_fill_entry.exit_crit_edge, !prof !132

do.body.i.qed_spq_fill_entry.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_spq_fill_entry.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 172, ptr noundef nonnull %name.i, i32 noundef %28) #13
  br label %qed_spq_fill_entry.exit

do.body9.i:                                       ; preds = %sw.bb.i, %if.end71.do.body9.i_crit_edge
  %dp_level10.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %33 = ptrtoint ptr %dp_level10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp12.i = icmp eq i8 %34, 0
  br i1 %cmp12.i, label %land.rhs.i, label %do.body9.i.if.end75_crit_edge

do.body9.i.if.end75_crit_edge:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.rhs.i:                                       ; preds = %do.body9.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %35 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %land.rhs.i.if.end75_crit_edge, label %do.end23.i, !prof !131

land.rhs.i.if.end75_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.end23.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %name25.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %elem.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2
  %37 = ptrtoint ptr %elem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %elem.i, align 4
  %protocol_id.i160 = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 2
  %39 = ptrtoint ptr %protocol_id.i160 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %protocol_id.i160, align 1
  %conv36.i = zext i8 %40 to i32
  %cmd_id.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 1
  %41 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cmd_id.i, align 4
  %conv39.i = zext i8 %42 to i32
  %call40.i = tail call ptr @qed_get_ramrod_cmd_id_str(i32 noundef %conv36.i, i32 noundef %conv39.i) #10
  %43 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmd_id.i, align 4
  %conv44.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %protocol_id.i160 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %protocol_id.i160, align 1
  %conv48.i = zext i8 %46 to i32
  %call49.i = tail call ptr @qed_get_protocol_type_str(i32 noundef %conv48.i) #10
  %47 = ptrtoint ptr %protocol_id.i160 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %protocol_id.i160, align 1
  %conv53.i = zext i8 %48 to i32
  %data_ptr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 1
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 1, i32 1
  %49 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hi.i, align 4
  %51 = ptrtoint ptr %data_ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_ptr.i, align 4
  %53 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %comp_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp58.i = icmp eq i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp63.i = icmp eq i32 %54, 0
  %cond65.i = select i1 %cmp63.i, ptr @.str.54, ptr @.str.55
  %cond67.i = select i1 %cmp58.i, ptr @.str.53, ptr %cond65.i
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 188, ptr noundef nonnull %name25.i, i32 noundef %38, ptr noundef %call40.i, i32 noundef %conv44.i, ptr noundef %call49.i, i32 noundef %conv53.i, i32 noundef %50, i32 noundef %52, ptr noundef nonnull %cond67.i) #13
  br label %if.end75

qed_spq_fill_entry.exit:                          ; preds = %do.end.i, %do.body.i.qed_spq_fill_entry.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #10
  br label %if.then106

if.end75:                                         ; preds = %do.end23.i, %land.rhs.i.if.end75_crit_edge, %do.body9.i.if.end75_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #10
  %55 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %comp_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp76 = icmp eq i32 %56, 2
  %priority = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 4
  %57 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %priority, align 4
  %call78 = tail call fastcc i32 @qed_spq_add_entry(ptr noundef nonnull %p_hwfn, ptr noundef nonnull %p_ent, i32 noundef %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.if.then106_crit_edge

if.end75.if.then106_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106

if.end81:                                         ; preds = %if.end75
  %call82 = tail call i32 @qed_spq_pend_post(ptr noundef nonnull %p_hwfn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.if.end107_crit_edge

if.end81.if.end107_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.end85:                                         ; preds = %if.end81
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #10
  br i1 %cmp76, label %if.then88, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then88:                                        ; preds = %if.end85
  %queue = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 5
  %59 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue, align 4
  %unlimited_pending = getelementptr inbounds %struct.qed_spq, ptr %1, i32 0, i32 1
  %cmp89 = icmp eq ptr %60, %unlimited_pending
  %call91 = tail call fastcc i32 @qed_spq_block(ptr noundef nonnull %p_hwfn, ptr noundef nonnull %p_ent, ptr noundef %fw_return_code, i1 noundef zeroext %cmp89)
  %61 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %queue, align 4
  %cmp94 = icmp eq ptr %62, %unlimited_pending
  br i1 %cmp94, label %if.then96, label %if.then88.if.end97_crit_edge

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then96:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %post_ent = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 9
  %63 = ptrtoint ptr %post_ent to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %post_ent, align 4
  tail call void @kfree(ptr noundef nonnull %p_ent) #10
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.then88.if.end97_crit_edge
  %p_ent.addr.0 = phi ptr [ %64, %if.then96 ], [ %p_ent, %if.then88.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool98.not = icmp eq i32 %call91, 0
  br i1 %tobool98.not, label %if.end100, label %spq_post_fail2

if.end100:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qed_spq_return_entry(ptr noundef nonnull %p_hwfn, ptr noundef %p_ent.addr.0)
  br label %cleanup

spq_post_fail2:                                   ; preds = %if.end97
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_ent.addr.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %spq_post_fail2.list_del.exit_crit_edge

spq_post_fail2.list_del.exit_crit_edge:           ; preds = %spq_post_fail2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %spq_post_fail2
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p_ent.addr.0, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %p_ent.addr.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %p_ent.addr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %spq_post_fail2.list_del.exit_crit_edge
  %71 = ptrtoint ptr %p_ent.addr.0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %p_ent.addr.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p_ent.addr.0, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %echo = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent.addr.0, i32 0, i32 2, i32 0, i32 3
  %73 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %echo, align 2
  tail call fastcc void @qed_spq_comp_bmap_update(ptr noundef nonnull %p_hwfn, i16 noundef zeroext %74)
  br label %if.then106

if.then106:                                       ; preds = %list_del.exit, %if.end75.if.then106_crit_edge, %qed_spq_fill_entry.exit
  %rc.1.ph = phi i32 [ %call91, %list_del.exit ], [ %call78, %if.end75.if.then106_crit_edge ], [ -22, %qed_spq_fill_entry.exit ]
  %p_ent.addr.1.ph = phi ptr [ %p_ent.addr.0, %list_del.exit ], [ %p_ent, %if.end75.if.then106_crit_edge ], [ %p_ent, %qed_spq_fill_entry.exit ]
  %75 = ptrtoint ptr %p_spq1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %p_spq1, align 8
  %free_pool.i = getelementptr inbounds %struct.qed_spq, ptr %76, i32 0, i32 4
  %prev.i.i161 = getelementptr inbounds %struct.qed_spq, ptr %76, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %prev.i.i161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i161, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_ent.addr.1.ph, ptr noundef %78, ptr noundef %free_pool.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then106.if.end107_crit_edge

if.then106.if.end107_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.end.i.i.i:                                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %prev.i.i161 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %p_ent.addr.1.ph, ptr %prev.i.i161, align 4
  %80 = ptrtoint ptr %p_ent.addr.1.ph to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %free_pool.i, ptr %p_ent.addr.1.ph, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p_ent.addr.1.ph, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %p_ent.addr.1.ph, ptr %78, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.end.i.i.i, %if.then106.if.end107_crit_edge, %if.end81.if.end107_crit_edge
  %rc.1172 = phi i32 [ %call82, %if.end81.if.end107_crit_edge ], [ %rc.1.ph, %if.then106.if.end107_crit_edge ], [ %rc.1.ph, %if.end.i.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.end100, %if.end85.cleanup_crit_edge, %if.then8.i, %if.end.i.cleanup_crit_edge, %do.end70.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1172, %if.end107 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end100 ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %do.end70.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then8.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_ramrod_cmd_id_str(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_protocol_type_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_spq_block(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_ent, ptr noundef writeonly %p_fw_ret, i1 noundef zeroext %skip_quick_poll) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %skip_quick_poll, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %cookie.i = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then.if.then.i_crit_edge, label %if.end8.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.end8.i.8.if.then.i_crit_edge, %if.end8.i.7.if.then.i_crit_edge, %if.end8.i.6.if.then.i_crit_edge, %if.end8.i.5.if.then.i_crit_edge, %if.end8.i.4.if.then.i_crit_edge, %if.end8.i.3.if.then.i_crit_edge, %if.end8.i.2.if.then.i_crit_edge, %if.end8.i.1.if.then.i_crit_edge, %if.end8.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %tobool6.not.i = icmp eq ptr %p_fw_ret, null
  br i1 %tobool6.not.i, label %if.then.i.cleanup_crit_edge, label %if.then7.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_return_code.i = getelementptr inbounds %struct.qed_spq_comp_done, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fw_return_code.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_return_code.i, align 4
  %6 = ptrtoint ptr %p_fw_ret to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %p_fw_ret, align 1
  br label %cleanup

if.end8.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.1 = icmp eq i32 %9, 1
  br i1 %cmp.i.1, label %if.end8.i.if.then.i_crit_edge, label %if.end8.i.1

if.end8.i.if.then.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.1:                                      ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.2 = icmp eq i32 %12, 1
  br i1 %cmp.i.2, label %if.end8.i.1.if.then.i_crit_edge, label %if.end8.i.2

if.end8.i.1.if.then.i_crit_edge:                  ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.2:                                      ; preds = %if.end8.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.3 = icmp eq i32 %15, 1
  br i1 %cmp.i.3, label %if.end8.i.2.if.then.i_crit_edge, label %if.end8.i.3

if.end8.i.2.if.then.i_crit_edge:                  ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.3:                                      ; preds = %if.end8.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.4 = icmp eq i32 %18, 1
  br i1 %cmp.i.4, label %if.end8.i.3.if.then.i_crit_edge, label %if.end8.i.4

if.end8.i.3.if.then.i_crit_edge:                  ; preds = %if.end8.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.4:                                      ; preds = %if.end8.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.5 = icmp eq i32 %21, 1
  br i1 %cmp.i.5, label %if.end8.i.4.if.then.i_crit_edge, label %if.end8.i.5

if.end8.i.4.if.then.i_crit_edge:                  ; preds = %if.end8.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.5:                                      ; preds = %if.end8.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.6 = icmp eq i32 %24, 1
  br i1 %cmp.i.6, label %if.end8.i.5.if.then.i_crit_edge, label %if.end8.i.6

if.end8.i.5.if.then.i_crit_edge:                  ; preds = %if.end8.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.6:                                      ; preds = %if.end8.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.7 = icmp eq i32 %27, 1
  br i1 %cmp.i.7, label %if.end8.i.6.if.then.i_crit_edge, label %if.end8.i.7

if.end8.i.6.if.then.i_crit_edge:                  ; preds = %if.end8.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.7:                                      ; preds = %if.end8.i.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.8 = icmp eq i32 %30, 1
  br i1 %cmp.i.8, label %if.end8.i.7.if.then.i_crit_edge, label %if.end8.i.8

if.end8.i.7.if.then.i_crit_edge:                  ; preds = %if.end8.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.8:                                      ; preds = %if.end8.i.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.9 = icmp eq i32 %33, 1
  br i1 %cmp.i.9, label %if.end8.i.8.if.then.i_crit_edge, label %if.end8.i.9

if.end8.i.8.if.then.i_crit_edge:                  ; preds = %if.end8.i.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8.i.9:                                      ; preds = %if.end8.i.8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #10
  br label %if.end3

if.end3:                                          ; preds = %if.end8.i.9, %entry.if.end3_crit_edge
  %cookie.i168 = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %cookie.i168 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cookie.i168, align 4
  br label %while.body.i171

while.body.i171:                                  ; preds = %if.end8.i176.while.body.i171_crit_edge, %if.end3
  %dec2.i169 = phi i32 [ 999, %if.end3 ], [ %dec.i177, %if.end8.i176.while.body.i171_crit_edge ]
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i170 = icmp eq i32 %38, 1
  br i1 %cmp.i170, label %if.then.i173, label %if.end8.i176

if.then.i173:                                     ; preds = %while.body.i171
  %tobool6.not.i172 = icmp eq ptr %p_fw_ret, null
  br i1 %tobool6.not.i172, label %if.then.i173.cleanup_crit_edge, label %if.then7.i175

if.then.i173.cleanup_crit_edge:                   ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i175:                                    ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #12
  %fw_return_code.i174 = getelementptr inbounds %struct.qed_spq_comp_done, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %fw_return_code.i174 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fw_return_code.i174, align 4
  %41 = ptrtoint ptr %p_fw_ret to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %p_fw_ret, align 1
  br label %cleanup

if.end8.i176:                                     ; preds = %while.body.i171
  tail call void @msleep(i32 noundef 5) #10
  %dec.i177 = add nsw i32 %dec2.i169, -1
  %tobool1.not.i178 = icmp eq i32 %dec2.i169, 0
  br i1 %tobool1.not.i178, label %if.end7, label %if.end8.i176.while.body.i171_crit_edge

if.end8.i176.while.body.i171_crit_edge:           ; preds = %if.end8.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i171

if.end7:                                          ; preds = %if.end8.i176
  %call8 = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #10
  %tobool9.not = icmp eq ptr %call8, null
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %42 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp_level, align 8
  br i1 %tobool9.not, label %do.body, label %do.body24

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp = icmp ult i8 %43, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !132

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool16.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool16.not, ptr @.str.3, ptr %name
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 114, ptr noundef nonnull %spec.select) #13
  br label %cleanup

do.body24:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp27 = icmp ult i8 %43, 2
  br i1 %cmp27, label %do.end38, label %do.body24.do.end52_crit_edge, !prof !132

do.body24.do.end52_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

do.end38:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %name40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool42.not = icmp eq ptr %name40, null
  %spec.select166 = select i1 %tobool42.not, ptr @.str.3, ptr %name40
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 118, ptr noundef nonnull %spec.select166) #13
  br label %do.end52

do.end52:                                         ; preds = %do.end38, %do.body24.do.end52_crit_edge
  %call53 = tail call i32 @qed_mcp_drain(ptr noundef %p_hwfn, ptr noundef nonnull %call8) #10
  tail call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end85, label %do.body56

do.body56:                                        ; preds = %do.end52
  %44 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %45)
  %cmp59 = icmp ult i8 %45, 3
  br i1 %cmp59, label %do.end70, label %do.body56.err_crit_edge, !prof !132

do.body56.err_crit_edge:                          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end70:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %name72 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool74.not = icmp eq ptr %name72, null
  %spec.select167 = select i1 %tobool74.not, ptr @.str.3, ptr %name72
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.57, i32 noundef 122, ptr noundef nonnull %spec.select167) #13
  br label %err

if.end85:                                         ; preds = %do.end52
  %46 = ptrtoint ptr %cookie.i168 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cookie.i168, align 4
  br label %while.body.i184

while.body.i184:                                  ; preds = %if.end8.i189.while.body.i184_crit_edge, %if.end85
  %dec2.i182 = phi i32 [ 999, %if.end85 ], [ %dec.i190, %if.end8.i189.while.body.i184_crit_edge ]
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i183 = icmp eq i32 %49, 1
  br i1 %cmp.i183, label %if.then.i186, label %if.end8.i189

if.then.i186:                                     ; preds = %while.body.i184
  %tobool6.not.i185 = icmp eq ptr %p_fw_ret, null
  br i1 %tobool6.not.i185, label %if.then.i186.cleanup_crit_edge, label %if.then7.i188

if.then.i186.cleanup_crit_edge:                   ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i188:                                    ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #12
  %fw_return_code.i187 = getelementptr inbounds %struct.qed_spq_comp_done, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %fw_return_code.i187 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fw_return_code.i187, align 4
  %52 = ptrtoint ptr %p_fw_ret to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %p_fw_ret, align 1
  br label %cleanup

if.end8.i189:                                     ; preds = %while.body.i184
  tail call void @msleep(i32 noundef 5) #10
  %dec.i190 = add nsw i32 %dec2.i182, -1
  %tobool1.not.i191 = icmp eq i32 %dec2.i182, 0
  br i1 %tobool1.not.i191, label %if.end89, label %if.end8.i189.while.body.i184_crit_edge

if.end8.i189.while.body.i184_crit_edge:           ; preds = %if.end8.i189
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i184

if.end89:                                         ; preds = %if.end8.i189
  %53 = ptrtoint ptr %cookie.i168 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cookie.i168, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp90 = icmp eq i32 %56, 1
  br i1 %cmp90, label %if.then92, label %if.end89.err_crit_edge

if.end89.err_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then92:                                        ; preds = %if.end89
  %tobool93.not = icmp eq ptr %p_fw_ret, null
  br i1 %tobool93.not, label %if.then92.cleanup_crit_edge, label %if.then94

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then94:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  %fw_return_code = getelementptr inbounds %struct.qed_spq_comp_done, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %fw_return_code to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fw_return_code, align 4
  %59 = ptrtoint ptr %p_fw_ret to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %p_fw_ret, align 1
  br label %cleanup

err:                                              ; preds = %if.end89.err_crit_edge, %do.end70, %do.body56.err_crit_edge
  %call97 = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #10
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %err.cleanup_crit_edge, label %if.end100

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %elem = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2
  %60 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %elem, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %protocol_id = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 2
  %63 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %protocol_id, align 1
  %conv103 = zext i8 %64 to i32
  %cmd_id = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 1
  %65 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %cmd_id, align 4
  %conv106 = zext i8 %66 to i32
  %call107 = tail call ptr @qed_get_ramrod_cmd_id_str(i32 noundef %conv103, i32 noundef %conv106) #10
  %67 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cmd_id, align 4
  %conv111 = zext i8 %68 to i32
  %69 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %protocol_id, align 1
  %conv115 = zext i8 %70 to i32
  %call116 = tail call ptr @qed_get_protocol_type_str(i32 noundef %conv115) #10
  %71 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %protocol_id, align 1
  %conv120 = zext i8 %72 to i32
  %echo = getelementptr inbounds %struct.qed_spq_entry, ptr %p_ent, i32 0, i32 2, i32 0, i32 3
  %73 = ptrtoint ptr %echo to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %echo, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv123 = zext i16 %75 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef nonnull %call97, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %62, ptr noundef %call107, i32 noundef %conv111, ptr noundef %call116, i32 noundef %conv120, i32 noundef %conv123) #13
  tail call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call97) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %err.cleanup_crit_edge, %if.then94, %if.then92.cleanup_crit_edge, %if.then7.i188, %if.then.i186.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then7.i175, %if.then.i173.cleanup_crit_edge, %if.then7.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end100 ], [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ], [ 0, %if.then94 ], [ 0, %if.then92.cleanup_crit_edge ], [ -16, %err.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then7.i175 ], [ 0, %if.then.i173.cleanup_crit_edge ], [ 0, %if.then7.i188 ], [ 0, %if.then.i186.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_spq_comp_bmap_update(ptr nocapture noundef readonly %p_hwfn, i16 noundef zeroext %echo) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %echo, 8
  %p_spq2 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 19
  %1 = ptrtoint ptr %p_spq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_spq2, align 8
  %conv3 = zext i16 %0 to i32
  %p_comp_bitmap = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 8
  %rem.i = and i32 %conv3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv3, 5
  %add.ptr.i = getelementptr i32, ptr %p_comp_bitmap, i32 %div2.i
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %4, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %comp_bitmap_idx = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %comp_bitmap_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %comp_bitmap_idx.promoted = load i8, ptr %comp_bitmap_idx, align 4
  %conv424 = zext i8 %comp_bitmap_idx.promoted to i32
  %div3.i25 = lshr i32 %conv424, 5
  %arrayidx.i26 = getelementptr i32, ptr %p_comp_bitmap, i32 %div3.i25
  %6 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i26, align 4
  %and.i27 = and i32 %conv424, 31
  %8 = shl nuw i32 1, %and.i27
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not28 = icmp eq i32 %9, 0
  br i1 %tobool.not28, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cnt_type.i = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 5, i32 13
  %cons_idx2.i = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 5, i32 3, i32 0, i32 1
  %elem_per_page_mask23.i = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 5, i32 8
  %usable_per_page26.i = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 5, i32 11
  %elem_unusable31.i = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 5, i32 12
  %u.i = getelementptr inbounds %struct.qed_spq, ptr %2, i32 0, i32 5, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %qed_chain_return_produced.exit.while.body_crit_edge, %while.body.lr.ph
  %and.i31 = phi i32 [ %and.i27, %while.body.lr.ph ], [ %and.i, %qed_chain_return_produced.exit.while.body_crit_edge ]
  %10 = phi i32 [ %7, %while.body.lr.ph ], [ %33, %qed_chain_return_produced.exit.while.body_crit_edge ]
  %arrayidx.i30 = phi ptr [ %arrayidx.i26, %while.body.lr.ph ], [ %arrayidx.i, %qed_chain_return_produced.exit.while.body_crit_edge ]
  %inc2329 = phi i8 [ %comp_bitmap_idx.promoted, %while.body.lr.ph ], [ %inc, %qed_chain_return_produced.exit.while.body_crit_edge ]
  %shl.i19 = shl nuw i32 1, %and.i31
  %neg.i = xor i32 %shl.i19, -1
  %and.i22 = and i32 %10, %neg.i
  %11 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i22, ptr %arrayidx.i30, align 4
  %inc = add i8 %inc2329, 1
  %12 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.then6.i, label %if.else20.i

if.then6.i:                                       ; preds = %while.body
  %14 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cons_idx.i, align 2
  %inc.i = add i16 %15, 1
  store i16 %inc.i, ptr %cons_idx.i, align 2
  %16 = ptrtoint ptr %elem_per_page_mask23.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %elem_per_page_mask23.i, align 2
  %and51.i = and i16 %17, %inc.i
  %18 = ptrtoint ptr %usable_per_page26.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %usable_per_page26.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and51.i, i16 %19)
  %cmp11.i = icmp eq i16 %and51.i, %19
  br i1 %cmp11.i, label %if.then13.i, label %if.then6.i.qed_chain_return_produced.exit_crit_edge

if.then6.i.qed_chain_return_produced.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_return_produced.exit

if.then13.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %elem_unusable31.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %elem_unusable31.i, align 2
  %conv14.i = zext i8 %21 to i16
  %add.i = add i16 %inc.i, %conv14.i
  %22 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add.i, ptr %cons_idx.i, align 2
  br label %qed_chain_return_produced.exit

if.else20.i:                                      ; preds = %while.body
  %23 = ptrtoint ptr %cons_idx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cons_idx2.i, align 4
  %inc3.i = add i32 %24, 1
  store i32 %inc3.i, ptr %cons_idx2.i, align 4
  %25 = ptrtoint ptr %elem_per_page_mask23.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %elem_per_page_mask23.i, align 2
  %conv24.i = zext i16 %26 to i32
  %and25.i = and i32 %inc3.i, %conv24.i
  %27 = ptrtoint ptr %usable_per_page26.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %usable_per_page26.i, align 4
  %conv27.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %conv27.i)
  %cmp28.i = icmp eq i32 %and25.i, %conv27.i
  br i1 %cmp28.i, label %if.then30.i, label %if.else20.i.qed_chain_return_produced.exit_crit_edge

if.else20.i.qed_chain_return_produced.exit_crit_edge: ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_return_produced.exit

if.then30.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %elem_unusable31.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %elem_unusable31.i, align 2
  %conv32.i = zext i8 %30 to i32
  %add35.i = add i32 %inc3.i, %conv32.i
  %31 = ptrtoint ptr %cons_idx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add35.i, ptr %cons_idx2.i, align 4
  br label %qed_chain_return_produced.exit

qed_chain_return_produced.exit:                   ; preds = %if.then30.i, %if.else20.i.qed_chain_return_produced.exit_crit_edge, %if.then13.i, %if.then6.i.qed_chain_return_produced.exit_crit_edge
  %conv4 = zext i8 %inc to i32
  %div3.i = lshr i32 %conv4, 5
  %arrayidx.i = getelementptr i32, ptr %p_comp_bitmap, i32 %div3.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv4, 31
  %34 = shl nuw i32 1, %and.i
  %35 = and i32 %34, %33
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %qed_chain_return_produced.exit.while.body_crit_edge

qed_chain_return_produced.exit.while.body_crit_edge: ; preds = %qed_chain_return_produced.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %qed_chain_return_produced.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %comp_bitmap_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %inc, ptr %comp_bitmap_idx, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_consq_alloc(ptr noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.qed_chain_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #10
  %0 = call ptr @memcpy(ptr %params, ptr @__const.qed_consq_alloc.params, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 92) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %call1 = call i32 @qed_chain_alloc(ptr noundef %3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.consq_alloc_fail_crit_edge, !prof !132

do.body.consq_alloc_fail_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %consq_alloc_fail

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1023, ptr noundef nonnull %spec.select) #13
  br label %consq_alloc_fail

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %p_consq17 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 21
  %6 = ptrtoint ptr %p_consq17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %p_consq17, align 8
  br label %cleanup

consq_alloc_fail:                                 ; preds = %do.end, %do.body.consq_alloc_fail_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %consq_alloc_fail, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %consq_alloc_fail ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_consq_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_consq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 21
  %0 = ptrtoint ptr %p_consq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_consq, align 8
  %cnt_type.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %u.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %u.i, align 4
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %5 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %cons_idx.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %u.i, align 4
  %cons_idx5.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %cons_idx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cons_idx5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_virt_addr.i, align 4
  %p_cons_elem.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %p_cons_elem.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %p_cons_elem.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %1, align 4
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp7.i = icmp eq i32 %13, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_cnt.i, align 4
  %sub.i = add i32 %15, -1
  br i1 %cmp.i, label %if.then11.i, label %if.else15.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %sub.i to i16
  %c.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %c.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %c.i, align 4
  %cons_page_idx.i = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i, i32 0, i32 1
  %17 = ptrtoint ptr %cons_page_idx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %cons_page_idx.i, align 2
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %c17.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %c17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %c17.i, align 4
  %cons_page_idx21.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %cons_page_idx21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %cons_page_idx21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.then11.i, %if.end.i.if.end23.i_crit_edge
  %intended_use.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %intended_use.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intended_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond.i = icmp eq i32 %21, 1
  br i1 %cond.i, label %for.cond.preheader.i, label %if.end23.i.qed_chain_reset.exit_crit_edge

if.end23.i.qed_chain_reset.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

for.cond.preheader.i:                             ; preds = %if.end23.i
  %capacity.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2449.not.i = icmp eq i32 %23, 0
  br i1 %cmp2449.not.i, label %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qed_chain_reset.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %elem_per_page_mask13.i.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 8
  %usable_per_page16.i.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 11
  %elem_unusable21.i.i = getelementptr inbounds %struct.qed_chain, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %24 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %u.i, align 4
  %26 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %and52.i.i = and i16 %27, %25
  %28 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %usable_per_page16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i, i16 %29)
  %cmp3.i.i = icmp eq i16 %and52.i.i, %29
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.then31.i.i_crit_edge

if.then.i.i.if.then31.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv6.i.i = zext i8 %31 to i16
  %add.i.i = add i16 %25, %conv6.i.i
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add.i.i, ptr %u.i, align 4
  br label %if.then31.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %33 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %u.i, align 4
  %35 = ptrtoint ptr %elem_per_page_mask13.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask13.i.i, align 2
  %conv14.i.i = zext i16 %36 to i32
  %and15.i.i = and i32 %34, %conv14.i.i
  %37 = ptrtoint ptr %usable_per_page16.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %usable_per_page16.i.i, align 4
  %conv17.i.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i, i32 %conv17.i.i)
  %cmp18.i.i = icmp eq i32 %and15.i.i, %conv17.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.else.i.i.if.else34.i.i_crit_edge

if.else.i.i.if.else34.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else34.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %elem_unusable21.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %elem_unusable21.i.i, align 2
  %conv22.i.i = zext i8 %40 to i32
  %add25.i.i = add i32 %34, %conv22.i.i
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add25.i.i, ptr %u.i, align 4
  br label %if.else34.i.i

if.then31.i.i:                                    ; preds = %if.then5.i.i, %if.then.i.i.if.then31.i.i_crit_edge
  %42 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %u.i, align 4
  %inc.i.i = add i16 %43, 1
  store i16 %inc.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

if.else34.i.i:                                    ; preds = %if.then20.i.i, %if.else.i.i.if.else34.i.i_crit_edge
  %44 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %u.i, align 4
  %inc37.i.i = add i32 %45, 1
  store i32 %inc37.i.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit.i

qed_chain_recycle_consumed.exit.i:                ; preds = %if.else34.i.i, %if.then31.i.i
  %inc.i = add nuw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, label %qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge

qed_chain_recycle_consumed.exit.i.for.body.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_chain_reset.exit

qed_chain_reset.exit:                             ; preds = %qed_chain_recycle_consumed.exit.i.qed_chain_reset.exit_crit_edge, %for.cond.preheader.i.qed_chain_reset.exit_crit_edge, %if.end23.i.qed_chain_reset.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_consq_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_consq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 21
  %0 = ptrtoint ptr %p_consq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_consq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  tail call void @qed_chain_free(ptr noundef %3, ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %p_consq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_consq, align 8
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %p_consq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %p_consq, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_cid_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_cm_pq_idx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_spq_blocking_cb(ptr nocapture noundef readnone %p_hwfn, ptr noundef %cookie, ptr nocapture noundef readnone %data, i8 noundef zeroext %fw_return_code) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_return_code1 = getelementptr inbounds %struct.qed_spq_comp_done, ptr %cookie, i32 0, i32 1
  %0 = ptrtoint ptr %fw_return_code1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %fw_return_code, ptr %fw_return_code1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !140
  %1 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %cookie, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_drain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @qed_hw_err_notify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 347, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_eq_completion._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_eq_completion._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 365, i32 3}
!9 = !{ptr @qed_eq_completion._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_eq_completion._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 416, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qed_eq_alloc._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qed_eq_alloc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 473, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qed_eth_cqe_completion._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @qed_eth_cqe_completion._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @qed_spq_setup.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 497, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 545, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qed_spq_setup._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @qed_spq_setup._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 572, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qed_spq_alloc._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @qed_spq_alloc._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 638, i32 4}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @qed_spq_get_entry._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @qed_spq_get_entry._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 842, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qed_spq_post._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @qed_spq_post._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 847, i32 3}
!46 = !{ptr @qed_spq_post._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qed_spq_post._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 962, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qed_spq_completion._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @qed_spq_completion._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 974, i32 3}
!55 = !{ptr @qed_spq_completion._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @qed_spq_completion._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 980, i32 2}
!59 = !{ptr @qed_spq_completion._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qed_spq_completion._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 988, i32 3}
!63 = !{ptr @qed_spq_completion._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @qed_spq_completion._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 1023, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qed_consq_alloc._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qed_consq_alloc._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 284, i32 3}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qed_async_event_completion._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @qed_async_event_completion._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 296, i32 3}
!77 = !{ptr @qed_async_event_completion._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qed_async_event_completion._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 209, i32 3}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qed_spq_hw_initialize._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qed_spq_hw_initialize._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 244, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qed_spq_hw_post._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qed_spq_hw_post._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 261, i32 2}
!91 = !{ptr @qed_spq_hw_post._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @qed_spq_hw_post._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 171, i32 3}
!95 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @qed_spq_fill_entry._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @qed_spq_fill_entry._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 176, i32 2}
!100 = !{ptr @qed_spq_fill_entry._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qed_spq_fill_entry._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 114, i32 3}
!107 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qed_spq_block._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @qed_spq_block._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 118, i32 2}
!112 = !{ptr @qed_spq_block._entry.58, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @qed_spq_block._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 122, i32 3}
!116 = !{ptr @qed_spq_block._entry.61, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @qed_spq_block._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/qlogic/qed/qed_spq.c", i32 142, i32 6}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2157695312}
!130 = !{i64 727323}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2157685118}
!134 = !{i64 2157685565}
!135 = !{i64 727943}
!136 = !{i64 2157686023}
!137 = !{i8 0, i8 2}
!138 = !{!"auto-init"}
!139 = !{i64 2157662497}
!140 = !{i64 2157654323}
