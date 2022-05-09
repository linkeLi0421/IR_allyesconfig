; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_iscsi.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_iscsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qed_get_iscsi_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qed_get_iscsi_ops\09\09\09\09"
module asm "\09.long\09__crc_qed_get_iscsi_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qed_get_iscsi_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qed_get_iscsi_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qed_get_iscsi_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qed_put_iscsi_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qed_put_iscsi_ops\09\09\09\09"
module asm "\09.long\09__crc_qed_put_iscsi_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qed_put_iscsi_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qed_put_iscsi_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qed_put_iscsi_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_iscsi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.qed_chain_init_params = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.qed_iscsi_info = type { %struct.spinlock, %struct.list_head, i16, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qed_iscsi_conn = type { %struct.list_head, i8, i16, i32, i32, i8, i8, i8, i32, i32, %struct.qed_chain, %struct.qed_chain, %struct.qed_chain, ptr, i32, ptr, i32, i32, i16, [6 x i8], [6 x i8], i16, i16, i8, [4 x i32], [4 x i32], i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i8, i8, i8, i32, i32, i32, i32, i32, i32, i16, i16, i8 }
%struct.qed_chain = type { ptr, ptr, %struct.anon.2, %union.anon.4, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.5, ptr, i32, i32, i32, i8 }
%struct.anon.2 = type { ptr, %union.anon.3 }
%union.anon.3 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.4 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.5 = type { ptr, i32, i32 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.109, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.109 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.108, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.108 = type { ptr }
%struct.qed_iscsi_stats = type { i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_mcp_iscsi_stats = type { i64, i64, i64, i64 }
%struct.pstorm_iscsi_stats_drv = type { %struct.regpair, %struct.regpair }
%struct.regpair = type { i32, i32 }
%struct.ystorm_iscsi_stats_drv = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.xstorm_iscsi_stats_drv = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.ustorm_iscsi_stats_drv = type { %struct.regpair, %struct.regpair, %struct.regpair }
%struct.mstorm_iscsi_stats_drv = type { %struct.regpair, %struct.regpair }
%struct.tstorm_iscsi_stats_drv = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, i32, i32, i32 }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.qed_dev_iscsi_info = type { %struct.qed_dev_info, ptr, ptr, i8 }
%struct.qed_sp_init_data = type { i32, i16, i32, ptr }
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
%struct.iscsi_spe_func_init = type { i16, i8, i8, i8, i8, i8, %struct.iscsi_debug_modes, i8, [7 x i8], %struct.scsi_init_func_params, %struct.scsi_init_func_queues }
%struct.iscsi_debug_modes = type { i8 }
%struct.scsi_init_func_params = type { i16, i8, i8, i8, [11 x i8] }
%struct.scsi_init_func_queues = type { %struct.regpair, i16, i16, i16, i8, i8, [64 x i16], i8, i8, i8, i8, [3 x i8], i8, [3 x %struct.regpair], [3 x i16], i16, [3 x i16], i16 }
%struct.qed_tid_mem = type { i32, i32, i32, [512 x ptr] }
%struct.qed_iscsi_tid = type { i32, i32, [512 x ptr] }
%struct.qed_hash_iscsi_con = type { %struct.hlist_node, ptr }
%struct.addr_tbl_entry = type { ptr, i32 }
%struct.qed_iscsi_params_offload = type { i8, i32, i32, %struct.qed_iscsi_id_params, %struct.qed_iscsi_id_params, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i8 }
%struct.qed_iscsi_id_params = type { [6 x i8], [4 x i32], i16 }
%struct.iscsi_conn_offload_params = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcp_offload_params = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], [4 x i32], [4 x i32], i32, i8, i8, i16, i16, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i8, i8, i16, i32 }
%struct.tcp_offload_params_opt2 = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], [4 x i32], [4 x i32], i32, i8, i8, i16, i16, i16, i8, i8, i16, i32, i32, i32, i8, [3 x i8], i32, i32, i32, [16 x i32] }
%struct.qed_iscsi_params_update = type { i8, i32, i32, i32, i32, i32 }
%struct.iscsi_spe_conn_mac_update = type { i16, i16, i32, i16, i16, i16, [2 x i8] }

@qed_iscsi_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&p_hwfn->p_iscsi_info->lock\00", [36 x i8] zeroinitializer }, align 32
@qed_get_protocol_stats_iscsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to collect ISCSI statistics\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qed_get_protocol_stats_iscsi\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/qlogic/qed/qed_iscsi.c\00", [52 x i8] zeroinitializer }, align 32
@qed_get_protocol_stats_iscsi._entry_ptr = internal global ptr @qed_get_protocol_stats_iscsi._entry, section ".printk_index", align 4
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_iscsi_ops_pass = internal constant { %struct.qed_iscsi_ops, [40 x i8] } { %struct.qed_iscsi_ops { ptr @qed_common_ops_pass, ptr @qed_ll2_ops_pass, ptr @qed_fill_iscsi_dev_info, ptr @qed_register_iscsi_ops, ptr @qed_iscsi_start, ptr @qed_iscsi_stop, ptr @qed_iscsi_acquire_conn, ptr @qed_iscsi_release_conn, ptr @qed_iscsi_offload_conn, ptr @qed_iscsi_update_conn, ptr @qed_iscsi_destroy_conn, ptr @qed_iscsi_clear_conn_sq, ptr @qed_iscsi_stats, ptr @qed_iscsi_change_mac }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_qed_get_iscsi_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qed_get_iscsi_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qed_get_iscsi_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qed_get_iscsi_ops to i32), ptr @__kstrtab_qed_get_iscsi_ops, ptr @__kstrtabns_qed_get_iscsi_ops }, section "___ksymtab+qed_get_iscsi_ops", align 4
@__kstrtab_qed_put_iscsi_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qed_put_iscsi_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qed_put_iscsi_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qed_put_iscsi_ops to i32), ptr @__kstrtab_qed_put_iscsi_ops, ptr @__kstrtabns_qed_put_iscsi_ops }, section "___ksymtab+qed_put_iscsi_ops", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_iscsi_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]Failed to acquire ptt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_iscsi_get_stats\00", [44 x i8] zeroinitializer }, align 32
@qed_iscsi_get_stats._entry_ptr = internal global ptr @qed_iscsi_get_stats._entry, section ".printk_index", align 4
@qed_common_ops_pass = external dso_local constant %struct.qed_common_ops, align 4
@qed_ll2_ops_pass = external dso_local constant %struct.qed_ll2_ops, align 4
@qed_iscsi_get_primary_bdq_prod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]BDQ is not allocated!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_iscsi_get_primary_bdq_prod\00", [33 x i8] zeroinitializer }, align 32
@qed_iscsi_get_primary_bdq_prod._entry_ptr = internal global ptr @qed_iscsi_get_primary_bdq_prod._entry, section ".printk_index", align 4
@qed_iscsi_get_secondary_bdq_prod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.3, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qed_iscsi_get_secondary_bdq_prod\00", [63 x i8] zeroinitializer }, align 32
@qed_iscsi_get_secondary_bdq_prod._entry_ptr = internal global ptr @qed_iscsi_get_secondary_bdq_prod._entry, section ".printk_index", align 4
@qed_iscsi_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]iscsi already started;\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_iscsi_start\00", [16 x i8] zeroinitializer }, align 32
@qed_iscsi_start._entry_ptr = internal global ptr @qed_iscsi_start._entry, section ".printk_index", align 4
@qed_iscsi_start._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Failed to start iscsi\0A\00", [60 x i8] zeroinitializer }, align 32
@qed_iscsi_start._entry_ptr.14 = internal global ptr @qed_iscsi_start._entry.12, section ".printk_index", align 4
@qed_iscsi_start._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to gather task information\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_iscsi_start._entry_ptr.17 = internal global ptr @qed_iscsi_start._entry.15, section ".printk_index", align 4
@qed_sp_iscsi_func_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013[%s:%d(%s)]Cannot satisfy CQ amount. Queues requested %d, CQs available %d. Aborting function start\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_sp_iscsi_func_start\00", [40 x i8] zeroinitializer }, align 32
@qed_sp_iscsi_func_start._entry_ptr = internal global ptr @qed_sp_iscsi_func_start._entry, section ".printk_index", align 4
@qed_iscsi_async_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]iSCSI async completion is not set\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_iscsi_async_event\00", [42 x i8] zeroinitializer }, align 32
@qed_iscsi_async_event._entry_ptr = internal global ptr @qed_iscsi_async_event._entry, section ".printk_index", align 4
@qed_iscsi_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]iscsi already stopped\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_iscsi_stop\00", [17 x i8] zeroinitializer }, align 32
@qed_iscsi_stop._entry_ptr = internal global ptr @qed_iscsi_stop._entry, section ".printk_index", align 4
@qed_iscsi_stop._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Can't stop iscsi - not all connections were returned\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_iscsi_stop._entry_ptr.26 = internal global ptr @qed_iscsi_stop._entry.24, section ".printk_index", align 4
@qed_iscsi_acquire_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Failed to acquire Connection\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_iscsi_acquire_conn\00", [41 x i8] zeroinitializer }, align 32
@qed_iscsi_acquire_conn._entry_ptr = internal global ptr @qed_iscsi_acquire_conn._entry, section ".printk_index", align 4
@__const.qed_iscsi_allocate_connection.params = private unnamed_addr constant %struct.qed_chain_init_params { i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0 }, align 4
@qed_iscsi_release_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Failed to find connection for handle %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_iscsi_release_conn\00", [41 x i8] zeroinitializer }, align 32
@qed_iscsi_release_conn._entry_ptr = internal global ptr @qed_iscsi_release_conn._entry, section ".printk_index", align 4
@qed_iscsi_offload_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.31, ptr @.str.3, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_iscsi_offload_conn\00", [41 x i8] zeroinitializer }, align 32
@qed_iscsi_offload_conn._entry_ptr = internal global ptr @qed_iscsi_offload_conn._entry, section ".printk_index", align 4
@qed_iscsi_update_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.32, ptr @.str.3, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_iscsi_update_conn\00", [42 x i8] zeroinitializer }, align 32
@qed_iscsi_update_conn._entry_ptr = internal global ptr @qed_iscsi_update_conn._entry, section ".printk_index", align 4
@qed_iscsi_destroy_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.33, ptr @.str.3, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_iscsi_destroy_conn\00", [41 x i8] zeroinitializer }, align 32
@qed_iscsi_destroy_conn._entry_ptr = internal global ptr @qed_iscsi_destroy_conn._entry, section ".printk_index", align 4
@qed_iscsi_clear_conn_sq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.34, ptr @.str.3, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_iscsi_clear_conn_sq\00", [40 x i8] zeroinitializer }, align 32
@qed_iscsi_clear_conn_sq._entry_ptr = internal global ptr @qed_iscsi_clear_conn_sq._entry, section ".printk_index", align 4
@qed_iscsi_change_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.35, ptr @.str.3, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_iscsi_change_mac\00", [43 x i8] zeroinitializer }, align 32
@qed_iscsi_change_mac._entry_ptr = internal global ptr @qed_iscsi_change_mac._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 860, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1368, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"qed_iscsi_ops_pass\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1380, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1010, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 635, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 649, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1110, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1117, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1136, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 173, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 131, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1083, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1088, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1169, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1192, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1213, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1288, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1328, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1312, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [47 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1351, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__ksymtab_qed_get_iscsi_ops, ptr @__ksymtab_qed_put_iscsi_ops, ptr @qed_get_protocol_stats_iscsi._entry, ptr @qed_get_protocol_stats_iscsi._entry_ptr, ptr @qed_iscsi_acquire_conn._entry, ptr @qed_iscsi_acquire_conn._entry_ptr, ptr @qed_iscsi_async_event._entry, ptr @qed_iscsi_async_event._entry_ptr, ptr @qed_iscsi_change_mac._entry, ptr @qed_iscsi_change_mac._entry_ptr, ptr @qed_iscsi_clear_conn_sq._entry, ptr @qed_iscsi_clear_conn_sq._entry_ptr, ptr @qed_iscsi_destroy_conn._entry, ptr @qed_iscsi_destroy_conn._entry_ptr, ptr @qed_iscsi_get_primary_bdq_prod._entry, ptr @qed_iscsi_get_primary_bdq_prod._entry_ptr, ptr @qed_iscsi_get_secondary_bdq_prod._entry, ptr @qed_iscsi_get_secondary_bdq_prod._entry_ptr, ptr @qed_iscsi_get_stats._entry, ptr @qed_iscsi_get_stats._entry_ptr, ptr @qed_iscsi_offload_conn._entry, ptr @qed_iscsi_offload_conn._entry_ptr, ptr @qed_iscsi_release_conn._entry, ptr @qed_iscsi_release_conn._entry_ptr, ptr @qed_iscsi_start._entry, ptr @qed_iscsi_start._entry.12, ptr @qed_iscsi_start._entry.15, ptr @qed_iscsi_start._entry_ptr, ptr @qed_iscsi_start._entry_ptr.14, ptr @qed_iscsi_start._entry_ptr.17, ptr @qed_iscsi_stop._entry, ptr @qed_iscsi_stop._entry.24, ptr @qed_iscsi_stop._entry_ptr, ptr @qed_iscsi_stop._entry_ptr.26, ptr @qed_iscsi_update_conn._entry, ptr @qed_iscsi_update_conn._entry_ptr, ptr @qed_sp_iscsi_func_start._entry, ptr @qed_sp_iscsi_func_start._entry_ptr, ptr @qed_iscsi_setup.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qed_iscsi_ops_pass, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_protocol_stats_iscsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_ops_pass to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_get_primary_bdq_prod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_get_secondary_bdq_prod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_start._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_start._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_iscsi_func_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_async_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_stop._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_acquire_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_release_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_offload_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_update_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_destroy_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_clear_conn_sq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_iscsi_change_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_iscsi_alloc(ptr nocapture noundef writeonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %free_list = getelementptr inbounds %struct.qed_iscsi_info, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr inbounds %struct.qed_iscsi_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_list, ptr %prev.i, align 8
  %p_iscsi_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 33
  %3 = ptrtoint ptr %p_iscsi_info1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %p_iscsi_info1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_iscsi_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p_iscsi_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 33
  %0 = ptrtoint ptr %p_iscsi_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_iscsi_info, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @qed_iscsi_setup.__key, i16 noundef signext 3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_iscsi_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p_iscsi_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 33
  %0 = ptrtoint ptr %p_iscsi_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_iscsi_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %p_iscsi_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_iscsi_info, align 4
  %free_list17 = getelementptr inbounds %struct.qed_iscsi_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %free_list17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %free_list17, align 4
  %cmp.i.not18 = icmp eq ptr %5, %free_list17
  br i1 %cmp.i.not18, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %6 = phi ptr [ %40, %if.end7.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %while.body.if.end7_crit_edge, label %if.then6

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %6) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del.exit_crit_edge

if.then6.list_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then6.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_hwfn, align 8
  %xhq.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 11
  tail call void @qed_chain_free(ptr noundef %16, ptr noundef %xhq.i) #8
  %17 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_hwfn, align 8
  %uhq.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 12
  tail call void @qed_chain_free(ptr noundef %18, ptr noundef %uhq.i) #8
  %19 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_hwfn, align 8
  %r2tq.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 10
  tail call void @qed_chain_free(ptr noundef %20, ptr noundef %r2tq.i) #8
  %21 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_hwfn, align 8
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 50
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %tcp_upload_params_virt_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 13
  %25 = ptrtoint ptr %tcp_upload_params_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcp_upload_params_virt_addr.i, align 4
  %tcp_upload_params_phys_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 14
  %27 = ptrtoint ptr %tcp_upload_params_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tcp_upload_params_phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 72, ptr noundef %26, i32 noundef %28, i32 noundef 0) #8
  %29 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_hwfn, align 8
  %pdev5.i = getelementptr inbounds %struct.qed_dev, ptr %30, i32 0, i32 50
  %31 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev5.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %queue_cnts_virt_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 15
  %33 = ptrtoint ptr %queue_cnts_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue_cnts_virt_addr.i, align 4
  %queue_cnts_phys_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %6, i32 0, i32 16
  %35 = ptrtoint ptr %queue_cnts_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queue_cnts_phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 8, ptr noundef %34, i32 noundef %36, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %if.end7

if.end7:                                          ; preds = %list_del.exit, %while.body.if.end7_crit_edge
  %37 = ptrtoint ptr %p_iscsi_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %p_iscsi_info, align 4
  %free_list = getelementptr inbounds %struct.qed_iscsi_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %40, %free_list
  br i1 %cmp.i.not, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi ptr [ %3, %while.cond.preheader.while.end_crit_edge ], [ %38, %if.end7.while.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #8
  %41 = ptrtoint ptr %p_iscsi_info to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %p_iscsi_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_get_protocol_stats_iscsi(ptr noundef %cdev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  %proto_stats = alloca %struct.qed_iscsi_stats, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %proto_stats) #8
  %0 = call ptr @memset(ptr %proto_stats, i32 0, i32 128)
  %call = call i32 @qed_iscsi_stats(ptr noundef %cdev, ptr noundef nonnull %proto_stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %3 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cdev, align 8
  %and = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !101

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.4, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1369, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iscsi_rx_total_pdu_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %proto_stats, i32 0, i32 9
  %5 = ptrtoint ptr %iscsi_rx_total_pdu_cnt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %iscsi_rx_total_pdu_cnt, align 8
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %stats, align 8
  %iscsi_tx_total_pdu_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %proto_stats, i32 0, i32 14
  %8 = ptrtoint ptr %iscsi_tx_total_pdu_cnt to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %iscsi_tx_total_pdu_cnt, align 8
  %tx_pdus = getelementptr inbounds %struct.qed_mcp_iscsi_stats, ptr %stats, i32 0, i32 1
  %10 = ptrtoint ptr %tx_pdus to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tx_pdus, align 8
  %11 = ptrtoint ptr %proto_stats to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %proto_stats, align 8
  %rx_bytes = getelementptr inbounds %struct.qed_mcp_iscsi_stats, ptr %stats, i32 0, i32 2
  %13 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rx_bytes, align 8
  %iscsi_tx_bytes_cnt = getelementptr inbounds %struct.qed_iscsi_stats, ptr %proto_stats, i32 0, i32 15
  %14 = ptrtoint ptr %iscsi_tx_bytes_cnt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %iscsi_tx_bytes_cnt, align 8
  %tx_bytes = getelementptr inbounds %struct.qed_mcp_iscsi_stats, ptr %stats, i32 0, i32 3
  %16 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %proto_stats) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_stats(ptr noundef %cdev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  %pstats.i.i = alloca %struct.pstorm_iscsi_stats_drv, align 4
  %ystats.i.i = alloca %struct.ystorm_iscsi_stats_drv, align 4
  %xstats.i.i = alloca %struct.xstorm_iscsi_stats_drv, align 4
  %ustats.i.i = alloca %struct.ustorm_iscsi_stats_drv, align 4
  %mstats.i.i = alloca %struct.mstorm_iscsi_stats_drv, align 4
  %tstats.i.i = alloca %struct.tstorm_iscsi_stats_drv, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %2 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %3 = call ptr @memset(ptr %stats, i32 0, i32 128)
  %call.i = tail call ptr @qed_ptt_acquire(ptr noundef %cond) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1010, ptr noundef nonnull %name.i) #12
  br label %qed_iscsi_get_stats.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %tstats.i.i) #8
  %4 = call ptr @memset(ptr %tstats.i.i, i32 0, i32 60)
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond, align 8
  %iro_arr.i.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %iro_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iro_arr.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.iro, ptr %8, i32 47
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %rel_pf_id.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 2
  %11 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %m1.i.i = getelementptr %struct.iro, ptr %8, i32 47, i32 1
  %13 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %m1.i.i, align 4
  %conv4.i.i = zext i16 %14 to i32
  %mul.i.i = mul nuw nsw i32 %conv4.i.i, %conv.i.i
  %add.i.i = add i32 %10, 29884416
  %add5.i.i = add i32 %add.i.i, %mul.i.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %tstats.i.i, i32 noundef %add5.i.i, i32 noundef 60) #8
  %15 = ptrtoint ptr %tstats.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %__regpair.sroa.0.0.copyload.i.i = load i32, ptr %tstats.i.i, align 4
  %__regpair.sroa.5.0.iscsi_rx_bytes_cnt.sroa_idx.i.i = getelementptr inbounds i8, ptr %tstats.i.i, i32 4
  %16 = ptrtoint ptr %__regpair.sroa.5.0.iscsi_rx_bytes_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %__regpair.sroa.5.0.copyload.i.i = load i32, ptr %__regpair.sroa.5.0.iscsi_rx_bytes_cnt.sroa_idx.i.i, align 4
  %17 = zext i32 %__regpair.sroa.5.0.copyload.i.i to i64
  %18 = zext i32 %__regpair.sroa.0.0.copyload.i.i to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %stats, align 8
  %iscsi_rx_packet_cnt.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %iscsi_rx_packet_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %__regpair10.sroa.0.0.copyload.i.i = load i32, ptr %iscsi_rx_packet_cnt.i.i, align 4
  %__regpair10.sroa.5.0.iscsi_rx_packet_cnt.sroa_idx.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %__regpair10.sroa.5.0.iscsi_rx_packet_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %__regpair10.sroa.5.0.copyload.i.i = load i32, ptr %__regpair10.sroa.5.0.iscsi_rx_packet_cnt.sroa_idx.i.i, align 4
  %25 = zext i32 %__regpair10.sroa.5.0.copyload.i.i to i64
  %26 = zext i32 %__regpair10.sroa.0.0.copyload.i.i to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = call i64 @llvm.bswap.i64(i64 %28) #8
  %iscsi_rx_packet_cnt18.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 1
  %30 = ptrtoint ptr %iscsi_rx_packet_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %iscsi_rx_packet_cnt18.i.i, align 8
  %iscsi_rx_new_ooo_isle_events_cnt.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %iscsi_rx_new_ooo_isle_events_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %__regpair19.sroa.0.0.copyload.i.i = load i32, ptr %iscsi_rx_new_ooo_isle_events_cnt.i.i, align 4
  %__regpair19.sroa.5.0.iscsi_rx_new_ooo_isle_events_cnt.sroa_idx.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %__regpair19.sroa.5.0.iscsi_rx_new_ooo_isle_events_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %__regpair19.sroa.5.0.copyload.i.i = load i32, ptr %__regpair19.sroa.5.0.iscsi_rx_new_ooo_isle_events_cnt.sroa_idx.i.i, align 4
  %33 = zext i32 %__regpair19.sroa.5.0.copyload.i.i to i64
  %34 = zext i32 %__regpair19.sroa.0.0.copyload.i.i to i64
  %35 = shl nuw i64 %34, 32
  %36 = or i64 %35, %33
  %37 = call i64 @llvm.bswap.i64(i64 %36) #8
  %iscsi_rx_new_ooo_isle_events_cnt27.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 2
  %38 = ptrtoint ptr %iscsi_rx_new_ooo_isle_events_cnt27.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %iscsi_rx_new_ooo_isle_events_cnt27.i.i, align 8
  %iscsi_cmdq_threshold_cnt.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %iscsi_cmdq_threshold_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iscsi_cmdq_threshold_cnt.i.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #8
  %iscsi_cmdq_threshold_cnt28.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 3
  %42 = ptrtoint ptr %iscsi_cmdq_threshold_cnt28.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %iscsi_cmdq_threshold_cnt28.i.i, align 8
  %iscsi_rq_threshold_cnt.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %iscsi_rq_threshold_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iscsi_rq_threshold_cnt.i.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #8
  %iscsi_rq_threshold_cnt29.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 4
  %46 = ptrtoint ptr %iscsi_rq_threshold_cnt29.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %iscsi_rq_threshold_cnt29.i.i, align 4
  %iscsi_immq_threshold_cnt.i.i = getelementptr inbounds %struct.tstorm_iscsi_stats_drv, ptr %tstats.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %iscsi_immq_threshold_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iscsi_immq_threshold_cnt.i.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #8
  %iscsi_immq_threshold_cnt30.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 5
  %50 = ptrtoint ptr %iscsi_immq_threshold_cnt30.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %iscsi_immq_threshold_cnt30.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %tstats.i.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mstats.i.i) #8
  %51 = getelementptr inbounds %struct.regpair, ptr %mstats.i.i, i32 0, i32 1
  %52 = call ptr @memset(ptr %mstats.i.i, i32 0, i32 16)
  %53 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cond, align 8
  %iro_arr.i30.i = getelementptr inbounds %struct.qed_dev, ptr %54, i32 0, i32 31
  %55 = ptrtoint ptr %iro_arr.i30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iro_arr.i30.i, align 8
  %arrayidx.i31.i = getelementptr %struct.iro, ptr %56, i32 48
  %57 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i31.i, align 4
  %59 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i33.i = zext i8 %60 to i32
  %m1.i34.i = getelementptr %struct.iro, ptr %56, i32 48, i32 1
  %61 = ptrtoint ptr %m1.i34.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %m1.i34.i, align 4
  %conv4.i35.i = zext i16 %62 to i32
  %mul.i36.i = mul nuw nsw i32 %conv4.i35.i, %conv.i33.i
  %add.i37.i = add i32 %58, 30408704
  %add5.i38.i = add i32 %add.i37.i, %mul.i36.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %mstats.i.i, i32 noundef %add5.i38.i, i32 noundef 16) #8
  %63 = ptrtoint ptr %mstats.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %__regpair.sroa.0.0.copyload.i39.i = load i32, ptr %mstats.i.i, align 4
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %__regpair.sroa.5.0.copyload.i40.i = load i32, ptr %51, align 4
  %65 = zext i32 %__regpair.sroa.5.0.copyload.i40.i to i64
  %66 = zext i32 %__regpair.sroa.0.0.copyload.i39.i to i64
  %67 = shl nuw i64 %66, 32
  %68 = or i64 %67, %65
  %69 = call i64 @llvm.bswap.i64(i64 %68) #8
  %iscsi_rx_dropped_pdus_task_not_valid9.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 6
  %70 = ptrtoint ptr %iscsi_rx_dropped_pdus_task_not_valid9.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %iscsi_rx_dropped_pdus_task_not_valid9.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mstats.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ustats.i.i) #8
  %71 = getelementptr inbounds %struct.regpair, ptr %ustats.i.i, i32 0, i32 1
  %72 = getelementptr inbounds %struct.ustorm_iscsi_stats_drv, ptr %ustats.i.i, i32 0, i32 1
  %73 = getelementptr inbounds %struct.ustorm_iscsi_stats_drv, ptr %ustats.i.i, i32 0, i32 1, i32 1
  %74 = getelementptr inbounds %struct.ustorm_iscsi_stats_drv, ptr %ustats.i.i, i32 0, i32 2
  %75 = getelementptr inbounds %struct.ustorm_iscsi_stats_drv, ptr %ustats.i.i, i32 0, i32 2, i32 1
  %76 = call ptr @memset(ptr %ustats.i.i, i32 0, i32 24)
  %77 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cond, align 8
  %iro_arr.i41.i = getelementptr inbounds %struct.qed_dev, ptr %78, i32 0, i32 31
  %79 = ptrtoint ptr %iro_arr.i41.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iro_arr.i41.i, align 8
  %arrayidx.i42.i = getelementptr %struct.iro, ptr %80, i32 49
  %81 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i42.i, align 4
  %83 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i44.i = zext i8 %84 to i32
  %m1.i45.i = getelementptr %struct.iro, ptr %80, i32 49, i32 1
  %85 = ptrtoint ptr %m1.i45.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %m1.i45.i, align 4
  %conv4.i46.i = zext i16 %86 to i32
  %mul.i47.i = mul nuw nsw i32 %conv4.i46.i, %conv.i44.i
  %add.i48.i = add i32 %82, 30932992
  %add5.i49.i = add i32 %add.i48.i, %mul.i47.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %ustats.i.i, i32 noundef %add5.i49.i, i32 noundef 24) #8
  %87 = ptrtoint ptr %ustats.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %__regpair.sroa.0.0.copyload.i50.i = load i32, ptr %ustats.i.i, align 4
  %88 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %88)
  %__regpair.sroa.5.0.copyload.i51.i = load i32, ptr %71, align 4
  %89 = zext i32 %__regpair.sroa.5.0.copyload.i51.i to i64
  %90 = zext i32 %__regpair.sroa.0.0.copyload.i50.i to i64
  %91 = shl nuw i64 %90, 32
  %92 = or i64 %91, %89
  %93 = call i64 @llvm.bswap.i64(i64 %92) #8
  %iscsi_rx_data_pdu_cnt9.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 7
  %94 = ptrtoint ptr %iscsi_rx_data_pdu_cnt9.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %iscsi_rx_data_pdu_cnt9.i.i, align 8
  %95 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %__regpair10.sroa.0.0.copyload.i52.i = load i32, ptr %72, align 4
  %96 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %96)
  %__regpair10.sroa.5.0.copyload.i53.i = load i32, ptr %73, align 4
  %97 = zext i32 %__regpair10.sroa.5.0.copyload.i53.i to i64
  %98 = zext i32 %__regpair10.sroa.0.0.copyload.i52.i to i64
  %99 = shl nuw i64 %98, 32
  %100 = or i64 %99, %97
  %101 = call i64 @llvm.bswap.i64(i64 %100) #8
  %iscsi_rx_r2t_pdu_cnt18.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 8
  %102 = ptrtoint ptr %iscsi_rx_r2t_pdu_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %iscsi_rx_r2t_pdu_cnt18.i.i, align 8
  %103 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %103)
  %__regpair19.sroa.0.0.copyload.i54.i = load i32, ptr %74, align 4
  %104 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %104)
  %__regpair19.sroa.5.0.copyload.i55.i = load i32, ptr %75, align 4
  %105 = zext i32 %__regpair19.sroa.5.0.copyload.i55.i to i64
  %106 = zext i32 %__regpair19.sroa.0.0.copyload.i54.i to i64
  %107 = shl nuw i64 %106, 32
  %108 = or i64 %107, %105
  %109 = call i64 @llvm.bswap.i64(i64 %108) #8
  %iscsi_rx_total_pdu_cnt27.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 9
  %110 = ptrtoint ptr %iscsi_rx_total_pdu_cnt27.i.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %iscsi_rx_total_pdu_cnt27.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ustats.i.i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xstats.i.i) #8
  %111 = getelementptr inbounds %struct.regpair, ptr %xstats.i.i, i32 0, i32 1
  %112 = getelementptr inbounds %struct.xstorm_iscsi_stats_drv, ptr %xstats.i.i, i32 0, i32 1
  %113 = getelementptr inbounds %struct.xstorm_iscsi_stats_drv, ptr %xstats.i.i, i32 0, i32 1, i32 1
  %114 = call ptr @memset(ptr %xstats.i.i, i32 0, i32 32)
  %115 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cond, align 8
  %iro_arr.i56.i = getelementptr inbounds %struct.qed_dev, ptr %116, i32 0, i32 31
  %117 = ptrtoint ptr %iro_arr.i56.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iro_arr.i56.i, align 8
  %arrayidx.i57.i = getelementptr %struct.iro, ptr %118, i32 50
  %119 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i57.i, align 4
  %121 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i59.i = zext i8 %122 to i32
  %m1.i60.i = getelementptr %struct.iro, ptr %118, i32 50, i32 1
  %123 = ptrtoint ptr %m1.i60.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %m1.i60.i, align 4
  %conv4.i61.i = zext i16 %124 to i32
  %mul.i62.i = mul nuw nsw i32 %conv4.i61.i, %conv.i59.i
  %add.i63.i = add i32 %120, 31457280
  %add5.i64.i = add i32 %add.i63.i, %mul.i62.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %xstats.i.i, i32 noundef %add5.i64.i, i32 noundef 32) #8
  %125 = ptrtoint ptr %xstats.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %__regpair.sroa.0.0.copyload.i65.i = load i32, ptr %xstats.i.i, align 4
  %126 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %126)
  %__regpair.sroa.5.0.copyload.i66.i = load i32, ptr %111, align 4
  %127 = zext i32 %__regpair.sroa.5.0.copyload.i66.i to i64
  %128 = zext i32 %__regpair.sroa.0.0.copyload.i65.i to i64
  %129 = shl nuw i64 %128, 32
  %130 = or i64 %129, %127
  %131 = call i64 @llvm.bswap.i64(i64 %130) #8
  %iscsi_tx_go_to_slow_start_event_cnt9.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 10
  %132 = ptrtoint ptr %iscsi_tx_go_to_slow_start_event_cnt9.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %iscsi_tx_go_to_slow_start_event_cnt9.i.i, align 8
  %133 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %__regpair10.sroa.0.0.copyload.i67.i = load i32, ptr %112, align 4
  %134 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %134)
  %__regpair10.sroa.5.0.copyload.i68.i = load i32, ptr %113, align 4
  %135 = zext i32 %__regpair10.sroa.5.0.copyload.i68.i to i64
  %136 = zext i32 %__regpair10.sroa.0.0.copyload.i67.i to i64
  %137 = shl nuw i64 %136, 32
  %138 = or i64 %137, %135
  %139 = call i64 @llvm.bswap.i64(i64 %138) #8
  %iscsi_tx_fast_retransmit_event_cnt18.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 11
  %140 = ptrtoint ptr %iscsi_tx_fast_retransmit_event_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %iscsi_tx_fast_retransmit_event_cnt18.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xstats.i.i) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ystats.i.i) #8
  %141 = call ptr @memset(ptr %ystats.i.i, i32 0, i32 40)
  %142 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cond, align 8
  %iro_arr.i69.i = getelementptr inbounds %struct.qed_dev, ptr %143, i32 0, i32 31
  %144 = ptrtoint ptr %iro_arr.i69.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %iro_arr.i69.i, align 8
  %arrayidx.i70.i = getelementptr %struct.iro, ptr %145, i32 51
  %146 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i70.i, align 4
  %148 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i72.i = zext i8 %149 to i32
  %m1.i73.i = getelementptr %struct.iro, ptr %145, i32 51, i32 1
  %150 = ptrtoint ptr %m1.i73.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %m1.i73.i, align 4
  %conv4.i74.i = zext i16 %151 to i32
  %mul.i75.i = mul nuw nsw i32 %conv4.i74.i, %conv.i72.i
  %add.i76.i = add i32 %147, 31981568
  %add5.i77.i = add i32 %add.i76.i, %mul.i75.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %ystats.i.i, i32 noundef %add5.i77.i, i32 noundef 40) #8
  %152 = ptrtoint ptr %ystats.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %__regpair.sroa.0.0.copyload.i78.i = load i32, ptr %ystats.i.i, align 4
  %__regpair.sroa.5.0.iscsi_tx_data_pdu_cnt.sroa_idx.i.i = getelementptr inbounds i8, ptr %ystats.i.i, i32 4
  %153 = ptrtoint ptr %__regpair.sroa.5.0.iscsi_tx_data_pdu_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %__regpair.sroa.5.0.copyload.i79.i = load i32, ptr %__regpair.sroa.5.0.iscsi_tx_data_pdu_cnt.sroa_idx.i.i, align 4
  %154 = zext i32 %__regpair.sroa.5.0.copyload.i79.i to i64
  %155 = zext i32 %__regpair.sroa.0.0.copyload.i78.i to i64
  %156 = shl nuw i64 %155, 32
  %157 = or i64 %156, %154
  %158 = call i64 @llvm.bswap.i64(i64 %157) #8
  %iscsi_tx_data_pdu_cnt9.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 12
  %159 = ptrtoint ptr %iscsi_tx_data_pdu_cnt9.i.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %iscsi_tx_data_pdu_cnt9.i.i, align 8
  %iscsi_tx_r2t_pdu_cnt.i.i = getelementptr inbounds %struct.ystorm_iscsi_stats_drv, ptr %ystats.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %iscsi_tx_r2t_pdu_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %__regpair10.sroa.0.0.copyload.i80.i = load i32, ptr %iscsi_tx_r2t_pdu_cnt.i.i, align 4
  %__regpair10.sroa.5.0.iscsi_tx_r2t_pdu_cnt.sroa_idx.i.i = getelementptr inbounds %struct.ystorm_iscsi_stats_drv, ptr %ystats.i.i, i32 0, i32 1, i32 1
  %161 = ptrtoint ptr %__regpair10.sroa.5.0.iscsi_tx_r2t_pdu_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %__regpair10.sroa.5.0.copyload.i81.i = load i32, ptr %__regpair10.sroa.5.0.iscsi_tx_r2t_pdu_cnt.sroa_idx.i.i, align 4
  %162 = zext i32 %__regpair10.sroa.5.0.copyload.i81.i to i64
  %163 = zext i32 %__regpair10.sroa.0.0.copyload.i80.i to i64
  %164 = shl nuw i64 %163, 32
  %165 = or i64 %164, %162
  %166 = call i64 @llvm.bswap.i64(i64 %165) #8
  %iscsi_tx_r2t_pdu_cnt18.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 13
  %167 = ptrtoint ptr %iscsi_tx_r2t_pdu_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %iscsi_tx_r2t_pdu_cnt18.i.i, align 8
  %iscsi_tx_total_pdu_cnt.i.i = getelementptr inbounds %struct.ystorm_iscsi_stats_drv, ptr %ystats.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %iscsi_tx_total_pdu_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %__regpair19.sroa.0.0.copyload.i82.i = load i32, ptr %iscsi_tx_total_pdu_cnt.i.i, align 4
  %__regpair19.sroa.5.0.iscsi_tx_total_pdu_cnt.sroa_idx.i.i = getelementptr inbounds %struct.ystorm_iscsi_stats_drv, ptr %ystats.i.i, i32 0, i32 2, i32 1
  %169 = ptrtoint ptr %__regpair19.sroa.5.0.iscsi_tx_total_pdu_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %__regpair19.sroa.5.0.copyload.i83.i = load i32, ptr %__regpair19.sroa.5.0.iscsi_tx_total_pdu_cnt.sroa_idx.i.i, align 4
  %170 = zext i32 %__regpair19.sroa.5.0.copyload.i83.i to i64
  %171 = zext i32 %__regpair19.sroa.0.0.copyload.i82.i to i64
  %172 = shl nuw i64 %171, 32
  %173 = or i64 %172, %170
  %174 = call i64 @llvm.bswap.i64(i64 %173) #8
  %iscsi_tx_total_pdu_cnt27.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 14
  %175 = ptrtoint ptr %iscsi_tx_total_pdu_cnt27.i.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %iscsi_tx_total_pdu_cnt27.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ystats.i.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pstats.i.i) #8
  %176 = getelementptr inbounds %struct.regpair, ptr %pstats.i.i, i32 0, i32 1
  %177 = getelementptr inbounds %struct.pstorm_iscsi_stats_drv, ptr %pstats.i.i, i32 0, i32 1
  %178 = getelementptr inbounds %struct.pstorm_iscsi_stats_drv, ptr %pstats.i.i, i32 0, i32 1, i32 1
  %179 = call ptr @memset(ptr %pstats.i.i, i32 0, i32 16)
  %180 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cond, align 8
  %iro_arr.i84.i = getelementptr inbounds %struct.qed_dev, ptr %181, i32 0, i32 31
  %182 = ptrtoint ptr %iro_arr.i84.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iro_arr.i84.i, align 8
  %arrayidx.i85.i = getelementptr %struct.iro, ptr %183, i32 52
  %184 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.i85.i, align 4
  %186 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i87.i = zext i8 %187 to i32
  %m1.i88.i = getelementptr %struct.iro, ptr %183, i32 52, i32 1
  %188 = ptrtoint ptr %m1.i88.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %m1.i88.i, align 4
  %conv4.i89.i = zext i16 %189 to i32
  %mul.i90.i = mul nuw nsw i32 %conv4.i89.i, %conv.i87.i
  %add.i91.i = add i32 %185, 32505856
  %add5.i92.i = add i32 %add.i91.i, %mul.i90.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %pstats.i.i, i32 noundef %add5.i92.i, i32 noundef 16) #8
  %190 = ptrtoint ptr %pstats.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %__regpair.sroa.0.0.copyload.i93.i = load i32, ptr %pstats.i.i, align 4
  %191 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %191)
  %__regpair.sroa.5.0.copyload.i94.i = load i32, ptr %176, align 4
  %192 = zext i32 %__regpair.sroa.5.0.copyload.i94.i to i64
  %193 = zext i32 %__regpair.sroa.0.0.copyload.i93.i to i64
  %194 = shl nuw i64 %193, 32
  %195 = or i64 %194, %192
  %196 = call i64 @llvm.bswap.i64(i64 %195) #8
  %iscsi_tx_bytes_cnt9.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 15
  %197 = ptrtoint ptr %iscsi_tx_bytes_cnt9.i.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %iscsi_tx_bytes_cnt9.i.i, align 8
  %198 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %198)
  %__regpair10.sroa.0.0.copyload.i95.i = load i32, ptr %177, align 4
  %199 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %199)
  %__regpair10.sroa.5.0.copyload.i96.i = load i32, ptr %178, align 4
  %200 = zext i32 %__regpair10.sroa.5.0.copyload.i96.i to i64
  %201 = zext i32 %__regpair10.sroa.0.0.copyload.i95.i to i64
  %202 = shl nuw i64 %201, 32
  %203 = or i64 %202, %200
  %204 = call i64 @llvm.bswap.i64(i64 %203) #8
  %iscsi_tx_packet_cnt18.i.i = getelementptr inbounds %struct.qed_iscsi_stats, ptr %stats, i32 0, i32 16
  %205 = ptrtoint ptr %iscsi_tx_packet_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %iscsi_tx_packet_cnt18.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pstats.i.i) #8
  call void @qed_ptt_release(ptr noundef %cond, ptr noundef nonnull %call.i) #8
  br label %qed_iscsi_get_stats.exit

qed_iscsi_get_stats.exit:                         ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -11, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @qed_get_iscsi_ops() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @qed_iscsi_ops_pass
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_put_iscsi_ops() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_chain_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_from(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fill_iscsi_dev_info(ptr noundef %cdev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %2 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %3 = call ptr @memset(ptr %info, i32 0, i32 72)
  %call = tail call i32 @qed_fill_dev_info(ptr noundef %cdev, ptr noundef %info) #8
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 2, i32 14
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regview.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 12
  %6 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview.i, align 4
  %8 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond, align 8
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx1.i = getelementptr %struct.iro, ptr %11, i32 46
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx3.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 14
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 4
  %m1.i = getelementptr %struct.iro, ptr %11, i32 46, i32 1
  %16 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %m1.i, align 4
  %conv.i = zext i16 %17 to i32
  %mul.i = mul i32 %15, %conv.i
  %add.i = add i32 %13, 69632
  %add14.i = add i32 %add.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add14.i
  br label %qed_iscsi_get_primary_bdq_prod.exit

do.body.i:                                        ; preds = %entry
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %18 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i = icmp ult i8 %19, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.qed_iscsi_get_primary_bdq_prod.exit_crit_edge, !prof !102

do.body.i.qed_iscsi_get_primary_bdq_prod.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_iscsi_get_primary_bdq_prod.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 635, ptr noundef nonnull %name.i) #12
  br label %qed_iscsi_get_primary_bdq_prod.exit

qed_iscsi_get_primary_bdq_prod.exit:              ; preds = %do.end.i, %do.body.i.qed_iscsi_get_primary_bdq_prod.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %do.body.i.qed_iscsi_get_primary_bdq_prod.exit_crit_edge ], [ null, %do.end.i ]
  %primary_dbq_rq_addr = getelementptr inbounds %struct.qed_dev_iscsi_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %primary_dbq_rq_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %primary_dbq_rq_addr, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i28 = icmp eq i32 %22, 0
  br i1 %tobool.not.i28, label %do.body.i42, label %if.then.i39

if.then.i39:                                      ; preds = %qed_iscsi_get_primary_bdq_prod.exit
  call void @__sanitizer_cov_trace_pc() #10
  %regview.i29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 12
  %23 = ptrtoint ptr %regview.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regview.i29, align 4
  %25 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cond, align 8
  %iro_arr.i30 = getelementptr inbounds %struct.qed_dev, ptr %26, i32 0, i32 31
  %27 = ptrtoint ptr %iro_arr.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iro_arr.i30, align 8
  %arrayidx1.i31 = getelementptr %struct.iro, ptr %28, i32 45
  %29 = ptrtoint ptr %arrayidx1.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i31, align 4
  %arrayidx3.i32 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 14
  %31 = ptrtoint ptr %arrayidx3.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i32, align 4
  %m1.i33 = getelementptr %struct.iro, ptr %28, i32 45, i32 1
  %33 = ptrtoint ptr %m1.i33 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %m1.i33, align 4
  %conv.i34 = zext i16 %34 to i32
  %mul.i35 = mul i32 %32, %conv.i34
  %add.i36 = add i32 %30, 65536
  %add14.i37 = add i32 %add.i36, %mul.i35
  %add.ptr.i38 = getelementptr i8, ptr %24, i32 %add14.i37
  br label %qed_iscsi_get_secondary_bdq_prod.exit

do.body.i42:                                      ; preds = %qed_iscsi_get_primary_bdq_prod.exit
  %dp_level.i40 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %35 = ptrtoint ptr %dp_level.i40 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i41 = icmp ult i8 %36, 3
  br i1 %cmp.i41, label %do.end.i45, label %do.body.i42.qed_iscsi_get_secondary_bdq_prod.exit_crit_edge, !prof !102

do.body.i42.qed_iscsi_get_secondary_bdq_prod.exit_crit_edge: ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_iscsi_get_secondary_bdq_prod.exit

do.end.i45:                                       ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  %name.i43 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef 649, ptr noundef nonnull %name.i43) #12
  br label %qed_iscsi_get_secondary_bdq_prod.exit

qed_iscsi_get_secondary_bdq_prod.exit:            ; preds = %do.end.i45, %do.body.i42.qed_iscsi_get_secondary_bdq_prod.exit_crit_edge, %if.then.i39
  %retval.0.i46 = phi ptr [ %add.ptr.i38, %if.then.i39 ], [ null, %do.body.i42.qed_iscsi_get_secondary_bdq_prod.exit_crit_edge ], [ null, %do.end.i45 ]
  %secondary_bdq_rq_addr = getelementptr inbounds %struct.qed_dev_iscsi_info, ptr %info, i32 0, i32 2
  %37 = ptrtoint ptr %secondary_bdq_rq_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i46, ptr %secondary_bdq_rq_addr, align 4
  %arrayidx14 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 3, i32 4
  %38 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx14, align 4
  %conv = trunc i32 %39 to i8
  %num_cqs = getelementptr inbounds %struct.qed_dev_iscsi_info, ptr %info, i32 0, i32 3
  %40 = ptrtoint ptr %num_cqs to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %num_cqs, align 4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qed_register_iscsi_ops(ptr nocapture noundef writeonly %cdev, ptr noundef %ops, ptr noundef %cookie) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 56
  %0 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %protocol_ops, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 57
  %1 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cookie, ptr %ops_cookie, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_start(ptr noundef %cdev, ptr noundef writeonly %tasks, ptr noundef %event_context, ptr noundef %async_event_cb) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1110, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %4 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_info, align 8
  %.off = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %6 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond28 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %7 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %8 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %call.i = tail call i32 @qed_spq_get_cid(ptr noundef %cond28) #8
  %10 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %11 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %opaque_fid.i, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %8, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %14 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %15 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %p_comp_data.i, align 4
  %call3.i = call i32 @qed_sp_init_request(ptr noundef %cond28, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.qed_sp_iscsi_func_start.exit.thread_crit_edge

if.end11.qed_sp_iscsi_func_start.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_func_start.exit.thread

if.end.i:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_ent.i, align 4
  %q_params.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %num_queues.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 17
  %18 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_queues.i, align 1
  %conv.i = zext i8 %19 to i32
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 3, i32 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.i = icmp ult i32 %21, %conv.i
  br i1 %cmp.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 176, ptr noundef nonnull %name.i, i32 noundef %conv.i, i32 noundef %21) #12
  %22 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_ent.i, align 4
  call void @qed_sp_destroy_request(ptr noundef %cond28, ptr noundef %23) #8
  br label %qed_sp_iscsi_func_start.exit.thread

if.end19.i:                                       ; preds = %if.end.i
  %iscsi_pf_params.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3
  %half_way_close_timeout.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 8
  %24 = ptrtoint ptr %half_way_close_timeout.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %half_way_close_timeout.i, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #8
  %27 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %ramrod.i, align 4
  %num_sq_pages_in_ring.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 14
  %28 = ptrtoint ptr %num_sq_pages_in_ring.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_sq_pages_in_ring.i, align 2
  %num_sq_pages_in_ring21.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %num_sq_pages_in_ring21.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %num_sq_pages_in_ring21.i, align 2
  %num_r2tq_pages_in_ring.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 15
  %31 = ptrtoint ptr %num_r2tq_pages_in_ring.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_r2tq_pages_in_ring.i, align 1
  %num_r2tq_pages_in_ring22.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %num_r2tq_pages_in_ring22.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %num_r2tq_pages_in_ring22.i, align 1
  %num_uhq_pages_in_ring.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 16
  %34 = ptrtoint ptr %num_uhq_pages_in_ring.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_uhq_pages_in_ring.i, align 4
  %num_uhq_pages_in_ring23.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %num_uhq_pages_in_ring23.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %num_uhq_pages_in_ring23.i, align 4
  %arrayidx25.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 10
  %37 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx25.i, align 4
  %ll2_ooo_queue_id.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 24
  %39 = ptrtoint ptr %ll2_ooo_queue_id.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ll2_ooo_queue_id.i, align 4
  %41 = trunc i32 %38 to i8
  %conv27.i = add i8 %40, %41
  %ll2_rx_queue_id.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 0, i32 5
  %42 = ptrtoint ptr %ll2_rx_queue_id.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv27.i, ptr %ll2_rx_queue_id.i, align 1
  %log_page_size.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 18
  %43 = ptrtoint ptr %log_page_size.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %log_page_size.i, align 2
  %func_params.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 1
  %log_page_size28.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %log_page_size28.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %log_page_size28.i, align 2
  %num_tasks.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 7
  %46 = ptrtoint ptr %num_tasks.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_tasks.i, align 4
  %48 = call i16 @llvm.bswap.i16(i16 %47) #8
  %49 = ptrtoint ptr %func_params.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %func_params.i, align 4
  %debug_mode.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 23
  %50 = ptrtoint ptr %debug_mode.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %debug_mode.i, align 1
  %debug_mode31.i = getelementptr inbounds %struct.iscsi_spe_func_init, ptr %ramrod.i, i32 0, i32 6
  %52 = ptrtoint ptr %debug_mode31.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %debug_mode31.i, align 1
  %53 = ptrtoint ptr %iscsi_pf_params.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %iscsi_pf_params.i, align 8
  %shr.i = lshr i64 %54, 32
  %conv34.i = trunc i64 %shr.i to i32
  %55 = call i32 @llvm.bswap.i32(i32 %conv34.i) #8
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %56 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hi.i, align 4
  %57 = ptrtoint ptr %iscsi_pf_params.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %iscsi_pf_params.i, align 8
  %conv37.i = trunc i64 %58 to i32
  %59 = call i32 @llvm.bswap.i32(i32 %conv37.i) #8
  %60 = ptrtoint ptr %q_params.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %q_params.i, align 4
  %cq_num_entries.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 2
  %61 = ptrtoint ptr %cq_num_entries.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cq_num_entries.i, align 8
  %63 = call i16 @llvm.bswap.i16(i16 %62) #8
  %cq_num_entries41.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 1
  %64 = ptrtoint ptr %cq_num_entries41.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %cq_num_entries41.i, align 2
  %cmdq_num_entries.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 3
  %65 = ptrtoint ptr %cmdq_num_entries.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %cmdq_num_entries.i, align 2
  %67 = call i16 @llvm.bswap.i16(i16 %66) #8
  %cmdq_num_entries42.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 3
  %68 = ptrtoint ptr %cmdq_num_entries42.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %cmdq_num_entries42.i, align 4
  %69 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_queues.i, align 1
  %num_queues44.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 5
  %71 = ptrtoint ptr %num_queues44.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %num_queues44.i, align 4
  %arrayidx47.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 12
  %72 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx47.i, align 4
  %conv48.i = trunc i32 %73 to i8
  %queue_relative_offset.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 8
  %74 = ptrtoint ptr %queue_relative_offset.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv48.i, ptr %queue_relative_offset.i, align 1
  %gl_rq_pi.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 21
  %75 = ptrtoint ptr %gl_rq_pi.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %gl_rq_pi.i, align 1
  %cq_sb_pi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 6
  %77 = ptrtoint ptr %cq_sb_pi.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %cq_sb_pi.i, align 2
  %gl_cmd_pi.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 22
  %78 = ptrtoint ptr %gl_cmd_pi.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %gl_cmd_pi.i, align 2
  %cmdq_sb_pi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 6, i32 1
  %80 = ptrtoint ptr %cmdq_sb_pi.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %cmdq_sb_pi.i, align 1
  %81 = load i8, ptr %num_queues.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp542.not.i = icmp eq i8 %81, 0
  br i1 %cmp542.not.i, label %if.end19.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %cq_cmdq_sb_num_arr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %82 = trunc i32 %indvars.iv.i to i16
  %call57.i = call zeroext i16 @qed_get_igu_sb_id(ptr noundef %cond28, i16 noundef zeroext %82) #8
  %83 = call i16 @llvm.bswap.i16(i16 %call57.i) #8
  %arrayidx58.i = getelementptr [64 x i16], ptr %cq_cmdq_sb_num_arr.i, i32 0, i32 %indvars.iv.i
  %84 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx58.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %85 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_queues.i, align 1
  %87 = zext i8 %86 to i32
  %cmp54.i = icmp ult i32 %indvars.iv.next.i, %87
  br i1 %cmp54.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  %arrayidx61.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 14
  %88 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx61.i, align 4
  %conv62.i = trunc i32 %89 to i8
  %bdq_resource_id.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 4
  %90 = ptrtoint ptr %bdq_resource_id.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv62.i, ptr %bdq_resource_id.i, align 2
  %bdq_pbl_base_addr.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 1
  %91 = ptrtoint ptr %bdq_pbl_base_addr.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %bdq_pbl_base_addr.i, align 8
  %shr65.i = lshr i64 %92, 32
  %conv67.i = trunc i64 %shr65.i to i32
  %93 = call i32 @llvm.bswap.i32(i32 %conv67.i) #8
  %bdq_pbl_base_address.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6
  %hi69.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 3
  %94 = ptrtoint ptr %hi69.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %hi69.i, align 4
  %95 = ptrtoint ptr %bdq_pbl_base_addr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %bdq_pbl_base_addr.i, align 8
  %conv73.i = trunc i64 %96 to i32
  %97 = call i32 @llvm.bswap.i32(i32 %conv73.i) #8
  %98 = ptrtoint ptr %bdq_pbl_base_address.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %bdq_pbl_base_address.i, align 4
  %bdq_pbl_num_entries.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 28
  %99 = ptrtoint ptr %bdq_pbl_num_entries.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bdq_pbl_num_entries.i, align 8
  %bdq_pbl_num_entries80.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 6, i32 2
  %101 = ptrtoint ptr %bdq_pbl_num_entries80.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %bdq_pbl_num_entries80.i, align 4
  %bdq_xoff_threshold.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 9
  %102 = ptrtoint ptr %bdq_xoff_threshold.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %bdq_xoff_threshold.i, align 8
  %104 = call i16 @llvm.bswap.i16(i16 %103) #8
  %bdq_xoff_threshold83.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7
  %105 = ptrtoint ptr %bdq_xoff_threshold83.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %bdq_xoff_threshold83.i, align 4
  %bdq_xon_threshold.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 10
  %106 = ptrtoint ptr %bdq_xon_threshold.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %bdq_xon_threshold.i, align 2
  %108 = call i16 @llvm.bswap.i16(i16 %107) #8
  %bdq_xon_threshold86.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 4
  %109 = ptrtoint ptr %bdq_xon_threshold86.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %bdq_xon_threshold86.i, align 4
  %arrayidx90.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 1, i32 1
  %110 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx90.i, align 8
  %shr91.i = lshr i64 %111, 32
  %conv93.i = trunc i64 %shr91.i to i32
  %112 = call i32 @llvm.bswap.i32(i32 %conv93.i) #8
  %arrayidx95.i = getelementptr %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 4
  %hi96.i = getelementptr %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 4, i32 1
  %113 = ptrtoint ptr %hi96.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %hi96.i, align 4
  %114 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx90.i, align 8
  %conv100.i = trunc i64 %115 to i32
  %116 = call i32 @llvm.bswap.i32(i32 %conv100.i) #8
  %117 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx95.i, align 4
  %arrayidx107.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 28, i32 1
  %118 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx107.i, align 1
  %arrayidx109.i = getelementptr %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 6, i32 3
  %120 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx109.i, align 1
  %arrayidx111.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 9, i32 1
  %121 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx111.i, align 2
  %123 = call i16 @llvm.bswap.i16(i16 %122) #8
  %arrayidx113.i = getelementptr %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 1
  %124 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %arrayidx113.i, align 2
  %arrayidx115.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 10, i32 1
  %125 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx115.i, align 2
  %127 = call i16 @llvm.bswap.i16(i16 %126) #8
  %arrayidx117.i = getelementptr [3 x i16], ptr %bdq_xon_threshold86.i, i32 0, i32 1
  %128 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %arrayidx117.i, align 2
  %rq_buffer_size.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 13
  %129 = ptrtoint ptr %rq_buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %rq_buffer_size.i, align 8
  %131 = call i16 @llvm.bswap.i16(i16 %130) #8
  %rq_buffer_size118.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2
  %132 = ptrtoint ptr %rq_buffer_size118.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %rq_buffer_size118.i, align 4
  %is_target.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 25
  %133 = ptrtoint ptr %is_target.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %is_target.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool119.not.i = icmp eq i8 %134, 0
  %q_validity158.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 5
  %135 = ptrtoint ptr %q_validity158.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %q_validity158.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool132.not.i = icmp eq i8 %119, 0
  %spec.select1.i = select i1 %tobool132.not.i, i8 5, i8 7
  %.sink.i.v = select i1 %tobool119.not.i, i8 1, i8 %spec.select1.i
  %.sink.i = or i8 %136, %.sink.i.v
  %137 = ptrtoint ptr %q_validity158.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.sink.i, ptr %q_validity158.i, align 1
  %two_msl_timer.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 4
  %138 = ptrtoint ptr %two_msl_timer.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %two_msl_timer.i, align 4
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  %tcp_init.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 5
  %141 = ptrtoint ptr %tcp_init.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %tcp_init.i, align 4
  %tx_sws_timer.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 5
  %142 = ptrtoint ptr %tx_sws_timer.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %tx_sws_timer.i, align 8
  %144 = call i16 @llvm.bswap.i16(i16 %143) #8
  %tx_sws_timer171.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 6, i32 2
  %145 = ptrtoint ptr %tx_sws_timer171.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %tx_sws_timer171.i, align 4
  %max_fin_rt.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 20
  %146 = ptrtoint ptr %max_fin_rt.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %max_fin_rt.i, align 8
  %max_fin_rt173.i = getelementptr inbounds %struct.qed_spq_entry, ptr %17, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 6, i32 4
  %148 = ptrtoint ptr %max_fin_rt173.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %max_fin_rt173.i, align 2
  %p_iscsi_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 33
  %149 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %p_iscsi_info.i, align 4
  %event_context174.i = getelementptr inbounds %struct.qed_iscsi_info, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %event_context174.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %event_context, ptr %event_context174.i, align 4
  %152 = load ptr, ptr %p_iscsi_info.i, align 4
  %event_cb.i = getelementptr inbounds %struct.qed_iscsi_info, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %async_event_cb, ptr %event_cb.i, align 4
  %call176.i = call i32 @qed_spq_register_async_cb(ptr noundef %cond28, i32 noundef 0, ptr noundef nonnull @qed_iscsi_async_event) #8
  %154 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %p_ent.i, align 4
  %call177.i = call i32 @qed_spq_post(ptr noundef %cond28, ptr noundef %155, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i)
  %tobool30.not = icmp eq i32 %call177.i, 0
  br i1 %tobool30.not, label %if.end61, label %for.end.i.do.body32_crit_edge

for.end.i.do.body32_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

qed_sp_iscsi_func_start.exit.thread:              ; preds = %do.end.i, %if.end11.qed_sp_iscsi_func_start.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end11.qed_sp_iscsi_func_start.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %do.body32

do.body32:                                        ; preds = %qed_sp_iscsi_func_start.exit.thread, %for.end.i.do.body32_crit_edge
  %retval.0.i180 = phi i32 [ %retval.0.i.ph, %qed_sp_iscsi_func_start.exit.thread ], [ %call177.i, %for.end.i.do.body32_crit_edge ]
  %dp_level33 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %156 = ptrtoint ptr %dp_level33 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %dp_level33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %157)
  %cmp35 = icmp ult i8 %157, 3
  br i1 %cmp35, label %do.end46, label %do.body32.cleanup_crit_edge, !prof !102

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end46:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %name48 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool50.not = icmp eq ptr %name48, null
  %spec.select174 = select i1 %tobool50.not, ptr @.str.4, ptr %name48
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 1117, ptr noundef nonnull %spec.select174) #12
  br label %cleanup

if.end61:                                         ; preds = %for.end.i
  %158 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags, align 4
  %or = or i32 %159, 1
  store i32 %or, ptr %flags, align 4
  %connections = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 64
  %160 = call ptr @memset(ptr %connections, i32 0, i32 4096)
  %tobool64.not = icmp eq ptr %tasks, null
  br i1 %tobool64.not, label %if.end61.cleanup_crit_edge, label %if.end66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %161 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %161, i32 noundef 3520, i32 noundef 2060) #11
  %tobool68.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool68.not, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call i32 @qed_iscsi_stop(ptr noundef %cdev)
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %162 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hw_info, align 8
  %.off176 = add i32 %163, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off176)
  %switch177 = icmp ult i32 %.off176, 2
  %idxprom88.pn.in.in = select i1 %switch177, ptr %iwarp_affin, ptr %fir_affin
  %164 = ptrtoint ptr %idxprom88.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %164)
  %idxprom88.pn.in = load i8, ptr %idxprom88.pn.in.in, align 1
  %idxprom88.pn = zext i8 %idxprom88.pn.in to i32
  %cond96 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom88.pn
  %call97 = call i32 @qed_cxt_get_tid_mem_info(ptr noundef %cond96, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end130, label %do.body100

do.body100:                                       ; preds = %if.end71
  %dp_level101 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %165 = ptrtoint ptr %dp_level101 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %dp_level101, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %166)
  %cmp103 = icmp ult i8 %166, 3
  br i1 %cmp103, label %do.end114, label %do.body100.do.end128_crit_edge, !prof !102

do.body100.do.end128_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

do.end114:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %name116 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool118.not = icmp eq ptr %name116, null
  %spec.select175 = select i1 %tobool118.not, ptr @.str.4, ptr %name116
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 1136, ptr noundef nonnull %spec.select175) #12
  br label %do.end128

do.end128:                                        ; preds = %do.end114, %do.body100.do.end128_crit_edge
  %call129 = call i32 @qed_iscsi_stop(ptr noundef %cdev)
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end130:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %call7.i.i, align 8
  %169 = ptrtoint ptr %tasks to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %tasks, align 4
  %num_tids_per_block = getelementptr inbounds %struct.qed_tid_mem, ptr %call7.i.i, i32 0, i32 1
  %170 = ptrtoint ptr %num_tids_per_block to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_tids_per_block, align 4
  %num_tids_per_block131 = getelementptr inbounds %struct.qed_iscsi_tid, ptr %tasks, i32 0, i32 1
  %172 = ptrtoint ptr %num_tids_per_block131 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %num_tids_per_block131, align 4
  %blocks = getelementptr inbounds %struct.qed_iscsi_tid, ptr %tasks, i32 0, i32 2
  %blocks133 = getelementptr inbounds %struct.qed_tid_mem, ptr %call7.i.i, i32 0, i32 3
  %173 = call ptr @memcpy(ptr %blocks, ptr %blocks133, i32 2048)
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %do.end128, %if.then69, %if.end61.cleanup_crit_edge, %do.end46, %do.body32.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call97, %do.end128 ], [ 0, %if.end130 ], [ -12, %if.then69 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %retval.0.i180, %do.end46 ], [ %retval.0.i180, %do.body32.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_stop(ptr noundef %cdev) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1083, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %connections = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 64
  %4 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %connections, align 4
  %tobool.not.i.not.i80 = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i80, label %if.end11.for.cond.i_crit_edge, label %if.end11.do.body15_crit_edge

if.end11.do.body15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.end11.for.cond.i_crit_edge:                    ; preds = %if.end11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end11.for.cond.i_crit_edge
  %i.01.i81 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end11.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.__hash_empty.exit_crit_edge, label %for.body.i

for.cond.i.__hash_empty.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hash_empty.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %connections, i32 %inc.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.__hash_empty.exit_crit_edge

for.body.i.__hash_empty.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hash_empty.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

__hash_empty.exit:                                ; preds = %for.body.i.__hash_empty.exit_crit_edge, %for.cond.i.__hash_empty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %i.01.i81)
  %cmp.i.le = icmp ult i32 %i.01.i81, 1023
  br i1 %cmp.i.le, label %__hash_empty.exit.do.body15_crit_edge, label %if.end44

__hash_empty.exit.do.body15_crit_edge:            ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.body15:                                        ; preds = %__hash_empty.exit.do.body15_crit_edge, %if.end11.do.body15_crit_edge
  %dp_level16 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %8 = ptrtoint ptr %dp_level16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp18 = icmp ult i8 %9, 3
  br i1 %cmp18, label %do.end29, label %do.body15.cleanup_crit_edge, !prof !102

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %name31 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool33.not = icmp eq ptr %name31, null
  %spec.select79 = select i1 %tobool33.not, ptr @.str.4, ptr %name31
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 1089, ptr noundef nonnull %spec.select79) #12
  br label %cleanup

if.end44:                                         ; preds = %__hash_empty.exit
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %10 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_info, align 8
  %.off = add i32 %11, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %12 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond61 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %13 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %14 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %call.i = tail call i32 @qed_spq_get_cid(ptr noundef %cond61) #8
  %16 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %17 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %opaque_fid.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %14, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %20 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %21 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %p_comp_data.i, align 4
  %call3.i = call i32 @qed_sp_init_request(ptr noundef %cond61, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.qed_sp_iscsi_func_stop.exit_crit_edge

if.end44.qed_sp_iscsi_func_stop.exit_crit_edge:   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_func_stop.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_ent.i, align 4
  %call4.i = call i32 @qed_spq_post(ptr noundef %cond61, ptr noundef %23, ptr noundef null) #8
  call void @qed_spq_unregister_async_cb(ptr noundef %cond61, i32 noundef 0) #8
  br label %qed_sp_iscsi_func_stop.exit

qed_sp_iscsi_func_stop.exit:                      ; preds = %if.end.i, %if.end44.qed_sp_iscsi_func_stop.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call3.i, %if.end44.qed_sp_iscsi_func_stop.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and64 = and i32 %25, -2
  store i32 %and64, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_iscsi_func_stop.exit, %do.end29, %do.body15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %qed_sp_iscsi_func_stop.exit ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -22, %do.end29 ], [ -22, %do.body15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_acquire_conn(ptr noundef %cdev, ptr nocapture noundef %handle, ptr nocapture noundef writeonly %fw_cid, ptr noundef writeonly %p_doorbell) #0 align 64 {
entry:
  %params.i.i = alloca %struct.qed_chain_init_params, align 4
  %icid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %con = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %call7.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icid.i) #8
  %4 = ptrtoint ptr %icid.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %icid.i, align 4, !annotation !103
  %p_iscsi_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 33
  %5 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_iscsi_info.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #8
  %call.i = call i32 @qed_cxt_acquire_cid(ptr noundef %cond, i32 noundef 0, ptr noundef nonnull %icid.i) #8
  %7 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_iscsi_info.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i.i) #8
  %9 = call ptr @memcpy(ptr %params.i.i, ptr @__const.qed_iscsi_allocate_connection.params, i32 32)
  %10 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_iscsi_info.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %11) #8
  %12 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_iscsi_info.i, align 4
  %free_list.i.i = getelementptr inbounds %struct.qed_iscsi_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_list.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %15, %free_list.i.i
  %tobool4.not.i.i = icmp eq ptr %15, null
  %or.cond.i.i = or i1 %cmp.i.i.i, %tobool4.not.i.i
  br i1 %or.cond.i.i, label %if.end8.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %15) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then5.i.i.list_del.exit.i.i_crit_edge

if.then5.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then5.i.i.list_del.exit.i.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_iscsi_info.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %25) #8
  br label %if.then8.i

if.end8.i.i:                                      ; preds = %if.else.i
  call void @_raw_spin_unlock_bh(ptr noundef %13) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 516) #11
  %tobool12.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.qed_iscsi_allocate_connection.exit.i_crit_edge, label %if.end14.i.i

if.end8.i.i.qed_iscsi_allocate_connection.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_iscsi_allocate_connection.exit.i

if.end14.i.i:                                     ; preds = %if.end8.i.i
  %27 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cond, align 8
  %pdev.i.i = getelementptr inbounds %struct.qed_dev, ptr %28, i32 0, i32 50
  %29 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %queue_cnts_phys_addr.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 16
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 8, ptr noundef %queue_cnts_phys_addr.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool16.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not.i.i, label %if.end14.i.i.nomem_queue_cnts_param.i.i_crit_edge, label %if.end18.i.i

if.end14.i.i.nomem_queue_cnts_param.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_queue_cnts_param.i.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %queue_cnts_virt_addr.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 15
  %31 = ptrtoint ptr %queue_cnts_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %queue_cnts_virt_addr.i.i, align 4
  %32 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cond, align 8
  %pdev20.i.i = getelementptr inbounds %struct.qed_dev, ptr %33, i32 0, i32 50
  %34 = ptrtoint ptr %pdev20.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev20.i.i, align 8
  %dev21.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %tcp_upload_params_phys_addr.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 14
  %call.i106.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev21.i.i, i32 noundef 72, ptr noundef %tcp_upload_params_phys_addr.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool23.not.i.i = icmp eq ptr %call.i106.i.i, null
  br i1 %tobool23.not.i.i, label %if.end18.i.i.nomem_upload_param.i.i_crit_edge, label %if.end25.i.i

if.end18.i.i.nomem_upload_param.i.i_crit_edge:    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_upload_param.i.i

if.end25.i.i:                                     ; preds = %if.end18.i.i
  %tcp_upload_params_virt_addr.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 13
  %36 = ptrtoint ptr %tcp_upload_params_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i106.i.i, ptr %tcp_upload_params_virt_addr.i.i, align 4
  %num_r2tq_pages_in_ring.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 15
  %37 = ptrtoint ptr %num_r2tq_pages_in_ring.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_r2tq_pages_in_ring.i.i, align 1
  %conv.i.i = zext i8 %38 to i32
  %div.i.i = shl nuw nsw i32 %conv.i.i, 9
  %num_elems.i.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %num_elems.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div.i.i, ptr %num_elems.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %elem_size.i.i, align 4
  %41 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cond, align 8
  %r2tq.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 10
  %call27.i.i = call i32 @qed_chain_alloc(ptr noundef %42, ptr noundef %r2tq.i.i, ptr noundef nonnull %params.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %if.end25.i.i.nomem_r2tq.i.i_crit_edge

if.end25.i.i.nomem_r2tq.i.i_crit_edge:            ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_r2tq.i.i

if.end30.i.i:                                     ; preds = %if.end25.i.i
  %num_uhq_pages_in_ring.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 2, i32 16
  %43 = ptrtoint ptr %num_uhq_pages_in_ring.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_uhq_pages_in_ring.i.i, align 4
  %conv31.i.i = zext i8 %44 to i32
  %div33.i.i = shl nuw nsw i32 %conv31.i.i, 9
  %45 = ptrtoint ptr %num_elems.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div33.i.i, ptr %num_elems.i.i, align 4
  %46 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %elem_size.i.i, align 4
  %47 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond, align 8
  %uhq.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 12
  %call37.i.i = call i32 @qed_chain_alloc(ptr noundef %48, ptr noundef %uhq.i.i, ptr noundef nonnull %params.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool38.not.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end40.i.i, label %if.end30.i.i.nomem_uhq.i.i_crit_edge

if.end30.i.i.nomem_uhq.i.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_uhq.i.i

if.end40.i.i:                                     ; preds = %if.end30.i.i
  %49 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %elem_size.i.i, align 4
  %50 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cond, align 8
  %xhq.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 11
  %call43.i.i = call i32 @qed_chain_alloc(ptr noundef %51, ptr noundef %xhq.i.i, ptr noundef nonnull %params.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end46.i.i, label %nomem.i.i

if.end46.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_on_delete.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %call7.i.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %free_on_delete.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %free_on_delete.i.i, align 8
  br label %if.then8.i

nomem.i.i:                                        ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cond, align 8
  call void @qed_chain_free(ptr noundef %54, ptr noundef %uhq.i.i) #8
  br label %nomem_uhq.i.i

nomem_uhq.i.i:                                    ; preds = %nomem.i.i, %if.end30.i.i.nomem_uhq.i.i_crit_edge
  %55 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cond, align 8
  call void @qed_chain_free(ptr noundef %56, ptr noundef %r2tq.i.i) #8
  br label %nomem_r2tq.i.i

nomem_r2tq.i.i:                                   ; preds = %nomem_uhq.i.i, %if.end25.i.i.nomem_r2tq.i.i_crit_edge
  %57 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cond, align 8
  %pdev52.i.i = getelementptr inbounds %struct.qed_dev, ptr %58, i32 0, i32 50
  %59 = ptrtoint ptr %pdev52.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev52.i.i, align 8
  %dev53.i.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %tcp_upload_params_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tcp_upload_params_virt_addr.i.i, align 4
  %63 = ptrtoint ptr %tcp_upload_params_phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tcp_upload_params_phys_addr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev53.i.i, i32 noundef 72, ptr noundef %62, i32 noundef %64, i32 noundef 0) #8
  br label %nomem_upload_param.i.i

nomem_upload_param.i.i:                           ; preds = %nomem_r2tq.i.i, %if.end18.i.i.nomem_upload_param.i.i_crit_edge
  %65 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cond, align 8
  %pdev57.i.i = getelementptr inbounds %struct.qed_dev, ptr %66, i32 0, i32 50
  %67 = ptrtoint ptr %pdev57.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev57.i.i, align 8
  %dev58.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %queue_cnts_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %queue_cnts_virt_addr.i.i, align 4
  %71 = ptrtoint ptr %queue_cnts_phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %queue_cnts_phys_addr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev58.i.i, i32 noundef 8, ptr noundef %70, i32 noundef %72, i32 noundef 0) #8
  br label %nomem_queue_cnts_param.i.i

nomem_queue_cnts_param.i.i:                       ; preds = %nomem_upload_param.i.i, %if.end14.i.i.nomem_queue_cnts_param.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %qed_iscsi_allocate_connection.exit.i

qed_iscsi_allocate_connection.exit.i:             ; preds = %nomem_queue_cnts_param.i.i, %if.end8.i.i.qed_iscsi_allocate_connection.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i.i) #8
  br label %if.then12.i

if.then8.i:                                       ; preds = %if.end46.i.i, %list_del.exit.i.i
  %p_conn.0.ph.i = phi ptr [ %15, %list_del.exit.i.i ], [ %call7.i.i.i.i, %if.end46.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i.i) #8
  %queue_cnts_virt_addr.i1.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 15
  %73 = ptrtoint ptr %queue_cnts_virt_addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue_cnts_virt_addr.i1.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.then8.i.if.then12.i_crit_edge, label %if.end.i.i

if.then8.i.if.then12.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end.i.i:                                       ; preds = %if.then8.i
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 0, ptr %74, align 2
  %tcp_upload_params_virt_addr.i2.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 13
  %76 = ptrtoint ptr %tcp_upload_params_virt_addr.i2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tcp_upload_params_virt_addr.i2.i, align 4
  %tobool2.not.i.i = icmp eq ptr %77, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then12.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.then12.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %78 = call ptr @memset(ptr %77, i32 0, i32 72)
  %p_virt_addr.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 10, i32 16
  %79 = ptrtoint ptr %p_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %p_virt_addr.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %80, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.if.then12.i_crit_edge, label %if.end8.i3.i

if.end4.i.i.if.then12.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end8.i3.i:                                     ; preds = %if.end4.i.i
  %mode.i.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 10, i32 6
  %81 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp.not.i.i.i = icmp eq i32 %82, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end8.i3.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge

if.end8.i3.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge: ; preds = %if.end8.i3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_chain_pbl_zero_mem.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end8.i3.i
  %page_cnt.i.i.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 10, i32 5
  %83 = ptrtoint ptr %page_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp18.not.i.i.i = icmp eq i32 %84, 0
  br i1 %cmp18.not.i.i.i, label %if.end.i.i.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_chain_pbl_zero_mem.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %pbl.i.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 10, i32 2
  %page_size.i.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 10, i32 14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.09.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %85 = ptrtoint ptr %pbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pbl.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.addr_tbl_entry, ptr %86, i32 %i.09.i.i.i
  %87 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i.i, align 4
  %89 = ptrtoint ptr %page_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %page_size.i.i.i, align 4
  %91 = call ptr @memset(ptr %88, i32 0, i32 %90)
  %inc.i.i.i = add nuw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %84
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_chain_pbl_zero_mem.exit.i.i

qed_chain_pbl_zero_mem.exit.i.i:                  ; preds = %for.body.i.i.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge, %if.end.i.i.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge, %if.end8.i3.i.qed_chain_pbl_zero_mem.exit.i.i_crit_edge
  %p_virt_addr10.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 12, i32 16
  %92 = ptrtoint ptr %p_virt_addr10.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %p_virt_addr10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %93, null
  br i1 %tobool11.not.i.i, label %qed_chain_pbl_zero_mem.exit.i.i.if.then12.i_crit_edge, label %if.end13.i.i

qed_chain_pbl_zero_mem.exit.i.i.if.then12.i_crit_edge: ; preds = %qed_chain_pbl_zero_mem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end13.i.i:                                     ; preds = %qed_chain_pbl_zero_mem.exit.i.i
  %mode.i30.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 12, i32 6
  %94 = ptrtoint ptr %mode.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.not.i31.i.i = icmp eq i32 %95, 2
  br i1 %cmp.not.i31.i.i, label %if.end.i34.i.i, label %if.end13.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge

if.end13.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_chain_pbl_zero_mem.exit43.i.i

if.end.i34.i.i:                                   ; preds = %if.end13.i.i
  %page_cnt.i.i32.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 12, i32 5
  %96 = ptrtoint ptr %page_cnt.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %page_cnt.i.i32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp18.not.i33.i.i = icmp eq i32 %97, 0
  br i1 %cmp18.not.i33.i.i, label %if.end.i34.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge, label %for.body.lr.ph.i37.i.i

if.end.i34.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge: ; preds = %if.end.i34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_chain_pbl_zero_mem.exit43.i.i

for.body.lr.ph.i37.i.i:                           ; preds = %if.end.i34.i.i
  %pbl.i35.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 12, i32 2
  %page_size.i36.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 12, i32 14
  br label %for.body.i42.i.i

for.body.i42.i.i:                                 ; preds = %for.body.i42.i.i.for.body.i42.i.i_crit_edge, %for.body.lr.ph.i37.i.i
  %i.09.i38.i.i = phi i32 [ 0, %for.body.lr.ph.i37.i.i ], [ %inc.i40.i.i, %for.body.i42.i.i.for.body.i42.i.i_crit_edge ]
  %98 = ptrtoint ptr %pbl.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pbl.i35.i.i, align 4
  %arrayidx.i39.i.i = getelementptr %struct.addr_tbl_entry, ptr %99, i32 %i.09.i38.i.i
  %100 = ptrtoint ptr %arrayidx.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i39.i.i, align 4
  %102 = ptrtoint ptr %page_size.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page_size.i36.i.i, align 4
  %104 = call ptr @memset(ptr %101, i32 0, i32 %103)
  %inc.i40.i.i = add nuw i32 %i.09.i38.i.i, 1
  %exitcond.not.i41.i.i = icmp eq i32 %inc.i40.i.i, %97
  br i1 %exitcond.not.i41.i.i, label %for.body.i42.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge, label %for.body.i42.i.i.for.body.i42.i.i_crit_edge

for.body.i42.i.i.for.body.i42.i.i_crit_edge:      ; preds = %for.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i42.i.i

for.body.i42.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge: ; preds = %for.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_chain_pbl_zero_mem.exit43.i.i

qed_chain_pbl_zero_mem.exit43.i.i:                ; preds = %for.body.i42.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge, %if.end.i34.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge, %if.end13.i.i.qed_chain_pbl_zero_mem.exit43.i.i_crit_edge
  %p_virt_addr15.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 11, i32 16
  %105 = ptrtoint ptr %p_virt_addr15.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p_virt_addr15.i.i, align 4
  %tobool16.not.i4.i = icmp eq ptr %106, null
  br i1 %tobool16.not.i4.i, label %qed_chain_pbl_zero_mem.exit43.i.i.if.then12.i_crit_edge, label %if.end18.i5.i

qed_chain_pbl_zero_mem.exit43.i.i.if.then12.i_crit_edge: ; preds = %qed_chain_pbl_zero_mem.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end18.i5.i:                                    ; preds = %qed_chain_pbl_zero_mem.exit43.i.i
  %mode.i44.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 11, i32 6
  %107 = ptrtoint ptr %mode.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mode.i44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp.not.i45.i.i = icmp eq i32 %108, 2
  br i1 %cmp.not.i45.i.i, label %if.end.i48.i.i, label %if.end18.i5.i.if.end31_crit_edge

if.end18.i5.i.if.end31_crit_edge:                 ; preds = %if.end18.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end.i48.i.i:                                   ; preds = %if.end18.i5.i
  %page_cnt.i.i46.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 11, i32 5
  %109 = ptrtoint ptr %page_cnt.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %page_cnt.i.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp18.not.i47.i.i = icmp eq i32 %110, 0
  br i1 %cmp18.not.i47.i.i, label %if.end.i48.i.i.if.end31_crit_edge, label %for.body.lr.ph.i51.i.i

if.end.i48.i.i.if.end31_crit_edge:                ; preds = %if.end.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

for.body.lr.ph.i51.i.i:                           ; preds = %if.end.i48.i.i
  %pbl.i49.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 11, i32 2
  %page_size.i50.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 11, i32 14
  br label %for.body.i56.i.i

for.body.i56.i.i:                                 ; preds = %for.body.i56.i.i.for.body.i56.i.i_crit_edge, %for.body.lr.ph.i51.i.i
  %i.09.i52.i.i = phi i32 [ 0, %for.body.lr.ph.i51.i.i ], [ %inc.i54.i.i, %for.body.i56.i.i.for.body.i56.i.i_crit_edge ]
  %111 = ptrtoint ptr %pbl.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pbl.i49.i.i, align 4
  %arrayidx.i53.i.i = getelementptr %struct.addr_tbl_entry, ptr %112, i32 %i.09.i52.i.i
  %113 = ptrtoint ptr %arrayidx.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i53.i.i, align 4
  %115 = ptrtoint ptr %page_size.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %page_size.i50.i.i, align 4
  %117 = call ptr @memset(ptr %114, i32 0, i32 %116)
  %inc.i54.i.i = add nuw i32 %i.09.i52.i.i, 1
  %exitcond.not.i55.i.i = icmp eq i32 %inc.i54.i.i, %110
  br i1 %exitcond.not.i55.i.i, label %for.body.i56.i.i.if.end31_crit_edge, label %for.body.i56.i.i.for.body.i56.i.i_crit_edge

for.body.i56.i.i.for.body.i56.i.i_crit_edge:      ; preds = %for.body.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i56.i.i

for.body.i56.i.i.if.end31_crit_edge:              ; preds = %for.body.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then12.i:                                      ; preds = %qed_chain_pbl_zero_mem.exit43.i.i.if.then12.i_crit_edge, %qed_chain_pbl_zero_mem.exit.i.i.if.then12.i_crit_edge, %if.end4.i.i.if.then12.i_crit_edge, %if.end.i.i.if.then12.i_crit_edge, %if.then8.i.if.then12.i_crit_edge, %qed_iscsi_allocate_connection.exit.i
  %118 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %p_iscsi_info.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %119) #8
  %120 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %icid.i, align 4
  call void @qed_cxt_release_cid(ptr noundef %cond, i32 noundef %121) #8
  %122 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %p_iscsi_info.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %123) #8
  br label %do.body

do.body:                                          ; preds = %if.then12.i, %if.end.do.body_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.do.body_crit_edge ], [ -12, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icid.i) #8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %124 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %125)
  %cmp14 = icmp ult i8 %125, 3
  br i1 %cmp14, label %do.end, label %do.body.do.end30_crit_edge, !prof !102

do.body.do.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool20.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool20.not, ptr @.str.4, ptr %name
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1169, ptr noundef nonnull %spec.select) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end, %do.body.do.end30_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end31:                                         ; preds = %for.body.i56.i.i.if.end31_crit_edge, %if.end.i48.i.i.if.end31_crit_edge, %if.end18.i5.i.if.end31_crit_edge
  %126 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %icid.i, align 4
  %icid18.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 3
  %128 = ptrtoint ptr %icid18.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %icid18.i, align 4
  %conv.i = trunc i32 %127 to i16
  %conn_id.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 2
  %129 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i, ptr %conn_id.i, align 2
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %130 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %opaque_fid.i, align 4
  %conv19.i = zext i16 %131 to i32
  %shl.i = shl nuw i32 %conv19.i, 16
  %or.i = or i32 %shl.i, %127
  %fw_cid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %p_conn.0.ph.i, i32 0, i32 4
  %132 = ptrtoint ptr %fw_cid.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i, ptr %fw_cid.i, align 4
  %133 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %p_conn.0.ph.i, ptr %con, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icid.i) #8
  %134 = ptrtoint ptr %icid18.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %icid18.i, align 4
  %136 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %handle, align 4
  %137 = ptrtoint ptr %fw_cid.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fw_cid.i, align 4
  %139 = ptrtoint ptr %fw_cid to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %fw_cid, align 4
  %140 = load i32, ptr %handle, align 4
  %mul.i.i = mul i32 %140, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx36 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i
  %141 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx36, align 4
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %142, ptr %call7.i.i, align 8
  %tobool.not.i94 = icmp eq ptr %142, null
  br i1 %tobool.not.i94, label %if.end31.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end31.hlist_add_head.exit_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %142, i32 0, i32 1
  %144 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end31.hlist_add_head.exit_crit_edge
  %145 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %call7.i.i, ptr %arrayidx36, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %arrayidx36, ptr %pprev34.i, align 4
  %tobool37.not = icmp eq ptr %p_doorbell, null
  br i1 %tobool37.not, label %hlist_add_head.exit.cleanup_crit_edge, label %if.then38

hlist_add_head.exit.cleanup_crit_edge:            ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %hw_info, align 8
  %.off92 = add i32 %148, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off92)
  %switch93 = icmp ult i32 %.off92, 2
  %idxprom55.pn.in.in = select i1 %switch93, ptr %iwarp_affin, ptr %fir_affin
  %149 = ptrtoint ptr %idxprom55.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %149)
  %idxprom55.pn.in = load i8, ptr %idxprom55.pn.in.in, align 1
  %idxprom55.pn = zext i8 %idxprom55.pn.in to i32
  %150 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle, align 4
  %doorbells.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom55.pn, i32 13
  %152 = ptrtoint ptr %doorbells.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %doorbells.i, align 8
  %mul.i.i95 = shl i32 %151, 2
  %add.ptr.i = getelementptr i8, ptr %153, i32 %mul.i.i95
  %154 = ptrtoint ptr %p_doorbell to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %add.ptr.i, ptr %p_doorbell, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %hlist_add_head.exit.cleanup_crit_edge, %do.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end30 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %hlist_add_head.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_release_conn(ptr noundef %cdev, i32 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1193, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %hash_con.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash_con.0.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %hash_con.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end12.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end12.hlist_del.exit_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end12.hlist_del.exit_crit_edge
  %15 = ptrtoint ptr %hash_con.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %hash_con.0.i, align 4
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %17 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_info, align 8
  %.off = add i32 %18, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %19 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %20 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con.i.le, align 4
  %p_iscsi_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 33
  %22 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_iscsi_info.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %23) #8
  %24 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_iscsi_info.i, align 4
  %free_list.i = getelementptr inbounds %struct.qed_iscsi_info, ptr %25, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.qed_iscsi_info, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %21, ptr noundef %27, ptr noundef %free_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hlist_del.exit.qed_iscsi_release_connection.exit_crit_edge

hlist_del.exit.qed_iscsi_release_connection.exit_crit_edge: ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_iscsi_release_connection.exit

if.end.i.i.i:                                     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_list.i, ptr %21, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %21, ptr %27, align 4
  br label %qed_iscsi_release_connection.exit

qed_iscsi_release_connection.exit:                ; preds = %if.end.i.i.i, %hlist_del.exit.qed_iscsi_release_connection.exit_crit_edge
  %icid.i43 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %21, i32 0, i32 3
  %32 = ptrtoint ptr %icid.i43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %icid.i43, align 4
  tail call void @qed_cxt_release_cid(ptr noundef %cond29, i32 noundef %33) #8
  %34 = ptrtoint ptr %p_iscsi_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_iscsi_info.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %35) #8
  tail call void @kfree(ptr noundef nonnull %hash_con.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_iscsi_release_connection.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qed_iscsi_release_connection.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_offload_conn(ptr noundef %cdev, i32 noundef %handle, ptr noundef readonly %conn_info) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31, i32 noundef 1214, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con.i.le, align 4
  %local_mac = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 19
  %src = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 3
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src, align 4
  %13 = ptrtoint ptr %local_mac to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %local_mac, align 4
  %add.ptr.i = getelementptr %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 3, i32 0, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 19, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  %remote_mac = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 20
  %dst = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 4
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst, align 4
  %19 = ptrtoint ptr %remote_mac to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %remote_mac, align 4
  %add.ptr.i203 = getelementptr %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 4, i32 0, i32 4
  %20 = ptrtoint ptr %add.ptr.i203 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i203, align 2
  %add.ptr1.i204 = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 20, i32 4
  %22 = ptrtoint ptr %add.ptr1.i204 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i204, align 2
  %local_ip = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25
  %ip = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 3, i32 1
  %23 = call ptr @memcpy(ptr %local_ip, ptr %ip, i32 16)
  %remote_ip = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24
  %ip24 = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 4, i32 1
  %24 = call ptr @memcpy(ptr %remote_ip, ptr %ip24, i32 16)
  %port = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %port, align 4
  %local_port = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 56
  %27 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %local_port, align 4
  %port28 = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %port28 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %port28, align 4
  %remote_port = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 55
  %30 = ptrtoint ptr %remote_port to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %remote_port, align 2
  %31 = ptrtoint ptr %conn_info to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %conn_info, align 4
  %layer_code29 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 5
  %33 = ptrtoint ptr %layer_code29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %layer_code29, align 4
  %sq_pbl_addr = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 1
  %34 = ptrtoint ptr %sq_pbl_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sq_pbl_addr, align 4
  %sq_pbl_addr30 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 9
  %36 = ptrtoint ptr %sq_pbl_addr30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sq_pbl_addr30, align 4
  %initial_ack = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 2
  %37 = ptrtoint ptr %initial_ack to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %initial_ack, align 4
  %initial_ack31 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 8
  %39 = ptrtoint ptr %initial_ack31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %initial_ack31, align 4
  %vlan_id = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 5
  %40 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vlan_id, align 4
  %vlan_id32 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 21
  %42 = ptrtoint ptr %vlan_id32 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %vlan_id32, align 2
  %tcp_flags = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 6
  %43 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tcp_flags, align 2
  %conv33 = zext i8 %44 to i16
  %tcp_flags34 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 22
  %45 = ptrtoint ptr %tcp_flags34 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv33, ptr %tcp_flags34, align 4
  %ip_version = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 7
  %46 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ip_version, align 1
  %ip_version35 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 23
  %48 = ptrtoint ptr %ip_version35 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ip_version35, align 2
  %default_cq = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 8
  %49 = ptrtoint ptr %default_cq to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %default_cq, align 4
  %default_cq36 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 63
  %51 = ptrtoint ptr %default_cq36 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %default_cq36, align 2
  %ka_max_probe_cnt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 9
  %52 = ptrtoint ptr %ka_max_probe_cnt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ka_max_probe_cnt, align 1
  %ka_max_probe_cnt37 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 26
  %54 = ptrtoint ptr %ka_max_probe_cnt37 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ka_max_probe_cnt37, align 4
  %dup_ack_theshold = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 10
  %55 = ptrtoint ptr %dup_ack_theshold to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dup_ack_theshold, align 2
  %dup_ack_theshold38 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 27
  %57 = ptrtoint ptr %dup_ack_theshold38 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %dup_ack_theshold38, align 1
  %rcv_next = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 11
  %58 = ptrtoint ptr %rcv_next to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rcv_next, align 4
  %rcv_next39 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 28
  %60 = ptrtoint ptr %rcv_next39 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rcv_next39, align 4
  %snd_una = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 12
  %61 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %snd_una, align 4
  %snd_una40 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 29
  %63 = ptrtoint ptr %snd_una40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %snd_una40, align 4
  %snd_next = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 13
  %64 = ptrtoint ptr %snd_next to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %snd_next, align 4
  %snd_next41 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 30
  %66 = ptrtoint ptr %snd_next41 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %snd_next41, align 4
  %snd_max = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 14
  %67 = ptrtoint ptr %snd_max to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %snd_max, align 4
  %snd_max42 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 31
  %69 = ptrtoint ptr %snd_max42 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %snd_max42, align 4
  %snd_wnd = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 15
  %70 = ptrtoint ptr %snd_wnd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %snd_wnd, align 4
  %snd_wnd43 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 32
  %72 = ptrtoint ptr %snd_wnd43 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %snd_wnd43, align 4
  %rcv_wnd = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 16
  %73 = ptrtoint ptr %rcv_wnd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rcv_wnd, align 4
  %rcv_wnd44 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 33
  %75 = ptrtoint ptr %rcv_wnd44 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %rcv_wnd44, align 4
  %snd_wl1 = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 17
  %76 = ptrtoint ptr %snd_wl1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %snd_wl1, align 4
  %snd_wl145 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 34
  %78 = ptrtoint ptr %snd_wl145 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %snd_wl145, align 4
  %cwnd = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 18
  %79 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cwnd, align 4
  %cwnd46 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 35
  %81 = ptrtoint ptr %cwnd46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %cwnd46, align 4
  %ss_thresh = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 19
  %82 = ptrtoint ptr %ss_thresh to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ss_thresh, align 4
  %ss_thresh47 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 36
  %84 = ptrtoint ptr %ss_thresh47 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %ss_thresh47, align 4
  %srtt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 20
  %85 = ptrtoint ptr %srtt to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %srtt, align 4
  %srtt48 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 37
  %87 = ptrtoint ptr %srtt48 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %srtt48, align 4
  %rtt_var = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 21
  %88 = ptrtoint ptr %rtt_var to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rtt_var, align 2
  %rtt_var49 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 38
  %90 = ptrtoint ptr %rtt_var49 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %rtt_var49, align 2
  %ts_recent = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 22
  %91 = ptrtoint ptr %ts_recent to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ts_recent, align 4
  %ts_recent50 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 39
  %93 = ptrtoint ptr %ts_recent50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %ts_recent50, align 4
  %ts_recent_age = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 23
  %94 = ptrtoint ptr %ts_recent_age to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ts_recent_age, align 4
  %ts_recent_age51 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 40
  %96 = ptrtoint ptr %ts_recent_age51 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ts_recent_age51, align 4
  %total_rt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 24
  %97 = ptrtoint ptr %total_rt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %total_rt, align 4
  %total_rt52 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 41
  %99 = ptrtoint ptr %total_rt52 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %total_rt52, align 4
  %ka_timeout_delta = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 25
  %100 = ptrtoint ptr %ka_timeout_delta to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ka_timeout_delta, align 4
  %ka_timeout_delta53 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 42
  %102 = ptrtoint ptr %ka_timeout_delta53 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %ka_timeout_delta53, align 4
  %rt_timeout_delta = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 26
  %103 = ptrtoint ptr %rt_timeout_delta to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rt_timeout_delta, align 4
  %rt_timeout_delta54 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 43
  %105 = ptrtoint ptr %rt_timeout_delta54 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %rt_timeout_delta54, align 4
  %dup_ack_cnt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 27
  %106 = ptrtoint ptr %dup_ack_cnt to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %dup_ack_cnt, align 4
  %dup_ack_cnt55 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 44
  %108 = ptrtoint ptr %dup_ack_cnt55 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %dup_ack_cnt55, align 4
  %snd_wnd_probe_cnt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 28
  %109 = ptrtoint ptr %snd_wnd_probe_cnt to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %snd_wnd_probe_cnt, align 1
  %snd_wnd_probe_cnt56 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 45
  %111 = ptrtoint ptr %snd_wnd_probe_cnt56 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %snd_wnd_probe_cnt56, align 1
  %ka_probe_cnt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 29
  %112 = ptrtoint ptr %ka_probe_cnt to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ka_probe_cnt, align 2
  %ka_probe_cnt57 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 46
  %114 = ptrtoint ptr %ka_probe_cnt57 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %ka_probe_cnt57, align 2
  %rt_cnt = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 30
  %115 = ptrtoint ptr %rt_cnt to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rt_cnt, align 1
  %rt_cnt58 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 47
  %117 = ptrtoint ptr %rt_cnt58 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %rt_cnt58, align 1
  %flow_label = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 31
  %118 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flow_label, align 4
  %flow_label59 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 48
  %120 = ptrtoint ptr %flow_label59 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %flow_label59, align 4
  %ka_timeout = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 32
  %121 = ptrtoint ptr %ka_timeout to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ka_timeout, align 4
  %ka_timeout60 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 49
  %123 = ptrtoint ptr %ka_timeout60 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ka_timeout60, align 4
  %ka_interval = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 33
  %124 = ptrtoint ptr %ka_interval to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ka_interval, align 4
  %ka_interval61 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 50
  %126 = ptrtoint ptr %ka_interval61 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %ka_interval61, align 4
  %max_rt_time = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 34
  %127 = ptrtoint ptr %max_rt_time to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_rt_time, align 4
  %max_rt_time62 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 51
  %129 = ptrtoint ptr %max_rt_time62 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %max_rt_time62, align 4
  %initial_rcv_wnd = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 35
  %130 = ptrtoint ptr %initial_rcv_wnd to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %initial_rcv_wnd, align 4
  %initial_rcv_wnd63 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 52
  %132 = ptrtoint ptr %initial_rcv_wnd63 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %initial_rcv_wnd63, align 4
  %ttl = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 36
  %133 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ttl, align 4
  %ttl64 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 53
  %135 = ptrtoint ptr %ttl64 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %ttl64, align 4
  %tos_or_tc = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 37
  %136 = ptrtoint ptr %tos_or_tc to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %tos_or_tc, align 1
  %tos_or_tc65 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 54
  %138 = ptrtoint ptr %tos_or_tc65 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %tos_or_tc65, align 1
  %remote_port66 = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 38
  %139 = ptrtoint ptr %remote_port66 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %remote_port66, align 2
  store i16 %140, ptr %remote_port, align 2
  %local_port68 = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 39
  %141 = ptrtoint ptr %local_port68 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %local_port68, align 4
  store i16 %142, ptr %local_port, align 4
  %mss = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 40
  %143 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %mss, align 2
  %mss70 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 57
  %145 = ptrtoint ptr %mss70 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %mss70, align 2
  %snd_wnd_scale = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 41
  %146 = ptrtoint ptr %snd_wnd_scale to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %snd_wnd_scale, align 4
  %snd_wnd_scale71 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 58
  %148 = ptrtoint ptr %snd_wnd_scale71 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %snd_wnd_scale71, align 4
  %rcv_wnd_scale = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 42
  %149 = ptrtoint ptr %rcv_wnd_scale to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %rcv_wnd_scale, align 1
  %rcv_wnd_scale72 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 59
  %151 = ptrtoint ptr %rcv_wnd_scale72 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %rcv_wnd_scale72, align 1
  %da_timeout_value = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 43
  %152 = ptrtoint ptr %da_timeout_value to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %da_timeout_value, align 2
  %da_timeout_value73 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 60
  %154 = ptrtoint ptr %da_timeout_value73 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %da_timeout_value73, align 2
  %ack_frequency = getelementptr inbounds %struct.qed_iscsi_params_offload, ptr %conn_info, i32 0, i32 44
  %155 = ptrtoint ptr %ack_frequency to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ack_frequency, align 4
  %ack_frequency74 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 61
  %157 = ptrtoint ptr %ack_frequency74 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %ack_frequency74, align 4
  %offl_flags = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 6
  %158 = ptrtoint ptr %offl_flags to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %offl_flags, align 1
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %159 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %hw_info, align 8
  %.off = add i32 %160, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %161 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %161)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond91 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %162 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %163 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %163, align 4
  %icid.i205 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 3
  %165 = ptrtoint ptr %icid.i205 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %icid.i205, align 4
  %167 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %168 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %opaque_fid.i, align 4
  store i16 %169, ptr %163, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %170 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %171 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond91, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i206 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i206, label %if.end.i209, label %if.end12.qed_sp_iscsi_conn_offload.exit_crit_edge

if.end12.qed_sp_iscsi_conn_offload.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_conn_offload.exit

if.end.i209:                                      ; preds = %if.end12
  %172 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %p_ent.i, align 4
  %call3.i = call zeroext i16 @qed_get_cm_pq_idx(ptr noundef %cond91, i32 noundef 32) #8
  %physical_q0.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 70
  %174 = ptrtoint ptr %physical_q0.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %call3.i, ptr %physical_q0.i, align 4
  %175 = call i16 @llvm.bswap.i16(i16 %call3.i) #8
  %iscsi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %physical_q04.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2
  %176 = ptrtoint ptr %physical_q04.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %physical_q04.i, align 4
  %call5.i = call zeroext i16 @qed_get_cm_pq_idx(ptr noundef %cond91, i32 noundef 16) #8
  %physical_q1.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 71
  %177 = ptrtoint ptr %physical_q1.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %call5.i, ptr %physical_q1.i, align 2
  %178 = call i16 @llvm.bswap.i16(i16 %call5.i) #8
  %physical_q17.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 1
  %179 = ptrtoint ptr %physical_q17.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %physical_q17.i, align 2
  %conn_id.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 2
  %180 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %conn_id.i, align 2
  %182 = call i16 @llvm.bswap.i16(i16 %181) #8
  %conn_id8.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %183 = ptrtoint ptr %conn_id8.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %conn_id8.i, align 2
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %184 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %hi.i, align 4
  %185 = ptrtoint ptr %sq_pbl_addr30 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sq_pbl_addr30, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #8
  %188 = ptrtoint ptr %iscsi.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %iscsi.i, align 4
  %table_phys.i.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 10, i32 15, i32 1
  %189 = ptrtoint ptr %table_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %table_phys.i.i, align 4
  %r2tq_pbl_addr20.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 1
  %hi21.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %191 = ptrtoint ptr %hi21.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %hi21.i, align 4
  %192 = call i32 @llvm.bswap.i32(i32 %190) #8
  %193 = ptrtoint ptr %r2tq_pbl_addr20.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %r2tq_pbl_addr20.i, align 4
  %table_phys.i1.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 11, i32 15, i32 1
  %194 = ptrtoint ptr %table_phys.i1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %table_phys.i1.i, align 4
  %xhq_pbl_addr33.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %hi34.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %196 = ptrtoint ptr %hi34.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %hi34.i, align 4
  %197 = call i32 @llvm.bswap.i32(i32 %195) #8
  %198 = ptrtoint ptr %xhq_pbl_addr33.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %xhq_pbl_addr33.i, align 4
  %table_phys.i2.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 12, i32 15, i32 1
  %199 = ptrtoint ptr %table_phys.i2.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %table_phys.i2.i, align 4
  %uhq_pbl_addr46.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %hi47.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %201 = ptrtoint ptr %hi47.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %hi47.i, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %200) #8
  %203 = ptrtoint ptr %uhq_pbl_addr46.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %uhq_pbl_addr46.i, align 4
  %204 = ptrtoint ptr %initial_ack31 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %initial_ack31, align 4
  %206 = call i32 @llvm.bswap.i32(i32 %205) #8
  %initial_ack55.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4, i32 1
  %207 = ptrtoint ptr %initial_ack55.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %initial_ack55.i, align 4
  %208 = ptrtoint ptr %offl_flags to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %offl_flags, align 1
  %flags.i207 = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 3
  %210 = ptrtoint ptr %flags.i207 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %flags.i207, align 4
  %211 = ptrtoint ptr %default_cq36 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %default_cq36, align 2
  %default_cq58.i = getelementptr inbounds %struct.iscsi_conn_offload_params, ptr %iscsi.i, i32 0, i32 7
  %213 = ptrtoint ptr %default_cq58.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %default_cq58.i, align 1
  %stat_sn.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 69
  %214 = ptrtoint ptr %stat_sn.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %stat_sn.i, align 4
  %216 = call i32 @llvm.bswap.i32(i32 %215) #8
  %stat_sn60.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4
  %217 = ptrtoint ptr %stat_sn60.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %stat_sn60.i, align 4
  %218 = and i8 %209, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool65.not.i = icmp eq i8 %218, 0
  %tcp.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 5
  %219 = ptrtoint ptr %local_mac to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %220 = load i16, ptr %local_mac, align 1
  %221 = call i16 @llvm.bswap.i16(i16 %220) #8
  %local_mac_addr_hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 2
  %222 = ptrtoint ptr %local_mac_addr_hi.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %local_mac_addr_hi.i, align 4
  %add.ptr.i208 = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 19, i32 2
  %223 = ptrtoint ptr %add.ptr.i208 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 2)
  %224 = load i16, ptr %add.ptr.i208, align 1
  %225 = call i16 @llvm.bswap.i16(i16 %224) #8
  %local_mac_addr_mid.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6
  %226 = ptrtoint ptr %local_mac_addr_mid.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %local_mac_addr_mid.i, align 2
  %227 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %228 = load i16, ptr %add.ptr1.i, align 1
  %229 = call i16 @llvm.bswap.i16(i16 %228) #8
  %230 = ptrtoint ptr %tcp.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %tcp.i, align 4
  %231 = ptrtoint ptr %remote_mac to i32
  call void @__asan_loadN_noabort(i32 %231, i32 2)
  %232 = load i16, ptr %remote_mac, align 1
  %233 = call i16 @llvm.bswap.i16(i16 %232) #8
  %remote_mac_addr_hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 1
  %234 = ptrtoint ptr %remote_mac_addr_hi.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %233, ptr %remote_mac_addr_hi.i, align 2
  %add.ptr73.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 20, i32 2
  %235 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 2)
  %236 = load i16, ptr %add.ptr73.i, align 1
  %237 = call i16 @llvm.bswap.i16(i16 %236) #8
  %remote_mac_addr_mid.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %238 = ptrtoint ptr %remote_mac_addr_mid.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %remote_mac_addr_mid.i, align 4
  %239 = ptrtoint ptr %add.ptr1.i204 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %add.ptr1.i204, align 1
  %241 = call i16 @llvm.bswap.i16(i16 %240) #8
  %remote_mac_addr_lo.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 4
  %242 = ptrtoint ptr %remote_mac_addr_lo.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %remote_mac_addr_lo.i, align 2
  %243 = ptrtoint ptr %vlan_id32 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %vlan_id32, align 2
  %245 = call i16 @llvm.bswap.i16(i16 %244) #8
  %vlan_id77.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 3
  %246 = ptrtoint ptr %vlan_id77.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %vlan_id77.i, align 4
  %247 = ptrtoint ptr %tcp_flags34 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %tcp_flags34, align 4
  %249 = call i16 @llvm.bswap.i16(i16 %248) #8
  br i1 %tobool65.not.i, label %if.then66.i, label %if.else.i

if.then66.i:                                      ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  %flags78.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 7
  %250 = ptrtoint ptr %flags78.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %flags78.i, align 2
  %251 = ptrtoint ptr %ip_version35 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %ip_version35, align 2
  %ip_version79.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4
  %253 = ptrtoint ptr %ip_version79.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %ip_version79.i, align 4
  %remote_ip82.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4, i32 1
  %local_ip87.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 3
  %254 = ptrtoint ptr %remote_ip to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %remote_ip, align 4
  %256 = call i32 @llvm.bswap.i32(i32 %255) #8
  %257 = ptrtoint ptr %remote_ip82.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %remote_ip82.i, align 4
  %258 = ptrtoint ptr %local_ip to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %local_ip, align 4
  %260 = call i32 @llvm.bswap.i32(i32 %259) #8
  %261 = ptrtoint ptr %local_ip87.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %local_ip87.i, align 4
  %arrayidx.1.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24, i32 1
  %262 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx.1.i, align 4
  %264 = call i32 @llvm.bswap.i32(i32 %263) #8
  %arrayidx84.1.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 5
  %265 = ptrtoint ptr %arrayidx84.1.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %arrayidx84.1.i, align 4
  %arrayidx86.1.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25, i32 1
  %266 = ptrtoint ptr %arrayidx86.1.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx86.1.i, align 4
  %268 = call i32 @llvm.bswap.i32(i32 %267) #8
  %arrayidx89.1.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4
  %269 = ptrtoint ptr %arrayidx89.1.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %arrayidx89.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24, i32 2
  %270 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx.2.i, align 4
  %272 = call i32 @llvm.bswap.i32(i32 %271) #8
  %arrayidx84.2.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6, i32 2
  %273 = ptrtoint ptr %arrayidx84.2.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %arrayidx84.2.i, align 4
  %arrayidx86.2.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25, i32 2
  %274 = ptrtoint ptr %arrayidx86.2.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx86.2.i, align 4
  %276 = call i32 @llvm.bswap.i32(i32 %275) #8
  %arrayidx89.2.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4, i32 1
  %277 = ptrtoint ptr %arrayidx89.2.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %arrayidx89.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24, i32 3
  %278 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx.3.i, align 4
  %280 = call i32 @llvm.bswap.i32(i32 %279) #8
  %arrayidx84.3.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2
  %281 = ptrtoint ptr %arrayidx84.3.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %arrayidx84.3.i, align 4
  %arrayidx86.3.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25, i32 3
  %282 = ptrtoint ptr %arrayidx86.3.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx86.3.i, align 4
  %284 = call i32 @llvm.bswap.i32(i32 %283) #8
  %arrayidx89.3.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 5
  %285 = ptrtoint ptr %arrayidx89.3.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %arrayidx89.3.i, align 4
  %286 = ptrtoint ptr %ka_max_probe_cnt37 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %ka_max_probe_cnt37, align 4
  %ka_max_probe_cnt90.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4
  %288 = ptrtoint ptr %ka_max_probe_cnt90.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %ka_max_probe_cnt90.i, align 4
  %289 = ptrtoint ptr %dup_ack_theshold38 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %dup_ack_theshold38, align 1
  %dup_ack_theshold91.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 25
  %291 = ptrtoint ptr %dup_ack_theshold91.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %290, ptr %dup_ack_theshold91.i, align 1
  %292 = ptrtoint ptr %rcv_next39 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %rcv_next39, align 4
  %294 = call i32 @llvm.bswap.i32(i32 %293) #8
  %rcv_next92.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 6, i32 2
  %295 = ptrtoint ptr %rcv_next92.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %rcv_next92.i, align 4
  %296 = ptrtoint ptr %snd_una40 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %snd_una40, align 4
  %298 = call i32 @llvm.bswap.i32(i32 %297) #8
  %snd_una93.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5
  %299 = ptrtoint ptr %snd_una93.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %snd_una93.i, align 4
  %300 = ptrtoint ptr %snd_next41 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %snd_next41, align 4
  %302 = call i32 @llvm.bswap.i32(i32 %301) #8
  %snd_next94.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 3
  %303 = ptrtoint ptr %snd_next94.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %snd_next94.i, align 4
  %304 = ptrtoint ptr %snd_max42 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %snd_max42, align 4
  %306 = call i32 @llvm.bswap.i32(i32 %305) #8
  %snd_max95.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 4
  %307 = ptrtoint ptr %snd_max95.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %snd_max95.i, align 4
  %308 = ptrtoint ptr %snd_wnd43 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %snd_wnd43, align 4
  %310 = call i32 @llvm.bswap.i32(i32 %309) #8
  %snd_wnd96.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 4, i32 1
  %311 = ptrtoint ptr %snd_wnd96.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %snd_wnd96.i, align 4
  %312 = ptrtoint ptr %rcv_wnd44 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %rcv_wnd44, align 4
  %314 = call i32 @llvm.bswap.i32(i32 %313) #8
  %rcv_wnd97.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 5
  %315 = ptrtoint ptr %rcv_wnd97.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %rcv_wnd97.i, align 4
  %316 = ptrtoint ptr %snd_wl145 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %snd_wl145, align 4
  %318 = call i32 @llvm.bswap.i32(i32 %317) #8
  %snd_wl198.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 5
  %319 = ptrtoint ptr %snd_wl198.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %snd_wl198.i, align 4
  %320 = ptrtoint ptr %cwnd46 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %cwnd46, align 4
  %322 = call i32 @llvm.bswap.i32(i32 %321) #8
  %cwnd99.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 6, i32 2
  %323 = ptrtoint ptr %cwnd99.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %cwnd99.i, align 4
  %324 = ptrtoint ptr %ss_thresh47 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %ss_thresh47, align 4
  %326 = call i32 @llvm.bswap.i32(i32 %325) #8
  %ss_thresh100.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 4, i32 1
  %327 = ptrtoint ptr %ss_thresh100.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %ss_thresh100.i, align 4
  %328 = ptrtoint ptr %srtt48 to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %srtt48, align 4
  %330 = call i16 @llvm.bswap.i16(i16 %329) #8
  %srtt101.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 20
  %331 = ptrtoint ptr %srtt101.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %330, ptr %srtt101.i, align 2
  %332 = ptrtoint ptr %rtt_var49 to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %rtt_var49, align 2
  %334 = call i16 @llvm.bswap.i16(i16 %333) #8
  %rtt_var102.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 6, i32 2
  %335 = ptrtoint ptr %rtt_var102.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %334, ptr %rtt_var102.i, align 4
  %336 = ptrtoint ptr %ts_recent50 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %ts_recent50, align 4
  %338 = call i32 @llvm.bswap.i32(i32 %337) #8
  %ts_recent103.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 6, i32 2
  %339 = ptrtoint ptr %ts_recent103.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %ts_recent103.i, align 4
  %340 = ptrtoint ptr %ts_recent_age51 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %ts_recent_age51, align 4
  %342 = call i32 @llvm.bswap.i32(i32 %341) #8
  %ts_recent_age104.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6
  %343 = ptrtoint ptr %ts_recent_age104.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %ts_recent_age104.i, align 4
  %344 = ptrtoint ptr %total_rt52 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %total_rt52, align 4
  %346 = call i32 @llvm.bswap.i32(i32 %345) #8
  %total_rt105.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 3
  %347 = ptrtoint ptr %total_rt105.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %346, ptr %total_rt105.i, align 4
  %348 = ptrtoint ptr %ka_timeout_delta53 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %ka_timeout_delta53, align 4
  %350 = call i32 @llvm.bswap.i32(i32 %349) #8
  %ka_timeout_delta106.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 4
  %351 = ptrtoint ptr %ka_timeout_delta106.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %ka_timeout_delta106.i, align 4
  %352 = ptrtoint ptr %rt_timeout_delta54 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %rt_timeout_delta54, align 4
  %354 = call i32 @llvm.bswap.i32(i32 %353) #8
  %rt_timeout_delta107.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 4, i32 1
  %355 = ptrtoint ptr %rt_timeout_delta107.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %rt_timeout_delta107.i, align 4
  %356 = ptrtoint ptr %dup_ack_cnt55 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %dup_ack_cnt55, align 4
  %dup_ack_cnt108.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 5
  %358 = ptrtoint ptr %dup_ack_cnt108.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %dup_ack_cnt108.i, align 4
  %359 = ptrtoint ptr %snd_wnd_probe_cnt56 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %snd_wnd_probe_cnt56, align 1
  %snd_wnd_probe_cnt109.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 43
  %361 = ptrtoint ptr %snd_wnd_probe_cnt109.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %360, ptr %snd_wnd_probe_cnt109.i, align 1
  %362 = ptrtoint ptr %ka_probe_cnt57 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %ka_probe_cnt57, align 2
  %ka_probe_cnt110.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 6
  %364 = ptrtoint ptr %ka_probe_cnt110.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %363, ptr %ka_probe_cnt110.i, align 2
  %365 = ptrtoint ptr %rt_cnt58 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %rt_cnt58, align 1
  %rt_cnt111.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 6, i32 1
  %367 = ptrtoint ptr %rt_cnt111.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %366, ptr %rt_cnt111.i, align 1
  %368 = ptrtoint ptr %flow_label59 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %flow_label59, align 4
  %370 = call i32 @llvm.bswap.i32(i32 %369) #8
  %flow_label112.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 6, i32 2
  %371 = ptrtoint ptr %flow_label112.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %370, ptr %flow_label112.i, align 4
  %372 = ptrtoint ptr %ka_timeout60 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %ka_timeout60, align 4
  %374 = call i32 @llvm.bswap.i32(i32 %373) #8
  %ka_timeout113.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 3
  %375 = ptrtoint ptr %ka_timeout113.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %374, ptr %ka_timeout113.i, align 4
  %376 = ptrtoint ptr %ka_interval61 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %ka_interval61, align 4
  %378 = call i32 @llvm.bswap.i32(i32 %377) #8
  %ka_interval114.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 4
  %379 = ptrtoint ptr %ka_interval114.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %ka_interval114.i, align 4
  %380 = ptrtoint ptr %max_rt_time62 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %max_rt_time62, align 4
  %382 = call i32 @llvm.bswap.i32(i32 %381) #8
  %max_rt_time115.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 4, i32 1
  %383 = ptrtoint ptr %max_rt_time115.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %max_rt_time115.i, align 4
  %384 = ptrtoint ptr %initial_rcv_wnd63 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %initial_rcv_wnd63, align 4
  %386 = call i32 @llvm.bswap.i32(i32 %385) #8
  %initial_rcv_wnd116.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 5
  %387 = ptrtoint ptr %initial_rcv_wnd116.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %386, ptr %initial_rcv_wnd116.i, align 4
  %388 = ptrtoint ptr %ttl64 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %ttl64, align 4
  %ttl117.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3
  %390 = ptrtoint ptr %ttl117.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %389, ptr %ttl117.i, align 4
  %391 = ptrtoint ptr %tos_or_tc65 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %tos_or_tc65, align 1
  %tos_or_tc118.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 14
  %393 = ptrtoint ptr %tos_or_tc118.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %392, ptr %tos_or_tc118.i, align 1
  %394 = ptrtoint ptr %remote_port to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %remote_port, align 2
  %396 = call i16 @llvm.bswap.i16(i16 %395) #8
  %remote_port119.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 1
  %397 = ptrtoint ptr %remote_port119.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %396, ptr %remote_port119.i, align 2
  %398 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %local_port, align 4
  %400 = call i16 @llvm.bswap.i16(i16 %399) #8
  %local_port120.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 3
  %401 = ptrtoint ptr %local_port120.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %400, ptr %local_port120.i, align 4
  %402 = ptrtoint ptr %mss70 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %mss70, align 2
  %404 = call i16 @llvm.bswap.i16(i16 %403) #8
  %mss121.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 17
  %405 = ptrtoint ptr %mss121.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %404, ptr %mss121.i, align 2
  %406 = ptrtoint ptr %snd_wnd_scale71 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %snd_wnd_scale71, align 4
  %snd_wnd_scale122.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7
  %408 = ptrtoint ptr %snd_wnd_scale122.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %407, ptr %snd_wnd_scale122.i, align 4
  %409 = ptrtoint ptr %rcv_wnd_scale72 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %rcv_wnd_scale72, align 1
  %rcv_wnd_scale123.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 4
  %411 = ptrtoint ptr %rcv_wnd_scale123.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %410, ptr %rcv_wnd_scale123.i, align 4
  %412 = ptrtoint ptr %da_timeout_value73 to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %da_timeout_value73, align 2
  %414 = call i16 @llvm.bswap.i16(i16 %413) #8
  %da_timeout_value124.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 1
  %415 = ptrtoint ptr %da_timeout_value124.i to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %414, ptr %da_timeout_value124.i, align 2
  %416 = ptrtoint ptr %ack_frequency74 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %ack_frequency74, align 4
  %ack_frequency125.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 49
  %418 = ptrtoint ptr %ack_frequency125.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %417, ptr %ack_frequency125.i, align 1
  %connect_mode.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 7
  %419 = ptrtoint ptr %connect_mode.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %connect_mode.i, align 2
  %connect_mode126.i = getelementptr inbounds %struct.tcp_offload_params, ptr %tcp.i, i32 0, i32 19
  %421 = ptrtoint ptr %connect_mode126.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 %420, ptr %connect_mode126.i, align 1
  br label %if.end205.i

if.else.i:                                        ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  %flags151.i = getelementptr inbounds %struct.tcp_offload_params_opt2, ptr %tcp.i, i32 0, i32 7
  %422 = ptrtoint ptr %flags151.i to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 %249, ptr %flags151.i, align 2
  %423 = ptrtoint ptr %ip_version35 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %ip_version35, align 2
  %ip_version153.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4
  %425 = ptrtoint ptr %ip_version153.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %ip_version153.i, align 4
  %remote_ip162.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4, i32 1
  %local_ip168.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 3
  %426 = ptrtoint ptr %remote_ip to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %remote_ip, align 4
  %428 = call i32 @llvm.bswap.i32(i32 %427) #8
  %429 = ptrtoint ptr %remote_ip162.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %428, ptr %remote_ip162.i, align 4
  %430 = ptrtoint ptr %local_ip to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %local_ip, align 4
  %432 = call i32 @llvm.bswap.i32(i32 %431) #8
  %433 = ptrtoint ptr %local_ip168.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %432, ptr %local_ip168.i, align 4
  %arrayidx161.1.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24, i32 1
  %434 = ptrtoint ptr %arrayidx161.1.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx161.1.i, align 4
  %436 = call i32 @llvm.bswap.i32(i32 %435) #8
  %arrayidx164.1.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 5
  %437 = ptrtoint ptr %arrayidx164.1.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %436, ptr %arrayidx164.1.i, align 4
  %arrayidx167.1.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25, i32 1
  %438 = ptrtoint ptr %arrayidx167.1.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx167.1.i, align 4
  %440 = call i32 @llvm.bswap.i32(i32 %439) #8
  %arrayidx170.1.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4
  %441 = ptrtoint ptr %arrayidx170.1.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %440, ptr %arrayidx170.1.i, align 4
  %arrayidx161.2.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24, i32 2
  %442 = ptrtoint ptr %arrayidx161.2.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx161.2.i, align 4
  %444 = call i32 @llvm.bswap.i32(i32 %443) #8
  %arrayidx164.2.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6, i32 2
  %445 = ptrtoint ptr %arrayidx164.2.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %444, ptr %arrayidx164.2.i, align 4
  %arrayidx167.2.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25, i32 2
  %446 = ptrtoint ptr %arrayidx167.2.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx167.2.i, align 4
  %448 = call i32 @llvm.bswap.i32(i32 %447) #8
  %arrayidx170.2.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4, i32 1
  %449 = ptrtoint ptr %arrayidx170.2.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %arrayidx170.2.i, align 4
  %arrayidx161.3.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 24, i32 3
  %450 = ptrtoint ptr %arrayidx161.3.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx161.3.i, align 4
  %452 = call i32 @llvm.bswap.i32(i32 %451) #8
  %arrayidx164.3.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2
  %453 = ptrtoint ptr %arrayidx164.3.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %452, ptr %arrayidx164.3.i, align 4
  %arrayidx167.3.i = getelementptr %struct.qed_iscsi_conn, ptr %10, i32 0, i32 25, i32 3
  %454 = ptrtoint ptr %arrayidx167.3.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx167.3.i, align 4
  %456 = call i32 @llvm.bswap.i32(i32 %455) #8
  %arrayidx170.3.i = getelementptr %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 5
  %457 = ptrtoint ptr %arrayidx170.3.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %456, ptr %arrayidx170.3.i, align 4
  %458 = ptrtoint ptr %flow_label59 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %flow_label59, align 4
  %460 = call i32 @llvm.bswap.i32(i32 %459) #8
  %flow_label175.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 6, i32 2
  %461 = ptrtoint ptr %flow_label175.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %flow_label175.i, align 4
  %462 = ptrtoint ptr %ttl64 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %ttl64, align 4
  %ttl177.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3
  %464 = ptrtoint ptr %ttl177.i to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %463, ptr %ttl177.i, align 4
  %465 = ptrtoint ptr %tos_or_tc65 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %tos_or_tc65, align 1
  %tos_or_tc179.i = getelementptr inbounds %struct.tcp_offload_params_opt2, ptr %tcp.i, i32 0, i32 14
  %467 = ptrtoint ptr %tos_or_tc179.i to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %466, ptr %tos_or_tc179.i, align 1
  %468 = ptrtoint ptr %remote_port to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %remote_port, align 2
  %470 = call i16 @llvm.bswap.i16(i16 %469) #8
  %remote_port181.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 1
  %471 = ptrtoint ptr %remote_port181.i to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 %470, ptr %remote_port181.i, align 2
  %472 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %local_port, align 4
  %474 = call i16 @llvm.bswap.i16(i16 %473) #8
  %local_port183.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 3
  %475 = ptrtoint ptr %local_port183.i to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 %474, ptr %local_port183.i, align 4
  %476 = ptrtoint ptr %mss70 to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %mss70, align 2
  %478 = call i16 @llvm.bswap.i16(i16 %477) #8
  %mss185.i = getelementptr inbounds %struct.tcp_offload_params_opt2, ptr %tcp.i, i32 0, i32 17
  %479 = ptrtoint ptr %mss185.i to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 %478, ptr %mss185.i, align 2
  %480 = ptrtoint ptr %rcv_wnd_scale72 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %rcv_wnd_scale72, align 1
  %rcv_wnd_scale187.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 4
  %482 = ptrtoint ptr %rcv_wnd_scale187.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %481, ptr %rcv_wnd_scale187.i, align 4
  %connect_mode188.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 7
  %483 = ptrtoint ptr %connect_mode188.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %connect_mode188.i, align 2
  %connect_mode189.i = getelementptr inbounds %struct.tcp_offload_params_opt2, ptr %tcp.i, i32 0, i32 19
  %485 = ptrtoint ptr %connect_mode189.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %484, ptr %connect_mode189.i, align 1
  %syn_ip_payload_length.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 18
  %486 = ptrtoint ptr %syn_ip_payload_length.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %syn_ip_payload_length.i, align 4
  %488 = call i16 @llvm.bswap.i16(i16 %487) #8
  %syn_ip_payload_length190.i = getelementptr inbounds %struct.tcp_offload_params_opt2, ptr %tcp.i, i32 0, i32 20
  %489 = ptrtoint ptr %syn_ip_payload_length190.i to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 %488, ptr %syn_ip_payload_length190.i, align 2
  %syn_phy_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 17
  %490 = ptrtoint ptr %syn_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %syn_phy_addr.i, align 4
  %492 = call i32 @llvm.bswap.i32(i32 %491) #8
  %syn_phy_addr_lo.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 4, i32 1
  %493 = ptrtoint ptr %syn_phy_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %492, ptr %syn_phy_addr_lo.i, align 4
  %syn_phy_addr_hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 5
  %494 = ptrtoint ptr %syn_phy_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 0, ptr %syn_phy_addr_hi.i, align 4
  %495 = ptrtoint ptr %cwnd46 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %cwnd46, align 4
  %497 = call i32 @llvm.bswap.i32(i32 %496) #8
  %cwnd196.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 6, i32 2
  %498 = ptrtoint ptr %cwnd196.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %497, ptr %cwnd196.i, align 4
  %499 = ptrtoint ptr %ka_probe_cnt57 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %ka_probe_cnt57, align 2
  %ka_max_probe_cnt198.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4
  %501 = ptrtoint ptr %ka_max_probe_cnt198.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 %500, ptr %ka_max_probe_cnt198.i, align 4
  %502 = ptrtoint ptr %ka_timeout60 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %ka_timeout60, align 4
  %504 = call i32 @llvm.bswap.i32(i32 %503) #8
  %ka_timeout200.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 3
  %505 = ptrtoint ptr %ka_timeout200.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %504, ptr %ka_timeout200.i, align 4
  %506 = ptrtoint ptr %max_rt_time62 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %max_rt_time62, align 4
  %508 = call i32 @llvm.bswap.i32(i32 %507) #8
  %max_rt_time202.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 4, i32 1
  %509 = ptrtoint ptr %max_rt_time202.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %508, ptr %max_rt_time202.i, align 4
  %510 = ptrtoint ptr %ka_interval61 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %ka_interval61, align 4
  %512 = call i32 @llvm.bswap.i32(i32 %511) #8
  %ka_interval204.i = getelementptr inbounds %struct.qed_spq_entry, ptr %173, i32 0, i32 3, i32 0, i32 0, i32 2, i32 4, i32 4
  %513 = ptrtoint ptr %ka_interval204.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %512, ptr %ka_interval204.i, align 4
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.else.i, %if.then66.i
  %514 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %p_ent.i, align 4
  %call206.i = call i32 @qed_spq_post(ptr noundef %cond91, ptr noundef %515, ptr noundef null) #8
  br label %qed_sp_iscsi_conn_offload.exit

qed_sp_iscsi_conn_offload.exit:                   ; preds = %if.end205.i, %if.end12.qed_sp_iscsi_conn_offload.exit_crit_edge
  %retval.0.i211 = phi i32 [ %call206.i, %if.end205.i ], [ %call.i, %if.end12.qed_sp_iscsi_conn_offload.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_iscsi_conn_offload.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i211, %qed_sp_iscsi_conn_offload.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_update_conn(ptr noundef %cdev, i32 noundef %handle, ptr nocapture noundef readonly %conn_info) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, i32 noundef 1289, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con.i.le, align 4
  %11 = ptrtoint ptr %conn_info to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %conn_info, align 4
  %update_flag14 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 62
  %13 = ptrtoint ptr %update_flag14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %update_flag14, align 1
  %max_seq_size = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %conn_info, i32 0, i32 1
  %14 = ptrtoint ptr %max_seq_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_seq_size, align 4
  %max_seq_size15 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 64
  %16 = ptrtoint ptr %max_seq_size15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_seq_size15, align 4
  %max_recv_pdu_length = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %conn_info, i32 0, i32 2
  %17 = ptrtoint ptr %max_recv_pdu_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_recv_pdu_length, align 4
  %max_recv_pdu_length16 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 65
  %19 = ptrtoint ptr %max_recv_pdu_length16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_recv_pdu_length16, align 4
  %max_send_pdu_length = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %conn_info, i32 0, i32 3
  %20 = ptrtoint ptr %max_send_pdu_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_send_pdu_length, align 4
  %max_send_pdu_length17 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 66
  %22 = ptrtoint ptr %max_send_pdu_length17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_send_pdu_length17, align 4
  %first_seq_length = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %conn_info, i32 0, i32 4
  %23 = ptrtoint ptr %first_seq_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_seq_length, align 4
  %first_seq_length18 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 67
  %25 = ptrtoint ptr %first_seq_length18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %first_seq_length18, align 4
  %exp_stat_sn = getelementptr inbounds %struct.qed_iscsi_params_update, ptr %conn_info, i32 0, i32 5
  %26 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %exp_stat_sn, align 4
  %exp_stat_sn19 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 68
  %28 = ptrtoint ptr %exp_stat_sn19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %exp_stat_sn19, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %29 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_info, align 8
  %.off = add i32 %30, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %31 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %31)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond36 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %32 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %33 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %33, align 4
  %icid.i61 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 3
  %35 = ptrtoint ptr %icid.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %icid.i61, align 4
  %37 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %38 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %opaque_fid.i, align 4
  store i16 %39, ptr %33, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %40 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %41 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond36, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i62 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i62, label %if.end.i64, label %if.end12.qed_sp_iscsi_conn_update.exit_crit_edge

if.end12.qed_sp_iscsi_conn_update.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_conn_update.exit

if.end.i64:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_ent.i, align 4
  %conn_id.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 2
  %44 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %conn_id.i, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45) #8
  %conn_id3.i = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %conn_id3.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %conn_id3.i, align 2
  %48 = ptrtoint ptr %update_flag14 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %update_flag14, align 1
  %flags.i63 = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %50 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %flags.i63, align 4
  %51 = ptrtoint ptr %max_seq_size15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_seq_size15, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #8
  %max_seq_size4.i = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %54 = ptrtoint ptr %max_seq_size4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %max_seq_size4.i, align 4
  %55 = ptrtoint ptr %max_recv_pdu_length16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_recv_pdu_length16, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  %max_recv_pdu_length5.i = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %max_recv_pdu_length5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max_recv_pdu_length5.i, align 4
  %59 = ptrtoint ptr %max_send_pdu_length17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_send_pdu_length17, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  %max_send_pdu_length6.i = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %max_send_pdu_length6.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_send_pdu_length6.i, align 4
  %63 = ptrtoint ptr %first_seq_length18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %first_seq_length18, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  %first_seq_length7.i = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %first_seq_length7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %first_seq_length7.i, align 4
  %67 = ptrtoint ptr %exp_stat_sn19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %exp_stat_sn19, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #8
  %exp_stat_sn8.i = getelementptr inbounds %struct.qed_spq_entry, ptr %43, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %70 = ptrtoint ptr %exp_stat_sn8.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %exp_stat_sn8.i, align 4
  %call9.i = call i32 @qed_spq_post(ptr noundef %cond36, ptr noundef %43, ptr noundef null) #8
  br label %qed_sp_iscsi_conn_update.exit

qed_sp_iscsi_conn_update.exit:                    ; preds = %if.end.i64, %if.end12.qed_sp_iscsi_conn_update.exit_crit_edge
  %retval.0.i65 = phi i32 [ %call9.i, %if.end.i64 ], [ %call.i, %if.end12.qed_sp_iscsi_conn_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_iscsi_conn_update.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i65, %qed_sp_iscsi_conn_update.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_destroy_conn(ptr noundef %cdev, i32 noundef %handle, i8 noundef zeroext %abrt_conn) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33, i32 noundef 1329, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con.i.le, align 4
  %abortive_dsconnect = getelementptr inbounds %struct.qed_iscsi_conn, ptr %10, i32 0, i32 72
  %11 = ptrtoint ptr %abortive_dsconnect to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %abrt_conn, ptr %abortive_dsconnect, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %12 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_info, align 8
  %.off = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %14 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %15 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %con.i.le, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %17 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %18 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %icid.i44 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %16, i32 0, i32 3
  %20 = ptrtoint ptr %icid.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %icid.i44, align 4
  %22 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %23 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %opaque_fid.i, align 4
  store i16 %24, ptr %18, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %25 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %26 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond29, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i45 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %if.end12.qed_sp_iscsi_conn_terminate.exit_crit_edge

if.end12.qed_sp_iscsi_conn_terminate.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_conn_terminate.exit

if.end.i46:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_ent.i, align 4
  %conn_id.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %16, i32 0, i32 2
  %29 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %conn_id.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #8
  %conn_id3.i = getelementptr inbounds %struct.qed_spq_entry, ptr %28, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %conn_id3.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %conn_id3.i, align 2
  %abortive_dsconnect.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %16, i32 0, i32 72
  %33 = ptrtoint ptr %abortive_dsconnect.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %abortive_dsconnect.i, align 4
  %abortive.i = getelementptr inbounds %struct.qed_spq_entry, ptr %28, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %35 = ptrtoint ptr %abortive.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %abortive.i, align 4
  %tcp_upload_params_phys_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %16, i32 0, i32 14
  %query_params_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %28, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %28, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %36 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hi.i, align 4
  %37 = ptrtoint ptr %tcp_upload_params_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tcp_upload_params_phys_addr.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = ptrtoint ptr %query_params_addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %query_params_addr.i, align 4
  %queue_cnts_phys_addr.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %16, i32 0, i32 16
  %queue_cnts_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %28, i32 0, i32 3, i32 0, i32 0, i32 1
  %hi10.i = getelementptr inbounds %struct.qed_spq_entry, ptr %28, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %hi10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %hi10.i, align 4
  %42 = ptrtoint ptr %queue_cnts_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %queue_cnts_phys_addr.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #8
  %45 = ptrtoint ptr %queue_cnts_addr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %queue_cnts_addr.i, align 4
  %call17.i = call i32 @qed_spq_post(ptr noundef %cond29, ptr noundef %28, ptr noundef null) #8
  br label %qed_sp_iscsi_conn_terminate.exit

qed_sp_iscsi_conn_terminate.exit:                 ; preds = %if.end.i46, %if.end12.qed_sp_iscsi_conn_terminate.exit_crit_edge
  %retval.0.i47 = phi i32 [ %call17.i, %if.end.i46 ], [ %call.i, %if.end12.qed_sp_iscsi_conn_terminate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_iscsi_conn_terminate.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i47, %qed_sp_iscsi_conn_terminate.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_clear_conn_sq(ptr noundef %cdev, i32 noundef %handle) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, i32 noundef 1313, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %9 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_info, align 8
  %.off = add i32 %10, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %11 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %12 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con.i.le, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %14 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %15 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %icid.i42 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %icid.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icid.i42, align 4
  %19 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %20 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %opaque_fid.i, align 4
  store i16 %21, ptr %15, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %22 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %23 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond29, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i43 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i43, label %if.end.i44, label %if.end12.qed_sp_iscsi_conn_clear_sq.exit_crit_edge

if.end12.qed_sp_iscsi_conn_clear_sq.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_conn_clear_sq.exit

if.end.i44:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_ent.i, align 4
  %call3.i = call i32 @qed_spq_post(ptr noundef %cond29, ptr noundef %25, ptr noundef null) #8
  br label %qed_sp_iscsi_conn_clear_sq.exit

qed_sp_iscsi_conn_clear_sq.exit:                  ; preds = %if.end.i44, %if.end12.qed_sp_iscsi_conn_clear_sq.exit_crit_edge
  %retval.0.i45 = phi i32 [ %call3.i, %if.end.i44 ], [ %call.i, %if.end12.qed_sp_iscsi_conn_clear_sq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_iscsi_conn_clear_sq.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i45, %qed_sp_iscsi_conn_clear_sq.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_change_mac(ptr noundef %cdev, i32 noundef %handle, ptr nocapture noundef readnone %mac) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !102

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.35, i32 noundef 1352, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_iscsi_con, ptr %hash_con.0.i, i32 0, i32 1
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %9 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_info, align 8
  %.off = add i32 %10, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %11 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %12 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con.i.le, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %14 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %15 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %icid.i42 = getelementptr inbounds %struct.qed_iscsi_conn, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %icid.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icid.i42, align 4
  %19 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %20 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %opaque_fid.i, align 4
  store i16 %21, ptr %15, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %22 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %23 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond29, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i43 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i43, label %if.end.i45, label %if.end12.qed_sp_iscsi_mac_update.exit_crit_edge

if.end12.qed_sp_iscsi_mac_update.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_iscsi_mac_update.exit

if.end.i45:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_ent.i, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3
  %conn_id.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %13, i32 0, i32 2
  %26 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %conn_id.i, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27) #8
  %conn_id3.i = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %conn_id3.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %conn_id3.i, align 2
  %remote_mac.i = getelementptr inbounds %struct.qed_iscsi_conn, ptr %13, i32 0, i32 20
  %arrayidx.i44 = getelementptr %struct.qed_iscsi_conn, ptr %13, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i44, align 1
  %remote_mac_addr_hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %remote_mac_addr_hi.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %remote_mac_addr_hi.i, align 4
  %33 = ptrtoint ptr %remote_mac.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %remote_mac.i, align 4
  %arrayidx8.i = getelementptr %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 9
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.qed_iscsi_conn, ptr %13, i32 0, i32 20, i32 3
  %36 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx10.i, align 1
  %remote_mac_addr_mid.i = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, ptr %ramrod.i, i32 0, i32 4
  %38 = ptrtoint ptr %remote_mac_addr_mid.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %remote_mac_addr_mid.i, align 2
  %arrayidx13.i = getelementptr %struct.qed_iscsi_conn, ptr %13, i32 0, i32 20, i32 2
  %39 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx13.i, align 2
  %arrayidx15.i = getelementptr i8, ptr %remote_mac_addr_mid.i, i32 1
  %41 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.qed_iscsi_conn, ptr %13, i32 0, i32 20, i32 5
  %42 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx17.i, align 1
  %remote_mac_addr_lo.i = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %44 = ptrtoint ptr %remote_mac_addr_lo.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %remote_mac_addr_lo.i, align 4
  %arrayidx20.i = getelementptr %struct.qed_iscsi_conn, ptr %13, i32 0, i32 20, i32 4
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx20.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %remote_mac_addr_lo.i, i32 1
  %47 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx22.i, align 1
  %48 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p_ent.i, align 4
  %call23.i = call i32 @qed_spq_post(ptr noundef %cond29, ptr noundef %49, ptr noundef null) #8
  br label %qed_sp_iscsi_mac_update.exit

qed_sp_iscsi_mac_update.exit:                     ; preds = %if.end.i45, %if.end12.qed_sp_iscsi_mac_update.exit_crit_edge
  %retval.0.i46 = phi i32 [ %call23.i, %if.end.i45 ], [ %call.i, %if.end12.qed_sp_iscsi_mac_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_iscsi_mac_update.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i46, %qed_sp_iscsi_mac_update.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_fill_dev_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_tid_mem_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_get_cid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_init_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_sp_destroy_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_igu_sb_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_register_async_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_iscsi_async_event(ptr noundef %p_hwfn, i8 noundef zeroext %fw_event_code, i16 noundef zeroext %echo, ptr noundef %data, i8 noundef zeroext %fw_return_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p_iscsi_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 33
  %0 = ptrtoint ptr %p_iscsi_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_iscsi_info, align 4
  %event_cb = getelementptr inbounds %struct.qed_iscsi_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %event_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_cb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %event_context = getelementptr inbounds %struct.qed_iscsi_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %event_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_context, align 4
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %fw_event_code, ptr noundef %data) #8
  br label %return

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ult i8 %7, 3
  br i1 %cmp, label %do.end, label %do.body.return_crit_edge, !prof !102

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 131, ptr noundef nonnull %spec.select) #12
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %do.body.return_crit_edge ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_post(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_spq_unregister_async_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_acquire_cid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_cxt_release_cid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_chain_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_cm_pq_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @qed_iscsi_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 860, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1368, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qed_get_protocol_stats_iscsi._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @qed_get_protocol_stats_iscsi._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_qed_get_iscsi_ops, !11, !"__ksymtab_qed_get_iscsi_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1401, i32 1}
!12 = !{ptr @__ksymtab_qed_put_iscsi_ops, !13, !"__ksymtab_qed_put_iscsi_ops", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1406, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1010, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qed_iscsi_get_stats._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_iscsi_get_stats._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @qed_iscsi_ops_pass, !20, !"qed_iscsi_ops_pass", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1380, i32 35}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 635, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qed_iscsi_get_primary_bdq_prod._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qed_iscsi_get_primary_bdq_prod._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 649, i32 3}
!28 = !{ptr @qed_iscsi_get_secondary_bdq_prod._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qed_iscsi_get_secondary_bdq_prod._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1110, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qed_iscsi_start._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @qed_iscsi_start._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1117, i32 3}
!37 = !{ptr @qed_iscsi_start._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qed_iscsi_start._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1136, i32 3}
!41 = !{ptr @qed_iscsi_start._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qed_iscsi_start._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 173, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qed_sp_iscsi_func_start._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qed_sp_iscsi_func_start._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 131, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qed_iscsi_async_event._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @qed_iscsi_async_event._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1083, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qed_iscsi_stop._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qed_iscsi_stop._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1088, i32 3}
!60 = !{ptr @qed_iscsi_stop._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qed_iscsi_stop._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1169, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qed_iscsi_acquire_conn._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @qed_iscsi_acquire_conn._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1192, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @qed_iscsi_release_conn._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @qed_iscsi_release_conn._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1213, i32 3}
!74 = !{ptr @qed_iscsi_offload_conn._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qed_iscsi_offload_conn._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1288, i32 3}
!78 = !{ptr @qed_iscsi_update_conn._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qed_iscsi_update_conn._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1328, i32 3}
!82 = !{ptr @qed_iscsi_destroy_conn._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @qed_iscsi_destroy_conn._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1312, i32 3}
!86 = !{ptr @qed_iscsi_clear_conn_sq._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @qed_iscsi_clear_conn_sq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qed/qed_iscsi.c", i32 1351, i32 3}
!90 = !{ptr @qed_iscsi_change_mac._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @qed_iscsi_change_mac._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!"auto-init"}
