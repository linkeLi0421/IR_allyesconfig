; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_cxt.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_cxt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.qed_cxt_mngr = type { [8 x %struct.qed_conn_type_cfg], [8 x %struct.qed_ilt_client_cfg], [2 x i32], i32, i32, [8 x %struct.qed_cid_acquired_map], [8 x [192 x %struct.qed_cid_acquired_map]], ptr, i32, i32, %struct.mutex, %struct.qed_src_t2, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.qed_conn_type_cfg = type { i32, i32, [5 x %struct.qed_tid_seg] }
%struct.qed_tid_seg = type { i32, i8, i8 }
%struct.qed_ilt_client_cfg = type { i8, %struct.ilt_cfg_pair, %struct.ilt_cfg_pair, %struct.ilt_cfg_pair, [9 x %struct.qed_ilt_cli_blk], i32, [3 x %struct.qed_ilt_cli_blk], i32 }
%struct.ilt_cfg_pair = type { i32, i32 }
%struct.qed_ilt_cli_blk = type { i32, i32, i32, i32, i32 }
%struct.qed_cid_acquired_map = type { i32, i32, ptr }
%struct.qed_src_t2 = type { ptr, i32, i64, i64 }
%struct.qed_tm_iids = type { i32, [4 x i32], i32, i32, i32 }
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
%struct.qed_hw_sriov_info = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i32 }
%struct.phys_mem_desc = type { i32, ptr, i32 }
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
%struct.src_ent = type { [56 x i8], i64 }
%struct.qed_qm_pf_rt_init_params = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, ptr, ptr, ptr }
%struct.qed_cxt_info = type { ptr, i32, i32 }
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
%struct.qed_tid_mem = type { i32, i32, i32, [512 x ptr] }
%struct.rdma_task_context = type { %struct.ystorm_rdma_task_st_ctx, %struct.ystorm_rdma_task_ag_ctx, %struct.tdif_task_context, %struct.mstorm_rdma_task_ag_ctx, %struct.mstorm_rdma_task_st_ctx, %struct.rdif_task_context, %struct.ustorm_rdma_task_st_ctx, [2 x %struct.regpair], %struct.ustorm_rdma_task_ag_ctx }
%struct.ystorm_rdma_task_st_ctx = type { [4 x %struct.regpair] }
%struct.regpair = type { i32, i32 }
%struct.ystorm_rdma_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.mstorm_rdma_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.mstorm_rdma_task_st_ctx = type { [4 x %struct.regpair] }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
%struct.ustorm_rdma_task_st_ctx = type { [6 x %struct.regpair] }
%struct.ustorm_rdma_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32 }

@qed_cxt_cfg_ilt_compute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015[%s:%d(%s)]hwfn [%d] - Set context manager starting line to be 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_cxt_cfg_ilt_compute\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_cxt.c\00", [54 x i8] zeroinitializer }, align 32
@qed_cxt_cfg_ilt_compute._entry_ptr = internal global ptr @qed_cxt_cfg_ilt_compute._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_cxt_cfg_ilt_compute._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\015[%s:%d(%s)]QM ILT Info, (cids=%d, vf_cids=%d, tids=%d, num_pqs=%d, num_vf_pqs=%d, memory_size=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_cxt_cfg_ilt_compute._entry_ptr.6 = internal global ptr @qed_cxt_cfg_ilt_compute._entry.4, section ".printk_index", align 4
@qed_cxt_cfg_ilt_compute_excess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]failed computing excess ILT lines\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_cxt_cfg_ilt_compute_excess\00", [33 x i8] zeroinitializer }, align 32
@qed_cxt_cfg_ilt_compute_excess._entry_ptr = internal global ptr @qed_cxt_cfg_ilt_compute_excess._entry, section ".printk_index", align 4
@qed_cxt_mngr_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&p_mngr->mutex\00", [17 x i8] zeroinitializer }, align 32
@_qed_cxt_acquire_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Invalid protocol type %d\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_qed_cxt_acquire_cid\00", [43 x i8] zeroinitializer }, align 32
@_qed_cxt_acquire_cid._entry_ptr = internal global ptr @_qed_cxt_acquire_cid._entry, section ".printk_index", align 4
@_qed_cxt_acquire_cid._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]VF [%02x] is out of range\0A\00", [56 x i8] zeroinitializer }, align 32
@_qed_cxt_acquire_cid._entry_ptr.14 = internal global ptr @_qed_cxt_acquire_cid._entry.12, section ".printk_index", align 4
@_qed_cxt_acquire_cid._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_qed_cxt_acquire_cid._entry_ptr.16 = internal global ptr @_qed_cxt_acquire_cid._entry.15, section ".printk_index", align 4
@_qed_cxt_acquire_cid._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]no CID available for protocol %d\0A\00", [49 x i8] zeroinitializer }, align 32
@_qed_cxt_acquire_cid._entry_ptr.19 = internal global ptr @_qed_cxt_acquire_cid._entry.17, section ".printk_index", align 4
@_qed_cxt_acquire_cid._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.2, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Acquired cid 0x%08x [rel. %08x] vfid %02x type %d\0A\00", [32 x i8] zeroinitializer }, align 32
@_qed_cxt_acquire_cid._entry_ptr.22 = internal global ptr @_qed_cxt_acquire_cid._entry.20, section ".printk_index", align 4
@_qed_cxt_release_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]Trying to return incorrect CID belonging to VF %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_qed_cxt_release_cid\00", [43 x i8] zeroinitializer }, align 32
@_qed_cxt_release_cid._entry_ptr = internal global ptr @_qed_cxt_release_cid._entry, section ".printk_index", align 4
@_qed_cxt_release_cid._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Released CID 0x%08x [rel. %08x] vfid %02x type %d\0A\00", [32 x i8] zeroinitializer }, align 32
@_qed_cxt_release_cid._entry_ptr.27 = internal global ptr @_qed_cxt_release_cid._entry.25, section ".printk_index", align 4
@qed_cxt_get_cid_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015[%s:%d(%s)]Accessing ILT shadow[%d]: CXT pointer is at %p (for iid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_cxt_get_cid_info\00", [43 x i8] zeroinitializer }, align 32
@qed_cxt_get_cid_info._entry_ptr = internal global ptr @qed_cxt_get_cid_info._entry, section ".printk_index", align 4
@qed_cxt_set_pf_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 2066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]Fcoe personality used without setting params!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_cxt_set_pf_params\00", [42 x i8] zeroinitializer }, align 32
@qed_cxt_set_pf_params._entry_ptr = internal global ptr @qed_cxt_set_pf_params._entry, section ".printk_index", align 4
@qed_cxt_set_pf_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 2089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]Iscsi personality used without setting params!\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_cxt_set_pf_params._entry_ptr.34 = internal global ptr @qed_cxt_set_pf_params._entry.32, section ".printk_index", align 4
@qed_cxt_set_pf_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 2112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]NvmeTCP personality used without setting params!\0A\00", [33 x i8] zeroinitializer }, align 32
@qed_cxt_set_pf_params._entry_ptr.37 = internal global ptr @qed_cxt_set_pf_params._entry.35, section ".printk_index", align 4
@qed_cxt_dynamic_ilt_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 2215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]-EOPNOTSUPP elem type = %d\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_cxt_dynamic_ilt_alloc\00", [38 x i8] zeroinitializer }, align 32
@qed_cxt_dynamic_ilt_alloc._entry_ptr = internal global ptr @qed_cxt_dynamic_ilt_alloc._entry, section ".printk_index", align 4
@qed_cxt_dynamic_ilt_alloc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 2239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]QED_TIME_OUT on ptt acquire - dynamic allocation\00", [34 x i8] zeroinitializer }, align 32
@qed_cxt_dynamic_ilt_alloc._entry_ptr.42 = internal global ptr @qed_cxt_dynamic_ilt_alloc._entry.40, section ".printk_index", align 4
@qed_ilt_cli_adv_line._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\015[%s:%d(%s)]ILT[Client %d] - Lines: [%08x - %08x]. Block - Size %08x [Real %08x] Start line %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_ilt_cli_adv_line\00", [43 x i8] zeroinitializer }, align 32
@qed_ilt_cli_adv_line._entry_ptr = internal global ptr @qed_ilt_cli_adv_line._entry, section ".printk_index", align 4
@qed_cxt_qm_iids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]iids: CIDS %08x vf_cids %08x tids %08x vf_tids %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_cxt_qm_iids\00", [16 x i8] zeroinitializer }, align 32
@qed_cxt_qm_iids._entry_ptr = internal global ptr @qed_cxt_qm_iids._entry, section ".printk_index", align 4
@qed_ilt_shadow_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Allocated 0x%x bytes for ilt shadow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_ilt_shadow_alloc\00", [43 x i8] zeroinitializer }, align 32
@qed_ilt_shadow_alloc._entry_ptr = internal global ptr @qed_ilt_shadow_alloc._entry, section ".printk_index", align 4
@qed_ilt_blk_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015[%s:%d(%s)]ILT shadow: Line [%d] Physical 0x%llx Virtual %p Size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_ilt_blk_alloc\00", [46 x i8] zeroinitializer }, align 32
@qed_ilt_blk_alloc._entry_ptr = internal global ptr @qed_ilt_blk_alloc._entry, section ".printk_index", align 4
@qed_cxt_src_t2_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Failed to allocate t2 table\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_cxt_src_t2_alloc\00", [43 x i8] zeroinitializer }, align 32
@qed_cxt_src_t2_alloc._entry_ptr = internal global ptr @qed_cxt_src_t2_alloc._entry, section ".printk_index", align 4
@qed_cid_map_alloc_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Type %08x start: %08x count %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_cid_map_alloc_single\00", [39 x i8] zeroinitializer }, align 32
@qed_cid_map_alloc_single._entry_ptr = internal global ptr @qed_cid_map_alloc_single._entry, section ".printk_index", align 4
@qed_cdu_init_pf.rt_type_offset_arr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 34911, i32 34912, i32 34913, i32 34914], [16 x i8] zeroinitializer }, align 32
@qed_cdu_init_pf.rt_type_offset_fl_arr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 34915, i32 34916, i32 34917, i32 34918], [16 x i8] zeroinitializer }, align 32
@qed_ilt_init_pf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\015[%s:%d(%s)]Setting RT[0x%08x] from ILT[0x%08x] [Client is %d] to Physical addr: 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_ilt_init_pf\00", [16 x i8] zeroinitializer }, align 32
@qed_ilt_init_pf._entry_ptr = internal global ptr @qed_ilt_init_pf._entry, section ".printk_index", align 4
@qed_cxt_test_cid_acquired._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Invalid CID %d vfid %02x\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_cxt_test_cid_acquired\00", [38 x i8] zeroinitializer }, align 32
@qed_cxt_test_cid_acquired._entry_ptr = internal global ptr @qed_cxt_test_cid_acquired._entry, section ".printk_index", align 4
@qed_cxt_test_cid_acquired._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]CID %d [vifd %02x] not acquired\00", [51 x i8] zeroinitializer }, align 32
@qed_cxt_test_cid_acquired._entry_ptr.61 = internal global ptr @qed_cxt_test_cid_acquired._entry.59, section ".printk_index", align 4
@qed_rdma_set_pf_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\015[%s:%d(%s)]Current day drivers don't support RoCE & iWARP simultaneously on the same PF. Default to RoCE-only\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_rdma_set_pf_params\00", [41 x i8] zeroinitializer }, align 32
@qed_rdma_set_pf_params._entry_ptr = internal global ptr @qed_rdma_set_pf_params._entry, section ".printk_index", align 4
@qed_rdma_set_pf_params._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]RDMA personality used without setting params!\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_rdma_set_pf_params._entry_ptr.66 = internal global ptr @qed_rdma_set_pf_params._entry.64, section ".printk_index", align 4
@qed_cxt_free_ilt_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 2357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]-EINVALID elem type = %d\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_cxt_free_ilt_range\00", [41 x i8] zeroinitializer }, align 32
@qed_cxt_free_ilt_range._entry_ptr = internal global ptr @qed_cxt_free_ilt_range._entry, section ".printk_index", align 4
@qed_cxt_free_ilt_range._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.68, ptr @.str.2, i32 2375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_cxt_free_ilt_range._entry_ptr.70 = internal global ptr @qed_cxt_free_ilt_range._entry.69, section ".printk_index", align 4
@switch.table.qed_cxt_get_tid_mem_info = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.qed_cxt_get_task_ctx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 480, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 640, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 767, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1161, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1804, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1809, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1820, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1827, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1835, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1898, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1914, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1956, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2065, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2088, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2111, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2215, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2238, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 400, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 251, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1003, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 976, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 851, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1067, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [19 x i8] c"rt_type_offset_arr\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1350, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant [22 x i8] c"rt_type_offset_fl_arr\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1357, i32 19 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1604, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1872, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1878, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1971, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2010, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2357, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_cxt.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2374, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [38 x i8] c"switch.table.qed_cxt_get_tid_mem_info\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [34 x i8] c"switch.table.qed_cxt_get_task_ctx\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @_qed_cxt_acquire_cid._entry, ptr @_qed_cxt_acquire_cid._entry.12, ptr @_qed_cxt_acquire_cid._entry.15, ptr @_qed_cxt_acquire_cid._entry.17, ptr @_qed_cxt_acquire_cid._entry.20, ptr @_qed_cxt_acquire_cid._entry_ptr, ptr @_qed_cxt_acquire_cid._entry_ptr.14, ptr @_qed_cxt_acquire_cid._entry_ptr.16, ptr @_qed_cxt_acquire_cid._entry_ptr.19, ptr @_qed_cxt_acquire_cid._entry_ptr.22, ptr @_qed_cxt_release_cid._entry, ptr @_qed_cxt_release_cid._entry.25, ptr @_qed_cxt_release_cid._entry_ptr, ptr @_qed_cxt_release_cid._entry_ptr.27, ptr @qed_cid_map_alloc_single._entry, ptr @qed_cid_map_alloc_single._entry_ptr, ptr @qed_cxt_cfg_ilt_compute._entry, ptr @qed_cxt_cfg_ilt_compute._entry.4, ptr @qed_cxt_cfg_ilt_compute._entry_ptr, ptr @qed_cxt_cfg_ilt_compute._entry_ptr.6, ptr @qed_cxt_cfg_ilt_compute_excess._entry, ptr @qed_cxt_cfg_ilt_compute_excess._entry_ptr, ptr @qed_cxt_dynamic_ilt_alloc._entry, ptr @qed_cxt_dynamic_ilt_alloc._entry.40, ptr @qed_cxt_dynamic_ilt_alloc._entry_ptr, ptr @qed_cxt_dynamic_ilt_alloc._entry_ptr.42, ptr @qed_cxt_free_ilt_range._entry, ptr @qed_cxt_free_ilt_range._entry.69, ptr @qed_cxt_free_ilt_range._entry_ptr, ptr @qed_cxt_free_ilt_range._entry_ptr.70, ptr @qed_cxt_get_cid_info._entry, ptr @qed_cxt_get_cid_info._entry_ptr, ptr @qed_cxt_qm_iids._entry, ptr @qed_cxt_qm_iids._entry_ptr, ptr @qed_cxt_set_pf_params._entry, ptr @qed_cxt_set_pf_params._entry.32, ptr @qed_cxt_set_pf_params._entry.35, ptr @qed_cxt_set_pf_params._entry_ptr, ptr @qed_cxt_set_pf_params._entry_ptr.34, ptr @qed_cxt_set_pf_params._entry_ptr.37, ptr @qed_cxt_src_t2_alloc._entry, ptr @qed_cxt_src_t2_alloc._entry_ptr, ptr @qed_cxt_test_cid_acquired._entry, ptr @qed_cxt_test_cid_acquired._entry.59, ptr @qed_cxt_test_cid_acquired._entry_ptr, ptr @qed_cxt_test_cid_acquired._entry_ptr.61, ptr @qed_ilt_blk_alloc._entry, ptr @qed_ilt_blk_alloc._entry_ptr, ptr @qed_ilt_cli_adv_line._entry, ptr @qed_ilt_cli_adv_line._entry_ptr, ptr @qed_ilt_init_pf._entry, ptr @qed_ilt_init_pf._entry_ptr, ptr @qed_ilt_shadow_alloc._entry, ptr @qed_ilt_shadow_alloc._entry_ptr, ptr @qed_rdma_set_pf_params._entry, ptr @qed_rdma_set_pf_params._entry.64, ptr @qed_rdma_set_pf_params._entry_ptr, ptr @qed_rdma_set_pf_params._entry_ptr.66, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @qed_cxt_mngr_alloc.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @qed_cdu_init_pf.rt_type_offset_arr, ptr @qed_cdu_init_pf.rt_type_offset_fl_arr, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @switch.table.qed_cxt_get_tid_mem_info, ptr @switch.table.qed_cxt_get_task_ctx], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_cfg_ilt_compute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_cfg_ilt_compute._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_cfg_ilt_compute_excess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_mngr_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_acquire_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_acquire_cid._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_acquire_cid._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_acquire_cid._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_acquire_cid._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_release_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_cxt_release_cid._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_get_cid_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_set_pf_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_set_pf_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_set_pf_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_dynamic_ilt_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_dynamic_ilt_alloc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ilt_cli_adv_line._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_qm_iids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ilt_shadow_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ilt_blk_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_src_t2_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cid_map_alloc_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cdu_init_pf.rt_type_offset_arr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cdu_init_pf.rt_type_offset_fl_arr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ilt_init_pf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_test_cid_acquired._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_test_cid_acquired._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_rdma_set_pf_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_rdma_set_pf_params._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_free_ilt_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_cxt_free_ilt_range._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_cxt_get_tid_mem_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_cxt_get_task_ctx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_cxt_get_ilt_page_size(ptr nocapture noundef readonly %p_hwfn, i32 noundef %ilt_client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %val = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 %ilt_client, i32 3, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %add = add i32 %3, 12
  %shl = shl nuw i32 1, %add
  ret i32 %shl
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_cxt_get_total_srq_count(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %srq_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %srq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srq_count, align 8
  %xrc_srq_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %xrc_srq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xrc_srq_count, align 4
  %add = add i32 %5, %3
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_cxt_get_proto_cid_count(ptr nocapture noundef readonly %p_hwfn, i32 noundef %type, ptr noundef writeonly %vf_cid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vf_cid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %cids_per_vf = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type, i32 1
  %2 = ptrtoint ptr %cids_per_vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cids_per_vf, align 4
  %4 = ptrtoint ptr %vf_cid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vf_cid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p_cxt_mngr1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %5 = ptrtoint ptr %p_cxt_mngr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_cxt_mngr1, align 8
  %arrayidx3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %6, i32 0, i32 %type
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 8
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_cxt_get_proto_cid_start(ptr nocapture noundef readonly %p_hwfn, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %arrayidx = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_get_proto_tid_count(ptr nocapture noundef readonly %p_hwfn, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %arrayidx1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 8
  %arrayidx1.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.1, align 8
  %add.1 = add i32 %5, %3
  %arrayidx1.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.2, align 8
  %add.2 = add i32 %7, %add.1
  %arrayidx1.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.3, align 8
  %add.3 = add i32 %9, %add.2
  %arrayidx1.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.4, align 8
  %add.4 = add i32 %11, %add.3
  ret i32 %add.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_cfg_ilt_compute(ptr noundef %p_hwfn, ptr nocapture noundef writeonly %line_count) local_unnamed_addr #4 align 64 {
entry:
  %tm_iids = alloca %struct.qed_tm_iids, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm_iids) #13
  %2 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids, i32 0, i32 2
  %3 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids, i32 0, i32 3
  %4 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids, i32 0, i32 4
  %5 = call ptr @memset(ptr %tm_iids, i32 0, i32 32)
  %arrayidx = getelementptr %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 1, i32 9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %pf_start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pf_start_line, align 8
  %9 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_cxt_mngr, align 8
  %clients1.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %10, i32 0, i32 1
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, %entry
  %cli_idx.029.i = phi i32 [ 0, %entry ], [ %inc16.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx5.i, align 4
  %arrayidx5.1.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx5.1.i, align 4
  %arrayidx5.2.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 2
  %13 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx5.2.i, align 4
  %arrayidx5.3.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 3
  %14 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx5.3.i, align 4
  %arrayidx5.4.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 4
  %15 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx5.4.i, align 4
  %arrayidx5.5.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 5
  %16 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx5.5.i, align 4
  %arrayidx5.6.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 6
  %17 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx5.6.i, align 4
  %arrayidx5.7.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 7
  %18 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx5.7.i, align 4
  %arrayidx5.8.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 4, i32 8
  %19 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx5.8.i, align 4
  %arrayidx10.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx10.i, align 4
  %arrayidx10.1.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx10.1.i, align 4
  %arrayidx10.2.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %cli_idx.029.i, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx10.2.i, align 4
  %inc16.i = add nuw nsw i32 %cli_idx.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc16.i, 8
  br i1 %exitcond.not.i, label %qed_cxt_ilt_blk_reset.exit, label %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge

for.cond2.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

qed_cxt_ilt_blk_reset.exit:                       ; preds = %for.cond2.preheader.i
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %23 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp = icmp eq i8 %24, 0
  br i1 %cmp, label %land.rhs, label %qed_cxt_ilt_blk_reset.exit.if.end.i_crit_edge

qed_cxt_ilt_blk_reset.exit.if.end.i_crit_edge:    ; preds = %qed_cxt_ilt_blk_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs:                                         ; preds = %qed_cxt_ilt_blk_reset.exit
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %25 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dp_module, align 4
  %and = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.if.end.i_crit_edge, label %do.end, !prof !149

land.rhs.if.end.i_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %27 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %my_id, align 4
  %conv8 = zext i8 %28 to i32
  %29 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_cxt_mngr, align 8
  %pf_start_line10 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %pf_start_line10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pf_start_line10, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 482, ptr noundef nonnull %spec.select, i32 noundef %conv8, i32 noundef %32) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end, %land.rhs.if.end.i_crit_edge, %qed_cxt_ilt_blk_reset.exit.if.end.i_crit_edge
  %clients = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %clients to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %clients, align 4
  %val.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val.i, align 4
  %val1.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val1.i, align 4
  %36 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pf_start_line, align 8
  %pf_total_lines = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 5
  %38 = ptrtoint ptr %pf_total_lines to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pf_total_lines, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 8
  %cids_per_vf.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cids_per_vf.i, align 4
  %arrayidx.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.1.i, align 8
  %add.1.i = add i32 %44, %40
  %cids_per_vf.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %cids_per_vf.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cids_per_vf.1.i, align 4
  %add3.1.i = add i32 %46, %42
  %arrayidx.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.2.i, align 8
  %add.2.i = add i32 %add.1.i, %48
  %cids_per_vf.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %cids_per_vf.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cids_per_vf.2.i, align 4
  %add3.2.i = add i32 %add3.1.i, %50
  %arrayidx.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.3.i, align 8
  %add.3.i = add i32 %add.2.i, %52
  %cids_per_vf.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %cids_per_vf.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cids_per_vf.3.i, align 4
  %add3.3.i = add i32 %add3.2.i, %54
  %arrayidx.4.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.4.i, align 8
  %add.4.i = add i32 %add.3.i, %56
  %cids_per_vf.4.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %cids_per_vf.4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cids_per_vf.4.i, align 4
  %add3.4.i = add i32 %add3.3.i, %58
  %arrayidx.5.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.5.i, align 8
  %add.5.i = add i32 %add.4.i, %60
  %cids_per_vf.5.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %cids_per_vf.5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cids_per_vf.5.i, align 4
  %add3.5.i = add i32 %add3.4.i, %62
  %arrayidx.6.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.6.i, align 8
  %add.6.i = add i32 %add.5.i, %64
  %cids_per_vf.6.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %cids_per_vf.6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cids_per_vf.6.i, align 4
  %add3.6.i = add i32 %add3.5.i, %66
  %arrayidx.7.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.7.i, align 8
  %add.7.i = add i32 %add.6.i, %68
  %cids_per_vf.7.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %cids_per_vf.7.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cids_per_vf.7.i, align 4
  %add3.7.i = add i32 %add3.6.i, %70
  %pf_blks = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 4
  %71 = ptrtoint ptr %pf_blks to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %pf_blks, align 4
  %72 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %p_hwfn, align 8
  %cache_shift = getelementptr inbounds %struct.qed_dev, ptr %73, i32 0, i32 30
  %74 = ptrtoint ptr %cache_shift to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cache_shift, align 4
  %conv18 = zext i8 %75 to i32
  %shl = shl nuw i32 1, %conv18
  %sub = add nuw i32 %shl, 1215
  %neg = sub i32 0, %shl
  %and24 = and i32 %sub, %neg
  %mul = mul i32 %and24, %add.7.i
  %val.i597 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %val.i597 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i597, align 4
  store i32 %mul, ptr %pf_blks, align 4
  %real_size_in_page.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool3.not.i = icmp eq i32 %and24, 0
  br i1 %tobool3.not.i, label %qed_ilt_cli_blk_fill.exit.thread, label %qed_ilt_cli_blk_fill.exit

qed_ilt_cli_blk_fill.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %real_size_in_page.i, align 4
  %start_line7.i1276 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2
  %79 = ptrtoint ptr %start_line7.i1276 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %37, ptr %start_line7.i1276, align 4
  br label %if.end.i617

qed_ilt_cli_blk_fill.exit:                        ; preds = %if.end.i
  %add.i598 = add i32 %77, 12
  %shl.i = shl nuw i32 1, %add.i598
  %80 = urem i32 %shl.i, %and24
  %mul.i = sub i32 %shl.i, %80
  %81 = ptrtoint ptr %pf_blks to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load i32, ptr %pf_blks, align 4
  %82 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul.i, ptr %real_size_in_page.i, align 4
  %start_line7.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2
  %83 = ptrtoint ptr %start_line7.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %37, ptr %start_line7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i599 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i599, label %qed_ilt_cli_blk_fill.exit.if.end.i617_crit_edge, label %if.end.i600

qed_ilt_cli_blk_fill.exit.if.end.i617_crit_edge:  ; preds = %qed_ilt_cli_blk_fill.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i617

if.end.i600:                                      ; preds = %qed_ilt_cli_blk_fill.exit
  %84 = ptrtoint ptr %clients to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %clients, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool1.not.i = icmp eq i8 %85, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i600.if.end3.i_crit_edge

if.end.i600.if.end3.i_crit_edge:                  ; preds = %if.end.i600
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i600
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %37, ptr %val.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i600.if.end3.i_crit_edge
  %87 = ptrtoint ptr %clients to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %clients, align 4
  %88 = ptrtoint ptr %pf_blks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pf_blks, align 4
  %90 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %real_size_in_page.i, align 4
  %add.i603 = add i32 %89, -1
  %sub.i = add i32 %add.i603, %91
  %div.i = udiv i32 %sub.i, %91
  %add7.i = add i32 %div.i, %37
  %sub8.i = add i32 %add7.i, -1
  %92 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub8.i, ptr %val1.i, align 4
  %93 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp.i = icmp eq i8 %94, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end3.i.if.end.i617_crit_edge

if.end3.i.if.end.i617_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i617

land.rhs.i:                                       ; preds = %if.end3.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %95 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %96, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %land.rhs.i.if.end.i617_crit_edge, label %do.end.i, !prof !149

land.rhs.i.if.end.i617_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i617

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %97 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val.i, align 4
  %99 = ptrtoint ptr %start_line7.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %start_line7.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i, i32 noundef 0, i32 noundef %98, i32 noundef %sub8.i, i32 noundef %89, i32 noundef %91, i32 noundef %100) #16
  br label %if.end.i617

if.end.i617:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i617_crit_edge, %if.end3.i.if.end.i617_crit_edge, %qed_ilt_cli_blk_fill.exit.if.end.i617_crit_edge, %qed_ilt_cli_blk_fill.exit.thread
  %curr_line.0 = phi i32 [ %37, %qed_ilt_cli_blk_fill.exit.if.end.i617_crit_edge ], [ %add7.i, %land.rhs.i.if.end.i617_crit_edge ], [ %add7.i, %do.end.i ], [ %add7.i, %if.end3.i.if.end.i617_crit_edge ], [ %37, %qed_ilt_cli_blk_fill.exit.thread ]
  %start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2
  %101 = ptrtoint ptr %start_line to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %start_line, align 4
  %sub38 = sub i32 %curr_line.0, %102
  %103 = ptrtoint ptr %pf_total_lines to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub38, ptr %pf_total_lines, align 4
  %104 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %p_cxt_mngr, align 8
  %arrayidx.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i, align 8
  %val.i605 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %105, i32 0, i32 1, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %val.i605 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i605, align 4
  %add.i606 = add i32 %109, 12
  %shl.i607 = shl nuw i32 1, %add.i606
  %110 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %p_hwfn, align 8
  %cache_shift.i = getelementptr inbounds %struct.qed_dev, ptr %111, i32 0, i32 30
  %112 = ptrtoint ptr %cache_shift.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %cache_shift.i, align 4
  %conv.i = zext i8 %113 to i32
  %shl4.i = shl nuw i32 1, %conv.i
  %sub.i608 = add nuw i32 %shl4.i, 1215
  %neg.i = sub i32 0, %shl4.i
  %and.i609 = and i32 %sub.i608, %neg.i
  %div.i610 = udiv i32 %shl.i607, %and.i609
  %div11.i = udiv i32 %107, %div.i610
  %dynamic_line_cnt = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 0, i32 4
  %114 = ptrtoint ptr %dynamic_line_cnt to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div11.i, ptr %dynamic_line_cnt, align 4
  %vf_blks = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 6
  %115 = ptrtoint ptr %vf_blks to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %vf_blks, align 4
  %116 = load ptr, ptr %p_hwfn, align 8
  %cache_shift44 = getelementptr inbounds %struct.qed_dev, ptr %116, i32 0, i32 30
  %117 = ptrtoint ptr %cache_shift44 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cache_shift44, align 4
  %conv45 = zext i8 %118 to i32
  %shl46 = shl nuw i32 1, %conv45
  %sub48 = add nuw i32 %shl46, 1215
  %neg54 = sub i32 0, %shl46
  %and55 = and i32 %sub48, %neg54
  %mul56 = mul i32 %and55, %add3.7.i
  %119 = ptrtoint ptr %val.i597 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val.i597, align 4
  store i32 %mul56, ptr %vf_blks, align 4
  %real_size_in_page.i615 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool3.not.i616 = icmp eq i32 %and55, 0
  br i1 %tobool3.not.i616, label %qed_ilt_cli_blk_fill.exit623.thread, label %qed_ilt_cli_blk_fill.exit623

qed_ilt_cli_blk_fill.exit623.thread:              ; preds = %if.end.i617
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %real_size_in_page.i615 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %real_size_in_page.i615, align 4
  %start_line7.i6211280 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 0, i32 2
  %122 = ptrtoint ptr %start_line7.i6211280 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %curr_line.0, ptr %start_line7.i6211280, align 4
  br label %qed_ilt_cli_adv_line.exit648

qed_ilt_cli_blk_fill.exit623:                     ; preds = %if.end.i617
  %add.i612 = add i32 %120, 12
  %shl.i613 = shl nuw i32 1, %add.i612
  %123 = urem i32 %shl.i613, %and55
  %mul.i618 = sub i32 %shl.i613, %123
  %124 = ptrtoint ptr %vf_blks to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr1278 = load i32, ptr %vf_blks, align 4
  %125 = ptrtoint ptr %real_size_in_page.i615 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul.i618, ptr %real_size_in_page.i615, align 4
  %start_line7.i621 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 0, i32 2
  %126 = ptrtoint ptr %start_line7.i621 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %curr_line.0, ptr %start_line7.i621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1278)
  %tobool.not.i624 = icmp eq i32 %.pr1278, 0
  br i1 %tobool.not.i624, label %qed_ilt_cli_blk_fill.exit623.qed_ilt_cli_adv_line.exit648_crit_edge, label %if.end.i626

qed_ilt_cli_blk_fill.exit623.qed_ilt_cli_adv_line.exit648_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit623
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit648

if.end.i626:                                      ; preds = %qed_ilt_cli_blk_fill.exit623
  %127 = ptrtoint ptr %clients to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %clients, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool1.not.i625 = icmp eq i8 %128, 0
  br i1 %tobool1.not.i625, label %if.then2.i628, label %if.end.i626.if.end3.i638_crit_edge

if.end.i626.if.end3.i638_crit_edge:               ; preds = %if.end.i626
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i638

if.then2.i628:                                    ; preds = %if.end.i626
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %curr_line.0, ptr %val.i, align 4
  br label %if.end3.i638

if.end3.i638:                                     ; preds = %if.then2.i628, %if.end.i626.if.end3.i638_crit_edge
  %130 = ptrtoint ptr %clients to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %clients, align 4
  %131 = ptrtoint ptr %vf_blks to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vf_blks, align 4
  %133 = ptrtoint ptr %real_size_in_page.i615 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %real_size_in_page.i615, align 4
  %add.i630 = add i32 %132, -1
  %sub.i631 = add i32 %add.i630, %134
  %div.i632 = udiv i32 %sub.i631, %134
  %add7.i633 = add i32 %div.i632, %curr_line.0
  %sub8.i634 = add i32 %add7.i633, -1
  %135 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %sub8.i634, ptr %val1.i, align 4
  %136 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp.i637 = icmp eq i8 %137, 0
  br i1 %cmp.i637, label %land.rhs.i642, label %if.end3.i638.qed_ilt_cli_adv_line.exit648_crit_edge

if.end3.i638.qed_ilt_cli_adv_line.exit648_crit_edge: ; preds = %if.end3.i638
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit648

land.rhs.i642:                                    ; preds = %if.end3.i638
  %dp_module.i639 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %138 = ptrtoint ptr %dp_module.i639 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dp_module.i639, align 4
  %and.i640 = and i32 %139, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i640)
  %tobool11.not.i641 = icmp eq i32 %and.i640, 0
  br i1 %tobool11.not.i641, label %land.rhs.i642.qed_ilt_cli_adv_line.exit648_crit_edge, label %do.end.i647, !prof !149

land.rhs.i642.qed_ilt_cli_adv_line.exit648_crit_edge: ; preds = %land.rhs.i642
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit648

do.end.i647:                                      ; preds = %land.rhs.i642
  call void @__sanitizer_cov_trace_pc() #15
  %name.i643 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %140 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %val.i, align 4
  %142 = ptrtoint ptr %start_line7.i621 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %start_line7.i621, align 4
  %call.i646 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i643, i32 noundef 0, i32 noundef %141, i32 noundef %sub8.i634, i32 noundef %132, i32 noundef %134, i32 noundef %143) #16
  br label %qed_ilt_cli_adv_line.exit648

qed_ilt_cli_adv_line.exit648:                     ; preds = %do.end.i647, %land.rhs.i642.qed_ilt_cli_adv_line.exit648_crit_edge, %if.end3.i638.qed_ilt_cli_adv_line.exit648_crit_edge, %qed_ilt_cli_blk_fill.exit623.qed_ilt_cli_adv_line.exit648_crit_edge, %qed_ilt_cli_blk_fill.exit623.thread
  %curr_line.1 = phi i32 [ %curr_line.0, %qed_ilt_cli_blk_fill.exit623.qed_ilt_cli_adv_line.exit648_crit_edge ], [ %add7.i633, %land.rhs.i642.qed_ilt_cli_adv_line.exit648_crit_edge ], [ %add7.i633, %do.end.i647 ], [ %add7.i633, %if.end3.i638.qed_ilt_cli_adv_line.exit648_crit_edge ], [ %curr_line.0, %qed_ilt_cli_blk_fill.exit623.thread ]
  %start_line70 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 0, i32 2
  %144 = ptrtoint ptr %start_line70 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %start_line70, align 4
  %sub71 = sub i32 %curr_line.1, %145
  %vf_total_lines = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 7
  %146 = ptrtoint ptr %vf_total_lines to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub71, ptr %vf_total_lines, align 4
  %vf_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 3
  %147 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vf_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp721302 = icmp ugt i32 %148, 1
  br i1 %cmp721302, label %for.body.lr.ph, label %qed_ilt_cli_adv_line.exit648.for.end_crit_edge

qed_ilt_cli_adv_line.exit648.for.end_crit_edge:   ; preds = %qed_ilt_cli_adv_line.exit648
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %qed_ilt_cli_adv_line.exit648
  %dp_module.i664 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i668 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %qed_ilt_cli_adv_line.exit673.for.body_crit_edge, %for.body.lr.ph
  %i.01304 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %qed_ilt_cli_adv_line.exit673.for.body_crit_edge ]
  %curr_line.21303 = phi i32 [ %curr_line.1, %for.body.lr.ph ], [ %curr_line.3, %qed_ilt_cli_adv_line.exit673.for.body_crit_edge ]
  %149 = ptrtoint ptr %vf_blks to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vf_blks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i649 = icmp eq i32 %150, 0
  br i1 %tobool.not.i649, label %for.body.qed_ilt_cli_adv_line.exit673_crit_edge, label %if.end.i651

for.body.qed_ilt_cli_adv_line.exit673_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit673

if.end.i651:                                      ; preds = %for.body
  %151 = ptrtoint ptr %clients to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %clients, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool1.not.i650 = icmp eq i8 %152, 0
  br i1 %tobool1.not.i650, label %if.then2.i653, label %if.end.i651.if.end3.i663_crit_edge

if.end.i651.if.end3.i663_crit_edge:               ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i663

if.then2.i653:                                    ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %curr_line.21303, ptr %val.i, align 4
  br label %if.end3.i663

if.end3.i663:                                     ; preds = %if.then2.i653, %if.end.i651.if.end3.i663_crit_edge
  %154 = ptrtoint ptr %clients to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %clients, align 4
  %155 = ptrtoint ptr %vf_blks to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %vf_blks, align 4
  %157 = ptrtoint ptr %real_size_in_page.i615 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %real_size_in_page.i615, align 4
  %add.i655 = add i32 %156, -1
  %sub.i656 = add i32 %add.i655, %158
  %div.i657 = udiv i32 %sub.i656, %158
  %add7.i658 = add i32 %div.i657, %curr_line.21303
  %sub8.i659 = add i32 %add7.i658, -1
  %159 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %sub8.i659, ptr %val1.i, align 4
  %160 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp.i662 = icmp eq i8 %161, 0
  br i1 %cmp.i662, label %land.rhs.i667, label %if.end3.i663.qed_ilt_cli_adv_line.exit673_crit_edge

if.end3.i663.qed_ilt_cli_adv_line.exit673_crit_edge: ; preds = %if.end3.i663
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit673

land.rhs.i667:                                    ; preds = %if.end3.i663
  %162 = ptrtoint ptr %dp_module.i664 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dp_module.i664, align 4
  %and.i665 = and i32 %163, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i665)
  %tobool11.not.i666 = icmp eq i32 %and.i665, 0
  br i1 %tobool11.not.i666, label %land.rhs.i667.qed_ilt_cli_adv_line.exit673_crit_edge, label %do.end.i672, !prof !149

land.rhs.i667.qed_ilt_cli_adv_line.exit673_crit_edge: ; preds = %land.rhs.i667
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit673

do.end.i672:                                      ; preds = %land.rhs.i667
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %val.i, align 4
  %166 = ptrtoint ptr %start_line70 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %start_line70, align 4
  %call.i671 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i668, i32 noundef 0, i32 noundef %165, i32 noundef %sub8.i659, i32 noundef %156, i32 noundef %158, i32 noundef %167) #16
  br label %qed_ilt_cli_adv_line.exit673

qed_ilt_cli_adv_line.exit673:                     ; preds = %do.end.i672, %land.rhs.i667.qed_ilt_cli_adv_line.exit673_crit_edge, %if.end3.i663.qed_ilt_cli_adv_line.exit673_crit_edge, %for.body.qed_ilt_cli_adv_line.exit673_crit_edge
  %curr_line.3 = phi i32 [ %curr_line.21303, %for.body.qed_ilt_cli_adv_line.exit673_crit_edge ], [ %add7.i658, %land.rhs.i667.qed_ilt_cli_adv_line.exit673_crit_edge ], [ %add7.i658, %do.end.i672 ], [ %add7.i658, %if.end3.i663.qed_ilt_cli_adv_line.exit673_crit_edge ]
  %inc = add nuw i32 %i.01304, 1
  %168 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vf_count, align 8
  %cmp72 = icmp ult i32 %inc, %169
  br i1 %cmp72, label %qed_ilt_cli_adv_line.exit673.for.body_crit_edge, label %qed_ilt_cli_adv_line.exit673.for.end_crit_edge

qed_ilt_cli_adv_line.exit673.for.end_crit_edge:   ; preds = %qed_ilt_cli_adv_line.exit673
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

qed_ilt_cli_adv_line.exit673.for.body_crit_edge:  ; preds = %qed_ilt_cli_adv_line.exit673
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %qed_ilt_cli_adv_line.exit673.for.end_crit_edge, %qed_ilt_cli_adv_line.exit648.for.end_crit_edge
  %curr_line.2.lcssa = phi i32 [ %curr_line.1, %qed_ilt_cli_adv_line.exit648.for.end_crit_edge ], [ %curr_line.3, %qed_ilt_cli_adv_line.exit673.for.end_crit_edge ]
  %arrayidx75 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1
  %170 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %arrayidx75, align 4
  %val.i674 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %val1.i675 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 2, i32 1
  %171 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %val1.i675, align 4
  %172 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %curr_line.2.lcssa, ptr %val.i674, align 4
  %val.i678 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 3, i32 1
  %dp_module.i706 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i710 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.body80

for.body80:                                       ; preds = %for.inc100.for.body80_crit_edge, %for.end
  %i.11307 = phi i32 [ 0, %for.end ], [ %inc101, %for.inc100.for.body80_crit_edge ]
  %curr_line.41305 = phi i32 [ %curr_line.2.lcssa, %for.end ], [ %curr_line.6, %for.inc100.for.body80_crit_edge ]
  %173 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %p_cxt_mngr, align 8
  %arrayidx1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 0, i32 2, i32 %i.11307
  %175 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i677 = icmp eq i32 %176, 0
  br i1 %tobool.not.i677, label %for.cond.i, label %for.body80.qed_cxt_tid_seg_info.exit_crit_edge

for.body80.qed_cxt_tid_seg_info.exit_crit_edge:   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.i:                                       ; preds = %for.body80
  %arrayidx1.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 1, i32 2, i32 %i.11307
  %177 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx1.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.1.i = icmp eq i32 %178, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 2, i32 2, i32 %i.11307
  %179 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx1.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.2.i = icmp eq i32 %180, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 3, i32 2, i32 %i.11307
  %181 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx1.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.3.i = icmp eq i32 %182, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx1.4.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 4, i32 2, i32 %i.11307
  %183 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx1.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.4.i = icmp eq i32 %184, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx1.5.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 5, i32 2, i32 %i.11307
  %185 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx1.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.5.i = icmp eq i32 %186, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx1.6.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 6, i32 2, i32 %i.11307
  %187 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx1.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.6.i = icmp eq i32 %188, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx1.7.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %174, i32 0, i32 7, i32 2, i32 %i.11307
  %189 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx1.7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.7.i = icmp eq i32 %190, 0
  br i1 %tobool.not.7.i, label %for.cond.6.i.for.inc100_crit_edge, label %for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.6.i.for.inc100_crit_edge:                ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

qed_cxt_tid_seg_info.exit:                        ; preds = %for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.body80.qed_cxt_tid_seg_info.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx1.i, %for.body80.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.1.i, %for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.2.i, %for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.3.i, %for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.4.i, %for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.5.i, %for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.6.i, %for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.7.i, %for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge ]
  %tobool82.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool82.not, label %qed_cxt_tid_seg_info.exit.for.inc100_crit_edge, label %lor.lhs.false

qed_cxt_tid_seg_info.exit.for.inc100_crit_edge:   ; preds = %qed_cxt_tid_seg_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

lor.lhs.false:                                    ; preds = %qed_cxt_tid_seg_info.exit
  %191 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp83 = icmp eq i32 %192, 0
  br i1 %cmp83, label %lor.lhs.false.for.inc100_crit_edge, label %if.end.i684

lor.lhs.false.for.inc100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

if.end.i684:                                      ; preds = %lor.lhs.false
  %add90 = add nuw nsw i32 %i.11307, 1
  %arrayidx91 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add90
  %193 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %arrayidx91, align 4
  %194 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %retval.0.i, align 4
  %type = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i, i32 0, i32 1
  %196 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %type, align 4
  %idxprom = zext i8 %197 to i32
  %arrayidx94 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom
  %198 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx94, align 4
  %mul95 = mul i32 %199, %195
  %200 = ptrtoint ptr %val.i678 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %val.i678, align 4
  store i32 %mul95, ptr %arrayidx91, align 4
  %real_size_in_page.i682 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add90, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool3.not.i683 = icmp eq i32 %199, 0
  br i1 %tobool3.not.i683, label %qed_ilt_cli_blk_fill.exit690.thread, label %qed_ilt_cli_blk_fill.exit690

qed_ilt_cli_blk_fill.exit690.thread:              ; preds = %if.end.i684
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %real_size_in_page.i682 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %real_size_in_page.i682, align 4
  %start_line7.i6881286 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add90, i32 2
  %203 = ptrtoint ptr %start_line7.i6881286 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %curr_line.41305, ptr %start_line7.i6881286, align 4
  br label %for.inc100

qed_ilt_cli_blk_fill.exit690:                     ; preds = %if.end.i684
  %add.i679 = add i32 %201, 12
  %shl.i680 = shl nuw i32 1, %add.i679
  %204 = urem i32 %shl.i680, %199
  %mul.i685 = sub i32 %shl.i680, %204
  %205 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pr1284 = load i32, ptr %arrayidx91, align 4
  %206 = ptrtoint ptr %real_size_in_page.i682 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %mul.i685, ptr %real_size_in_page.i682, align 4
  %start_line7.i688 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add90, i32 2
  %207 = ptrtoint ptr %start_line7.i688 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %curr_line.41305, ptr %start_line7.i688, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1284)
  %tobool.not.i691 = icmp eq i32 %.pr1284, 0
  br i1 %tobool.not.i691, label %qed_ilt_cli_blk_fill.exit690.for.inc100_crit_edge, label %if.end.i693

qed_ilt_cli_blk_fill.exit690.for.inc100_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit690
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

if.end.i693:                                      ; preds = %qed_ilt_cli_blk_fill.exit690
  %208 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx75, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool1.not.i692 = icmp eq i8 %209, 0
  br i1 %tobool1.not.i692, label %if.then2.i695, label %if.end.i693.if.end3.i705_crit_edge

if.end.i693.if.end3.i705_crit_edge:               ; preds = %if.end.i693
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i705

if.then2.i695:                                    ; preds = %if.end.i693
  call void @__sanitizer_cov_trace_pc() #15
  %210 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %curr_line.41305, ptr %val.i674, align 4
  br label %if.end3.i705

if.end3.i705:                                     ; preds = %if.then2.i695, %if.end.i693.if.end3.i705_crit_edge
  %211 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %arrayidx75, align 4
  %212 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx91, align 4
  %214 = ptrtoint ptr %real_size_in_page.i682 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %real_size_in_page.i682, align 4
  %add.i697 = add i32 %213, -1
  %sub.i698 = add i32 %add.i697, %215
  %div.i699 = udiv i32 %sub.i698, %215
  %add7.i700 = add i32 %div.i699, %curr_line.41305
  %sub8.i701 = add i32 %add7.i700, -1
  %216 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %sub8.i701, ptr %val1.i675, align 4
  %217 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %cmp.i704 = icmp eq i8 %218, 0
  br i1 %cmp.i704, label %land.rhs.i709, label %if.end3.i705.for.inc100_crit_edge

if.end3.i705.for.inc100_crit_edge:                ; preds = %if.end3.i705
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

land.rhs.i709:                                    ; preds = %if.end3.i705
  %219 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %dp_module.i706, align 4
  %and.i707 = and i32 %220, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i707)
  %tobool11.not.i708 = icmp eq i32 %and.i707, 0
  br i1 %tobool11.not.i708, label %land.rhs.i709.for.inc100_crit_edge, label %do.end.i714, !prof !149

land.rhs.i709.for.inc100_crit_edge:               ; preds = %land.rhs.i709
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

do.end.i714:                                      ; preds = %land.rhs.i709
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %val.i674 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %val.i674, align 4
  %223 = ptrtoint ptr %start_line7.i688 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %start_line7.i688, align 4
  %call.i713 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 1, i32 noundef %222, i32 noundef %sub8.i701, i32 noundef %213, i32 noundef %215, i32 noundef %224) #16
  br label %for.inc100

for.inc100:                                       ; preds = %do.end.i714, %land.rhs.i709.for.inc100_crit_edge, %if.end3.i705.for.inc100_crit_edge, %qed_ilt_cli_blk_fill.exit690.for.inc100_crit_edge, %qed_ilt_cli_blk_fill.exit690.thread, %lor.lhs.false.for.inc100_crit_edge, %qed_cxt_tid_seg_info.exit.for.inc100_crit_edge, %for.cond.6.i.for.inc100_crit_edge
  %curr_line.6 = phi i32 [ %curr_line.41305, %qed_cxt_tid_seg_info.exit.for.inc100_crit_edge ], [ %curr_line.41305, %lor.lhs.false.for.inc100_crit_edge ], [ %curr_line.41305, %qed_ilt_cli_blk_fill.exit690.for.inc100_crit_edge ], [ %add7.i700, %land.rhs.i709.for.inc100_crit_edge ], [ %add7.i700, %do.end.i714 ], [ %add7.i700, %if.end3.i705.for.inc100_crit_edge ], [ %curr_line.41305, %qed_ilt_cli_blk_fill.exit690.thread ], [ %curr_line.41305, %for.cond.6.i.for.inc100_crit_edge ]
  %inc101 = add nuw nsw i32 %i.11307, 1
  %exitcond.not = icmp eq i32 %inc101, 4
  br i1 %exitcond.not, label %for.inc100.for.body106_crit_edge, label %for.inc100.for.body80_crit_edge

for.inc100.for.body80_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body80

for.inc100.for.body106_crit_edge:                 ; preds = %for.inc100
  br label %for.body106

for.body106:                                      ; preds = %for.inc139.for.body106_crit_edge, %for.inc100.for.body106_crit_edge
  %i.21311 = phi i32 [ %inc140, %for.inc139.for.body106_crit_edge ], [ 0, %for.inc100.for.body106_crit_edge ]
  %curr_line.71309 = phi i32 [ %curr_line.9, %for.inc139.for.body106_crit_edge ], [ %curr_line.6, %for.inc100.for.body106_crit_edge ]
  %225 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %p_cxt_mngr, align 8
  %arrayidx1.i717 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 0, i32 2, i32 %i.21311
  %227 = ptrtoint ptr %arrayidx1.i717 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx1.i717, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i718 = icmp eq i32 %228, 0
  br i1 %tobool.not.i718, label %for.cond.i721, label %for.body106.qed_cxt_tid_seg_info.exit742_crit_edge

for.body106.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.i721:                                    ; preds = %for.body106
  %arrayidx1.1.i719 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 1, i32 2, i32 %i.21311
  %229 = ptrtoint ptr %arrayidx1.1.i719 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx1.1.i719, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.1.i720 = icmp eq i32 %230, 0
  br i1 %tobool.not.1.i720, label %for.cond.1.i724, label %for.cond.i721.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.i721.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.i721
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.1.i724:                                  ; preds = %for.cond.i721
  %arrayidx1.2.i722 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 2, i32 2, i32 %i.21311
  %231 = ptrtoint ptr %arrayidx1.2.i722 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx1.2.i722, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.2.i723 = icmp eq i32 %232, 0
  br i1 %tobool.not.2.i723, label %for.cond.2.i727, label %for.cond.1.i724.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.1.i724.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.1.i724
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.2.i727:                                  ; preds = %for.cond.1.i724
  %arrayidx1.3.i725 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 3, i32 2, i32 %i.21311
  %233 = ptrtoint ptr %arrayidx1.3.i725 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx1.3.i725, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.3.i726 = icmp eq i32 %234, 0
  br i1 %tobool.not.3.i726, label %for.cond.3.i730, label %for.cond.2.i727.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.2.i727.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.2.i727
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.3.i730:                                  ; preds = %for.cond.2.i727
  %arrayidx1.4.i728 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 4, i32 2, i32 %i.21311
  %235 = ptrtoint ptr %arrayidx1.4.i728 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx1.4.i728, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.4.i729 = icmp eq i32 %236, 0
  br i1 %tobool.not.4.i729, label %for.cond.4.i733, label %for.cond.3.i730.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.3.i730.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.3.i730
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.4.i733:                                  ; preds = %for.cond.3.i730
  %arrayidx1.5.i731 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 5, i32 2, i32 %i.21311
  %237 = ptrtoint ptr %arrayidx1.5.i731 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx1.5.i731, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not.5.i732 = icmp eq i32 %238, 0
  br i1 %tobool.not.5.i732, label %for.cond.5.i736, label %for.cond.4.i733.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.4.i733.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.4.i733
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.5.i736:                                  ; preds = %for.cond.4.i733
  %arrayidx1.6.i734 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 6, i32 2, i32 %i.21311
  %239 = ptrtoint ptr %arrayidx1.6.i734 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx1.6.i734, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not.6.i735 = icmp eq i32 %240, 0
  br i1 %tobool.not.6.i735, label %for.cond.6.i740, label %for.cond.5.i736.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.5.i736.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.5.i736
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.6.i740:                                  ; preds = %for.cond.5.i736
  %arrayidx1.7.i737 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %226, i32 0, i32 7, i32 2, i32 %i.21311
  %241 = ptrtoint ptr %arrayidx1.7.i737 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx1.7.i737, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.7.i738 = icmp eq i32 %242, 0
  br i1 %tobool.not.7.i738, label %for.cond.6.i740.for.inc139_crit_edge, label %for.cond.6.i740.qed_cxt_tid_seg_info.exit742_crit_edge

for.cond.6.i740.qed_cxt_tid_seg_info.exit742_crit_edge: ; preds = %for.cond.6.i740
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit742

for.cond.6.i740.for.inc139_crit_edge:             ; preds = %for.cond.6.i740
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc139

qed_cxt_tid_seg_info.exit742:                     ; preds = %for.cond.6.i740.qed_cxt_tid_seg_info.exit742_crit_edge, %for.cond.5.i736.qed_cxt_tid_seg_info.exit742_crit_edge, %for.cond.4.i733.qed_cxt_tid_seg_info.exit742_crit_edge, %for.cond.3.i730.qed_cxt_tid_seg_info.exit742_crit_edge, %for.cond.2.i727.qed_cxt_tid_seg_info.exit742_crit_edge, %for.cond.1.i724.qed_cxt_tid_seg_info.exit742_crit_edge, %for.cond.i721.qed_cxt_tid_seg_info.exit742_crit_edge, %for.body106.qed_cxt_tid_seg_info.exit742_crit_edge
  %retval.0.i741 = phi ptr [ %arrayidx1.i717, %for.body106.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.1.i719, %for.cond.i721.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.2.i722, %for.cond.1.i724.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.3.i725, %for.cond.2.i727.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.4.i728, %for.cond.3.i730.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.5.i731, %for.cond.4.i733.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.6.i734, %for.cond.5.i736.qed_cxt_tid_seg_info.exit742_crit_edge ], [ %arrayidx1.7.i737, %for.cond.6.i740.qed_cxt_tid_seg_info.exit742_crit_edge ]
  %tobool108.not = icmp eq ptr %retval.0.i741, null
  br i1 %tobool108.not, label %qed_cxt_tid_seg_info.exit742.for.inc139_crit_edge, label %lor.lhs.false109

qed_cxt_tid_seg_info.exit742.for.inc139_crit_edge: ; preds = %qed_cxt_tid_seg_info.exit742
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc139

lor.lhs.false109:                                 ; preds = %qed_cxt_tid_seg_info.exit742
  %243 = ptrtoint ptr %retval.0.i741 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %retval.0.i741, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp111 = icmp eq i32 %244, 0
  br i1 %cmp111, label %lor.lhs.false109.for.inc139_crit_edge, label %if.end114

lor.lhs.false109.for.inc139_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc139

if.end114:                                        ; preds = %lor.lhs.false109
  %add117 = add nuw nsw i32 %i.21311, 5
  %arrayidx118 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add117
  %245 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %arrayidx118, align 4
  %has_fl_mem = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i741, i32 0, i32 2
  %246 = ptrtoint ptr %has_fl_mem to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %has_fl_mem, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool120.not = icmp eq i8 %247, 0
  br i1 %tobool120.not, label %qed_ilt_cli_blk_fill.exit752, label %if.end.i759

qed_ilt_cli_blk_fill.exit752:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %add125 = add nuw nsw i32 %i.21311, 1
  %start_line127 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add125, i32 2
  %248 = ptrtoint ptr %start_line127 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %start_line127, align 4
  %real_size_in_page.i747 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add117, i32 1
  %250 = ptrtoint ptr %real_size_in_page.i747 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %real_size_in_page.i747, align 4
  %start_line7.i750 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add117, i32 2
  %251 = ptrtoint ptr %start_line7.i750 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %249, ptr %start_line7.i750, align 4
  br label %for.inc139

if.end.i759:                                      ; preds = %if.end114
  %252 = ptrtoint ptr %retval.0.i741 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %retval.0.i741, align 4
  %type131 = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i741, i32 0, i32 1
  %254 = ptrtoint ptr %type131 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %type131, align 4
  %idxprom132 = zext i8 %255 to i32
  %arrayidx133 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom132
  %256 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx133, align 4
  %mul134 = mul i32 %257, %253
  %258 = ptrtoint ptr %val.i678 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %val.i678, align 4
  %260 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %mul134, ptr %arrayidx118, align 4
  %real_size_in_page.i757 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add117, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool3.not.i758 = icmp eq i32 %257, 0
  br i1 %tobool3.not.i758, label %qed_ilt_cli_blk_fill.exit765.thread, label %qed_ilt_cli_blk_fill.exit765

qed_ilt_cli_blk_fill.exit765.thread:              ; preds = %if.end.i759
  call void @__sanitizer_cov_trace_pc() #15
  %261 = ptrtoint ptr %real_size_in_page.i757 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %real_size_in_page.i757, align 4
  %start_line7.i7631293 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add117, i32 2
  %262 = ptrtoint ptr %start_line7.i7631293 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %curr_line.71309, ptr %start_line7.i7631293, align 4
  br label %for.inc139

qed_ilt_cli_blk_fill.exit765:                     ; preds = %if.end.i759
  %add.i754 = add i32 %259, 12
  %shl.i755 = shl nuw i32 1, %add.i754
  %263 = urem i32 %shl.i755, %257
  %mul.i760 = sub i32 %shl.i755, %263
  %264 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %264)
  %.pr1291 = load i32, ptr %arrayidx118, align 4
  %265 = ptrtoint ptr %real_size_in_page.i757 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %mul.i760, ptr %real_size_in_page.i757, align 4
  %start_line7.i763 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add117, i32 2
  %266 = ptrtoint ptr %start_line7.i763 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %curr_line.71309, ptr %start_line7.i763, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1291)
  %tobool.not.i766 = icmp eq i32 %.pr1291, 0
  br i1 %tobool.not.i766, label %qed_ilt_cli_blk_fill.exit765.for.inc139_crit_edge, label %if.end.i768

qed_ilt_cli_blk_fill.exit765.for.inc139_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit765
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc139

if.end.i768:                                      ; preds = %qed_ilt_cli_blk_fill.exit765
  %267 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx75, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool1.not.i767 = icmp eq i8 %268, 0
  br i1 %tobool1.not.i767, label %if.then2.i770, label %if.end.i768.if.end3.i780_crit_edge

if.end.i768.if.end3.i780_crit_edge:               ; preds = %if.end.i768
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i780

if.then2.i770:                                    ; preds = %if.end.i768
  call void @__sanitizer_cov_trace_pc() #15
  %269 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %curr_line.71309, ptr %val.i674, align 4
  br label %if.end3.i780

if.end3.i780:                                     ; preds = %if.then2.i770, %if.end.i768.if.end3.i780_crit_edge
  %270 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 1, ptr %arrayidx75, align 4
  %271 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx118, align 4
  %273 = ptrtoint ptr %real_size_in_page.i757 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %real_size_in_page.i757, align 4
  %add.i772 = add i32 %272, -1
  %sub.i773 = add i32 %add.i772, %274
  %div.i774 = udiv i32 %sub.i773, %274
  %add7.i775 = add i32 %div.i774, %curr_line.71309
  %sub8.i776 = add i32 %add7.i775, -1
  %275 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %sub8.i776, ptr %val1.i675, align 4
  %276 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %cmp.i779 = icmp eq i8 %277, 0
  br i1 %cmp.i779, label %land.rhs.i784, label %if.end3.i780.for.inc139_crit_edge

if.end3.i780.for.inc139_crit_edge:                ; preds = %if.end3.i780
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc139

land.rhs.i784:                                    ; preds = %if.end3.i780
  %278 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %dp_module.i706, align 4
  %and.i782 = and i32 %279, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i782)
  %tobool11.not.i783 = icmp eq i32 %and.i782, 0
  br i1 %tobool11.not.i783, label %land.rhs.i784.for.inc139_crit_edge, label %do.end.i789, !prof !149

land.rhs.i784.for.inc139_crit_edge:               ; preds = %land.rhs.i784
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc139

do.end.i789:                                      ; preds = %land.rhs.i784
  call void @__sanitizer_cov_trace_pc() #15
  %280 = ptrtoint ptr %val.i674 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %val.i674, align 4
  %282 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx118, align 4
  %284 = ptrtoint ptr %real_size_in_page.i757 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %real_size_in_page.i757, align 4
  %286 = ptrtoint ptr %start_line7.i763 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %start_line7.i763, align 4
  %call.i788 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 1, i32 noundef %281, i32 noundef %sub8.i776, i32 noundef %283, i32 noundef %285, i32 noundef %287) #16
  br label %for.inc139

for.inc139:                                       ; preds = %do.end.i789, %land.rhs.i784.for.inc139_crit_edge, %if.end3.i780.for.inc139_crit_edge, %qed_ilt_cli_blk_fill.exit765.for.inc139_crit_edge, %qed_ilt_cli_blk_fill.exit765.thread, %qed_ilt_cli_blk_fill.exit752, %lor.lhs.false109.for.inc139_crit_edge, %qed_cxt_tid_seg_info.exit742.for.inc139_crit_edge, %for.cond.6.i740.for.inc139_crit_edge
  %curr_line.9 = phi i32 [ %curr_line.71309, %qed_cxt_tid_seg_info.exit742.for.inc139_crit_edge ], [ %curr_line.71309, %lor.lhs.false109.for.inc139_crit_edge ], [ %curr_line.71309, %qed_ilt_cli_blk_fill.exit752 ], [ %curr_line.71309, %qed_ilt_cli_blk_fill.exit765.for.inc139_crit_edge ], [ %add7.i775, %land.rhs.i784.for.inc139_crit_edge ], [ %add7.i775, %do.end.i789 ], [ %add7.i775, %if.end3.i780.for.inc139_crit_edge ], [ %curr_line.71309, %qed_ilt_cli_blk_fill.exit765.thread ], [ %curr_line.71309, %for.cond.6.i740.for.inc139_crit_edge ]
  %inc140 = add nuw nsw i32 %i.21311, 1
  %exitcond1321.not = icmp eq i32 %inc140, 4
  br i1 %exitcond1321.not, label %for.end141, label %for.inc139.for.body106_crit_edge

for.inc139.for.body106_crit_edge:                 ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body106

for.end141:                                       ; preds = %for.inc139
  %start_line144 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 0, i32 2
  %288 = ptrtoint ptr %start_line144 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %start_line144, align 4
  %sub145 = sub i32 %curr_line.9, %289
  %pf_total_lines146 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 5
  %290 = ptrtoint ptr %pf_total_lines146 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %sub145, ptr %pf_total_lines146, align 4
  %291 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %p_cxt_mngr, align 8
  %arrayidx1.i792 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 0, i32 2, i32 4
  %293 = ptrtoint ptr %arrayidx1.i792 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx1.i792, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool.not.i793 = icmp eq i32 %294, 0
  br i1 %tobool.not.i793, label %for.cond.i796, label %for.end141.qed_cxt_tid_seg_info.exit817_crit_edge

for.end141.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.i796:                                    ; preds = %for.end141
  %arrayidx1.1.i794 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 1, i32 2, i32 4
  %295 = ptrtoint ptr %arrayidx1.1.i794 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx1.1.i794, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool.not.1.i795 = icmp eq i32 %296, 0
  br i1 %tobool.not.1.i795, label %for.cond.1.i799, label %for.cond.i796.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.i796.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.i796
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.1.i799:                                  ; preds = %for.cond.i796
  %arrayidx1.2.i797 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 2, i32 2, i32 4
  %297 = ptrtoint ptr %arrayidx1.2.i797 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx1.2.i797, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool.not.2.i798 = icmp eq i32 %298, 0
  br i1 %tobool.not.2.i798, label %for.cond.2.i802, label %for.cond.1.i799.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.1.i799.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.1.i799
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.2.i802:                                  ; preds = %for.cond.1.i799
  %arrayidx1.3.i800 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 3, i32 2, i32 4
  %299 = ptrtoint ptr %arrayidx1.3.i800 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx1.3.i800, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool.not.3.i801 = icmp eq i32 %300, 0
  br i1 %tobool.not.3.i801, label %for.cond.3.i805, label %for.cond.2.i802.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.2.i802.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.2.i802
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.3.i805:                                  ; preds = %for.cond.2.i802
  %arrayidx1.4.i803 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 4, i32 2, i32 4
  %301 = ptrtoint ptr %arrayidx1.4.i803 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx1.4.i803, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.not.4.i804 = icmp eq i32 %302, 0
  br i1 %tobool.not.4.i804, label %for.cond.4.i808, label %for.cond.3.i805.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.3.i805.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.3.i805
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.4.i808:                                  ; preds = %for.cond.3.i805
  %arrayidx1.5.i806 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 5, i32 2, i32 4
  %303 = ptrtoint ptr %arrayidx1.5.i806 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx1.5.i806, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool.not.5.i807 = icmp eq i32 %304, 0
  br i1 %tobool.not.5.i807, label %for.cond.5.i811, label %for.cond.4.i808.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.4.i808.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.4.i808
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.5.i811:                                  ; preds = %for.cond.4.i808
  %arrayidx1.6.i809 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 6, i32 2, i32 4
  %305 = ptrtoint ptr %arrayidx1.6.i809 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx1.6.i809, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.not.6.i810 = icmp eq i32 %306, 0
  br i1 %tobool.not.6.i810, label %for.cond.6.i815, label %for.cond.5.i811.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.5.i811.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.5.i811
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.6.i815:                                  ; preds = %for.cond.5.i811
  %arrayidx1.7.i812 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %292, i32 0, i32 7, i32 2, i32 4
  %307 = ptrtoint ptr %arrayidx1.7.i812 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx1.7.i812, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool.not.7.i813 = icmp eq i32 %308, 0
  br i1 %tobool.not.7.i813, label %for.cond.6.i815.if.end196_crit_edge, label %for.cond.6.i815.qed_cxt_tid_seg_info.exit817_crit_edge

for.cond.6.i815.qed_cxt_tid_seg_info.exit817_crit_edge: ; preds = %for.cond.6.i815
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit817

for.cond.6.i815.if.end196_crit_edge:              ; preds = %for.cond.6.i815
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

qed_cxt_tid_seg_info.exit817:                     ; preds = %for.cond.6.i815.qed_cxt_tid_seg_info.exit817_crit_edge, %for.cond.5.i811.qed_cxt_tid_seg_info.exit817_crit_edge, %for.cond.4.i808.qed_cxt_tid_seg_info.exit817_crit_edge, %for.cond.3.i805.qed_cxt_tid_seg_info.exit817_crit_edge, %for.cond.2.i802.qed_cxt_tid_seg_info.exit817_crit_edge, %for.cond.1.i799.qed_cxt_tid_seg_info.exit817_crit_edge, %for.cond.i796.qed_cxt_tid_seg_info.exit817_crit_edge, %for.end141.qed_cxt_tid_seg_info.exit817_crit_edge
  %retval.0.i816 = phi ptr [ %arrayidx1.i792, %for.end141.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.1.i794, %for.cond.i796.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.2.i797, %for.cond.1.i799.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.3.i800, %for.cond.2.i802.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.4.i803, %for.cond.3.i805.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.5.i806, %for.cond.4.i808.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.6.i809, %for.cond.5.i811.qed_cxt_tid_seg_info.exit817_crit_edge ], [ %arrayidx1.7.i812, %for.cond.6.i815.qed_cxt_tid_seg_info.exit817_crit_edge ]
  %tobool148.not = icmp eq ptr %retval.0.i816, null
  br i1 %tobool148.not, label %qed_cxt_tid_seg_info.exit817.if.end196_crit_edge, label %land.lhs.true

qed_cxt_tid_seg_info.exit817.if.end196_crit_edge: ; preds = %qed_cxt_tid_seg_info.exit817
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

land.lhs.true:                                    ; preds = %qed_cxt_tid_seg_info.exit817
  %309 = ptrtoint ptr %retval.0.i816 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %retval.0.i816, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool150.not = icmp eq i32 %310, 0
  br i1 %tobool150.not, label %land.lhs.true.if.end196_crit_edge, label %if.end.i824

land.lhs.true.if.end196_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

if.end.i824:                                      ; preds = %land.lhs.true
  %type154 = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i816, i32 0, i32 1
  %311 = ptrtoint ptr %type154 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %type154, align 4
  %idxprom155 = zext i8 %312 to i32
  %arrayidx156 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom155
  %313 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx156, align 4
  %mul157 = mul i32 %314, %310
  %arrayidx159 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 1
  %315 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 0, ptr %arrayidx159, align 4
  %316 = load i8, ptr %type154, align 4
  %idxprom163 = zext i8 %316 to i32
  %arrayidx164 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom163
  %317 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx164, align 4
  %319 = ptrtoint ptr %val.i678 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %val.i678, align 4
  store i32 %mul157, ptr %arrayidx159, align 4
  %real_size_in_page.i822 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool3.not.i823 = icmp eq i32 %318, 0
  br i1 %tobool3.not.i823, label %if.end.i824.qed_ilt_cli_blk_fill.exit830_crit_edge, label %if.then4.i826

if.end.i824.qed_ilt_cli_blk_fill.exit830_crit_edge: ; preds = %if.end.i824
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_blk_fill.exit830

if.then4.i826:                                    ; preds = %if.end.i824
  call void @__sanitizer_cov_trace_pc() #15
  %add.i819 = add i32 %320, 12
  %shl.i820 = shl nuw i32 1, %add.i819
  %321 = urem i32 %shl.i820, %318
  %mul.i825 = sub i32 %shl.i820, %321
  %322 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %322)
  %.pr1298 = load i32, ptr %arrayidx159, align 4
  br label %qed_ilt_cli_blk_fill.exit830

qed_ilt_cli_blk_fill.exit830:                     ; preds = %if.then4.i826, %if.end.i824.qed_ilt_cli_blk_fill.exit830_crit_edge
  %323 = phi i32 [ %mul157, %if.end.i824.qed_ilt_cli_blk_fill.exit830_crit_edge ], [ %.pr1298, %if.then4.i826 ]
  %storemerge.i827 = phi i32 [ 0, %if.end.i824.qed_ilt_cli_blk_fill.exit830_crit_edge ], [ %mul.i825, %if.then4.i826 ]
  %324 = ptrtoint ptr %real_size_in_page.i822 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %storemerge.i827, ptr %real_size_in_page.i822, align 4
  %start_line7.i828 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 1, i32 2
  %325 = ptrtoint ptr %start_line7.i828 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %curr_line.9, ptr %start_line7.i828, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool.not.i831 = icmp eq i32 %323, 0
  br i1 %tobool.not.i831, label %qed_ilt_cli_blk_fill.exit830.qed_ilt_cli_adv_line.exit855_crit_edge, label %if.end.i833

qed_ilt_cli_blk_fill.exit830.qed_ilt_cli_adv_line.exit855_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit830
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit855

if.end.i833:                                      ; preds = %qed_ilt_cli_blk_fill.exit830
  %326 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx75, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool1.not.i832 = icmp eq i8 %327, 0
  br i1 %tobool1.not.i832, label %if.then2.i835, label %if.end.i833.if.end3.i845_crit_edge

if.end.i833.if.end3.i845_crit_edge:               ; preds = %if.end.i833
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i845

if.then2.i835:                                    ; preds = %if.end.i833
  call void @__sanitizer_cov_trace_pc() #15
  %328 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %curr_line.9, ptr %val.i674, align 4
  br label %if.end3.i845

if.end3.i845:                                     ; preds = %if.then2.i835, %if.end.i833.if.end3.i845_crit_edge
  %329 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 1, ptr %arrayidx75, align 4
  %330 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx159, align 4
  %332 = ptrtoint ptr %real_size_in_page.i822 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %real_size_in_page.i822, align 4
  %add.i837 = add i32 %331, -1
  %sub.i838 = add i32 %add.i837, %333
  %div.i839 = udiv i32 %sub.i838, %333
  %add7.i840 = add i32 %div.i839, %curr_line.9
  %sub8.i841 = add i32 %add7.i840, -1
  %334 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %sub8.i841, ptr %val1.i675, align 4
  %335 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %336)
  %cmp.i844 = icmp eq i8 %336, 0
  br i1 %cmp.i844, label %land.rhs.i849, label %if.end3.i845.qed_ilt_cli_adv_line.exit855_crit_edge

if.end3.i845.qed_ilt_cli_adv_line.exit855_crit_edge: ; preds = %if.end3.i845
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit855

land.rhs.i849:                                    ; preds = %if.end3.i845
  %337 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %dp_module.i706, align 4
  %and.i847 = and i32 %338, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i847)
  %tobool11.not.i848 = icmp eq i32 %and.i847, 0
  br i1 %tobool11.not.i848, label %land.rhs.i849.qed_ilt_cli_adv_line.exit855_crit_edge, label %do.end.i854, !prof !149

land.rhs.i849.qed_ilt_cli_adv_line.exit855_crit_edge: ; preds = %land.rhs.i849
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit855

do.end.i854:                                      ; preds = %land.rhs.i849
  call void @__sanitizer_cov_trace_pc() #15
  %339 = ptrtoint ptr %val.i674 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %val.i674, align 4
  %341 = ptrtoint ptr %start_line7.i828 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %start_line7.i828, align 4
  %call.i853 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 1, i32 noundef %340, i32 noundef %sub8.i841, i32 noundef %331, i32 noundef %333, i32 noundef %342) #16
  br label %qed_ilt_cli_adv_line.exit855

qed_ilt_cli_adv_line.exit855:                     ; preds = %do.end.i854, %land.rhs.i849.qed_ilt_cli_adv_line.exit855_crit_edge, %if.end3.i845.qed_ilt_cli_adv_line.exit855_crit_edge, %qed_ilt_cli_blk_fill.exit830.qed_ilt_cli_adv_line.exit855_crit_edge
  %curr_line.10 = phi i32 [ %curr_line.9, %qed_ilt_cli_blk_fill.exit830.qed_ilt_cli_adv_line.exit855_crit_edge ], [ %add7.i840, %land.rhs.i849.qed_ilt_cli_adv_line.exit855_crit_edge ], [ %add7.i840, %do.end.i854 ], [ %add7.i840, %if.end3.i845.qed_ilt_cli_adv_line.exit855_crit_edge ]
  %arrayidx166 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2
  %343 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %arrayidx166, align 4
  %has_fl_mem168 = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i816, i32 0, i32 2
  %344 = ptrtoint ptr %has_fl_mem168 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %has_fl_mem168, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %tobool169.not = icmp eq i8 %345, 0
  br i1 %tobool169.not, label %qed_ilt_cli_blk_fill.exit865, label %if.end.i872

qed_ilt_cli_blk_fill.exit865:                     ; preds = %qed_ilt_cli_adv_line.exit855
  call void @__sanitizer_cov_trace_pc() #15
  %346 = ptrtoint ptr %start_line7.i828 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %start_line7.i828, align 4
  %real_size_in_page.i860 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 1
  %348 = ptrtoint ptr %real_size_in_page.i860 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 0, ptr %real_size_in_page.i860, align 4
  %start_line7.i863 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 2
  %349 = ptrtoint ptr %start_line7.i863 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %347, ptr %start_line7.i863, align 4
  br label %if.end178

if.end.i872:                                      ; preds = %qed_ilt_cli_adv_line.exit855
  %350 = ptrtoint ptr %type154 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %type154, align 4
  %idxprom176 = zext i8 %351 to i32
  %arrayidx177 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom176
  %352 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx177, align 4
  %354 = ptrtoint ptr %val.i678 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %val.i678, align 4
  %356 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %mul157, ptr %arrayidx166, align 4
  %real_size_in_page.i870 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool3.not.i871 = icmp eq i32 %353, 0
  br i1 %tobool3.not.i871, label %if.end.i872.qed_ilt_cli_blk_fill.exit878_crit_edge, label %if.then4.i874

if.end.i872.qed_ilt_cli_blk_fill.exit878_crit_edge: ; preds = %if.end.i872
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_blk_fill.exit878

if.then4.i874:                                    ; preds = %if.end.i872
  call void @__sanitizer_cov_trace_pc() #15
  %add.i867 = add i32 %355, 12
  %shl.i868 = shl nuw i32 1, %add.i867
  %357 = urem i32 %shl.i868, %353
  %mul.i873 = sub i32 %shl.i868, %357
  %358 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %358)
  %.pr1299 = load i32, ptr %arrayidx166, align 4
  br label %qed_ilt_cli_blk_fill.exit878

qed_ilt_cli_blk_fill.exit878:                     ; preds = %if.then4.i874, %if.end.i872.qed_ilt_cli_blk_fill.exit878_crit_edge
  %359 = phi i32 [ %mul157, %if.end.i872.qed_ilt_cli_blk_fill.exit878_crit_edge ], [ %.pr1299, %if.then4.i874 ]
  %storemerge.i875 = phi i32 [ 0, %if.end.i872.qed_ilt_cli_blk_fill.exit878_crit_edge ], [ %mul.i873, %if.then4.i874 ]
  %360 = ptrtoint ptr %real_size_in_page.i870 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %storemerge.i875, ptr %real_size_in_page.i870, align 4
  %start_line7.i876 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 2
  %361 = ptrtoint ptr %start_line7.i876 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %curr_line.10, ptr %start_line7.i876, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool.not.i879 = icmp eq i32 %359, 0
  br i1 %tobool.not.i879, label %qed_ilt_cli_blk_fill.exit878.if.end178_crit_edge, label %if.end.i881

qed_ilt_cli_blk_fill.exit878.if.end178_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit878
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

if.end.i881:                                      ; preds = %qed_ilt_cli_blk_fill.exit878
  %362 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx75, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool1.not.i880 = icmp eq i8 %363, 0
  br i1 %tobool1.not.i880, label %if.then2.i883, label %if.end.i881.if.end3.i893_crit_edge

if.end.i881.if.end3.i893_crit_edge:               ; preds = %if.end.i881
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i893

if.then2.i883:                                    ; preds = %if.end.i881
  call void @__sanitizer_cov_trace_pc() #15
  %364 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %curr_line.10, ptr %val.i674, align 4
  br label %if.end3.i893

if.end3.i893:                                     ; preds = %if.then2.i883, %if.end.i881.if.end3.i893_crit_edge
  %365 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 1, ptr %arrayidx75, align 4
  %366 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx166, align 4
  %368 = ptrtoint ptr %real_size_in_page.i870 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %real_size_in_page.i870, align 4
  %add.i885 = add i32 %367, -1
  %sub.i886 = add i32 %add.i885, %369
  %div.i887 = udiv i32 %sub.i886, %369
  %add7.i888 = add i32 %div.i887, %curr_line.10
  %sub8.i889 = add i32 %add7.i888, -1
  %370 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %sub8.i889, ptr %val1.i675, align 4
  %371 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %cmp.i892 = icmp eq i8 %372, 0
  br i1 %cmp.i892, label %land.rhs.i897, label %if.end3.i893.if.end178_crit_edge

if.end3.i893.if.end178_crit_edge:                 ; preds = %if.end3.i893
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

land.rhs.i897:                                    ; preds = %if.end3.i893
  %373 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %dp_module.i706, align 4
  %and.i895 = and i32 %374, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i895)
  %tobool11.not.i896 = icmp eq i32 %and.i895, 0
  br i1 %tobool11.not.i896, label %land.rhs.i897.if.end178_crit_edge, label %do.end.i902, !prof !149

land.rhs.i897.if.end178_crit_edge:                ; preds = %land.rhs.i897
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

do.end.i902:                                      ; preds = %land.rhs.i897
  call void @__sanitizer_cov_trace_pc() #15
  %375 = ptrtoint ptr %val.i674 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %val.i674, align 4
  %377 = ptrtoint ptr %start_line7.i876 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %start_line7.i876, align 4
  %call.i901 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 1, i32 noundef %376, i32 noundef %sub8.i889, i32 noundef %367, i32 noundef %369, i32 noundef %378) #16
  br label %if.end178

if.end178:                                        ; preds = %do.end.i902, %land.rhs.i897.if.end178_crit_edge, %if.end3.i893.if.end178_crit_edge, %qed_ilt_cli_blk_fill.exit878.if.end178_crit_edge, %qed_ilt_cli_blk_fill.exit865
  %curr_line.12 = phi i32 [ %curr_line.10, %qed_ilt_cli_blk_fill.exit865 ], [ %curr_line.10, %qed_ilt_cli_blk_fill.exit878.if.end178_crit_edge ], [ %add7.i888, %land.rhs.i897.if.end178_crit_edge ], [ %add7.i888, %do.end.i902 ], [ %add7.i888, %if.end3.i893.if.end178_crit_edge ]
  %start_line181 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 0, i32 2
  %379 = ptrtoint ptr %start_line181 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %start_line181, align 4
  %sub182 = sub i32 %curr_line.12, %380
  %vf_total_lines183 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 7
  %381 = ptrtoint ptr %vf_total_lines183 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %sub182, ptr %vf_total_lines183, align 4
  %382 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %vf_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %383)
  %cmp1861313 = icmp ugt i32 %383, 1
  br i1 %cmp1861313, label %for.body188.lr.ph, label %if.end178.if.end196_crit_edge

if.end178.if.end196_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

for.body188.lr.ph:                                ; preds = %if.end178
  %real_size_in_page.i934 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 1
  %start_line.i950 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 2
  br label %for.body188

for.body188:                                      ; preds = %qed_ilt_cli_adv_line.exit953.for.body188_crit_edge, %for.body188.lr.ph
  %i.31315 = phi i32 [ 1, %for.body188.lr.ph ], [ %inc194, %qed_ilt_cli_adv_line.exit953.for.body188_crit_edge ]
  %curr_line.131314 = phi i32 [ %curr_line.12, %for.body188.lr.ph ], [ %curr_line.15, %qed_ilt_cli_adv_line.exit953.for.body188_crit_edge ]
  %384 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool.not.i904 = icmp eq i32 %385, 0
  br i1 %tobool.not.i904, label %for.body188.qed_ilt_cli_adv_line.exit928_crit_edge, label %if.end.i906

for.body188.qed_ilt_cli_adv_line.exit928_crit_edge: ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit928

if.end.i906:                                      ; preds = %for.body188
  %386 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx75, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool1.not.i905 = icmp eq i8 %387, 0
  br i1 %tobool1.not.i905, label %if.then2.i908, label %if.end.i906.if.end3.i918_crit_edge

if.end.i906.if.end3.i918_crit_edge:               ; preds = %if.end.i906
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i918

if.then2.i908:                                    ; preds = %if.end.i906
  call void @__sanitizer_cov_trace_pc() #15
  %388 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %curr_line.131314, ptr %val.i674, align 4
  br label %if.end3.i918

if.end3.i918:                                     ; preds = %if.then2.i908, %if.end.i906.if.end3.i918_crit_edge
  %389 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 1, ptr %arrayidx75, align 4
  %390 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx159, align 4
  %392 = ptrtoint ptr %real_size_in_page.i822 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %real_size_in_page.i822, align 4
  %add.i910 = add i32 %391, -1
  %sub.i911 = add i32 %add.i910, %393
  %div.i912 = udiv i32 %sub.i911, %393
  %add7.i913 = add i32 %div.i912, %curr_line.131314
  %sub8.i914 = add i32 %add7.i913, -1
  %394 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %sub8.i914, ptr %val1.i675, align 4
  %395 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %cmp.i917 = icmp eq i8 %396, 0
  br i1 %cmp.i917, label %land.rhs.i922, label %if.end3.i918.qed_ilt_cli_adv_line.exit928_crit_edge

if.end3.i918.qed_ilt_cli_adv_line.exit928_crit_edge: ; preds = %if.end3.i918
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit928

land.rhs.i922:                                    ; preds = %if.end3.i918
  %397 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %dp_module.i706, align 4
  %and.i920 = and i32 %398, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i920)
  %tobool11.not.i921 = icmp eq i32 %and.i920, 0
  br i1 %tobool11.not.i921, label %land.rhs.i922.qed_ilt_cli_adv_line.exit928_crit_edge, label %do.end.i927, !prof !149

land.rhs.i922.qed_ilt_cli_adv_line.exit928_crit_edge: ; preds = %land.rhs.i922
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit928

do.end.i927:                                      ; preds = %land.rhs.i922
  call void @__sanitizer_cov_trace_pc() #15
  %399 = ptrtoint ptr %val.i674 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %val.i674, align 4
  %401 = ptrtoint ptr %start_line7.i828 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %start_line7.i828, align 4
  %call.i926 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 1, i32 noundef %400, i32 noundef %sub8.i914, i32 noundef %391, i32 noundef %393, i32 noundef %402) #16
  br label %qed_ilt_cli_adv_line.exit928

qed_ilt_cli_adv_line.exit928:                     ; preds = %do.end.i927, %land.rhs.i922.qed_ilt_cli_adv_line.exit928_crit_edge, %if.end3.i918.qed_ilt_cli_adv_line.exit928_crit_edge, %for.body188.qed_ilt_cli_adv_line.exit928_crit_edge
  %curr_line.14 = phi i32 [ %curr_line.131314, %for.body188.qed_ilt_cli_adv_line.exit928_crit_edge ], [ %add7.i913, %land.rhs.i922.qed_ilt_cli_adv_line.exit928_crit_edge ], [ %add7.i913, %do.end.i927 ], [ %add7.i913, %if.end3.i918.qed_ilt_cli_adv_line.exit928_crit_edge ]
  %403 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %arrayidx166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not.i929 = icmp eq i32 %404, 0
  br i1 %tobool.not.i929, label %qed_ilt_cli_adv_line.exit928.qed_ilt_cli_adv_line.exit953_crit_edge, label %if.end.i931

qed_ilt_cli_adv_line.exit928.qed_ilt_cli_adv_line.exit953_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit928
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit953

if.end.i931:                                      ; preds = %qed_ilt_cli_adv_line.exit928
  %405 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx75, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool1.not.i930 = icmp eq i8 %406, 0
  br i1 %tobool1.not.i930, label %if.then2.i933, label %if.end.i931.if.end3.i943_crit_edge

if.end.i931.if.end3.i943_crit_edge:               ; preds = %if.end.i931
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i943

if.then2.i933:                                    ; preds = %if.end.i931
  call void @__sanitizer_cov_trace_pc() #15
  %407 = ptrtoint ptr %val.i674 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %curr_line.14, ptr %val.i674, align 4
  br label %if.end3.i943

if.end3.i943:                                     ; preds = %if.then2.i933, %if.end.i931.if.end3.i943_crit_edge
  %408 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 1, ptr %arrayidx75, align 4
  %409 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx166, align 4
  %411 = ptrtoint ptr %real_size_in_page.i934 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %real_size_in_page.i934, align 4
  %add.i935 = add i32 %410, -1
  %sub.i936 = add i32 %add.i935, %412
  %div.i937 = udiv i32 %sub.i936, %412
  %add7.i938 = add i32 %div.i937, %curr_line.14
  %sub8.i939 = add i32 %add7.i938, -1
  %413 = ptrtoint ptr %val1.i675 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %sub8.i939, ptr %val1.i675, align 4
  %414 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %cmp.i942 = icmp eq i8 %415, 0
  br i1 %cmp.i942, label %land.rhs.i947, label %if.end3.i943.qed_ilt_cli_adv_line.exit953_crit_edge

if.end3.i943.qed_ilt_cli_adv_line.exit953_crit_edge: ; preds = %if.end3.i943
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit953

land.rhs.i947:                                    ; preds = %if.end3.i943
  %416 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %dp_module.i706, align 4
  %and.i945 = and i32 %417, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i945)
  %tobool11.not.i946 = icmp eq i32 %and.i945, 0
  br i1 %tobool11.not.i946, label %land.rhs.i947.qed_ilt_cli_adv_line.exit953_crit_edge, label %do.end.i952, !prof !149

land.rhs.i947.qed_ilt_cli_adv_line.exit953_crit_edge: ; preds = %land.rhs.i947
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit953

do.end.i952:                                      ; preds = %land.rhs.i947
  call void @__sanitizer_cov_trace_pc() #15
  %418 = ptrtoint ptr %val.i674 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %val.i674, align 4
  %420 = ptrtoint ptr %start_line.i950 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %start_line.i950, align 4
  %call.i951 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 1, i32 noundef %419, i32 noundef %sub8.i939, i32 noundef %410, i32 noundef %412, i32 noundef %421) #16
  br label %qed_ilt_cli_adv_line.exit953

qed_ilt_cli_adv_line.exit953:                     ; preds = %do.end.i952, %land.rhs.i947.qed_ilt_cli_adv_line.exit953_crit_edge, %if.end3.i943.qed_ilt_cli_adv_line.exit953_crit_edge, %qed_ilt_cli_adv_line.exit928.qed_ilt_cli_adv_line.exit953_crit_edge
  %curr_line.15 = phi i32 [ %curr_line.14, %qed_ilt_cli_adv_line.exit928.qed_ilt_cli_adv_line.exit953_crit_edge ], [ %add7.i938, %land.rhs.i947.qed_ilt_cli_adv_line.exit953_crit_edge ], [ %add7.i938, %do.end.i952 ], [ %add7.i938, %if.end3.i943.qed_ilt_cli_adv_line.exit953_crit_edge ]
  %inc194 = add nuw i32 %i.31315, 1
  %422 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %vf_count, align 8
  %cmp186 = icmp ult i32 %inc194, %423
  br i1 %cmp186, label %qed_ilt_cli_adv_line.exit953.for.body188_crit_edge, label %qed_ilt_cli_adv_line.exit953.if.end196_crit_edge

qed_ilt_cli_adv_line.exit953.if.end196_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit953
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

qed_ilt_cli_adv_line.exit953.for.body188_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit953
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body188

if.end196:                                        ; preds = %qed_ilt_cli_adv_line.exit953.if.end196_crit_edge, %if.end178.if.end196_crit_edge, %land.lhs.true.if.end196_crit_edge, %qed_cxt_tid_seg_info.exit817.if.end196_crit_edge, %for.cond.6.i815.if.end196_crit_edge
  %curr_line.16 = phi i32 [ %curr_line.9, %qed_cxt_tid_seg_info.exit817.if.end196_crit_edge ], [ %curr_line.9, %land.lhs.true.if.end196_crit_edge ], [ %curr_line.9, %for.cond.6.i815.if.end196_crit_edge ], [ %curr_line.12, %if.end178.if.end196_crit_edge ], [ %curr_line.15, %qed_ilt_cli_adv_line.exit953.if.end196_crit_edge ]
  %arrayidx198 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2
  %424 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 0, ptr %arrayidx198, align 4
  %val.i954 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 1, i32 1
  %425 = ptrtoint ptr %val.i954 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 0, ptr %val.i954, align 4
  %val1.i955 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 2, i32 1
  %426 = ptrtoint ptr %val1.i955 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 0, ptr %val1.i955, align 4
  %pf_blks200 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 4
  %427 = ptrtoint ptr %pf_blks200 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 0, ptr %pf_blks200, align 4
  %428 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %p_cxt_mngr, align 8
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 8
  %cids_per_vf.i959 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 0, i32 1
  %432 = ptrtoint ptr %cids_per_vf.i959 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %cids_per_vf.i959, align 4
  %tid_seg.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 0, i32 2
  %434 = ptrtoint ptr %tid_seg.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %tid_seg.i, align 4
  %arrayidx9.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 0, i32 2, i32 1
  %436 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx9.1.i, align 4
  %add10.1.i = add i32 %435, %437
  %arrayidx9.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 0, i32 2, i32 2
  %438 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx9.2.i, align 4
  %add10.2.i = add i32 %add10.1.i, %439
  %arrayidx9.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 0, i32 2, i32 3
  %440 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx9.3.i, align 4
  %add10.3.i = add i32 %add10.2.i, %441
  %arrayidx11.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 0, i32 2, i32 4
  %442 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx.i957.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1
  %444 = ptrtoint ptr %arrayidx.i957.1 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx.i957.1, align 8
  %add.i958.1 = add i32 %445, %431
  %cids_per_vf.i959.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1, i32 1
  %446 = ptrtoint ptr %cids_per_vf.i959.1 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %cids_per_vf.i959.1, align 4
  %tid_seg.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1, i32 2
  %448 = ptrtoint ptr %tid_seg.i.1 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %tid_seg.i.1, align 4
  %add10.i.1 = add i32 %449, %add10.3.i
  %arrayidx9.1.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1, i32 2, i32 1
  %450 = ptrtoint ptr %arrayidx9.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx9.1.i.1, align 4
  %add10.1.i.1 = add i32 %add10.i.1, %451
  %arrayidx9.2.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1, i32 2, i32 2
  %452 = ptrtoint ptr %arrayidx9.2.i.1 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx9.2.i.1, align 4
  %add10.2.i.1 = add i32 %add10.1.i.1, %453
  %arrayidx9.3.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1, i32 2, i32 3
  %454 = ptrtoint ptr %arrayidx9.3.i.1 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx9.3.i.1, align 4
  %add10.3.i.1 = add i32 %add10.2.i.1, %455
  %add3.i960.1 = add i32 %447, %433
  %arrayidx11.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 1, i32 2, i32 4
  %456 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx11.i.1, align 4
  %add13.i.1 = add i32 %457, %443
  %arrayidx.i957.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2
  %458 = ptrtoint ptr %arrayidx.i957.2 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %arrayidx.i957.2, align 8
  %add.i958.2 = add i32 %459, %add.i958.1
  %cids_per_vf.i959.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2, i32 1
  %460 = ptrtoint ptr %cids_per_vf.i959.2 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %cids_per_vf.i959.2, align 4
  %tid_seg.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2, i32 2
  %462 = ptrtoint ptr %tid_seg.i.2 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %tid_seg.i.2, align 4
  %add10.i.2 = add i32 %463, %add10.3.i.1
  %arrayidx9.1.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2, i32 2, i32 1
  %464 = ptrtoint ptr %arrayidx9.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx9.1.i.2, align 4
  %add10.1.i.2 = add i32 %add10.i.2, %465
  %arrayidx9.2.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2, i32 2, i32 2
  %466 = ptrtoint ptr %arrayidx9.2.i.2 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx9.2.i.2, align 4
  %add10.2.i.2 = add i32 %add10.1.i.2, %467
  %arrayidx9.3.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2, i32 2, i32 3
  %468 = ptrtoint ptr %arrayidx9.3.i.2 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx9.3.i.2, align 4
  %add10.3.i.2 = add i32 %add10.2.i.2, %469
  %add3.i960.2 = add i32 %461, %add3.i960.1
  %arrayidx11.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 2, i32 2, i32 4
  %470 = ptrtoint ptr %arrayidx11.i.2 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx11.i.2, align 4
  %add13.i.2 = add i32 %471, %add13.i.1
  %arrayidx.i957.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3
  %472 = ptrtoint ptr %arrayidx.i957.3 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx.i957.3, align 8
  %add.i958.3 = add i32 %473, %add.i958.2
  %cids_per_vf.i959.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3, i32 1
  %474 = ptrtoint ptr %cids_per_vf.i959.3 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %cids_per_vf.i959.3, align 4
  %tid_seg.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3, i32 2
  %476 = ptrtoint ptr %tid_seg.i.3 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %tid_seg.i.3, align 4
  %add10.i.3 = add i32 %477, %add10.3.i.2
  %arrayidx9.1.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3, i32 2, i32 1
  %478 = ptrtoint ptr %arrayidx9.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %arrayidx9.1.i.3, align 4
  %add10.1.i.3 = add i32 %add10.i.3, %479
  %arrayidx9.2.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3, i32 2, i32 2
  %480 = ptrtoint ptr %arrayidx9.2.i.3 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx9.2.i.3, align 4
  %add10.2.i.3 = add i32 %add10.1.i.3, %481
  %arrayidx9.3.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3, i32 2, i32 3
  %482 = ptrtoint ptr %arrayidx9.3.i.3 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx9.3.i.3, align 4
  %add10.3.i.3 = add i32 %add10.2.i.3, %483
  %add3.i960.3 = add i32 %475, %add3.i960.2
  %arrayidx11.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 3, i32 2, i32 4
  %484 = ptrtoint ptr %arrayidx11.i.3 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx11.i.3, align 4
  %add13.i.3 = add i32 %485, %add13.i.2
  %arrayidx.i957.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4
  %486 = ptrtoint ptr %arrayidx.i957.4 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx.i957.4, align 8
  %add.i958.4 = add i32 %487, %add.i958.3
  %cids_per_vf.i959.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4, i32 1
  %488 = ptrtoint ptr %cids_per_vf.i959.4 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %cids_per_vf.i959.4, align 4
  %tid_seg.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4, i32 2
  %490 = ptrtoint ptr %tid_seg.i.4 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %tid_seg.i.4, align 4
  %add10.i.4 = add i32 %491, %add10.3.i.3
  %arrayidx9.1.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4, i32 2, i32 1
  %492 = ptrtoint ptr %arrayidx9.1.i.4 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx9.1.i.4, align 4
  %add10.1.i.4 = add i32 %add10.i.4, %493
  %arrayidx9.2.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4, i32 2, i32 2
  %494 = ptrtoint ptr %arrayidx9.2.i.4 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx9.2.i.4, align 4
  %add10.2.i.4 = add i32 %add10.1.i.4, %495
  %arrayidx9.3.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4, i32 2, i32 3
  %496 = ptrtoint ptr %arrayidx9.3.i.4 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx9.3.i.4, align 4
  %add10.3.i.4 = add i32 %add10.2.i.4, %497
  %add3.i960.4 = add i32 %489, %add3.i960.3
  %arrayidx11.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 4, i32 2, i32 4
  %498 = ptrtoint ptr %arrayidx11.i.4 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx11.i.4, align 4
  %add13.i.4 = add i32 %499, %add13.i.3
  %arrayidx.i957.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5
  %500 = ptrtoint ptr %arrayidx.i957.5 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx.i957.5, align 8
  %add.i958.5 = add i32 %501, %add.i958.4
  %cids_per_vf.i959.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5, i32 1
  %502 = ptrtoint ptr %cids_per_vf.i959.5 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %cids_per_vf.i959.5, align 4
  %tid_seg.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5, i32 2
  %504 = ptrtoint ptr %tid_seg.i.5 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %tid_seg.i.5, align 4
  %add10.i.5 = add i32 %505, %add10.3.i.4
  %arrayidx9.1.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5, i32 2, i32 1
  %506 = ptrtoint ptr %arrayidx9.1.i.5 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %arrayidx9.1.i.5, align 4
  %add10.1.i.5 = add i32 %add10.i.5, %507
  %arrayidx9.2.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5, i32 2, i32 2
  %508 = ptrtoint ptr %arrayidx9.2.i.5 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx9.2.i.5, align 4
  %add10.2.i.5 = add i32 %add10.1.i.5, %509
  %arrayidx9.3.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5, i32 2, i32 3
  %510 = ptrtoint ptr %arrayidx9.3.i.5 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx9.3.i.5, align 4
  %add10.3.i.5 = add i32 %add10.2.i.5, %511
  %add3.i960.5 = add i32 %503, %add3.i960.4
  %arrayidx11.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 5, i32 2, i32 4
  %512 = ptrtoint ptr %arrayidx11.i.5 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx11.i.5, align 4
  %add13.i.5 = add i32 %513, %add13.i.4
  %arrayidx.i957.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6
  %514 = ptrtoint ptr %arrayidx.i957.6 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %arrayidx.i957.6, align 8
  %add.i958.6 = add i32 %515, %add.i958.5
  %cids_per_vf.i959.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6, i32 1
  %516 = ptrtoint ptr %cids_per_vf.i959.6 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %cids_per_vf.i959.6, align 4
  %tid_seg.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6, i32 2
  %518 = ptrtoint ptr %tid_seg.i.6 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %tid_seg.i.6, align 4
  %add10.i.6 = add i32 %519, %add10.3.i.5
  %arrayidx9.1.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6, i32 2, i32 1
  %520 = ptrtoint ptr %arrayidx9.1.i.6 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx9.1.i.6, align 4
  %add10.1.i.6 = add i32 %add10.i.6, %521
  %arrayidx9.2.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6, i32 2, i32 2
  %522 = ptrtoint ptr %arrayidx9.2.i.6 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %arrayidx9.2.i.6, align 4
  %add10.2.i.6 = add i32 %add10.1.i.6, %523
  %arrayidx9.3.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6, i32 2, i32 3
  %524 = ptrtoint ptr %arrayidx9.3.i.6 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %arrayidx9.3.i.6, align 4
  %add10.3.i.6 = add i32 %add10.2.i.6, %525
  %add3.i960.6 = add i32 %517, %add3.i960.5
  %arrayidx11.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 6, i32 2, i32 4
  %526 = ptrtoint ptr %arrayidx11.i.6 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %arrayidx11.i.6, align 4
  %add13.i.6 = add i32 %527, %add13.i.5
  %arrayidx.i957.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7
  %528 = ptrtoint ptr %arrayidx.i957.7 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %arrayidx.i957.7, align 8
  %add.i958.7 = add i32 %529, %add.i958.6
  %cids_per_vf.i959.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7, i32 1
  %530 = ptrtoint ptr %cids_per_vf.i959.7 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %cids_per_vf.i959.7, align 4
  %tid_seg.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7, i32 2
  %532 = ptrtoint ptr %tid_seg.i.7 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %tid_seg.i.7, align 4
  %add10.i.7 = add i32 %533, %add10.3.i.6
  %arrayidx9.1.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7, i32 2, i32 1
  %534 = ptrtoint ptr %arrayidx9.1.i.7 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx9.1.i.7, align 4
  %add10.1.i.7 = add i32 %add10.i.7, %535
  %arrayidx9.2.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7, i32 2, i32 2
  %536 = ptrtoint ptr %arrayidx9.2.i.7 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx9.2.i.7, align 4
  %add10.2.i.7 = add i32 %add10.1.i.7, %537
  %arrayidx9.3.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7, i32 2, i32 3
  %538 = ptrtoint ptr %arrayidx9.3.i.7 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %arrayidx9.3.i.7, align 4
  %add10.3.i.7 = add i32 %add10.2.i.7, %539
  %add3.i960.7 = add i32 %531, %add3.i960.6
  %arrayidx11.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %429, i32 0, i32 7, i32 2, i32 4
  %540 = ptrtoint ptr %arrayidx11.i.7 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %arrayidx11.i.7, align 4
  %add13.i.7 = add i32 %541, %add13.i.6
  %vf_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %429, i32 0, i32 3
  %542 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %vf_count.i, align 8
  %mul.i962 = mul i32 %543, %add13.i.7
  %add19.i = add i32 %mul.i962, %add10.3.i.7
  %544 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %545)
  %cmp20.i = icmp eq i8 %545, 0
  br i1 %cmp20.i, label %land.rhs.i967, label %if.end196.qed_cxt_qm_iids.exit_crit_edge

if.end196.qed_cxt_qm_iids.exit_crit_edge:         ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_qm_iids.exit

land.rhs.i967:                                    ; preds = %if.end196
  %546 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %dp_module.i706, align 4
  %and.i965 = and i32 %547, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i965)
  %tobool.not.i966 = icmp eq i32 %and.i965, 0
  br i1 %tobool.not.i966, label %land.rhs.i967.qed_cxt_qm_iids.exit_crit_edge, label %do.end.i970, !prof !149

land.rhs.i967.qed_cxt_qm_iids.exit_crit_edge:     ; preds = %land.rhs.i967
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_qm_iids.exit

do.end.i970:                                      ; preds = %land.rhs.i967
  call void @__sanitizer_cov_trace_pc() #15
  %call.i969 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 253, ptr noundef nonnull %name.i710, i32 noundef %add.i958.7, i32 noundef %add3.i960.7, i32 noundef %add19.i, i32 noundef %add13.i.7) #16
  br label %qed_cxt_qm_iids.exit

qed_cxt_qm_iids.exit:                             ; preds = %do.end.i970, %land.rhs.i967.qed_cxt_qm_iids.exit_crit_edge, %if.end196.qed_cxt_qm_iids.exit_crit_edge
  %num_pqs = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 13
  %548 = ptrtoint ptr %num_pqs to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %num_pqs, align 4
  %num_vf_pqs = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 14
  %550 = ptrtoint ptr %num_vf_pqs to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %num_vf_pqs, align 2
  %call204 = tail call i32 @qed_qm_pf_mem_size(i32 noundef %add.i958.7, i32 noundef %add3.i960.7, i32 noundef %add19.i, i16 noundef zeroext %549, i16 noundef zeroext %551) #13
  %552 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %553)
  %cmp208 = icmp eq i8 %553, 0
  br i1 %cmp208, label %land.rhs210, label %qed_cxt_qm_iids.exit.do.end247_crit_edge

qed_cxt_qm_iids.exit.do.end247_crit_edge:         ; preds = %qed_cxt_qm_iids.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end247

land.rhs210:                                      ; preds = %qed_cxt_qm_iids.exit
  %554 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %dp_module.i706, align 4
  %and212 = and i32 %555, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %land.rhs210.do.end247_crit_edge, label %do.end224, !prof !149

land.rhs210.do.end247_crit_edge:                  ; preds = %land.rhs210
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end247

do.end224:                                        ; preds = %land.rhs210
  call void @__sanitizer_cov_trace_pc() #15
  %tobool228.not = icmp eq ptr %name.i710, null
  %spec.select596 = select i1 %tobool228.not, ptr @.str.3, ptr %name.i710
  %556 = ptrtoint ptr %num_pqs to i32
  call void @__asan_load2_noabort(i32 %556)
  %557 = load i16, ptr %num_pqs, align 4
  %conv240 = zext i16 %557 to i32
  %558 = ptrtoint ptr %num_vf_pqs to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %num_vf_pqs, align 2
  %conv243 = zext i16 %559 to i32
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 646, ptr noundef nonnull %spec.select596, i32 noundef %add.i958.7, i32 noundef %add3.i960.7, i32 noundef %add19.i, i32 noundef %conv240, i32 noundef %conv243, i32 noundef %call204) #16
  br label %do.end247

do.end247:                                        ; preds = %do.end224, %land.rhs210.do.end247_crit_edge, %qed_cxt_qm_iids.exit.do.end247_crit_edge
  %560 = ptrtoint ptr %pf_blks200 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %pf_blks200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %tobool.not.i974 = icmp eq i32 %561, 0
  br i1 %tobool.not.i974, label %qed_ilt_cli_blk_fill.exit982, label %do.end247.if.end.i985_crit_edge

do.end247.if.end.i985_crit_edge:                  ; preds = %do.end247
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i985

qed_ilt_cli_blk_fill.exit982:                     ; preds = %do.end247
  %val.i971 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 3, i32 1
  %562 = ptrtoint ptr %val.i971 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %val.i971, align 4
  %add.i972 = add i32 %563, 12
  %shl.i973 = shl nuw i32 1, %add.i972
  %mul248 = shl i32 %call204, 12
  %564 = ptrtoint ptr %pf_blks200 to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 %mul248, ptr %pf_blks200, align 4
  %real_size_in_page.i975 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 4, i32 0, i32 1
  %mul.i977 = and i32 %shl.i973, -4
  %565 = ptrtoint ptr %real_size_in_page.i975 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %mul.i977, ptr %real_size_in_page.i975, align 4
  %start_line7.i980 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 4, i32 0, i32 2
  %566 = ptrtoint ptr %start_line7.i980 to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %curr_line.16, ptr %start_line7.i980, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul248)
  %tobool.not.i983 = icmp eq i32 %mul248, 0
  br i1 %tobool.not.i983, label %qed_ilt_cli_blk_fill.exit982.qed_ilt_cli_adv_line.exit1007_crit_edge, label %qed_ilt_cli_blk_fill.exit982.if.end.i985_crit_edge

qed_ilt_cli_blk_fill.exit982.if.end.i985_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit982
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i985

qed_ilt_cli_blk_fill.exit982.qed_ilt_cli_adv_line.exit1007_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit982
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1007

if.end.i985:                                      ; preds = %qed_ilt_cli_blk_fill.exit982.if.end.i985_crit_edge, %do.end247.if.end.i985_crit_edge
  %567 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx198, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %568)
  %tobool1.not.i984 = icmp eq i8 %568, 0
  br i1 %tobool1.not.i984, label %if.then2.i987, label %if.end.i985.if.end3.i997_crit_edge

if.end.i985.if.end3.i997_crit_edge:               ; preds = %if.end.i985
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i997

if.then2.i987:                                    ; preds = %if.end.i985
  call void @__sanitizer_cov_trace_pc() #15
  %569 = ptrtoint ptr %val.i954 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %curr_line.16, ptr %val.i954, align 4
  br label %if.end3.i997

if.end3.i997:                                     ; preds = %if.then2.i987, %if.end.i985.if.end3.i997_crit_edge
  %570 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 1, ptr %arrayidx198, align 4
  %571 = ptrtoint ptr %pf_blks200 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %pf_blks200, align 4
  %real_size_in_page.i988 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 4, i32 0, i32 1
  %573 = ptrtoint ptr %real_size_in_page.i988 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %real_size_in_page.i988, align 4
  %add.i989 = add i32 %572, -1
  %sub.i990 = add i32 %add.i989, %574
  %div.i991 = udiv i32 %sub.i990, %574
  %add7.i992 = add i32 %div.i991, %curr_line.16
  %sub8.i993 = add i32 %add7.i992, -1
  %575 = ptrtoint ptr %val1.i955 to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 %sub8.i993, ptr %val1.i955, align 4
  %576 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %577)
  %cmp.i996 = icmp eq i8 %577, 0
  br i1 %cmp.i996, label %land.rhs.i1001, label %if.end3.i997.qed_ilt_cli_adv_line.exit1007_crit_edge

if.end3.i997.qed_ilt_cli_adv_line.exit1007_crit_edge: ; preds = %if.end3.i997
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1007

land.rhs.i1001:                                   ; preds = %if.end3.i997
  %578 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %dp_module.i706, align 4
  %and.i999 = and i32 %579, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i999)
  %tobool11.not.i1000 = icmp eq i32 %and.i999, 0
  br i1 %tobool11.not.i1000, label %land.rhs.i1001.qed_ilt_cli_adv_line.exit1007_crit_edge, label %do.end.i1006, !prof !149

land.rhs.i1001.qed_ilt_cli_adv_line.exit1007_crit_edge: ; preds = %land.rhs.i1001
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1007

do.end.i1006:                                     ; preds = %land.rhs.i1001
  call void @__sanitizer_cov_trace_pc() #15
  %580 = ptrtoint ptr %val.i954 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %val.i954, align 4
  %start_line.i1004 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 4, i32 0, i32 2
  %582 = ptrtoint ptr %start_line.i1004 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %start_line.i1004, align 4
  %call.i1005 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 2, i32 noundef %581, i32 noundef %sub8.i993, i32 noundef %572, i32 noundef %574, i32 noundef %583) #16
  br label %qed_ilt_cli_adv_line.exit1007

qed_ilt_cli_adv_line.exit1007:                    ; preds = %do.end.i1006, %land.rhs.i1001.qed_ilt_cli_adv_line.exit1007_crit_edge, %if.end3.i997.qed_ilt_cli_adv_line.exit1007_crit_edge, %qed_ilt_cli_blk_fill.exit982.qed_ilt_cli_adv_line.exit1007_crit_edge
  %curr_line.17 = phi i32 [ %curr_line.16, %qed_ilt_cli_blk_fill.exit982.qed_ilt_cli_adv_line.exit1007_crit_edge ], [ %add7.i992, %land.rhs.i1001.qed_ilt_cli_adv_line.exit1007_crit_edge ], [ %add7.i992, %do.end.i1006 ], [ %add7.i992, %if.end3.i997.qed_ilt_cli_adv_line.exit1007_crit_edge ]
  %start_line249 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 4, i32 0, i32 2
  %584 = ptrtoint ptr %start_line249 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %start_line249, align 4
  %sub250 = sub i32 %curr_line.17, %585
  %pf_total_lines251 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 2, i32 5
  %586 = ptrtoint ptr %pf_total_lines251 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 %sub250, ptr %pf_total_lines251, align 4
  %arrayidx253 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4
  %587 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %arrayidx253, align 4
  %val.i1008 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 1, i32 1
  %588 = ptrtoint ptr %val.i1008 to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 0, ptr %val.i1008, align 4
  %val1.i1009 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 2, i32 1
  %589 = ptrtoint ptr %val1.i1009 to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 0, ptr %val1.i1009, align 4
  %590 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %1, align 8
  %592 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %cids_per_vf.i, align 4
  %594 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %arrayidx.1.i, align 8
  %add.1.i1015 = add i32 %595, %591
  %596 = ptrtoint ptr %cids_per_vf.1.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %cids_per_vf.1.i, align 4
  %add3.1.i1017 = add i32 %597, %593
  %598 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %arrayidx.5.i, align 8
  %add.5.i1019 = add i32 %add.1.i1015, %599
  %600 = ptrtoint ptr %cids_per_vf.5.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %cids_per_vf.5.i, align 4
  %add3.5.i1021 = add i32 %add3.1.i1017, %601
  %arfs_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 14
  %602 = ptrtoint ptr %arfs_count.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %arfs_count.i, align 8
  %add5.i = add i32 %add.5.i1019, %603
  %604 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %vf_count, align 8
  %mul258 = mul i32 %605, %add3.5.i1021
  %add259 = add i32 %add5.i, %mul258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add259)
  %tobool260.not = icmp eq i32 %add259, 0
  br i1 %tobool260.not, label %qed_ilt_cli_adv_line.exit1007.if.end306_crit_edge, label %qed_ilt_cli_blk_fill.exit1036

qed_ilt_cli_adv_line.exit1007.if.end306_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit1007
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

qed_ilt_cli_blk_fill.exit1036:                    ; preds = %qed_ilt_cli_adv_line.exit1007
  %606 = tail call i32 @llvm.umax.i32(i32 %add259, i32 256)
  %sub274 = add i32 %606, -1
  %607 = tail call i32 @llvm.ctlz.i32(i32 %sub274, i1 true) #13, !range !151
  %sub.i.i.i = sub nuw nsw i32 32, %607
  %pf_blks299 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 4
  %mul302 = shl i32 64, %sub.i.i.i
  %val.i1025 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 3, i32 1
  %608 = ptrtoint ptr %val.i1025 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %val.i1025, align 4
  %add.i1026 = add i32 %609, 12
  %shl.i1027 = shl nuw i32 1, %add.i1026
  %610 = ptrtoint ptr %pf_blks299 to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 %mul302, ptr %pf_blks299, align 4
  %real_size_in_page.i1029 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 1
  %mul.i1031 = and i32 %shl.i1027, -64
  %611 = ptrtoint ptr %real_size_in_page.i1029 to i32
  call void @__asan_store4_noabort(i32 %611)
  store i32 %mul.i1031, ptr %real_size_in_page.i1029, align 4
  %start_line7.i1034 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 2
  %612 = ptrtoint ptr %start_line7.i1034 to i32
  call void @__asan_store4_noabort(i32 %612)
  store i32 %curr_line.17, ptr %start_line7.i1034, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %sub274)
  %tobool.not.i1037 = icmp ugt i32 %sub274, 33554431
  br i1 %tobool.not.i1037, label %qed_ilt_cli_blk_fill.exit1036.qed_ilt_cli_adv_line.exit1061_crit_edge, label %if.end.i1039

qed_ilt_cli_blk_fill.exit1036.qed_ilt_cli_adv_line.exit1061_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit1036
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1061

if.end.i1039:                                     ; preds = %qed_ilt_cli_blk_fill.exit1036
  %613 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %arrayidx253, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %614)
  %tobool1.not.i1038 = icmp eq i8 %614, 0
  br i1 %tobool1.not.i1038, label %if.then2.i1041, label %if.end.i1039.if.end3.i1051_crit_edge

if.end.i1039.if.end3.i1051_crit_edge:             ; preds = %if.end.i1039
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i1051

if.then2.i1041:                                   ; preds = %if.end.i1039
  call void @__sanitizer_cov_trace_pc() #15
  %615 = ptrtoint ptr %val.i1008 to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 %curr_line.17, ptr %val.i1008, align 4
  br label %if.end3.i1051

if.end3.i1051:                                    ; preds = %if.then2.i1041, %if.end.i1039.if.end3.i1051_crit_edge
  %616 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 1, ptr %arrayidx253, align 4
  %617 = ptrtoint ptr %pf_blks299 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %pf_blks299, align 4
  %619 = ptrtoint ptr %real_size_in_page.i1029 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %real_size_in_page.i1029, align 4
  %add.i1043 = add i32 %618, -1
  %sub.i1044 = add i32 %add.i1043, %620
  %div.i1045 = udiv i32 %sub.i1044, %620
  %add7.i1046 = add i32 %div.i1045, %curr_line.17
  %sub8.i1047 = add i32 %add7.i1046, -1
  %621 = ptrtoint ptr %val1.i1009 to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 %sub8.i1047, ptr %val1.i1009, align 4
  %622 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %623)
  %cmp.i1050 = icmp eq i8 %623, 0
  br i1 %cmp.i1050, label %land.rhs.i1055, label %if.end3.i1051.qed_ilt_cli_adv_line.exit1061_crit_edge

if.end3.i1051.qed_ilt_cli_adv_line.exit1061_crit_edge: ; preds = %if.end3.i1051
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1061

land.rhs.i1055:                                   ; preds = %if.end3.i1051
  %624 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %dp_module.i706, align 4
  %and.i1053 = and i32 %625, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1053)
  %tobool11.not.i1054 = icmp eq i32 %and.i1053, 0
  br i1 %tobool11.not.i1054, label %land.rhs.i1055.qed_ilt_cli_adv_line.exit1061_crit_edge, label %do.end.i1060, !prof !149

land.rhs.i1055.qed_ilt_cli_adv_line.exit1061_crit_edge: ; preds = %land.rhs.i1055
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1061

do.end.i1060:                                     ; preds = %land.rhs.i1055
  call void @__sanitizer_cov_trace_pc() #15
  %626 = ptrtoint ptr %val.i1008 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %val.i1008, align 4
  %628 = ptrtoint ptr %start_line7.i1034 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %start_line7.i1034, align 4
  %call.i1059 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 4, i32 noundef %627, i32 noundef %sub8.i1047, i32 noundef %618, i32 noundef %620, i32 noundef %629) #16
  br label %qed_ilt_cli_adv_line.exit1061

qed_ilt_cli_adv_line.exit1061:                    ; preds = %do.end.i1060, %land.rhs.i1055.qed_ilt_cli_adv_line.exit1061_crit_edge, %if.end3.i1051.qed_ilt_cli_adv_line.exit1061_crit_edge, %qed_ilt_cli_blk_fill.exit1036.qed_ilt_cli_adv_line.exit1061_crit_edge
  %curr_line.18 = phi i32 [ %curr_line.17, %qed_ilt_cli_blk_fill.exit1036.qed_ilt_cli_adv_line.exit1061_crit_edge ], [ %add7.i1046, %land.rhs.i1055.qed_ilt_cli_adv_line.exit1061_crit_edge ], [ %add7.i1046, %do.end.i1060 ], [ %add7.i1046, %if.end3.i1051.qed_ilt_cli_adv_line.exit1061_crit_edge ]
  %630 = ptrtoint ptr %start_line7.i1034 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %start_line7.i1034, align 4
  %sub304 = sub i32 %curr_line.18, %631
  %pf_total_lines305 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 4, i32 5
  %632 = ptrtoint ptr %pf_total_lines305 to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 %sub304, ptr %pf_total_lines305, align 4
  br label %if.end306

if.end306:                                        ; preds = %qed_ilt_cli_adv_line.exit1061, %qed_ilt_cli_adv_line.exit1007.if.end306_crit_edge
  %curr_line.19 = phi i32 [ %curr_line.17, %qed_ilt_cli_adv_line.exit1007.if.end306_crit_edge ], [ %curr_line.18, %qed_ilt_cli_adv_line.exit1061 ]
  %arrayidx308 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3
  %633 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 0, ptr %arrayidx308, align 4
  %val.i1062 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 1, i32 1
  %634 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_store4_noabort(i32 %634)
  store i32 0, ptr %val.i1062, align 4
  %val1.i1063 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 2, i32 1
  %635 = ptrtoint ptr %val1.i1063 to i32
  call void @__asan_store4_noabort(i32 %635)
  store i32 0, ptr %val1.i1063, align 4
  call fastcc void @qed_cxt_tm_iids(ptr noundef %1, ptr noundef nonnull %tm_iids)
  %636 = ptrtoint ptr %tm_iids to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %tm_iids, align 4
  %638 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %2, align 4
  %add311 = add i32 %639, %637
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add311)
  %tobool312.not = icmp eq i32 %add311, 0
  br i1 %tobool312.not, label %if.end306.if.end321_crit_edge, label %qed_ilt_cli_blk_fill.exit1075

if.end306.if.end321_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end321

qed_ilt_cli_blk_fill.exit1075:                    ; preds = %if.end306
  %pf_blks314 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 4
  %mul317 = shl i32 %add311, 2
  %val.i1064 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 3, i32 1
  %640 = ptrtoint ptr %val.i1064 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %val.i1064, align 4
  %add.i1065 = add i32 %641, 12
  %shl.i1066 = shl nuw i32 1, %add.i1065
  %642 = ptrtoint ptr %pf_blks314 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 %mul317, ptr %pf_blks314, align 4
  %real_size_in_page.i1068 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 4, i32 0, i32 1
  %mul.i1070 = and i32 %shl.i1066, -4
  %643 = ptrtoint ptr %real_size_in_page.i1068 to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 %mul.i1070, ptr %real_size_in_page.i1068, align 4
  %start_line7.i1073 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 4, i32 0, i32 2
  %644 = ptrtoint ptr %start_line7.i1073 to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 %curr_line.19, ptr %start_line7.i1073, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul317)
  %tobool.not.i1076 = icmp eq i32 %mul317, 0
  br i1 %tobool.not.i1076, label %qed_ilt_cli_blk_fill.exit1075.qed_ilt_cli_adv_line.exit1100_crit_edge, label %if.end.i1078

qed_ilt_cli_blk_fill.exit1075.qed_ilt_cli_adv_line.exit1100_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit1075
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1100

if.end.i1078:                                     ; preds = %qed_ilt_cli_blk_fill.exit1075
  %645 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %arrayidx308, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %646)
  %tobool1.not.i1077 = icmp eq i8 %646, 0
  br i1 %tobool1.not.i1077, label %if.then2.i1080, label %if.end.i1078.if.end3.i1090_crit_edge

if.end.i1078.if.end3.i1090_crit_edge:             ; preds = %if.end.i1078
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i1090

if.then2.i1080:                                   ; preds = %if.end.i1078
  call void @__sanitizer_cov_trace_pc() #15
  %647 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %curr_line.19, ptr %val.i1062, align 4
  br label %if.end3.i1090

if.end3.i1090:                                    ; preds = %if.then2.i1080, %if.end.i1078.if.end3.i1090_crit_edge
  %648 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 1, ptr %arrayidx308, align 4
  %649 = ptrtoint ptr %pf_blks314 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %pf_blks314, align 4
  %651 = ptrtoint ptr %real_size_in_page.i1068 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %real_size_in_page.i1068, align 4
  %add.i1082 = add i32 %650, -1
  %sub.i1083 = add i32 %add.i1082, %652
  %div.i1084 = udiv i32 %sub.i1083, %652
  %add7.i1085 = add i32 %div.i1084, %curr_line.19
  %sub8.i1086 = add i32 %add7.i1085, -1
  %653 = ptrtoint ptr %val1.i1063 to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 %sub8.i1086, ptr %val1.i1063, align 4
  %654 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %655)
  %cmp.i1089 = icmp eq i8 %655, 0
  br i1 %cmp.i1089, label %land.rhs.i1094, label %if.end3.i1090.qed_ilt_cli_adv_line.exit1100_crit_edge

if.end3.i1090.qed_ilt_cli_adv_line.exit1100_crit_edge: ; preds = %if.end3.i1090
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1100

land.rhs.i1094:                                   ; preds = %if.end3.i1090
  %656 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %dp_module.i706, align 4
  %and.i1092 = and i32 %657, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1092)
  %tobool11.not.i1093 = icmp eq i32 %and.i1092, 0
  br i1 %tobool11.not.i1093, label %land.rhs.i1094.qed_ilt_cli_adv_line.exit1100_crit_edge, label %do.end.i1099, !prof !149

land.rhs.i1094.qed_ilt_cli_adv_line.exit1100_crit_edge: ; preds = %land.rhs.i1094
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1100

do.end.i1099:                                     ; preds = %land.rhs.i1094
  call void @__sanitizer_cov_trace_pc() #15
  %658 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %val.i1062, align 4
  %660 = ptrtoint ptr %start_line7.i1073 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %start_line7.i1073, align 4
  %call.i1098 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 3, i32 noundef %659, i32 noundef %sub8.i1086, i32 noundef %650, i32 noundef %652, i32 noundef %661) #16
  br label %qed_ilt_cli_adv_line.exit1100

qed_ilt_cli_adv_line.exit1100:                    ; preds = %do.end.i1099, %land.rhs.i1094.qed_ilt_cli_adv_line.exit1100_crit_edge, %if.end3.i1090.qed_ilt_cli_adv_line.exit1100_crit_edge, %qed_ilt_cli_blk_fill.exit1075.qed_ilt_cli_adv_line.exit1100_crit_edge
  %curr_line.20 = phi i32 [ %curr_line.19, %qed_ilt_cli_blk_fill.exit1075.qed_ilt_cli_adv_line.exit1100_crit_edge ], [ %add7.i1085, %land.rhs.i1094.qed_ilt_cli_adv_line.exit1100_crit_edge ], [ %add7.i1085, %do.end.i1099 ], [ %add7.i1085, %if.end3.i1090.qed_ilt_cli_adv_line.exit1100_crit_edge ]
  %662 = ptrtoint ptr %start_line7.i1073 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %start_line7.i1073, align 4
  %sub319 = sub i32 %curr_line.20, %663
  %pf_total_lines320 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 5
  %664 = ptrtoint ptr %pf_total_lines320 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %sub319, ptr %pf_total_lines320, align 4
  br label %if.end321

if.end321:                                        ; preds = %qed_ilt_cli_adv_line.exit1100, %if.end306.if.end321_crit_edge
  %curr_line.21 = phi i32 [ %curr_line.19, %if.end306.if.end321_crit_edge ], [ %curr_line.20, %qed_ilt_cli_adv_line.exit1100 ]
  %665 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %3, align 4
  %667 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %4, align 4
  %add323 = add i32 %668, %666
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add323)
  %tobool324.not = icmp eq i32 %add323, 0
  br i1 %tobool324.not, label %if.end321.if.end341_crit_edge, label %qed_ilt_cli_blk_fill.exit1112

if.end321.if.end341_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341

qed_ilt_cli_blk_fill.exit1112:                    ; preds = %if.end321
  %vf_blks326 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 6
  %mul329 = shl i32 %add323, 2
  %val.i1101 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 3, i32 1
  %669 = ptrtoint ptr %val.i1101 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %val.i1101, align 4
  %add.i1102 = add i32 %670, 12
  %shl.i1103 = shl nuw i32 1, %add.i1102
  %671 = ptrtoint ptr %vf_blks326 to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 %mul329, ptr %vf_blks326, align 4
  %real_size_in_page.i1105 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 6, i32 0, i32 1
  %mul.i1107 = and i32 %shl.i1103, -4
  %672 = ptrtoint ptr %real_size_in_page.i1105 to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 %mul.i1107, ptr %real_size_in_page.i1105, align 4
  %start_line7.i1110 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 6, i32 0, i32 2
  %673 = ptrtoint ptr %start_line7.i1110 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 %curr_line.21, ptr %start_line7.i1110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul329)
  %tobool.not.i1113 = icmp eq i32 %mul329, 0
  br i1 %tobool.not.i1113, label %qed_ilt_cli_blk_fill.exit1112.qed_ilt_cli_adv_line.exit1137_crit_edge, label %if.end.i1115

qed_ilt_cli_blk_fill.exit1112.qed_ilt_cli_adv_line.exit1137_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit1112
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1137

if.end.i1115:                                     ; preds = %qed_ilt_cli_blk_fill.exit1112
  %674 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %arrayidx308, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %675)
  %tobool1.not.i1114 = icmp eq i8 %675, 0
  br i1 %tobool1.not.i1114, label %if.then2.i1117, label %if.end.i1115.if.end3.i1127_crit_edge

if.end.i1115.if.end3.i1127_crit_edge:             ; preds = %if.end.i1115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i1127

if.then2.i1117:                                   ; preds = %if.end.i1115
  call void @__sanitizer_cov_trace_pc() #15
  %676 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %curr_line.21, ptr %val.i1062, align 4
  br label %if.end3.i1127

if.end3.i1127:                                    ; preds = %if.then2.i1117, %if.end.i1115.if.end3.i1127_crit_edge
  %677 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %677)
  store i8 1, ptr %arrayidx308, align 4
  %678 = ptrtoint ptr %vf_blks326 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %vf_blks326, align 4
  %680 = ptrtoint ptr %real_size_in_page.i1105 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %real_size_in_page.i1105, align 4
  %add.i1119 = add i32 %679, -1
  %sub.i1120 = add i32 %add.i1119, %681
  %div.i1121 = udiv i32 %sub.i1120, %681
  %add7.i1122 = add i32 %div.i1121, %curr_line.21
  %sub8.i1123 = add i32 %add7.i1122, -1
  %682 = ptrtoint ptr %val1.i1063 to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 %sub8.i1123, ptr %val1.i1063, align 4
  %683 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %684)
  %cmp.i1126 = icmp eq i8 %684, 0
  br i1 %cmp.i1126, label %land.rhs.i1131, label %if.end3.i1127.qed_ilt_cli_adv_line.exit1137_crit_edge

if.end3.i1127.qed_ilt_cli_adv_line.exit1137_crit_edge: ; preds = %if.end3.i1127
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1137

land.rhs.i1131:                                   ; preds = %if.end3.i1127
  %685 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %dp_module.i706, align 4
  %and.i1129 = and i32 %686, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1129)
  %tobool11.not.i1130 = icmp eq i32 %and.i1129, 0
  br i1 %tobool11.not.i1130, label %land.rhs.i1131.qed_ilt_cli_adv_line.exit1137_crit_edge, label %do.end.i1136, !prof !149

land.rhs.i1131.qed_ilt_cli_adv_line.exit1137_crit_edge: ; preds = %land.rhs.i1131
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1137

do.end.i1136:                                     ; preds = %land.rhs.i1131
  call void @__sanitizer_cov_trace_pc() #15
  %687 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %val.i1062, align 4
  %689 = ptrtoint ptr %start_line7.i1110 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %start_line7.i1110, align 4
  %call.i1135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 3, i32 noundef %688, i32 noundef %sub8.i1123, i32 noundef %679, i32 noundef %681, i32 noundef %690) #16
  br label %qed_ilt_cli_adv_line.exit1137

qed_ilt_cli_adv_line.exit1137:                    ; preds = %do.end.i1136, %land.rhs.i1131.qed_ilt_cli_adv_line.exit1137_crit_edge, %if.end3.i1127.qed_ilt_cli_adv_line.exit1137_crit_edge, %qed_ilt_cli_blk_fill.exit1112.qed_ilt_cli_adv_line.exit1137_crit_edge
  %curr_line.22 = phi i32 [ %curr_line.21, %qed_ilt_cli_blk_fill.exit1112.qed_ilt_cli_adv_line.exit1137_crit_edge ], [ %add7.i1122, %land.rhs.i1131.qed_ilt_cli_adv_line.exit1137_crit_edge ], [ %add7.i1122, %do.end.i1136 ], [ %add7.i1122, %if.end3.i1127.qed_ilt_cli_adv_line.exit1137_crit_edge ]
  %691 = ptrtoint ptr %start_line7.i1110 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %start_line7.i1110, align 4
  %sub331 = sub i32 %curr_line.22, %692
  %vf_total_lines332 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 3, i32 7
  %693 = ptrtoint ptr %vf_total_lines332 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %sub331, ptr %vf_total_lines332, align 4
  %694 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %vf_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %695)
  %cmp3351317 = icmp ugt i32 %695, 1
  br i1 %cmp3351317, label %qed_ilt_cli_adv_line.exit1137.for.body337_crit_edge, label %qed_ilt_cli_adv_line.exit1137.if.end341_crit_edge

qed_ilt_cli_adv_line.exit1137.if.end341_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit1137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341

qed_ilt_cli_adv_line.exit1137.for.body337_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit1137
  br label %for.body337

for.body337:                                      ; preds = %qed_ilt_cli_adv_line.exit1162.for.body337_crit_edge, %qed_ilt_cli_adv_line.exit1137.for.body337_crit_edge
  %i.41319 = phi i32 [ %inc339, %qed_ilt_cli_adv_line.exit1162.for.body337_crit_edge ], [ 1, %qed_ilt_cli_adv_line.exit1137.for.body337_crit_edge ]
  %curr_line.231318 = phi i32 [ %curr_line.24, %qed_ilt_cli_adv_line.exit1162.for.body337_crit_edge ], [ %curr_line.22, %qed_ilt_cli_adv_line.exit1137.for.body337_crit_edge ]
  %696 = ptrtoint ptr %vf_blks326 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %vf_blks326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %697)
  %tobool.not.i1138 = icmp eq i32 %697, 0
  br i1 %tobool.not.i1138, label %for.body337.qed_ilt_cli_adv_line.exit1162_crit_edge, label %if.end.i1140

for.body337.qed_ilt_cli_adv_line.exit1162_crit_edge: ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1162

if.end.i1140:                                     ; preds = %for.body337
  %698 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %arrayidx308, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %699)
  %tobool1.not.i1139 = icmp eq i8 %699, 0
  br i1 %tobool1.not.i1139, label %if.then2.i1142, label %if.end.i1140.if.end3.i1152_crit_edge

if.end.i1140.if.end3.i1152_crit_edge:             ; preds = %if.end.i1140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i1152

if.then2.i1142:                                   ; preds = %if.end.i1140
  call void @__sanitizer_cov_trace_pc() #15
  %700 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 %curr_line.231318, ptr %val.i1062, align 4
  br label %if.end3.i1152

if.end3.i1152:                                    ; preds = %if.then2.i1142, %if.end.i1140.if.end3.i1152_crit_edge
  %701 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 1, ptr %arrayidx308, align 4
  %702 = ptrtoint ptr %vf_blks326 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %vf_blks326, align 4
  %704 = ptrtoint ptr %real_size_in_page.i1105 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %real_size_in_page.i1105, align 4
  %add.i1144 = add i32 %703, -1
  %sub.i1145 = add i32 %add.i1144, %705
  %div.i1146 = udiv i32 %sub.i1145, %705
  %add7.i1147 = add i32 %div.i1146, %curr_line.231318
  %sub8.i1148 = add i32 %add7.i1147, -1
  %706 = ptrtoint ptr %val1.i1063 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %sub8.i1148, ptr %val1.i1063, align 4
  %707 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %708)
  %cmp.i1151 = icmp eq i8 %708, 0
  br i1 %cmp.i1151, label %land.rhs.i1156, label %if.end3.i1152.qed_ilt_cli_adv_line.exit1162_crit_edge

if.end3.i1152.qed_ilt_cli_adv_line.exit1162_crit_edge: ; preds = %if.end3.i1152
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1162

land.rhs.i1156:                                   ; preds = %if.end3.i1152
  %709 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %dp_module.i706, align 4
  %and.i1154 = and i32 %710, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1154)
  %tobool11.not.i1155 = icmp eq i32 %and.i1154, 0
  br i1 %tobool11.not.i1155, label %land.rhs.i1156.qed_ilt_cli_adv_line.exit1162_crit_edge, label %do.end.i1161, !prof !149

land.rhs.i1156.qed_ilt_cli_adv_line.exit1162_crit_edge: ; preds = %land.rhs.i1156
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1162

do.end.i1161:                                     ; preds = %land.rhs.i1156
  call void @__sanitizer_cov_trace_pc() #15
  %711 = ptrtoint ptr %val.i1062 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %val.i1062, align 4
  %713 = ptrtoint ptr %start_line7.i1110 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %start_line7.i1110, align 4
  %call.i1160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 3, i32 noundef %712, i32 noundef %sub8.i1148, i32 noundef %703, i32 noundef %705, i32 noundef %714) #16
  br label %qed_ilt_cli_adv_line.exit1162

qed_ilt_cli_adv_line.exit1162:                    ; preds = %do.end.i1161, %land.rhs.i1156.qed_ilt_cli_adv_line.exit1162_crit_edge, %if.end3.i1152.qed_ilt_cli_adv_line.exit1162_crit_edge, %for.body337.qed_ilt_cli_adv_line.exit1162_crit_edge
  %curr_line.24 = phi i32 [ %curr_line.231318, %for.body337.qed_ilt_cli_adv_line.exit1162_crit_edge ], [ %add7.i1147, %land.rhs.i1156.qed_ilt_cli_adv_line.exit1162_crit_edge ], [ %add7.i1147, %do.end.i1161 ], [ %add7.i1147, %if.end3.i1152.qed_ilt_cli_adv_line.exit1162_crit_edge ]
  %inc339 = add nuw i32 %i.41319, 1
  %715 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %vf_count, align 8
  %cmp335 = icmp ult i32 %inc339, %716
  br i1 %cmp335, label %qed_ilt_cli_adv_line.exit1162.for.body337_crit_edge, label %qed_ilt_cli_adv_line.exit1162.if.end341_crit_edge

qed_ilt_cli_adv_line.exit1162.if.end341_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit1162
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341

qed_ilt_cli_adv_line.exit1162.for.body337_crit_edge: ; preds = %qed_ilt_cli_adv_line.exit1162
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body337

if.end341:                                        ; preds = %qed_ilt_cli_adv_line.exit1162.if.end341_crit_edge, %qed_ilt_cli_adv_line.exit1137.if.end341_crit_edge, %if.end321.if.end341_crit_edge
  %curr_line.25 = phi i32 [ %curr_line.21, %if.end321.if.end341_crit_edge ], [ %curr_line.22, %qed_ilt_cli_adv_line.exit1137.if.end341_crit_edge ], [ %curr_line.24, %qed_ilt_cli_adv_line.exit1162.if.end341_crit_edge ]
  %717 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %p_cxt_mngr, align 8
  %srq_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %718, i32 0, i32 12
  %719 = ptrtoint ptr %srq_count.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %srq_count.i, align 8
  %xrc_srq_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %718, i32 0, i32 13
  %721 = ptrtoint ptr %xrc_srq_count.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %xrc_srq_count.i, align 4
  %add.i1164 = add i32 %722, %720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i1164)
  %tobool343.not = icmp eq i32 %add.i1164, 0
  br i1 %tobool343.not, label %if.end341.if.end355_crit_edge, label %qed_ilt_cli_blk_fill.exit1178

if.end341.if.end355_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end355

qed_ilt_cli_blk_fill.exit1178:                    ; preds = %if.end341
  %arrayidx346 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5
  %723 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 0, ptr %arrayidx346, align 4
  %val.i1165 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 1, i32 1
  %724 = ptrtoint ptr %val.i1165 to i32
  call void @__asan_store4_noabort(i32 %724)
  store i32 0, ptr %val.i1165, align 4
  %val1.i1166 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 2, i32 1
  %725 = ptrtoint ptr %val1.i1166 to i32
  call void @__asan_store4_noabort(i32 %725)
  store i32 0, ptr %val1.i1166, align 4
  %pf_blks348 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 4
  %mul351 = shl i32 %add.i1164, 6
  %val.i1167 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 3, i32 1
  %726 = ptrtoint ptr %val.i1167 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %val.i1167, align 4
  %add.i1168 = add i32 %727, 12
  %shl.i1169 = shl nuw i32 1, %add.i1168
  %728 = ptrtoint ptr %pf_blks348 to i32
  call void @__asan_store4_noabort(i32 %728)
  store i32 %mul351, ptr %pf_blks348, align 4
  %real_size_in_page.i1171 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 4, i32 0, i32 1
  %mul.i1173 = and i32 %shl.i1169, -64
  %729 = ptrtoint ptr %real_size_in_page.i1171 to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 %mul.i1173, ptr %real_size_in_page.i1171, align 4
  %start_line7.i1176 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 4, i32 0, i32 2
  %730 = ptrtoint ptr %start_line7.i1176 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 %curr_line.25, ptr %start_line7.i1176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul351)
  %tobool.not.i1179 = icmp eq i32 %mul351, 0
  br i1 %tobool.not.i1179, label %qed_ilt_cli_blk_fill.exit1178.qed_ilt_cli_adv_line.exit1203_crit_edge, label %if.end.i1181

qed_ilt_cli_blk_fill.exit1178.qed_ilt_cli_adv_line.exit1203_crit_edge: ; preds = %qed_ilt_cli_blk_fill.exit1178
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1203

if.end.i1181:                                     ; preds = %qed_ilt_cli_blk_fill.exit1178
  %731 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %arrayidx346, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %732)
  %tobool1.not.i1180 = icmp eq i8 %732, 0
  br i1 %tobool1.not.i1180, label %if.then2.i1183, label %if.end.i1181.if.end3.i1193_crit_edge

if.end.i1181.if.end3.i1193_crit_edge:             ; preds = %if.end.i1181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i1193

if.then2.i1183:                                   ; preds = %if.end.i1181
  call void @__sanitizer_cov_trace_pc() #15
  %733 = ptrtoint ptr %val.i1165 to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %curr_line.25, ptr %val.i1165, align 4
  br label %if.end3.i1193

if.end3.i1193:                                    ; preds = %if.then2.i1183, %if.end.i1181.if.end3.i1193_crit_edge
  %734 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_store1_noabort(i32 %734)
  store i8 1, ptr %arrayidx346, align 4
  %735 = ptrtoint ptr %pf_blks348 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %pf_blks348, align 4
  %737 = ptrtoint ptr %real_size_in_page.i1171 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %real_size_in_page.i1171, align 4
  %add.i1185 = add i32 %736, -1
  %sub.i1186 = add i32 %add.i1185, %738
  %div.i1187 = udiv i32 %sub.i1186, %738
  %add7.i1188 = add i32 %div.i1187, %curr_line.25
  %sub8.i1189 = add i32 %add7.i1188, -1
  %739 = ptrtoint ptr %val1.i1166 to i32
  call void @__asan_store4_noabort(i32 %739)
  store i32 %sub8.i1189, ptr %val1.i1166, align 4
  %740 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %741)
  %cmp.i1192 = icmp eq i8 %741, 0
  br i1 %cmp.i1192, label %land.rhs.i1197, label %if.end3.i1193.qed_ilt_cli_adv_line.exit1203_crit_edge

if.end3.i1193.qed_ilt_cli_adv_line.exit1203_crit_edge: ; preds = %if.end3.i1193
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1203

land.rhs.i1197:                                   ; preds = %if.end3.i1193
  %742 = ptrtoint ptr %dp_module.i706 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %dp_module.i706, align 4
  %and.i1195 = and i32 %743, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1195)
  %tobool11.not.i1196 = icmp eq i32 %and.i1195, 0
  br i1 %tobool11.not.i1196, label %land.rhs.i1197.qed_ilt_cli_adv_line.exit1203_crit_edge, label %do.end.i1202, !prof !149

land.rhs.i1197.qed_ilt_cli_adv_line.exit1203_crit_edge: ; preds = %land.rhs.i1197
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_cli_adv_line.exit1203

do.end.i1202:                                     ; preds = %land.rhs.i1197
  call void @__sanitizer_cov_trace_pc() #15
  %744 = ptrtoint ptr %val.i1165 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %val.i1165, align 4
  %746 = ptrtoint ptr %start_line7.i1176 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %start_line7.i1176, align 4
  %call.i1201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 404, ptr noundef nonnull %name.i710, i32 noundef 5, i32 noundef %745, i32 noundef %sub8.i1189, i32 noundef %736, i32 noundef %738, i32 noundef %747) #16
  br label %qed_ilt_cli_adv_line.exit1203

qed_ilt_cli_adv_line.exit1203:                    ; preds = %do.end.i1202, %land.rhs.i1197.qed_ilt_cli_adv_line.exit1203_crit_edge, %if.end3.i1193.qed_ilt_cli_adv_line.exit1203_crit_edge, %qed_ilt_cli_blk_fill.exit1178.qed_ilt_cli_adv_line.exit1203_crit_edge
  %curr_line.26 = phi i32 [ %curr_line.25, %qed_ilt_cli_blk_fill.exit1178.qed_ilt_cli_adv_line.exit1203_crit_edge ], [ %add7.i1188, %land.rhs.i1197.qed_ilt_cli_adv_line.exit1203_crit_edge ], [ %add7.i1188, %do.end.i1202 ], [ %add7.i1188, %if.end3.i1193.qed_ilt_cli_adv_line.exit1203_crit_edge ]
  %748 = ptrtoint ptr %start_line7.i1176 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %start_line7.i1176, align 4
  %sub353 = sub i32 %curr_line.26, %749
  %pf_total_lines354 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 5, i32 5
  %750 = ptrtoint ptr %pf_total_lines354 to i32
  call void @__asan_store4_noabort(i32 %750)
  store i32 %sub353, ptr %pf_total_lines354, align 4
  br label %if.end355

if.end355:                                        ; preds = %qed_ilt_cli_adv_line.exit1203, %if.end341.if.end355_crit_edge
  %curr_line.27 = phi i32 [ %curr_line.25, %if.end341.if.end355_crit_edge ], [ %curr_line.26, %qed_ilt_cli_adv_line.exit1203 ]
  %751 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %p_cxt_mngr, align 8
  %pf_start_line357 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %752, i32 0, i32 9
  %753 = ptrtoint ptr %pf_start_line357 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %pf_start_line357, align 8
  %sub358 = sub i32 %curr_line.27, %754
  %755 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %755)
  store i32 %sub358, ptr %line_count, align 4
  %756 = load ptr, ptr %p_cxt_mngr, align 8
  %pf_start_line360 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %756, i32 0, i32 9
  %757 = ptrtoint ptr %pf_start_line360 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %pf_start_line360, align 8
  %sub361 = sub i32 %curr_line.27, %758
  %arrayidx363 = getelementptr %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 2, i32 9
  %759 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %arrayidx363, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub361, i32 %760)
  %cmp364 = icmp ugt i32 %sub361, %760
  %. = select i1 %cmp364, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm_iids) #13
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_qm_pf_mem_size(i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_cxt_tm_iids(ptr nocapture noundef readonly %p_mngr, ptr nocapture noundef %iids) unnamed_addr #7 align 64 {
tm_cid_proto.exit.3:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %per_vf_cids = getelementptr inbounds %struct.qed_tm_iids, ptr %iids, i32 0, i32 3
  %arrayidx.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.2.not = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %iids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iids, align 4
  %add.2 = add i32 %3, %1
  store i32 %add.2, ptr %iids, align 4
  %cids_per_vf.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %cids_per_vf.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cids_per_vf.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not.2.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %per_vf_cids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %per_vf_cids, align 4
  %add13.2 = add i32 %7, %5
  store i32 %add13.2, ptr %per_vf_cids, align 4
  br i1 %tobool1.not.2.not, label %tm_cid_proto.exit.3.tm_cid_proto.exit14.3_crit_edge, label %if.then.3

tm_cid_proto.exit.3.tm_cid_proto.exit14.3_crit_edge: ; preds = %tm_cid_proto.exit.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %tm_cid_proto.exit14.3

if.then.3:                                        ; preds = %tm_cid_proto.exit.3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  %10 = ptrtoint ptr %iids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iids, align 4
  %add.3 = add i32 %11, %9
  store i32 %add.3, ptr %iids, align 4
  br label %tm_cid_proto.exit14.3

tm_cid_proto.exit14.3:                            ; preds = %if.then.3, %tm_cid_proto.exit.3.tm_cid_proto.exit14.3_crit_edge
  br i1 %tobool9.not.2.not, label %tm_cid_proto.exit14.3.tm_cid_proto.exit.4_crit_edge, label %if.end14.3

tm_cid_proto.exit14.3.tm_cid_proto.exit.4_crit_edge: ; preds = %tm_cid_proto.exit14.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %tm_cid_proto.exit.4

if.end14.3:                                       ; preds = %tm_cid_proto.exit14.3
  call void @__sanitizer_cov_trace_pc() #15
  %cids_per_vf.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %cids_per_vf.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cids_per_vf.3, align 4
  %14 = ptrtoint ptr %per_vf_cids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %per_vf_cids, align 4
  %add13.3 = add i32 %15, %13
  store i32 %add13.3, ptr %per_vf_cids, align 4
  br label %tm_cid_proto.exit.4

tm_cid_proto.exit.4:                              ; preds = %if.end14.3, %tm_cid_proto.exit14.3.tm_cid_proto.exit.4_crit_edge
  br i1 %tobool1.not.2.not, label %tm_cid_proto.exit.4.tm_cid_proto.exit14.4_crit_edge, label %if.then.4

tm_cid_proto.exit.4.tm_cid_proto.exit14.4_crit_edge: ; preds = %tm_cid_proto.exit.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %tm_cid_proto.exit14.4

if.then.4:                                        ; preds = %tm_cid_proto.exit.4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  %18 = ptrtoint ptr %iids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iids, align 4
  %add.4 = add i32 %19, %17
  store i32 %add.4, ptr %iids, align 4
  br label %tm_cid_proto.exit14.4

tm_cid_proto.exit14.4:                            ; preds = %if.then.4, %tm_cid_proto.exit.4.tm_cid_proto.exit14.4_crit_edge
  br i1 %tobool9.not.2.not, label %tm_cid_proto.exit14.4.if.end26.7_crit_edge, label %if.end14.4

tm_cid_proto.exit14.4.if.end26.7_crit_edge:       ; preds = %tm_cid_proto.exit14.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.7

if.end14.4:                                       ; preds = %tm_cid_proto.exit14.4
  call void @__sanitizer_cov_trace_pc() #15
  %cids_per_vf.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %cids_per_vf.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cids_per_vf.4, align 4
  %22 = ptrtoint ptr %per_vf_cids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %per_vf_cids, align 4
  %add13.4 = add i32 %23, %21
  store i32 %add13.4, ptr %per_vf_cids, align 4
  br label %if.end26.7

if.end26.7:                                       ; preds = %if.end14.4, %tm_cid_proto.exit14.4.if.end26.7_crit_edge
  %per_vf_tids = getelementptr inbounds %struct.qed_tm_iids, ptr %iids, i32 0, i32 4
  %arrayidx.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5, align 4
  %26 = ptrtoint ptr %iids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iids, align 4
  %add.5 = add i32 %27, %25
  store i32 %add.5, ptr %iids, align 4
  %cids_per_vf.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %cids_per_vf.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cids_per_vf.5, align 4
  %30 = ptrtoint ptr %per_vf_cids to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %per_vf_cids, align 4
  %add13.5 = add i32 %31, %29
  store i32 %add13.5, ptr %per_vf_cids, align 4
  %arrayidx.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6, align 4
  %34 = load i32, ptr %iids, align 4
  %add.6 = add i32 %34, %33
  store i32 %add.6, ptr %iids, align 4
  %cids_per_vf.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %cids_per_vf.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cids_per_vf.6, align 4
  %37 = load i32, ptr %per_vf_cids, align 4
  %add13.6 = add i32 %37, %36
  store i32 %add13.6, ptr %per_vf_cids, align 4
  %tid_seg.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %tid_seg.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tid_seg.6, align 4
  %arrayidx21.6 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx21.6, align 4
  %add22.6 = add i32 %41, %39
  store i32 %add22.6, ptr %arrayidx21.6, align 4
  %arrayidx20.1.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx20.1.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx20.1.6, align 4
  %arrayidx21.1.6 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx21.1.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx21.1.6, align 4
  %add22.1.6 = add i32 %45, %43
  store i32 %add22.1.6, ptr %arrayidx21.1.6, align 4
  %arrayidx20.2.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx20.2.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx20.2.6, align 4
  %arrayidx21.2.6 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx21.2.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx21.2.6, align 4
  %add22.2.6 = add i32 %49, %47
  store i32 %add22.2.6, ptr %arrayidx21.2.6, align 4
  %arrayidx20.3.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx20.3.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx20.3.6, align 4
  %arrayidx21.3.6 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %arrayidx21.3.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx21.3.6, align 4
  %add22.3.6 = add i32 %53, %51
  store i32 %add22.3.6, ptr %arrayidx21.3.6, align 4
  %arrayidx23.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 1, i32 2, i32 4
  %54 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx23.6, align 4
  %56 = ptrtoint ptr %per_vf_tids to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %per_vf_tids, align 4
  %add25.6 = add i32 %57, %55
  store i32 %add25.6, ptr %per_vf_tids, align 4
  %58 = ptrtoint ptr %p_mngr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %p_mngr, align 4
  %60 = load i32, ptr %iids, align 4
  %add.7 = add i32 %60, %59
  store i32 %add.7, ptr %iids, align 4
  %cids_per_vf.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %p_mngr, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %cids_per_vf.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cids_per_vf.7, align 4
  %63 = load i32, ptr %per_vf_cids, align 4
  %add13.7 = add i32 %63, %62
  store i32 %add13.7, ptr %per_vf_cids, align 4
  %add30 = add i32 %add.7, 127
  %div7 = and i32 %add30, -128
  store i32 %div7, ptr %iids, align 4
  %add36 = add i32 %add13.7, 127
  %div378 = and i32 %add36, -128
  store i32 %div378, ptr %per_vf_cids, align 4
  %64 = load i32, ptr %per_vf_tids, align 4
  %add44 = add i32 %64, 127
  %div459 = and i32 %add44, -128
  store i32 %div459, ptr %per_vf_tids, align 4
  %pf_tids_total = getelementptr inbounds %struct.qed_tm_iids, ptr %iids, i32 0, i32 2
  %arrayidx54 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 0
  %65 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx54, align 4
  %add56 = add i32 %66, 127
  %div5710 = and i32 %add56, -128
  store i32 %div5710, ptr %arrayidx54, align 4
  %arrayidx54.1 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx54.1, align 4
  %add56.1 = add i32 %68, 127
  %div5710.1 = and i32 %add56.1, -128
  store i32 %div5710.1, ptr %arrayidx54.1, align 4
  %add64.1 = add i32 %div5710, %div5710.1
  %arrayidx54.2 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx54.2, align 4
  %add56.2 = add i32 %70, 127
  %div5710.2 = and i32 %add56.2, -128
  store i32 %div5710.2, ptr %arrayidx54.2, align 4
  %add64.2 = add i32 %add64.1, %div5710.2
  %arrayidx54.3 = getelementptr %struct.qed_tm_iids, ptr %iids, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx54.3, align 4
  %add56.3 = add i32 %72, 127
  %div5710.3 = and i32 %add56.3, -128
  store i32 %div5710.3, ptr %arrayidx54.3, align 4
  %add64.3 = add i32 %add64.2, %div5710.3
  %73 = ptrtoint ptr %pf_tids_total to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add64.3, ptr %pf_tids_total, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_cfg_ilt_compute_excess(ptr noundef %p_hwfn, i32 noundef %used_lines) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 2, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %used_lines, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %used_lines)
  %tobool.not = icmp eq i32 %1, %used_lines
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_info, align 8
  %.off = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %4 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_cxt_mngr, align 8
  %val = getelementptr %struct.qed_cxt_mngr, ptr %5, i32 0, i32 1, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %add = add i32 %7, 12
  %shl = shl nuw i32 1, %add
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %i.060 = phi i32 [ 0, %if.end10 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 0, i32 2, i32 %i.060
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.qed_cxt_tid_seg_info.exit_crit_edge

for.body.qed_cxt_tid_seg_info.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.i:                                       ; preds = %for.body
  %arrayidx1.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 1, i32 2, i32 %i.060
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 2, i32 2, i32 %i.060
  %12 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.2.i = icmp eq i32 %13, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 3, i32 2, i32 %i.060
  %14 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3.i = icmp eq i32 %15, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx1.4.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 4, i32 2, i32 %i.060
  %16 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.4.i = icmp eq i32 %17, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx1.5.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 5, i32 2, i32 %i.060
  %18 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.5.i = icmp eq i32 %19, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx1.6.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 6, i32 2, i32 %i.060
  %20 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.6.i = icmp eq i32 %21, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx1.7.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %5, i32 0, i32 7, i32 2, i32 %i.060
  %22 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.7.i = icmp eq i32 %23, 0
  br i1 %tobool.not.7.i, label %for.cond.6.i.for.inc_crit_edge, label %for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge

for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit

for.cond.6.i.for.inc_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

qed_cxt_tid_seg_info.exit:                        ; preds = %for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge, %for.body.qed_cxt_tid_seg_info.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx1.i, %for.body.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.1.i, %for.cond.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.2.i, %for.cond.1.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.3.i, %for.cond.2.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.4.i, %for.cond.3.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.5.i, %for.cond.4.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.6.i, %for.cond.5.i.qed_cxt_tid_seg_info.exit_crit_edge ], [ %arrayidx1.7.i, %for.cond.6.i.qed_cxt_tid_seg_info.exit_crit_edge ]
  %tobool13.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool13.not, label %qed_cxt_tid_seg_info.exit.for.inc_crit_edge, label %lor.lhs.false14

qed_cxt_tid_seg_info.exit.for.inc_crit_edge:      ; preds = %qed_cxt_tid_seg_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false14:                                  ; preds = %qed_cxt_tid_seg_info.exit
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %lor.lhs.false14.for.inc_crit_edge, label %if.end17

lor.lhs.false14.for.inc_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end17:                                         ; preds = %lor.lhs.false14
  %type = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 4
  %idxprom = zext i8 %27 to i32
  %arrayidx18 = getelementptr %struct.qed_cxt_mngr, ptr %5, i32 0, i32 2, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool19.not = icmp eq i32 %29, 0
  br i1 %tobool19.not, label %if.end17.for.inc_crit_edge, label %if.end21

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %div = udiv i32 %shl, %29
  %mul = mul i32 %div, %sub
  br label %cleanup

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %lor.lhs.false14.for.inc_crit_edge, %qed_cxt_tid_seg_info.exit.for.inc_crit_edge, %for.cond.6.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body:                                          ; preds = %for.inc
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %30 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp22 = icmp ult i8 %31, 3
  br i1 %cmp22, label %do.end, label %do.body.cleanup_crit_edge, !prof !152

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool28.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool28.not, ptr @.str.3, ptr %name
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 767, ptr noundef nonnull %spec.select) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_mngr_alloc(ptr nocapture noundef %p_hwfn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 21288, i32 noundef 3520, i32 noundef 3) #17
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5948, ptr %first, align 4
  %last = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5949, ptr %last, align 4
  %p_size = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %p_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5937, ptr %p_size, align 4
  %first7 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 2, i32 1
  %3 = ptrtoint ptr %first7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5944, ptr %first7, align 4
  %last10 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 2, i32 2
  %4 = ptrtoint ptr %last10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5945, ptr %last10, align 4
  %p_size13 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 2, i32 3
  %5 = ptrtoint ptr %p_size13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5939, ptr %p_size13, align 4
  %first16 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %first16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5942, ptr %first16, align 64
  %last19 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 3, i32 2
  %7 = ptrtoint ptr %last19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5943, ptr %last19, align 8
  %p_size22 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 3, i32 3
  %8 = ptrtoint ptr %p_size22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5938, ptr %p_size22, align 16
  %first25 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 4, i32 1
  %9 = ptrtoint ptr %first25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5946, ptr %first25, align 4
  %last28 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 4, i32 2
  %10 = ptrtoint ptr %last28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5947, ptr %last28, align 4
  %p_size31 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 4, i32 3
  %11 = ptrtoint ptr %p_size31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5940, ptr %p_size31, align 4
  %first34 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %first34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5950, ptr %first34, align 8
  %last37 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %last37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5951, ptr %last37, align 32
  %p_size40 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 1, i32 3
  %14 = ptrtoint ptr %p_size40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5936, ptr %p_size40, align 8
  %first43 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 5, i32 1
  %15 = ptrtoint ptr %first43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5952, ptr %first43, align 8
  %last46 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 5, i32 2
  %16 = ptrtoint ptr %last46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5953, ptr %last46, align 16
  %p_size49 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 5, i32 3
  %17 = ptrtoint ptr %p_size49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5941, ptr %p_size49, align 8
  %val = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %val, align 8
  %val.1 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 1, i32 3, i32 1
  %19 = ptrtoint ptr %val.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %val.1, align 4
  %val.2 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 2, i32 3, i32 1
  %20 = ptrtoint ptr %val.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %val.2, align 64
  %val.3 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 3, i32 3, i32 1
  %21 = ptrtoint ptr %val.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %val.3, align 4
  %val.4 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 4, i32 3, i32 1
  %22 = ptrtoint ptr %val.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %val.4, align 8
  %val.5 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 5, i32 3, i32 1
  %23 = ptrtoint ptr %val.5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %val.5, align 4
  %val.6 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 6, i32 3, i32 1
  %24 = ptrtoint ptr %val.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %val.6, align 16
  %val.7 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 1, i32 7, i32 3, i32 1
  %25 = ptrtoint ptr %val.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %val.7, align 4
  %26 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_hwfn, align 8
  %cache_shift = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 30
  %28 = ptrtoint ptr %cache_shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cache_shift, align 4
  %conv = zext i8 %29 to i32
  %shl = shl nuw i32 1, %conv
  %sub = add nuw i32 %shl, 1215
  %neg = sub i32 0, %shl
  %and = and i32 %sub, %neg
  %conv59 = trunc i32 %and to i16
  %conn_ctx_size = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 20
  %30 = ptrtoint ptr %conn_ctx_size to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv59, ptr %conn_ctx_size, align 2
  %31 = load i8, ptr %cache_shift, align 4
  %conv62 = zext i8 %31 to i32
  %shl63 = shl nuw i32 1, %conv62
  %sub65 = add nuw i32 %shl63, 591
  %neg71 = sub i32 0, %shl63
  %and72 = and i32 %sub65, %neg71
  %task_type_size = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %task_type_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and72, ptr %task_type_size, align 32
  %arrayidx75 = getelementptr %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 320, ptr %arrayidx75, align 4
  %p_iov_info = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 37
  %34 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_iov_info, align 4
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %if.end.do.body_crit_edge, label %if.then78

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then78:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %total_vfs = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %total_vfs, align 2
  %conv81 = zext i16 %37 to i32
  %vf_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %vf_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv81, ptr %vf_count, align 8
  %39 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p_iov_info, align 4
  %first_vf_in_pf = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %first_vf_in_pf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %first_vf_in_pf, align 4
  %first_vf_in_pf84 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %first_vf_in_pf84 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %first_vf_in_pf84, align 4
  br label %do.body

do.body:                                          ; preds = %if.then78, %if.end.do.body_crit_edge
  %mutex = getelementptr inbounds %struct.qed_cxt_mngr, ptr %call1.i.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @qed_cxt_mngr_alloc.__key) #13
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %44 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1.i.i.i, ptr %p_cxt_mngr, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_tables_alloc(ptr noundef %p_hwfn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr.i, align 8
  %clients1.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1
  %call.i = tail call fastcc i32 @qed_cxt_ilt_shadow_size(ptr noundef %clients1.i) #13
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 12) #13
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  br i1 %3, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !152

kcalloc.exit.thread.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ilt_shadow99.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ilt_shadow99.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ilt_shadow99.i, align 8
  br label %ilt_shadow_fail.i

if.end7.i.i.i:                                    ; preds = %entry
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #17
  %ilt_shadow.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %ilt_shadow.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i.i, ptr %ilt_shadow.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.ilt_shadow_fail.i_crit_edge, label %do.body.i

if.end7.i.i.i.ilt_shadow_fail.i_crit_edge:        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

do.body.i:                                        ; preds = %if.end7.i.i.i
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %land.rhs.i, label %do.body.i.do.end17.i_crit_edge

do.body.i.do.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17.i

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %9 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.rhs.i.do.end17.i_crit_edge, label %do.end.i, !prof !149

land.rhs.i.do.end17.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 1005, ptr noundef nonnull %name.i, i32 noundef %4) #16
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end17.i_crit_edge, %do.body.i.do.end17.i_crit_edge
  %vf_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc55.i.for.body.i_crit_edge, %do.end17.i
  %i.0110.i = phi i32 [ 0, %do.end17.i ], [ %inc56.i, %for.inc55.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not.i = icmp eq i8 %12, 0
  br i1 %tobool20.not.i, label %for.body.i.for.inc55.i_crit_edge, label %for.body25.preheader.i

for.body.i.for.inc55.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc55.i

for.body25.preheader.i:                           ; preds = %for.body.i
  %arrayidx27.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 0
  %call28.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.cond22.i, label %for.body25.preheader.i.ilt_shadow_fail.i_crit_edge

for.body25.preheader.i.ilt_shadow_fail.i_crit_edge: ; preds = %for.body25.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.i:                                     ; preds = %for.body25.preheader.i
  %arrayidx27.1.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 1
  %call28.1.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.1.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %tobool29.not.1.i = icmp eq i32 %call28.1.i, 0
  br i1 %tobool29.not.1.i, label %for.cond22.1.i, label %for.cond22.i.ilt_shadow_fail.i_crit_edge

for.cond22.i.ilt_shadow_fail.i_crit_edge:         ; preds = %for.cond22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.1.i:                                   ; preds = %for.cond22.i
  %arrayidx27.2.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 2
  %call28.2.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.2.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %tobool29.not.2.i = icmp eq i32 %call28.2.i, 0
  br i1 %tobool29.not.2.i, label %for.cond22.2.i, label %for.cond22.1.i.ilt_shadow_fail.i_crit_edge

for.cond22.1.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.2.i:                                   ; preds = %for.cond22.1.i
  %arrayidx27.3.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 3
  %call28.3.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.3.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3.i)
  %tobool29.not.3.i = icmp eq i32 %call28.3.i, 0
  br i1 %tobool29.not.3.i, label %for.cond22.3.i, label %for.cond22.2.i.ilt_shadow_fail.i_crit_edge

for.cond22.2.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.3.i:                                   ; preds = %for.cond22.2.i
  %arrayidx27.4.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 4
  %call28.4.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.4.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.4.i)
  %tobool29.not.4.i = icmp eq i32 %call28.4.i, 0
  br i1 %tobool29.not.4.i, label %for.cond22.4.i, label %for.cond22.3.i.ilt_shadow_fail.i_crit_edge

for.cond22.3.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.4.i:                                   ; preds = %for.cond22.3.i
  %arrayidx27.5.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 5
  %call28.5.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.5.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.5.i)
  %tobool29.not.5.i = icmp eq i32 %call28.5.i, 0
  br i1 %tobool29.not.5.i, label %for.cond22.5.i, label %for.cond22.4.i.ilt_shadow_fail.i_crit_edge

for.cond22.4.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.5.i:                                   ; preds = %for.cond22.4.i
  %arrayidx27.6.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 6
  %call28.6.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.6.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.6.i)
  %tobool29.not.6.i = icmp eq i32 %call28.6.i, 0
  br i1 %tobool29.not.6.i, label %for.cond22.6.i, label %for.cond22.5.i.ilt_shadow_fail.i_crit_edge

for.cond22.5.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.6.i:                                   ; preds = %for.cond22.5.i
  %arrayidx27.7.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 7
  %call28.7.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.7.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.7.i)
  %tobool29.not.7.i = icmp eq i32 %call28.7.i, 0
  br i1 %tobool29.not.7.i, label %for.cond22.7.i, label %for.cond22.6.i.ilt_shadow_fail.i_crit_edge

for.cond22.6.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.7.i:                                   ; preds = %for.cond22.6.i
  %arrayidx27.8.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 4, i32 8
  %call28.8.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx27.8.i, i32 noundef %i.0110.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.8.i)
  %tobool29.not.8.i = icmp eq i32 %call28.8.i, 0
  br i1 %tobool29.not.8.i, label %for.cond22.8.i, label %for.cond22.7.i.ilt_shadow_fail.i_crit_edge

for.cond22.7.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond22.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond22.8.i:                                   ; preds = %for.cond22.7.i
  %13 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vf_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp33108.not.i = icmp eq i32 %14, 0
  br i1 %cmp33108.not.i, label %for.cond22.8.i.for.inc55.i_crit_edge, label %for.cond36.preheader.lr.ph.i

for.cond22.8.i.for.inc55.i_crit_edge:             ; preds = %for.cond22.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc55.i

for.cond36.preheader.lr.ph.i:                     ; preds = %for.cond22.8.i
  %vf_total_lines.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 7
  %arrayidx43.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 6, i32 0
  %arrayidx43.1.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 6, i32 1
  %arrayidx43.2.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients1.i, i32 %i.0110.i, i32 6, i32 2
  br label %for.cond36.preheader.i

for.cond36.preheader.i:                           ; preds = %for.cond36.2.i.for.cond36.preheader.i_crit_edge, %for.cond36.preheader.lr.ph.i
  %k.0109.i = phi i32 [ 0, %for.cond36.preheader.lr.ph.i ], [ %inc52.i, %for.cond36.2.i.for.cond36.preheader.i_crit_edge ]
  %15 = ptrtoint ptr %vf_total_lines.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vf_total_lines.i, align 4
  %mul41.i = mul i32 %16, %k.0109.i
  %call44.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx43.i, i32 noundef %i.0110.i, i32 noundef %mul41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %for.cond36.i, label %for.cond36.preheader.i.ilt_shadow_fail.i_crit_edge

for.cond36.preheader.i.ilt_shadow_fail.i_crit_edge: ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond36.i:                                     ; preds = %for.cond36.preheader.i
  %17 = ptrtoint ptr %vf_total_lines.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vf_total_lines.i, align 4
  %mul41.1.i = mul i32 %18, %k.0109.i
  %call44.1.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx43.1.i, i32 noundef %i.0110.i, i32 noundef %mul41.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1.i)
  %tobool45.not.1.i = icmp eq i32 %call44.1.i, 0
  br i1 %tobool45.not.1.i, label %for.cond36.1.i, label %for.cond36.i.ilt_shadow_fail.i_crit_edge

for.cond36.i.ilt_shadow_fail.i_crit_edge:         ; preds = %for.cond36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond36.1.i:                                   ; preds = %for.cond36.i
  %19 = ptrtoint ptr %vf_total_lines.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vf_total_lines.i, align 4
  %mul41.2.i = mul i32 %20, %k.0109.i
  %call44.2.i = tail call fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr noundef %arrayidx43.2.i, i32 noundef %i.0110.i, i32 noundef %mul41.2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.2.i)
  %tobool45.not.2.i = icmp eq i32 %call44.2.i, 0
  br i1 %tobool45.not.2.i, label %for.cond36.2.i, label %for.cond36.1.i.ilt_shadow_fail.i_crit_edge

for.cond36.1.i.ilt_shadow_fail.i_crit_edge:       ; preds = %for.cond36.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ilt_shadow_fail.i

for.cond36.2.i:                                   ; preds = %for.cond36.1.i
  %inc52.i = add nuw i32 %k.0109.i, 1
  %21 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vf_count.i, align 8
  %cmp33.i = icmp ult i32 %inc52.i, %22
  br i1 %cmp33.i, label %for.cond36.2.i.for.cond36.preheader.i_crit_edge, label %for.cond36.2.i.for.inc55.i_crit_edge

for.cond36.2.i.for.inc55.i_crit_edge:             ; preds = %for.cond36.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc55.i

for.cond36.2.i.for.cond36.preheader.i_crit_edge:  ; preds = %for.cond36.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond36.preheader.i

for.inc55.i:                                      ; preds = %for.cond36.2.i.for.inc55.i_crit_edge, %for.cond22.8.i.for.inc55.i_crit_edge, %for.body.i.for.inc55.i_crit_edge
  %inc56.i = add nuw nsw i32 %i.0110.i, 1
  %exitcond.not.i = icmp eq i32 %inc56.i, 8
  br i1 %exitcond.not.i, label %for.inc55.i.if.end_crit_edge, label %for.inc55.i.for.body.i_crit_edge

for.inc55.i.for.body.i_crit_edge:                 ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc55.i.if.end_crit_edge:                     ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ilt_shadow_fail.i:                                ; preds = %for.cond36.1.i.ilt_shadow_fail.i_crit_edge, %for.cond36.i.ilt_shadow_fail.i_crit_edge, %for.cond36.preheader.i.ilt_shadow_fail.i_crit_edge, %for.cond22.7.i.ilt_shadow_fail.i_crit_edge, %for.cond22.6.i.ilt_shadow_fail.i_crit_edge, %for.cond22.5.i.ilt_shadow_fail.i_crit_edge, %for.cond22.4.i.ilt_shadow_fail.i_crit_edge, %for.cond22.3.i.ilt_shadow_fail.i_crit_edge, %for.cond22.2.i.ilt_shadow_fail.i_crit_edge, %for.cond22.1.i.ilt_shadow_fail.i_crit_edge, %for.cond22.i.ilt_shadow_fail.i_crit_edge, %for.body25.preheader.i.ilt_shadow_fail.i_crit_edge, %if.end7.i.i.i.ilt_shadow_fail.i_crit_edge, %kcalloc.exit.thread.i
  %rc.0.i = phi i32 [ -12, %if.end7.i.i.i.ilt_shadow_fail.i_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ %call44.i, %for.cond36.preheader.i.ilt_shadow_fail.i_crit_edge ], [ %call44.1.i, %for.cond36.i.ilt_shadow_fail.i_crit_edge ], [ %call44.2.i, %for.cond36.1.i.ilt_shadow_fail.i_crit_edge ], [ %call28.i, %for.body25.preheader.i.ilt_shadow_fail.i_crit_edge ], [ %call28.1.i, %for.cond22.i.ilt_shadow_fail.i_crit_edge ], [ %call28.2.i, %for.cond22.1.i.ilt_shadow_fail.i_crit_edge ], [ %call28.3.i, %for.cond22.2.i.ilt_shadow_fail.i_crit_edge ], [ %call28.4.i, %for.cond22.3.i.ilt_shadow_fail.i_crit_edge ], [ %call28.5.i, %for.cond22.4.i.ilt_shadow_fail.i_crit_edge ], [ %call28.6.i, %for.cond22.5.i.ilt_shadow_fail.i_crit_edge ], [ %call28.7.i, %for.cond22.6.i.ilt_shadow_fail.i_crit_edge ], [ %call28.8.i, %for.cond22.7.i.ilt_shadow_fail.i_crit_edge ]
  %23 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_cxt_mngr.i, align 8
  %clients.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %24, i32 0, i32 1
  %call.i.i = tail call fastcc i32 @qed_cxt_ilt_shadow_size(ptr noundef %clients.i.i) #13
  %ilt_shadow.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %ilt_shadow.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ilt_shadow.i.i, align 8
  %tobool.not18.i.i = icmp ne ptr %26, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19.i.i = icmp ne i32 %call.i.i, 0
  %or.cond20.i.i = select i1 %tobool.not18.i.i, i1 %cmp19.i.i, i1 false
  br i1 %or.cond20.i.i, label %ilt_shadow_fail.i.for.body.i.i_crit_edge, label %qed_ilt_shadow_alloc.exit.thread87

ilt_shadow_fail.i.for.body.i.i_crit_edge:         ; preds = %ilt_shadow_fail.i
  br label %for.body.i.i

qed_ilt_shadow_alloc.exit.thread87:               ; preds = %ilt_shadow_fail.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %26) #13
  br label %tables_alloc_fail

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %ilt_shadow_fail.i.for.body.i.i_crit_edge
  %27 = phi ptr [ %40, %if.end.i.i.for.body.i.i_crit_edge ], [ %26, %ilt_shadow_fail.i.for.body.i.i_crit_edge ]
  %i.021.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %ilt_shadow_fail.i.for.body.i.i_crit_edge ]
  %virt_addr.i.i = getelementptr %struct.phys_mem_desc, ptr %27, i32 %i.021.i.i, i32 1
  %28 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_addr.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.phys_mem_desc, ptr %27, i32 %i.021.i.i
  %30 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_hwfn, align 8
  %pdev.i.i = getelementptr inbounds %struct.qed_dev, ptr %31, i32 0, i32 50
  %32 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %size.i.i = getelementptr %struct.phys_mem_desc, ptr %27, i32 %i.021.i.i, i32 2
  %34 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %35, ptr noundef nonnull %29, i32 noundef %37, i32 noundef 0) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %38 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %virt_addr.i.i, align 4
  %inc.i.i = add nuw i32 %i.021.i.i, 1
  %39 = ptrtoint ptr %ilt_shadow.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ilt_shadow.i.i, align 8
  %tobool.not.i.i = icmp ne ptr %40, null
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %inc.i.i, %call.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %qed_ilt_shadow_alloc.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

qed_ilt_shadow_alloc.exit:                        ; preds = %if.end.i.i
  tail call void @kfree(ptr noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not, label %qed_ilt_shadow_alloc.exit.if.end_crit_edge, label %qed_ilt_shadow_alloc.exit.tables_alloc_fail_crit_edge

qed_ilt_shadow_alloc.exit.tables_alloc_fail_crit_edge: ; preds = %qed_ilt_shadow_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %tables_alloc_fail

qed_ilt_shadow_alloc.exit.if.end_crit_edge:       ; preds = %qed_ilt_shadow_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %qed_ilt_shadow_alloc.exit.if.end_crit_edge, %for.inc55.i.if.end_crit_edge
  %41 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i16 = getelementptr %struct.qed_cxt_mngr, ptr %42, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i16, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i17 = icmp eq i8 %44, 0
  br i1 %tobool.not.i17, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 8
  %cids_per_vf.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %42, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %cids_per_vf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cids_per_vf.i.i, align 4
  %arrayidx.1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.1.i.i, align 8
  %add.1.i.i = add i32 %50, %46
  %cids_per_vf.1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %42, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %cids_per_vf.1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cids_per_vf.1.i.i, align 4
  %add3.1.i.i = add i32 %52, %48
  %arrayidx.5.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %42, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.5.i.i, align 8
  %add.5.i.i = add i32 %add.1.i.i, %54
  %cids_per_vf.5.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %42, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %cids_per_vf.5.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cids_per_vf.5.i.i, align 4
  %add3.5.i.i = add i32 %add3.1.i.i, %56
  %arfs_count.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 14
  %57 = ptrtoint ptr %arfs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arfs_count.i.i, align 8
  %add5.i.i = add i32 %add.5.i.i, %58
  %vf_count.i18 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 3
  %59 = ptrtoint ptr %vf_count.i18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vf_count.i18, align 8
  %mul.i = mul i32 %60, %add3.5.i.i
  %add.i = add i32 %add5.i.i, %mul.i
  %mul2.i = shl i32 %add.i, 6
  %val.i = getelementptr %struct.qed_cxt_mngr, ptr %42, i32 0, i32 1, i32 4, i32 3, i32 1
  %61 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i, align 4
  %add3.i = add i32 %62, 12
  %shl.i = shl nuw i32 1, %add3.i
  %src_t2.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 11
  %add4.i = add i32 %shl.i, -1
  %sub.i = add i32 %add4.i, %mul2.i
  %div142.i = lshr i32 %sub.i, %add3.i
  %num_pages.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 11, i32 1
  %63 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div142.i, ptr %num_pages.i, align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div142.i, i32 12) #13
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %kcalloc.exit.thread.i19, label %if.end7.i.i.i50, !prof !152

kcalloc.exit.thread.i19:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %src_t2.i, align 8
  br label %do.body.i55

if.end7.i.i.i50:                                  ; preds = %if.end.i
  %67 = extractvalue { i32, i1 } %64, 0
  %call8.i.i.i49 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #17
  %68 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call8.i.i.i49, ptr %src_t2.i, align 8
  %tobool7.not.i = icmp eq ptr %call8.i.i.i49, null
  br i1 %tobool7.not.i, label %if.end7.i.i.i50.do.body.i55_crit_edge, label %if.end21.i

if.end7.i.i.i50.do.body.i55_crit_edge:            ; preds = %if.end7.i.i.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i55

do.body.i55:                                      ; preds = %if.end7.i.i.i50.do.body.i55_crit_edge, %kcalloc.exit.thread.i19
  %dp_level.i53 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %69 = ptrtoint ptr %dp_level.i53 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dp_level.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp.i54 = icmp ult i8 %70, 3
  br i1 %cmp.i54, label %do.end.i57, label %do.body.i55.t2_fail.i_crit_edge, !prof !152

do.body.i55.t2_fail.i_crit_edge:                  ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %t2_fail.i

do.end.i57:                                       ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  %name.i56 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 851, ptr noundef nonnull %name.i56) #16
  br label %t2_fail.i

if.end21.i:                                       ; preds = %if.end7.i.i.i50
  %71 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp35.not.i.i = icmp eq i32 %72, 0
  br i1 %cmp35.not.i.i, label %if.end21.i.if.end25.i_crit_edge, label %if.end21.i.for.body.i.i62_crit_edge

if.end21.i.for.body.i.i62_crit_edge:              ; preds = %if.end21.i
  br label %for.body.i.i62

if.end21.i.if.end25.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

for.body.i.i62:                                   ; preds = %if.end11.i.i.for.body.i.i62_crit_edge, %if.end21.i.for.body.i.i62_crit_edge
  %i.037.i.i = phi i32 [ %inc.i.i63, %if.end11.i.i.for.body.i.i62_crit_edge ], [ 0, %if.end21.i.for.body.i.i62_crit_edge ]
  %total_size.addr.036.i.i = phi i32 [ %sub.i.i, %if.end11.i.i.for.body.i.i62_crit_edge ], [ %mul2.i, %if.end21.i.for.body.i.i62_crit_edge ]
  %73 = tail call i32 @llvm.umin.i32(i32 %total_size.addr.036.i.i, i32 %shl.i) #13
  %74 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %src_t2.i, align 8
  %arrayidx.i.i58 = getelementptr %struct.phys_mem_desc, ptr %75, i32 %i.037.i.i
  %virt_addr.i.i59 = getelementptr %struct.phys_mem_desc, ptr %75, i32 %i.037.i.i, i32 1
  %76 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %p_hwfn, align 8
  %pdev.i.i60 = getelementptr inbounds %struct.qed_dev, ptr %77, i32 0, i32 50
  %78 = ptrtoint ptr %pdev.i.i60 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev.i.i60, align 8
  %dev.i.i61 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i61, i32 noundef %73, ptr noundef %arrayidx.i.i58, i32 noundef 3264, i32 noundef 0) #13
  %80 = ptrtoint ptr %virt_addr.i.i59 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i.i, ptr %virt_addr.i.i59, align 4
  %81 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %src_t2.i, align 8
  %virt_addr8.i.i = getelementptr %struct.phys_mem_desc, ptr %82, i32 %i.037.i.i, i32 1
  %83 = ptrtoint ptr %virt_addr8.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %virt_addr8.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %84, null
  br i1 %tobool9.not.i.i, label %for.body.i.i62.t2_fail.i_crit_edge, label %if.end11.i.i

for.body.i.i62.t2_fail.i_crit_edge:               ; preds = %for.body.i.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %t2_fail.i

if.end11.i.i:                                     ; preds = %for.body.i.i62
  %85 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %73)
  %86 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %src_t2.i, align 8
  %size14.i.i = getelementptr %struct.phys_mem_desc, ptr %87, i32 %i.037.i.i, i32 2
  %88 = ptrtoint ptr %size14.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %73, ptr %size14.i.i, align 4
  %sub.i.i = sub i32 %total_size.addr.036.i.i, %73
  %inc.i.i63 = add nuw i32 %i.037.i.i, 1
  %89 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_pages.i, align 4
  %cmp.i.i64 = icmp ult i32 %inc.i.i63, %90
  br i1 %cmp.i.i64, label %if.end11.i.i.for.body.i.i62_crit_edge, label %if.end11.i.i.if.end25.i_crit_edge

if.end11.i.i.if.end25.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.end11.i.i.for.body.i.i62_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i62

if.end25.i:                                       ; preds = %if.end11.i.i.if.end25.i_crit_edge, %if.end21.i.if.end25.i_crit_edge
  %div26143.i = lshr i32 %shl.i, 6
  %91 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %src_t2.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %conv29.i = zext i32 %94 to i64
  %first_free.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 11, i32 2
  %95 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv29.i, ptr %first_free.i, align 8
  %sub31.i = add i32 %add.i, -1
  %div32.i = udiv i32 %sub31.i, %div26143.i
  %arrayidx33.i = getelementptr %struct.phys_mem_desc, ptr %92, i32 %div32.i
  %96 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx33.i, align 4
  %conv35.i = zext i32 %97 to i64
  %sub37.i = add nuw nsw i32 %div26143.i, 67108863
  %and.i65 = and i32 %sub37.i, %sub31.i
  %mul38.i = shl i32 %and.i65, 6
  %conv39.i = zext i32 %mul38.i to i64
  %add40.i = add nuw nsw i64 %conv35.i, %conv39.i
  %last_free.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 11, i32 3
  %98 = ptrtoint ptr %last_free.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %add40.i, ptr %last_free.i, align 8
  %99 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp42171.not.i = icmp eq i32 %100, 0
  br i1 %cmp42171.not.i, label %if.end25.i.if.end4_crit_edge, label %if.end25.i.for.body.i66_crit_edge

if.end25.i.for.body.i66_crit_edge:                ; preds = %if.end25.i
  br label %for.body.i66

if.end25.i.if.end4_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body.i66:                                     ; preds = %if.end78.i.for.body.i66_crit_edge, %if.end25.i.for.body.i66_crit_edge
  %i.0173.i = phi i32 [ %inc83.pre-phi.i, %if.end78.i.for.body.i66_crit_edge ], [ 0, %if.end25.i.for.body.i66_crit_edge ]
  %conn_num.0172.i = phi i32 [ %sub81.i, %if.end78.i.for.body.i66_crit_edge ], [ %add.i, %if.end25.i.for.body.i66_crit_edge ]
  %101 = tail call i32 @llvm.umin.i32(i32 %div26143.i, i32 %conn_num.0172.i) #13
  %102 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %src_t2.i, align 8
  %arrayidx52.i = getelementptr %struct.phys_mem_desc, ptr %103, i32 %i.0173.i
  %virt_addr.i = getelementptr %struct.phys_mem_desc, ptr %103, i32 %i.0173.i, i32 1
  %104 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %virt_addr.i, align 4
  %106 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx52.i, align 4
  %conv56.i = zext i32 %107 to i64
  %sub59.i = add nsw i32 %101, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub59.i)
  %cmp60169.not.i = icmp eq i32 %sub59.i, 0
  br i1 %cmp60169.not.i, label %for.body.i66.for.end.i_crit_edge, label %for.body.i66.for.body62.i_crit_edge

for.body.i66.for.body62.i_crit_edge:              ; preds = %for.body.i66
  br label %for.body62.i

for.body.i66.for.end.i_crit_edge:                 ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %for.body.i66.for.body62.i_crit_edge
  %j.0170.i = phi i32 [ %add63.i, %for.body62.i.for.body62.i_crit_edge ], [ 0, %for.body.i66.for.body62.i_crit_edge ]
  %add63.i = add nuw i32 %j.0170.i, 1
  %mul64.i = shl i32 %add63.i, 6
  %conv65.i = zext i32 %mul64.i to i64
  %add66.i = add nuw nsw i64 %conv65.i, %conv56.i
  %next.i = getelementptr %struct.src_ent, ptr %105, i32 %j.0170.i, i32 1
  %108 = ptrtoint ptr %next.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %add66.i, ptr %next.i, align 8
  %exitcond.not.i67 = icmp eq i32 %add63.i, %sub59.i
  br i1 %exitcond.not.i67, label %for.body62.i.for.end.i_crit_edge, label %for.body62.i.for.body62.i_crit_edge

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body62.i

for.body62.i.for.end.i_crit_edge:                 ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body62.i.for.end.i_crit_edge, %for.body.i66.for.end.i_crit_edge
  %109 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_pages.i, align 4
  %sub69.i = add i32 %110, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0173.i, i32 %sub69.i)
  %cmp70.i = icmp ult i32 %i.0173.i, %sub69.i
  br i1 %cmp70.i, label %if.then72.i, label %for.end.if.end78_crit_edge.i

for.end.if.end78_crit_edge.i:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = add nuw i32 %i.0173.i, 1
  br label %if.end78.i

if.then72.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %src_t2.i, align 8
  %add74.i = add nuw i32 %i.0173.i, 1
  %arrayidx75.i = getelementptr %struct.phys_mem_desc, ptr %112, i32 %add74.i
  %113 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx75.i, align 4
  %conv77.i = zext i32 %114 to i64
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then72.i, %for.end.if.end78_crit_edge.i
  %inc83.pre-phi.i = phi i32 [ %.pre.i, %for.end.if.end78_crit_edge.i ], [ %add74.i, %if.then72.i ]
  %val57.0.i = phi i64 [ 0, %for.end.if.end78_crit_edge.i ], [ %conv77.i, %if.then72.i ]
  %next80.i = getelementptr %struct.src_ent, ptr %105, i32 %sub59.i, i32 1
  %115 = ptrtoint ptr %next80.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %val57.0.i, ptr %next80.i, align 8
  %sub81.i = sub i32 %conn_num.0172.i, %101
  %116 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_pages.i, align 4
  %cmp42.i = icmp ult i32 %inc83.pre-phi.i, %117
  br i1 %cmp42.i, label %if.end78.i.for.body.i66_crit_edge, label %if.end78.i.if.end4_crit_edge

if.end78.i.if.end4_crit_edge:                     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end78.i.for.body.i66_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i66

t2_fail.i:                                        ; preds = %for.body.i.i62.t2_fail.i_crit_edge, %do.end.i57, %do.body.i55.t2_fail.i_crit_edge
  %118 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %p_cxt_mngr.i, align 8
  %src_t2.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %119, i32 0, i32 11
  %120 = ptrtoint ptr %src_t2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %src_t2.i.i, align 8
  %tobool1.not.i144.i = icmp eq ptr %121, null
  br i1 %tobool1.not.i144.i, label %t2_fail.i.tables_alloc_fail_crit_edge, label %for.cond.preheader.i147.i

t2_fail.i.tables_alloc_fail_crit_edge:            ; preds = %t2_fail.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tables_alloc_fail

for.cond.preheader.i147.i:                        ; preds = %t2_fail.i
  %num_pages.i146.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %119, i32 0, i32 11, i32 1
  %122 = ptrtoint ptr %num_pages.i146.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_pages.i146.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp30.not.i.i = icmp eq i32 %123, 0
  br i1 %cmp30.not.i.i, label %for.cond.preheader.i147.i.for.end.i.i_crit_edge, label %for.cond.preheader.i147.i.for.body.i149.i_crit_edge

for.cond.preheader.i147.i.for.body.i149.i_crit_edge: ; preds = %for.cond.preheader.i147.i
  br label %for.body.i149.i

for.cond.preheader.i147.i.for.end.i.i_crit_edge:  ; preds = %for.cond.preheader.i147.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i149.i:                                  ; preds = %for.inc.i.i.for.body.i149.i_crit_edge, %for.cond.preheader.i147.i.for.body.i149.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i153.i, %for.inc.i.i.for.body.i149.i_crit_edge ], [ 0, %for.cond.preheader.i147.i.for.body.i149.i_crit_edge ]
  %124 = ptrtoint ptr %src_t2.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %src_t2.i.i, align 8
  %virt_addr.i148.i = getelementptr %struct.phys_mem_desc, ptr %125, i32 %i.031.i.i, i32 1
  %126 = ptrtoint ptr %virt_addr.i148.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %virt_addr.i148.i, align 4
  %tobool3.not.i.i69 = icmp eq ptr %127, null
  br i1 %tobool3.not.i.i69, label %for.body.i149.i.for.inc.i.i_crit_edge, label %if.then4.i.i

for.body.i149.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i149.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %for.body.i149.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i150.i = getelementptr %struct.phys_mem_desc, ptr %125, i32 %i.031.i.i
  %128 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %p_hwfn, align 8
  %pdev.i151.i = getelementptr inbounds %struct.qed_dev, ptr %129, i32 0, i32 50
  %130 = ptrtoint ptr %pdev.i151.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i151.i, align 8
  %dev.i152.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %size.i.i70 = getelementptr %struct.phys_mem_desc, ptr %125, i32 %i.031.i.i, i32 2
  %132 = ptrtoint ptr %size.i.i70 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size.i.i70, align 4
  %134 = ptrtoint ptr %arrayidx.i150.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i150.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i152.i, i32 noundef %133, ptr noundef nonnull %127, i32 noundef %135, i32 noundef 0) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then4.i.i, %for.body.i149.i.for.inc.i.i_crit_edge
  %inc.i153.i = add nuw i32 %i.031.i.i, 1
  %136 = ptrtoint ptr %num_pages.i146.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_pages.i146.i, align 4
  %cmp.i154.i = icmp ult i32 %inc.i153.i, %137
  br i1 %cmp.i154.i, label %for.inc.i.i.for.body.i149.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.inc.i.i.for.body.i149.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i149.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i147.i.for.end.i.i_crit_edge
  %138 = ptrtoint ptr %src_t2.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %src_t2.i.i, align 8
  tail call void @kfree(ptr noundef %139) #13
  %140 = ptrtoint ptr %src_t2.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %src_t2.i.i, align 8
  br label %tables_alloc_fail

if.end4:                                          ; preds = %if.end78.i.if.end4_crit_edge, %if.end25.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %141 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %p_cxt_mngr.i, align 8
  %dp_level.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.inc15.i.for.body.i75_crit_edge, %if.end4
  %type.076.i = phi i32 [ 0, %if.end4 ], [ %inc16.i, %for.inc15.i.for.body.i75_crit_edge ]
  %vf_start_cid.075.i = phi i32 [ 0, %if.end4 ], [ %add13.i, %for.inc15.i.for.body.i75_crit_edge ]
  %start_cid.073.i = phi i32 [ 0, %if.end4 ], [ %add.i80, %for.inc15.i.for.body.i75_crit_edge ]
  %arrayidx.i73 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %142, i32 0, i32 %type.076.i
  %arrayidx1.i = getelementptr %struct.qed_cxt_mngr, ptr %142, i32 0, i32 5, i32 %type.076.i
  %143 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i74 = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i74, label %for.body.i75.qed_cid_map_alloc_single.exit.i_crit_edge, label %if.end.i.i77

for.body.i75.qed_cid_map_alloc_single.exit.i_crit_edge: ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cid_map_alloc_single.exit.i

if.end.i.i77:                                     ; preds = %for.body.i75
  %call.i.i76 = tail call ptr @bitmap_zalloc(i32 noundef %144, i32 noundef 3264) #13
  %cid_map.i.i = getelementptr %struct.qed_cxt_mngr, ptr %142, i32 0, i32 5, i32 %type.076.i, i32 2
  %145 = ptrtoint ptr %cid_map.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i.i76, ptr %cid_map.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %call.i.i76, null
  br i1 %tobool2.not.i.i, label %if.end.i.i77.cid_map_fail.i_crit_edge, label %if.end4.i.i

if.end.i.i77.cid_map_fail.i_crit_edge:            ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cid_map_fail.i

if.end4.i.i:                                      ; preds = %if.end.i.i77
  %max_count.i.i = getelementptr %struct.qed_cxt_mngr, ptr %142, i32 0, i32 5, i32 %type.076.i, i32 1
  %146 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %144, ptr %max_count.i.i, align 4
  %147 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %start_cid.073.i, ptr %arrayidx1.i, align 4
  %148 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp.i.i78 = icmp eq i8 %149, 0
  br i1 %cmp.i.i78, label %land.rhs.i.i, label %if.end4.i.i.qed_cid_map_alloc_single.exit.i_crit_edge

if.end4.i.i.qed_cid_map_alloc_single.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cid_map_alloc_single.exit.i

land.rhs.i.i:                                     ; preds = %if.end4.i.i
  %150 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %151, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.qed_cid_map_alloc_single.exit.i_crit_edge, label %do.end.i.i, !prof !149

land.rhs.i.i.qed_cid_map_alloc_single.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cid_map_alloc_single.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1069, ptr noundef nonnull %name.i.i, i32 noundef %type.076.i, i32 noundef %start_cid.073.i, i32 noundef %144) #16
  br label %qed_cid_map_alloc_single.exit.i

qed_cid_map_alloc_single.exit.i:                  ; preds = %do.end.i.i, %land.rhs.i.i.qed_cid_map_alloc_single.exit.i_crit_edge, %if.end4.i.i.qed_cid_map_alloc_single.exit.i_crit_edge, %for.body.i75.qed_cid_map_alloc_single.exit.i_crit_edge
  %cids_per_vf.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %142, i32 0, i32 %type.076.i, i32 1
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %qed_cid_map_alloc_single.exit.i
  %vf.071.i = phi i32 [ 0, %qed_cid_map_alloc_single.exit.i ], [ %inc.i, %for.inc.i.for.body4.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.qed_cxt_mngr, ptr %142, i32 0, i32 6, i32 %type.076.i, i32 %vf.071.i
  %152 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cids_per_vf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i42.i = icmp eq i32 %153, 0
  br i1 %tobool.not.i42.i, label %for.body4.i.for.inc.i_crit_edge, label %if.end.i46.i

for.body4.i.for.inc.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i46.i:                                     ; preds = %for.body4.i
  %call.i43.i = tail call ptr @bitmap_zalloc(i32 noundef %153, i32 noundef 3264) #13
  %cid_map.i44.i = getelementptr %struct.qed_cxt_mngr, ptr %142, i32 0, i32 6, i32 %type.076.i, i32 %vf.071.i, i32 2
  %154 = ptrtoint ptr %cid_map.i44.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i43.i, ptr %cid_map.i44.i, align 4
  %tobool2.not.i45.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool2.not.i45.i, label %if.end.i46.i.cid_map_fail.i_crit_edge, label %if.end4.i50.i

if.end.i46.i.cid_map_fail.i_crit_edge:            ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cid_map_fail.i

if.end4.i50.i:                                    ; preds = %if.end.i46.i
  %max_count.i47.i = getelementptr %struct.qed_cxt_mngr, ptr %142, i32 0, i32 6, i32 %type.076.i, i32 %vf.071.i, i32 1
  %155 = ptrtoint ptr %max_count.i47.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %153, ptr %max_count.i47.i, align 4
  %156 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %vf_start_cid.075.i, ptr %arrayidx6.i, align 4
  %157 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp.i49.i = icmp eq i8 %158, 0
  br i1 %cmp.i49.i, label %land.rhs.i54.i, label %if.end4.i50.i.for.inc.i_crit_edge

if.end4.i50.i.for.inc.i_crit_edge:                ; preds = %if.end4.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.rhs.i54.i:                                   ; preds = %if.end4.i50.i
  %159 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dp_module.i.i, align 4
  %and.i52.i = and i32 %160, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool6.not.i53.i = icmp eq i32 %and.i52.i, 0
  br i1 %tobool6.not.i53.i, label %land.rhs.i54.i.for.inc.i_crit_edge, label %do.end.i57.i, !prof !149

land.rhs.i54.i.for.inc.i_crit_edge:               ; preds = %land.rhs.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end.i57.i:                                     ; preds = %land.rhs.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  %call16.i56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1069, ptr noundef nonnull %name.i.i, i32 noundef %type.076.i, i32 noundef %vf_start_cid.075.i, i32 noundef %153) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i57.i, %land.rhs.i54.i.for.inc.i_crit_edge, %if.end4.i50.i.for.inc.i_crit_edge, %for.body4.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %vf.071.i, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i, 192
  br i1 %exitcond.not.i79, label %for.inc15.i, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i

for.inc15.i:                                      ; preds = %for.inc.i
  %161 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i73, align 4
  %add.i80 = add i32 %162, %start_cid.073.i
  %163 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cids_per_vf.i, align 4
  %add13.i = add i32 %164, %vf_start_cid.075.i
  %inc16.i = add nuw nsw i32 %type.076.i, 1
  %exitcond79.not.i = icmp eq i32 %inc16.i, 8
  br i1 %exitcond79.not.i, label %for.inc15.i.cleanup_crit_edge, label %for.inc15.i.for.body.i75_crit_edge

for.inc15.i.for.body.i75_crit_edge:               ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i75

for.inc15.i.cleanup_crit_edge:                    ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cid_map_fail.i:                                   ; preds = %if.end.i46.i.cid_map_fail.i_crit_edge, %if.end.i.i77.cid_map_fail.i_crit_edge
  %165 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %p_cxt_mngr.i, align 8
  br label %for.body.i.i82

for.body.i.i82:                                   ; preds = %for.inc19.i.i.for.body.i.i82_crit_edge, %cid_map_fail.i
  %type.039.i.i = phi i32 [ 0, %cid_map_fail.i ], [ %inc20.i.i, %for.inc19.i.i.for.body.i.i82_crit_edge ]
  %arrayidx.i.i81 = getelementptr %struct.qed_cxt_mngr, ptr %166, i32 0, i32 5, i32 %type.039.i.i
  %cid_map.i60.i = getelementptr %struct.qed_cxt_mngr, ptr %166, i32 0, i32 5, i32 %type.039.i.i, i32 2
  %167 = ptrtoint ptr %cid_map.i60.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cid_map.i60.i, align 4
  tail call void @bitmap_free(ptr noundef %168) #13
  %max_count.i61.i = getelementptr %struct.qed_cxt_mngr, ptr %166, i32 0, i32 5, i32 %type.039.i.i, i32 1
  %169 = ptrtoint ptr %max_count.i61.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %max_count.i61.i, align 4
  %170 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %arrayidx.i.i81, align 4
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.body.i.i82
  %vf.038.i.i = phi i32 [ 0, %for.body.i.i82 ], [ %inc.i.i83, %for.body7.i.i.for.body7.i.i_crit_edge ]
  %arrayidx9.i.i = getelementptr %struct.qed_cxt_mngr, ptr %166, i32 0, i32 6, i32 %type.039.i.i, i32 %vf.038.i.i
  %cid_map10.i.i = getelementptr %struct.qed_cxt_mngr, ptr %166, i32 0, i32 6, i32 %type.039.i.i, i32 %vf.038.i.i, i32 2
  %171 = ptrtoint ptr %cid_map10.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cid_map10.i.i, align 4
  tail call void @bitmap_free(ptr noundef %172) #13
  %max_count14.i.i = getelementptr %struct.qed_cxt_mngr, ptr %166, i32 0, i32 6, i32 %type.039.i.i, i32 %vf.038.i.i, i32 1
  %173 = ptrtoint ptr %max_count14.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %max_count14.i.i, align 4
  %174 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %arrayidx9.i.i, align 4
  %inc.i.i83 = add nuw nsw i32 %vf.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i83, 192
  br i1 %exitcond.not.i.i, label %for.inc19.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i.i

for.inc19.i.i:                                    ; preds = %for.body7.i.i
  %inc20.i.i = add nuw nsw i32 %type.039.i.i, 1
  %exitcond40.not.i.i = icmp eq i32 %inc20.i.i, 8
  br i1 %exitcond40.not.i.i, label %for.inc19.i.i.tables_alloc_fail_crit_edge, label %for.inc19.i.i.for.body.i.i82_crit_edge

for.inc19.i.i.for.body.i.i82_crit_edge:           ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i82

for.inc19.i.i.tables_alloc_fail_crit_edge:        ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tables_alloc_fail

tables_alloc_fail:                                ; preds = %for.inc19.i.i.tables_alloc_fail_crit_edge, %for.end.i.i, %t2_fail.i.tables_alloc_fail_crit_edge, %qed_ilt_shadow_alloc.exit.tables_alloc_fail_crit_edge, %qed_ilt_shadow_alloc.exit.thread87
  %rc.0 = phi i32 [ %rc.0.i, %qed_ilt_shadow_alloc.exit.tables_alloc_fail_crit_edge ], [ %rc.0.i, %qed_ilt_shadow_alloc.exit.thread87 ], [ -12, %t2_fail.i.tables_alloc_fail_crit_edge ], [ -12, %for.end.i.i ], [ -12, %for.inc19.i.i.tables_alloc_fail_crit_edge ]
  tail call void @qed_cxt_mngr_free(ptr noundef %p_hwfn)
  br label %cleanup

cleanup:                                          ; preds = %tables_alloc_fail, %for.inc15.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %tables_alloc_fail ], [ 0, %for.inc15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_cxt_mngr_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %type.039.i = phi i32 [ %inc20.i, %for.inc19.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type.039.i
  %cid_map.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type.039.i, i32 2
  %2 = ptrtoint ptr %cid_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cid_map.i, align 4
  tail call void @bitmap_free(ptr noundef %3) #13
  %max_count.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type.039.i, i32 1
  %4 = ptrtoint ptr %max_count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_count.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.i, align 4
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body.i
  %vf.038.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body7.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %type.039.i, i32 %vf.038.i
  %cid_map10.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %type.039.i, i32 %vf.038.i, i32 2
  %6 = ptrtoint ptr %cid_map10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cid_map10.i, align 4
  tail call void @bitmap_free(ptr noundef %7) #13
  %max_count14.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %type.039.i, i32 %vf.038.i, i32 1
  %8 = ptrtoint ptr %max_count14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %max_count14.i, align 4
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %vf.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 192
  br i1 %exitcond.not.i, label %for.inc19.i, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i

for.inc19.i:                                      ; preds = %for.body7.i
  %inc20.i = add nuw nsw i32 %type.039.i, 1
  %exitcond40.not.i = icmp eq i32 %inc20.i, 8
  br i1 %exitcond40.not.i, label %qed_cid_map_free.exit, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

qed_cid_map_free.exit:                            ; preds = %for.inc19.i
  %10 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_cxt_mngr, align 8
  %src_t2.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_t2.i, align 8
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %qed_cid_map_free.exit.qed_cxt_src_t2_free.exit_crit_edge, label %for.cond.preheader.i

qed_cid_map_free.exit.qed_cxt_src_t2_free.exit_crit_edge: ; preds = %qed_cid_map_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_src_t2_free.exit

for.cond.preheader.i:                             ; preds = %qed_cid_map_free.exit
  %num_pages.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %11, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30.not.i = icmp eq i32 %15, 0
  br i1 %cmp30.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i9_crit_edge

for.cond.preheader.i.for.body.i9_crit_edge:       ; preds = %for.cond.preheader.i
  br label %for.body.i9

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i9:                                      ; preds = %for.inc.i.for.body.i9_crit_edge, %for.cond.preheader.i.for.body.i9_crit_edge
  %i.031.i = phi i32 [ %inc.i11, %for.inc.i.for.body.i9_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i9_crit_edge ]
  %16 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_t2.i, align 8
  %virt_addr.i = getelementptr %struct.phys_mem_desc, ptr %17, i32 %i.031.i, i32 1
  %18 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_addr.i, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %for.body.i9.for.inc.i_crit_edge, label %if.then4.i

for.body.i9.for.inc.i_crit_edge:                  ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i10 = getelementptr %struct.phys_mem_desc, ptr %17, i32 %i.031.i
  %20 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_hwfn, align 8
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %21, i32 0, i32 50
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %size.i = getelementptr %struct.phys_mem_desc, ptr %17, i32 %i.031.i, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %26 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i10, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %25, ptr noundef nonnull %19, i32 noundef %27, i32 noundef 0) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i9.for.inc.i_crit_edge
  %inc.i11 = add nuw i32 %i.031.i, 1
  %28 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pages.i, align 4
  %cmp.i = icmp ult i32 %inc.i11, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i9_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i9_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i9

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %30 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src_t2.i, align 8
  tail call void @kfree(ptr noundef %31) #13
  %32 = ptrtoint ptr %src_t2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %src_t2.i, align 8
  br label %qed_cxt_src_t2_free.exit

qed_cxt_src_t2_free.exit:                         ; preds = %for.end.i, %qed_cid_map_free.exit.qed_cxt_src_t2_free.exit_crit_edge
  %33 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_cxt_mngr, align 8
  %clients.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %34, i32 0, i32 1
  %call.i = tail call fastcc i32 @qed_cxt_ilt_shadow_size(ptr noundef %clients.i) #13
  %ilt_shadow.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %ilt_shadow.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ilt_shadow.i, align 8
  %tobool.not18.i = icmp ne ptr %36, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19.i = icmp ne i32 %call.i, 0
  %or.cond20.i = select i1 %tobool.not18.i, i1 %cmp19.i, i1 false
  br i1 %or.cond20.i, label %qed_cxt_src_t2_free.exit.for.body.i15_crit_edge, label %qed_cxt_src_t2_free.exit.qed_ilt_shadow_free.exit_crit_edge

qed_cxt_src_t2_free.exit.qed_ilt_shadow_free.exit_crit_edge: ; preds = %qed_cxt_src_t2_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_shadow_free.exit

qed_cxt_src_t2_free.exit.for.body.i15_crit_edge:  ; preds = %qed_cxt_src_t2_free.exit
  br label %for.body.i15

for.body.i15:                                     ; preds = %if.end.i.for.body.i15_crit_edge, %qed_cxt_src_t2_free.exit.for.body.i15_crit_edge
  %37 = phi ptr [ %50, %if.end.i.for.body.i15_crit_edge ], [ %36, %qed_cxt_src_t2_free.exit.for.body.i15_crit_edge ]
  %i.021.i = phi i32 [ %inc.i20, %if.end.i.for.body.i15_crit_edge ], [ 0, %qed_cxt_src_t2_free.exit.for.body.i15_crit_edge ]
  %virt_addr.i13 = getelementptr %struct.phys_mem_desc, ptr %37, i32 %i.021.i, i32 1
  %38 = ptrtoint ptr %virt_addr.i13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt_addr.i13, align 4
  %tobool3.not.i14 = icmp eq ptr %39, null
  br i1 %tobool3.not.i14, label %for.body.i15.if.end.i_crit_edge, label %if.then.i

for.body.i15.if.end.i_crit_edge:                  ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i16 = getelementptr %struct.phys_mem_desc, ptr %37, i32 %i.021.i
  %40 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p_hwfn, align 8
  %pdev.i17 = getelementptr inbounds %struct.qed_dev, ptr %41, i32 0, i32 50
  %42 = ptrtoint ptr %pdev.i17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i17, align 8
  %dev.i18 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %size.i19 = getelementptr %struct.phys_mem_desc, ptr %37, i32 %i.021.i, i32 2
  %44 = ptrtoint ptr %size.i19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i19, align 4
  %46 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i16, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i18, i32 noundef %45, ptr noundef nonnull %39, i32 noundef %47, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i15.if.end.i_crit_edge
  %48 = ptrtoint ptr %virt_addr.i13 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %virt_addr.i13, align 4
  %inc.i20 = add nuw i32 %i.021.i, 1
  %49 = ptrtoint ptr %ilt_shadow.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ilt_shadow.i, align 8
  %tobool.not.i = icmp ne ptr %50, null
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i20, i32 %call.i)
  %cmp.i21 = icmp ult i32 %inc.i20, %call.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i21, i1 false
  br i1 %or.cond.i, label %if.end.i.for.body.i15_crit_edge, label %if.end.i.qed_ilt_shadow_free.exit_crit_edge

if.end.i.qed_ilt_shadow_free.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_shadow_free.exit

if.end.i.for.body.i15_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i15

qed_ilt_shadow_free.exit:                         ; preds = %if.end.i.qed_ilt_shadow_free.exit_crit_edge, %qed_cxt_src_t2_free.exit.qed_ilt_shadow_free.exit_crit_edge
  %.lcssa.i = phi ptr [ %36, %qed_cxt_src_t2_free.exit.qed_ilt_shadow_free.exit_crit_edge ], [ %50, %if.end.i.qed_ilt_shadow_free.exit_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa.i) #13
  %51 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %p_cxt_mngr, align 8
  tail call void @kfree(ptr noundef %52) #13
  %53 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %p_cxt_mngr, align 8
  br label %return

return:                                           ; preds = %qed_ilt_shadow_free.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_cxt_mngr_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %type.030 = phi i32 [ 0, %entry ], [ %inc13, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %cid_map = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type.030, i32 2
  %4 = ptrtoint ptr %cid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cid_map, align 4
  %max_count = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type.030, i32 1
  %6 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_count, align 4
  %sub.i = add i32 %7, 31
  %8 = lshr i32 %sub.i, 3
  %mul.i = and i32 %8, 536870908
  %9 = call ptr @memset(ptr %5, i32 0, i32 %mul.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %cids_per_vf = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %type.030, i32 1
  %10 = ptrtoint ptr %cids_per_vf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cids_per_vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %vf.029 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %if.end.for.body7_crit_edge ]
  %cid_map10 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %type.030, i32 %vf.029, i32 2
  %12 = ptrtoint ptr %cid_map10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cid_map10, align 4
  %max_count11 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %type.030, i32 %vf.029, i32 1
  %14 = ptrtoint ptr %max_count11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_count11, align 4
  %sub.i27 = add i32 %15, 31
  %16 = lshr i32 %sub.i27, 3
  %mul.i28 = and i32 %16, 536870908
  %17 = call ptr @memset(ptr %13, i32 0, i32 %mul.i28)
  %inc = add nuw nsw i32 %vf.029, 1
  %exitcond.not = icmp eq i32 %inc, 192
  br i1 %exitcond.not, label %for.body7.cleanup_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %inc13 = add nuw nsw i32 %type.030, 1
  %exitcond33.not = icmp eq i32 %inc13, 8
  br i1 %exitcond33.not, label %for.end14, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end14:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_qm_init_pf(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %is_pf_loading) local_unnamed_addr #4 align 64 {
entry:
  %params = alloca %struct.qed_qm_pf_rt_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %params) #13
  %0 = call ptr @memset(ptr %params, i32 255, i32 52)
  %p_cxt_mngr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %1 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_cxt_mngr.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %cids_per_vf.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cids_per_vf.i, align 4
  %tid_seg.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %tid_seg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tid_seg.i, align 4
  %arrayidx9.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9.1.i, align 4
  %add10.1.i = add i32 %8, %10
  %arrayidx9.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.2.i, align 4
  %add10.2.i = add i32 %add10.1.i, %12
  %arrayidx9.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.3.i, align 4
  %add10.3.i = add i32 %add10.2.i, %14
  %arrayidx11.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.1, align 8
  %add.i.1 = add i32 %18, %4
  %cids_per_vf.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %cids_per_vf.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cids_per_vf.i.1, align 4
  %tid_seg.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %tid_seg.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid_seg.i.1, align 4
  %add10.i.1 = add i32 %22, %add10.3.i
  %arrayidx9.1.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx9.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9.1.i.1, align 4
  %add10.1.i.1 = add i32 %add10.i.1, %24
  %arrayidx9.2.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx9.2.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx9.2.i.1, align 4
  %add10.2.i.1 = add i32 %add10.1.i.1, %26
  %arrayidx9.3.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1, i32 2, i32 3
  %27 = ptrtoint ptr %arrayidx9.3.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9.3.i.1, align 4
  %add10.3.i.1 = add i32 %add10.2.i.1, %28
  %add3.i.1 = add i32 %20, %6
  %arrayidx11.i.1 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 1, i32 2, i32 4
  %29 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i.1, align 4
  %add13.i.1 = add i32 %30, %16
  %arrayidx.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.2, align 8
  %add.i.2 = add i32 %32, %add.i.1
  %cids_per_vf.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %cids_per_vf.i.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cids_per_vf.i.2, align 4
  %tid_seg.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %tid_seg.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tid_seg.i.2, align 4
  %add10.i.2 = add i32 %36, %add10.3.i.1
  %arrayidx9.1.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx9.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.1.i.2, align 4
  %add10.1.i.2 = add i32 %add10.i.2, %38
  %arrayidx9.2.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx9.2.i.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9.2.i.2, align 4
  %add10.2.i.2 = add i32 %add10.1.i.2, %40
  %arrayidx9.3.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx9.3.i.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9.3.i.2, align 4
  %add10.3.i.2 = add i32 %add10.2.i.2, %42
  %add3.i.2 = add i32 %34, %add3.i.1
  %arrayidx11.i.2 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 2, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx11.i.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx11.i.2, align 4
  %add13.i.2 = add i32 %44, %add13.i.1
  %arrayidx.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.3, align 8
  %add.i.3 = add i32 %46, %add.i.2
  %cids_per_vf.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %cids_per_vf.i.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cids_per_vf.i.3, align 4
  %tid_seg.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %tid_seg.i.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tid_seg.i.3, align 4
  %add10.i.3 = add i32 %50, %add10.3.i.2
  %arrayidx9.1.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3, i32 2, i32 1
  %51 = ptrtoint ptr %arrayidx9.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx9.1.i.3, align 4
  %add10.1.i.3 = add i32 %add10.i.3, %52
  %arrayidx9.2.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3, i32 2, i32 2
  %53 = ptrtoint ptr %arrayidx9.2.i.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx9.2.i.3, align 4
  %add10.2.i.3 = add i32 %add10.1.i.3, %54
  %arrayidx9.3.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3, i32 2, i32 3
  %55 = ptrtoint ptr %arrayidx9.3.i.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx9.3.i.3, align 4
  %add10.3.i.3 = add i32 %add10.2.i.3, %56
  %add3.i.3 = add i32 %48, %add3.i.2
  %arrayidx11.i.3 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 3, i32 2, i32 4
  %57 = ptrtoint ptr %arrayidx11.i.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx11.i.3, align 4
  %add13.i.3 = add i32 %58, %add13.i.2
  %arrayidx.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.4, align 8
  %add.i.4 = add i32 %60, %add.i.3
  %cids_per_vf.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %cids_per_vf.i.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cids_per_vf.i.4, align 4
  %tid_seg.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %tid_seg.i.4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tid_seg.i.4, align 4
  %add10.i.4 = add i32 %64, %add10.3.i.3
  %arrayidx9.1.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4, i32 2, i32 1
  %65 = ptrtoint ptr %arrayidx9.1.i.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx9.1.i.4, align 4
  %add10.1.i.4 = add i32 %add10.i.4, %66
  %arrayidx9.2.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4, i32 2, i32 2
  %67 = ptrtoint ptr %arrayidx9.2.i.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx9.2.i.4, align 4
  %add10.2.i.4 = add i32 %add10.1.i.4, %68
  %arrayidx9.3.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4, i32 2, i32 3
  %69 = ptrtoint ptr %arrayidx9.3.i.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx9.3.i.4, align 4
  %add10.3.i.4 = add i32 %add10.2.i.4, %70
  %add3.i.4 = add i32 %62, %add3.i.3
  %arrayidx11.i.4 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 4, i32 2, i32 4
  %71 = ptrtoint ptr %arrayidx11.i.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx11.i.4, align 4
  %add13.i.4 = add i32 %72, %add13.i.3
  %arrayidx.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5
  %73 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.5, align 8
  %add.i.5 = add i32 %74, %add.i.4
  %cids_per_vf.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %cids_per_vf.i.5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cids_per_vf.i.5, align 4
  %tid_seg.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %tid_seg.i.5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tid_seg.i.5, align 4
  %add10.i.5 = add i32 %78, %add10.3.i.4
  %arrayidx9.1.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5, i32 2, i32 1
  %79 = ptrtoint ptr %arrayidx9.1.i.5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx9.1.i.5, align 4
  %add10.1.i.5 = add i32 %add10.i.5, %80
  %arrayidx9.2.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5, i32 2, i32 2
  %81 = ptrtoint ptr %arrayidx9.2.i.5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx9.2.i.5, align 4
  %add10.2.i.5 = add i32 %add10.1.i.5, %82
  %arrayidx9.3.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5, i32 2, i32 3
  %83 = ptrtoint ptr %arrayidx9.3.i.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx9.3.i.5, align 4
  %add10.3.i.5 = add i32 %add10.2.i.5, %84
  %add3.i.5 = add i32 %76, %add3.i.4
  %arrayidx11.i.5 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 5, i32 2, i32 4
  %85 = ptrtoint ptr %arrayidx11.i.5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx11.i.5, align 4
  %add13.i.5 = add i32 %86, %add13.i.4
  %arrayidx.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6
  %87 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.6, align 8
  %add.i.6 = add i32 %88, %add.i.5
  %cids_per_vf.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %cids_per_vf.i.6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cids_per_vf.i.6, align 4
  %tid_seg.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6, i32 2
  %91 = ptrtoint ptr %tid_seg.i.6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tid_seg.i.6, align 4
  %add10.i.6 = add i32 %92, %add10.3.i.5
  %arrayidx9.1.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx9.1.i.6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx9.1.i.6, align 4
  %add10.1.i.6 = add i32 %add10.i.6, %94
  %arrayidx9.2.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6, i32 2, i32 2
  %95 = ptrtoint ptr %arrayidx9.2.i.6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx9.2.i.6, align 4
  %add10.2.i.6 = add i32 %add10.1.i.6, %96
  %arrayidx9.3.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6, i32 2, i32 3
  %97 = ptrtoint ptr %arrayidx9.3.i.6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx9.3.i.6, align 4
  %add10.3.i.6 = add i32 %add10.2.i.6, %98
  %add3.i.6 = add i32 %90, %add3.i.5
  %arrayidx11.i.6 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 6, i32 2, i32 4
  %99 = ptrtoint ptr %arrayidx11.i.6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx11.i.6, align 4
  %add13.i.6 = add i32 %100, %add13.i.5
  %arrayidx.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7
  %101 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.7, align 8
  %add.i.7 = add i32 %102, %add.i.6
  %cids_per_vf.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7, i32 1
  %103 = ptrtoint ptr %cids_per_vf.i.7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cids_per_vf.i.7, align 4
  %tid_seg.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7, i32 2
  %105 = ptrtoint ptr %tid_seg.i.7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tid_seg.i.7, align 4
  %add10.i.7 = add i32 %106, %add10.3.i.6
  %arrayidx9.1.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7, i32 2, i32 1
  %107 = ptrtoint ptr %arrayidx9.1.i.7 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx9.1.i.7, align 4
  %add10.1.i.7 = add i32 %add10.i.7, %108
  %arrayidx9.2.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7, i32 2, i32 2
  %109 = ptrtoint ptr %arrayidx9.2.i.7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx9.2.i.7, align 4
  %add10.2.i.7 = add i32 %add10.1.i.7, %110
  %arrayidx9.3.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7, i32 2, i32 3
  %111 = ptrtoint ptr %arrayidx9.3.i.7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx9.3.i.7, align 4
  %add10.3.i.7 = add i32 %add10.2.i.7, %112
  %add3.i.7 = add i32 %104, %add3.i.6
  %arrayidx11.i.7 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %2, i32 0, i32 7, i32 2, i32 4
  %113 = ptrtoint ptr %arrayidx11.i.7 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx11.i.7, align 4
  %add13.i.7 = add i32 %114, %add13.i.6
  %vf_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %2, i32 0, i32 3
  %115 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vf_count.i, align 8
  %mul.i = mul i32 %116, %add13.i.7
  %add19.i = add i32 %mul.i, %add10.3.i.7
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %117 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp20.i = icmp eq i8 %118, 0
  br i1 %cmp20.i, label %land.rhs.i, label %entry.qed_cxt_qm_iids.exit_crit_edge

entry.qed_cxt_qm_iids.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_qm_iids.exit

land.rhs.i:                                       ; preds = %entry
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %119 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %120, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.qed_cxt_qm_iids.exit_crit_edge, label %do.end.i, !prof !149

land.rhs.i.qed_cxt_qm_iids.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_qm_iids.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 253, ptr noundef nonnull %name.i, i32 noundef %add.i.7, i32 noundef %add3.i.7, i32 noundef %add19.i, i32 noundef %add13.i.7) #16
  br label %qed_cxt_qm_iids.exit

qed_cxt_qm_iids.exit:                             ; preds = %do.end.i, %land.rhs.i.qed_cxt_qm_iids.exit_crit_edge, %entry.qed_cxt_qm_iids.exit_crit_edge
  %qm_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49
  %frombool = zext i1 %is_pf_loading to i8
  %121 = getelementptr inbounds i8, ptr %params, i32 24
  %122 = call ptr @memset(ptr %121, i32 0, i32 28)
  %port_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 4
  %123 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %port_id, align 1
  %125 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %params, align 4
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %126 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rel_pf_id, align 1
  %pf_id = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 1
  %128 = ptrtoint ptr %pf_id to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %pf_id, align 1
  %max_phys_tcs_per_port = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 16
  %129 = ptrtoint ptr %max_phys_tcs_per_port to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %max_phys_tcs_per_port, align 1
  %max_phys_tcs_per_port3 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 2
  %131 = ptrtoint ptr %max_phys_tcs_per_port3 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %max_phys_tcs_per_port3, align 2
  %is_pf_loading4 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 3
  %132 = ptrtoint ptr %is_pf_loading4 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool, ptr %is_pf_loading4, align 1
  %num_pf_cids = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 4
  %133 = ptrtoint ptr %num_pf_cids to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add.i.7, ptr %num_pf_cids, align 4
  %num_vf_cids = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 5
  %134 = ptrtoint ptr %num_vf_cids to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add3.i.7, ptr %num_vf_cids, align 4
  %num_tids = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 6
  %135 = ptrtoint ptr %num_tids to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add19.i, ptr %num_tids, align 4
  %start_pq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 3
  %136 = ptrtoint ptr %start_pq to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %start_pq, align 4
  %start_pq6 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 7
  %138 = ptrtoint ptr %start_pq6 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %start_pq6, align 4
  %num_pqs = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 13
  %139 = ptrtoint ptr %num_pqs to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %num_pqs, align 4
  %num_vf_pqs = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 14
  %141 = ptrtoint ptr %num_vf_pqs to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %num_vf_pqs, align 2
  %sub = sub i16 %140, %142
  %num_pf_pqs = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 8
  %143 = ptrtoint ptr %num_pf_pqs to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %sub, ptr %num_pf_pqs, align 2
  %num_vf_pqs10 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 9
  %144 = ptrtoint ptr %num_vf_pqs10 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %142, ptr %num_vf_pqs10, align 4
  %start_vport = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 4
  %145 = ptrtoint ptr %start_vport to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %start_vport, align 2
  %conv11 = zext i8 %146 to i16
  %start_vport12 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 10
  %147 = ptrtoint ptr %start_vport12 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv11, ptr %start_vport12, align 2
  %num_vports = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 15
  %148 = ptrtoint ptr %num_vports to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %num_vports, align 4
  %conv13 = zext i8 %149 to i16
  %num_vports14 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 11
  %150 = ptrtoint ptr %num_vports14 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv13, ptr %num_vports14, align 4
  %pf_wfq = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 22
  %151 = ptrtoint ptr %pf_wfq to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %pf_wfq, align 1
  %conv15 = zext i8 %152 to i16
  %pf_wfq16 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 14
  %153 = ptrtoint ptr %pf_wfq16 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv15, ptr %pf_wfq16, align 2
  %pf_rl = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 23
  %154 = ptrtoint ptr %pf_rl to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pf_rl, align 4
  %pf_rl17 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 15
  %156 = ptrtoint ptr %pf_rl17 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %pf_rl17, align 4
  %157 = ptrtoint ptr %qm_info1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %qm_info1, align 4
  %pq_params = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 17
  %159 = ptrtoint ptr %pq_params to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %pq_params, align 4
  %qm_vport_params = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 1
  %160 = ptrtoint ptr %qm_vport_params to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %qm_vport_params, align 4
  %vport_params = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %params, i32 0, i32 18
  %162 = ptrtoint ptr %vport_params to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %vport_params, align 4
  %call = call i32 @qed_qm_pf_rt_init(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %params) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %params) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_qm_pf_rt_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_cxt_hw_init_common(ptr noundef %p_hwfn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr.i, align 8
  %val.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %cache_shift.i = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %cache_shift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_shift.i, align 4
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sub.i = add nuw i32 %shl.i, 1215
  %neg.i = sub i32 0, %shl.i
  %and.i = and i32 %sub.i, %neg.i
  %add6.i = add i32 %3, 12
  %shl7.i = shl nuw i32 1, %add6.i
  %div.i = udiv i32 %shl7.i, %and.i
  %mul.i = mul i32 %and.i, %div.i
  %sub10.i = sub i32 %shl7.i, %mul.i
  %and17.i = and i32 %and.i, 4095
  %shl19.i = shl i32 %sub10.i, 12
  %shl19.masked.i = and i32 %shl19.i, 16773120
  %and26.i = or i32 %and17.i, %shl19.masked.i
  %shl28.i = shl i32 %div.i, 24
  %or30.i = or i32 %and26.i, %shl28.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34908, i32 noundef %or30.i) #13
  %8 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_cxt_mngr.i, align 8
  %val38.i = getelementptr %struct.qed_cxt_mngr, ptr %9, i32 0, i32 1, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %val38.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val38.i, align 4
  %task_type_size.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %task_type_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %task_type_size.i, align 8
  %add41.i = add i32 %11, 12
  %shl42.i = shl nuw i32 1, %add41.i
  %div43.i = udiv i32 %shl42.i, %13
  %mul46.i = mul i32 %div43.i, %13
  %sub47.i = sub i32 %shl42.i, %mul46.i
  %14 = shl i32 %13, 21
  %shl51.i = and i32 %14, -16777216
  %15 = shl i32 %sub47.i, 13
  %shl61.i = and i32 %15, -65536
  %or63.i = or i32 %shl51.i, %div43.i
  %or72163.i = or i32 %or63.i, %shl61.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34909, i32 noundef %or72163.i) #13
  %16 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx78.i = getelementptr %struct.qed_cxt_mngr, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx78.i, align 4
  %div81.i = udiv i32 %shl42.i, %19
  %mul84.i = mul i32 %div81.i, %19
  %sub85.i = sub i32 %shl42.i, %mul84.i
  %20 = shl i32 %19, 21
  %shl90.i = and i32 %20, -16777216
  %21 = shl i32 %sub85.i, 13
  %shl100.i = and i32 %21, -65536
  %or102.i = or i32 %shl90.i, %div81.i
  %or111164.i = or i32 %or102.i, %shl100.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34910, i32 noundef %or111164.i) #13
  %hw_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %22 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp eq i32 %23, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.qed_prs_init_common.exit_crit_edge

entry.qed_prs_init_common.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_prs_init_common.exit

land.lhs.true.i:                                  ; preds = %entry
  %is_target.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 1, i32 18
  %24 = ptrtoint ptr %is_target.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_target.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.qed_prs_init_common.exit_crit_edge, label %if.then.i

land.lhs.true.i.qed_prs_init_common.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_prs_init_common.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5914, i32 noundef 0) #13
  br label %qed_prs_init_common.exit

qed_prs_init_common.exit:                         ; preds = %if.then.i, %land.lhs.true.i.qed_prs_init_common.exit_crit_edge, %entry.qed_prs_init_common.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_cxt_hw_init_pf(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #4 align 64 {
entry:
  %tm_iids.i = alloca %struct.qed_tm_iids, align 4
  %cfg_word.i = alloca i64, align 8
  %ilt_hw_entry.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qed_qm_init_pf(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext true)
  %call.i = tail call zeroext i16 @qed_get_cm_pq_idx(ptr noundef %p_hwfn, i32 noundef 4) #13
  %conv.i = zext i16 %call.i to i32
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34983, i32 noundef %conv.i) #13
  %p_cxt_mngr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shr.i = lshr i32 %3, 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 0, i32 noundef %shr.i) #13
  %cids_per_vf.i = getelementptr inbounds %struct.qed_conn_type_cfg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cids_per_vf.i, align 4
  %shr3.i = lshr i32 %5, 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 8, i32 noundef %shr3.i) #13
  %arrayidx6.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 8
  %shr8.i = lshr i32 %7, 4
  %add9.i = add nuw nsw i32 %shr8.i, %shr.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 1, i32 noundef %add9.i) #13
  %cids_per_vf12.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %cids_per_vf12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cids_per_vf12.i, align 4
  %shr13.i = lshr i32 %9, 4
  %add14.i = add nuw nsw i32 %shr13.i, %shr3.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 9, i32 noundef %add14.i) #13
  %arrayidx16.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16.i, align 8
  %shr18.i = lshr i32 %11, 4
  %add19.i = add nuw nsw i32 %shr18.i, %add9.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 2, i32 noundef %add19.i) #13
  %cids_per_vf22.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %cids_per_vf22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cids_per_vf22.i, align 4
  %shr23.i = lshr i32 %13, 4
  %add24.i = add nuw nsw i32 %shr23.i, %add14.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 10, i32 noundef %add24.i) #13
  %arrayidx26.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx26.i, align 8
  %shr28.i = lshr i32 %15, 4
  %add29.i = add nuw nsw i32 %shr28.i, %add19.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 3, i32 noundef %add29.i) #13
  %cids_per_vf32.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %cids_per_vf32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cids_per_vf32.i, align 4
  %shr33.i = lshr i32 %17, 4
  %add34.i = add nuw nsw i32 %shr33.i, %add24.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 11, i32 noundef %add34.i) #13
  %arrayidx36.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx36.i, align 8
  %shr38.i = lshr i32 %19, 4
  %add39.i = add nuw nsw i32 %shr38.i, %add29.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 4, i32 noundef %add39.i) #13
  %cids_per_vf42.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %cids_per_vf42.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cids_per_vf42.i, align 4
  %shr43.i = lshr i32 %21, 4
  %add44.i = add nuw nsw i32 %shr43.i, %add34.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 12, i32 noundef %add44.i) #13
  %arrayidx46.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx46.i, align 8
  %shr48.i = lshr i32 %23, 4
  %add49.i = add nuw nsw i32 %shr48.i, %add39.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5, i32 noundef %add49.i) #13
  %cids_per_vf52.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %cids_per_vf52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cids_per_vf52.i, align 4
  %shr53.i = lshr i32 %25, 4
  %add54.i = add nuw nsw i32 %shr53.i, %add44.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 13, i32 noundef %add54.i) #13
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 6, i32 noundef %add49.i) #13
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 14, i32 noundef %add54.i) #13
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 7, i32 noundef %add49.i) #13
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 15, i32 noundef %add54.i) #13
  %26 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_cxt_mngr.i, align 8
  %val.i = getelementptr %struct.qed_cxt_mngr, ptr %27, i32 0, i32 1, i32 1, i32 3, i32 1
  %val4.i = getelementptr %struct.qed_cxt_mngr, ptr %27, i32 0, i32 1, i32 1, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.085.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 0, i32 2, i32 %i.085.i
  %30 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.body.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.i.i:                                     ; preds = %for.body.i
  %arrayidx1.1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 1, i32 2, i32 %i.085.i
  %32 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx1.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx1.2.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 2, i32 2, i32 %i.085.i
  %34 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.2.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.1.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx1.3.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 3, i32 2, i32 %i.085.i
  %36 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx1.3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.3.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.2.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx1.4.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 4, i32 2, i32 %i.085.i
  %38 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx1.4.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.4.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.4.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.3.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx1.5.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 5, i32 2, i32 %i.085.i
  %40 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx1.5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.5.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.5.i.i, label %for.cond.5.i.i, label %for.cond.4.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.4.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %arrayidx1.6.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 6, i32 2, i32 %i.085.i
  %42 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx1.6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.6.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.6.i.i, label %for.cond.6.i.i, label %for.cond.5.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.5.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %arrayidx1.7.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %29, i32 0, i32 7, i32 2, i32 %i.085.i
  %44 = ptrtoint ptr %arrayidx1.7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx1.7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.7.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.7.i.i, label %for.cond.6.i.i.for.inc.i_crit_edge, label %for.cond.6.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge

for.cond.6.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge: ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_tid_seg_info.exit.i

for.cond.6.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

qed_cxt_tid_seg_info.exit.i:                      ; preds = %for.cond.6.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.cond.5.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.cond.4.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.cond.3.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.cond.2.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.cond.1.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.cond.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge, %for.body.i.qed_cxt_tid_seg_info.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx1.i.i, %for.body.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.1.i.i, %for.cond.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.2.i.i, %for.cond.1.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.3.i.i, %for.cond.2.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.4.i.i, %for.cond.3.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.5.i.i, %for.cond.4.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.6.i.i, %for.cond.5.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ], [ %arrayidx1.7.i.i, %for.cond.6.i.i.qed_cxt_tid_seg_info.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %qed_cxt_tid_seg_info.exit.i.for.inc.i_crit_edge, label %if.end.i

qed_cxt_tid_seg_info.exit.i.for.inc.i_crit_edge:  ; preds = %qed_cxt_tid_seg_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %qed_cxt_tid_seg_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  %add.i = add i32 %47, 12
  %add2.i = add nuw nsw i32 %i.085.i, 1
  %start_line.i = getelementptr %struct.qed_cxt_mngr, ptr %27, i32 0, i32 1, i32 1, i32 4, i32 %add2.i, i32 2
  %48 = ptrtoint ptr %start_line.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %start_line.i, align 4
  %50 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val4.i, align 4
  %sub.i = sub i32 %49, %51
  %mul.i = shl i32 %sub.i, %add.i
  %type.i = getelementptr inbounds %struct.qed_tid_seg, ptr %retval.0.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type.i, align 4
  %conv5.i = zext i8 %53 to i32
  %or1480.i = tail call i32 @llvm.fshl.i32(i32 %conv5.i, i32 %mul.i, i32 17) #13
  %arrayidx18.i = getelementptr [4 x i32], ptr @qed_cdu_init_pf.rt_type_offset_arr, i32 0, i32 %i.085.i
  %54 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx18.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %55, i32 noundef %or1480.i) #13
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i, align 4
  %add21.i = add i32 %57, 12
  %add25.i = add nuw nsw i32 %i.085.i, 5
  %start_line27.i = getelementptr %struct.qed_cxt_mngr, ptr %27, i32 0, i32 1, i32 1, i32 4, i32 %add25.i, i32 2
  %58 = ptrtoint ptr %start_line27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %start_line27.i, align 4
  %60 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val4.i, align 4
  %sub30.i = sub i32 %59, %61
  %mul31.i = shl i32 %sub30.i, %add21.i
  %62 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type.i, align 4
  %conv36.i = zext i8 %63 to i32
  %or4882.i = tail call i32 @llvm.fshl.i32(i32 %conv36.i, i32 %mul31.i, i32 17) #13
  %arrayidx52.i = getelementptr [4 x i32], ptr @qed_cdu_init_pf.rt_type_offset_fl_arr, i32 0, i32 %i.085.i
  %64 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx52.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %65, i32 noundef %or4882.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %qed_cxt_tid_seg_info.exit.i.for.inc.i_crit_edge, %for.cond.6.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %qed_cdu_init_pf.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

qed_cdu_init_pf.exit:                             ; preds = %for.inc.i
  %66 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %p_cxt_mngr.i, align 8
  %clients.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %67, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %qed_cdu_init_pf.exit
  %i.031.i.i = phi i32 [ 0, %qed_cdu_init_pf.exit ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i9 = icmp eq i8 %69, 0
  br i1 %tobool.not.i.i9, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %first.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i, i32 1
  %70 = ptrtoint ptr %first.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %first.i.i, align 4
  %val.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i, i32 1, i32 1
  %72 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %71, i32 noundef %73) #13
  %last.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i, i32 2
  %74 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %last.i.i, align 4
  %val8.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i, i32 2, i32 1
  %76 = ptrtoint ptr %val8.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val8.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %75, i32 noundef %77) #13
  %p_size.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i, i32 3
  %78 = ptrtoint ptr %p_size.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %p_size.i.i, align 4
  %val13.i.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients.i.i, i32 %i.031.i.i, i32 3, i32 1
  %80 = ptrtoint ptr %val13.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val13.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %79, i32 noundef %81) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %qed_ilt_bounds_init.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

qed_ilt_bounds_init.exit.i:                       ; preds = %for.inc.i.i
  %82 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info.i.i = getelementptr inbounds %struct.qed_dev, ptr %83, i32 0, i32 37
  %84 = ptrtoint ptr %p_iov_info.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %p_iov_info.i.i, align 4
  %tobool.not.i79.i = icmp eq ptr %85, null
  br i1 %tobool.not.i79.i, label %qed_ilt_bounds_init.exit.i.if.end.i.i_crit_edge, label %if.then.i.i

qed_ilt_bounds_init.exit.i.if.end.i.i_crit_edge:  ; preds = %qed_ilt_bounds_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %qed_ilt_bounds_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %first_vf_in_pf.i.i = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %first_vf_in_pf.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %first_vf_in_pf.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5963, i32 noundef %87) #13
  %88 = ptrtoint ptr %first_vf_in_pf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %first_vf_in_pf.i.i, align 4
  %total_vfs.i.i = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %total_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %total_vfs.i.i, align 2
  %conv.i.i = zext i16 %91 to i32
  %add.i.i = add i32 %89, %conv.i.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5964, i32 noundef %add.i.i) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %qed_ilt_bounds_init.exit.i.if.end.i.i_crit_edge
  %92 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %p_cxt_mngr.i, align 8
  %clients.i81.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %clients.i81.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %clients.i81.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool26.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool26.not.i.i, label %if.end.i.i.if.end28.i.i_crit_edge, label %if.then27.i.i

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %val.i82.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %93, i32 0, i32 1, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %val.i82.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val.i82.i, align 4
  %add4.i.i = add i32 %97, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add4.i.i)
  %tobool.not.i.i.i.i = icmp ult i32 %add4.i.i, 10
  %shl.i.i = shl nuw i32 1, %add4.i.i
  %shr.i.i = lshr i32 %shl.i.i, 10
  %98 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #13, !range !151
  %sub.i.op.i.i.i = xor i32 %98, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5962, i32 noundef %sub.i.i.i) #13
  %pf_total_lines.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %93, i32 0, i32 1, i32 0, i32 5
  %99 = ptrtoint ptr %pf_total_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pf_total_lines.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5956, i32 noundef %100) #13
  %vf_total_lines.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %93, i32 0, i32 1, i32 0, i32 7
  %101 = ptrtoint ptr %vf_total_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vf_total_lines.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5959, i32 noundef %102) #13
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then27.i.i, %if.end.i.i.if.end28.i.i_crit_edge
  %103 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx31.i.i = getelementptr %struct.qed_cxt_mngr, ptr %104, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx31.i.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool67.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool67.not.i.i, label %if.end28.i.i.if.end71.i.i_crit_edge, label %if.then68.i.i

if.end28.i.i.if.end71.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i.i

if.then68.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %val33.i.i = getelementptr %struct.qed_cxt_mngr, ptr %104, i32 0, i32 1, i32 1, i32 3, i32 1
  %107 = ptrtoint ptr %val33.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val33.i.i, align 4
  %add34.i.i = add i32 %108, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add34.i.i)
  %tobool.not.i.i154.i.i = icmp ult i32 %add34.i.i, 10
  %shl35.i.i = shl nuw i32 1, %add34.i.i
  %shr36.i.i = lshr i32 %shl35.i.i, 10
  %109 = tail call i32 @llvm.ctlz.i32(i32 %shr36.i.i, i1 true) #13, !range !151
  %sub.i.op.i155.i.i = xor i32 %109, 31
  %sub.i156.i.i = select i1 %tobool.not.i.i154.i.i, i32 -1, i32 %sub.i.op.i155.i.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5961, i32 noundef %sub.i156.i.i) #13
  %pf_total_lines69.i.i = getelementptr %struct.qed_cxt_mngr, ptr %104, i32 0, i32 1, i32 1, i32 5
  %110 = ptrtoint ptr %pf_total_lines69.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pf_total_lines69.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5955, i32 noundef %111) #13
  %vf_total_lines70.i.i = getelementptr %struct.qed_cxt_mngr, ptr %104, i32 0, i32 1, i32 1, i32 7
  %112 = ptrtoint ptr %vf_total_lines70.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vf_total_lines70.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5958, i32 noundef %113) #13
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.then68.i.i, %if.end28.i.i.if.end71.i.i_crit_edge
  %114 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx74.i.i = getelementptr %struct.qed_cxt_mngr, ptr %115, i32 0, i32 1, i32 3
  %116 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx74.i.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool110.not.i.i = icmp eq i8 %117, 0
  br i1 %tobool110.not.i.i, label %if.end71.i.i.qed_ilt_vf_bounds_init.exit.i_crit_edge, label %if.then111.i.i

if.end71.i.i.qed_ilt_vf_bounds_init.exit.i_crit_edge: ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ilt_vf_bounds_init.exit.i

if.then111.i.i:                                   ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %val76.i.i = getelementptr %struct.qed_cxt_mngr, ptr %115, i32 0, i32 1, i32 3, i32 3, i32 1
  %118 = ptrtoint ptr %val76.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val76.i.i, align 4
  %add77.i.i = add i32 %119, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add77.i.i)
  %tobool.not.i.i157.i.i = icmp ult i32 %add77.i.i, 10
  %shl78.i.i = shl nuw i32 1, %add77.i.i
  %shr79.i.i = lshr i32 %shl78.i.i, 10
  %120 = tail call i32 @llvm.ctlz.i32(i32 %shr79.i.i, i1 true) #13, !range !151
  %sub.i.op.i158.i.i = xor i32 %120, 31
  %sub.i159.i.i = select i1 %tobool.not.i.i157.i.i, i32 -1, i32 %sub.i.op.i158.i.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5960, i32 noundef %sub.i159.i.i) #13
  %pf_total_lines112.i.i = getelementptr %struct.qed_cxt_mngr, ptr %115, i32 0, i32 1, i32 3, i32 5
  %121 = ptrtoint ptr %pf_total_lines112.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pf_total_lines112.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5954, i32 noundef %122) #13
  %vf_total_lines113.i.i = getelementptr %struct.qed_cxt_mngr, ptr %115, i32 0, i32 1, i32 3, i32 7
  %123 = ptrtoint ptr %vf_total_lines113.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vf_total_lines113.i.i, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5957, i32 noundef %124) #13
  br label %qed_ilt_vf_bounds_init.exit.i

qed_ilt_vf_bounds_init.exit.i:                    ; preds = %if.then111.i.i, %if.end71.i.i.qed_ilt_vf_bounds_init.exit.i_crit_edge
  %125 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %p_cxt_mngr.i, align 8
  %ilt_shadow.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %ilt_shadow.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ilt_shadow.i, align 8
  %clients2.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %126, i32 0, i32 1
  %pf_start_line.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %126, i32 0, i32 9
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.inc48.i.for.body.i11_crit_edge, %qed_ilt_vf_bounds_init.exit.i
  %i.088.i = phi i32 [ 0, %qed_ilt_vf_bounds_init.exit.i ], [ %inc49.i, %for.inc48.i.for.body.i11_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients2.i, i32 %i.088.i
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i10 = icmp eq i8 %130, 0
  br i1 %tobool.not.i10, label %for.body.i11.for.inc48.i_crit_edge, label %if.else.i

for.body.i11.for.inc48.i_crit_edge:               ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.i

if.else.i:                                        ; preds = %for.body.i11
  %val.i12 = getelementptr %struct.qed_ilt_client_cfg, ptr %clients2.i, i32 %i.088.i, i32 1, i32 1
  %131 = ptrtoint ptr %val.i12 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %val.i12, align 4
  %133 = ptrtoint ptr %pf_start_line.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pf_start_line.i, align 8
  %sub.i13 = sub i32 %132, %134
  %val9.i = getelementptr %struct.qed_ilt_client_cfg, ptr %clients2.i, i32 %i.088.i, i32 2, i32 1
  %135 = ptrtoint ptr %val9.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %val9.i, align 4
  %sub1183.i = sub i32 %136, %134
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i13, i32 %sub1183.i)
  %cmp12.not84.i = icmp ugt i32 %sub.i13, %sub1183.i
  br i1 %cmp12.not84.i, label %if.else.i.for.inc48.i_crit_edge, label %for.body13.preheader.i

if.else.i.for.inc48.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.i

for.body13.preheader.i:                           ; preds = %if.else.i
  %mul.i14 = shl i32 %132, 1
  %add.i15 = add i32 %mul.i14, 5967
  br label %for.body13.i

for.body13.i:                                     ; preds = %if.end45.i.for.body13.i_crit_edge, %for.body13.preheader.i
  %rt_offst.087.i = phi i32 [ %add46.i, %if.end45.i.for.body13.i_crit_edge ], [ %add.i15, %for.body13.preheader.i ]
  %line.085.i = phi i32 [ %inc.i19, %if.end45.i.for.body13.i_crit_edge ], [ %sub.i13, %for.body13.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ilt_hw_entry.i) #13
  %137 = ptrtoint ptr %ilt_hw_entry.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 0, ptr %ilt_hw_entry.i, align 8
  %arrayidx14.i = getelementptr %struct.phys_mem_desc, ptr %128, i32 %line.085.i
  %virt_addr.i = getelementptr %struct.phys_mem_desc, ptr %128, i32 %line.085.i, i32 1
  %138 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %virt_addr.i, align 4
  %tobool15.not.i = icmp eq ptr %139, null
  br i1 %tobool15.not.i, label %for.body13.i.if.end45.i_crit_edge, label %do.body.i

for.body13.i.if.end45.i_crit_edge:                ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

do.body.i:                                        ; preds = %for.body13.i
  %140 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx14.i, align 4
  %shr.i16 = lshr i32 %141, 12
  %conv.i17 = zext i32 %shr.i16 to i64
  %or20.i = or i64 %conv.i17, 4503599627370496
  %142 = ptrtoint ptr %ilt_hw_entry.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %or20.i, ptr %ilt_hw_entry.i, align 8
  %143 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp25.i = icmp eq i8 %144, 0
  br i1 %cmp25.i, label %land.rhs.i, label %do.body.i.if.end45.i_crit_edge

do.body.i.if.end45.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

land.rhs.i:                                       ; preds = %do.body.i
  %145 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dp_module.i, align 4
  %and27.i = and i32 %146, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %land.rhs.i.if.end45.i_crit_edge, label %do.end34.i, !prof !149

land.rhs.i.if.end45.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

do.end34.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %147 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx14.i, align 4
  %shr41.i = lshr i32 %148, 12
  %conv42.i = zext i32 %shr41.i to i64
  %call.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 1607, ptr noundef nonnull %name.i, i32 noundef %rt_offst.087.i, i32 noundef %line.085.i, i32 noundef %i.088.i, i64 noundef %conv42.i) #16
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end34.i, %land.rhs.i.if.end45.i_crit_edge, %do.body.i.if.end45.i_crit_edge, %for.body13.i.if.end45.i_crit_edge
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %rt_offst.087.i, ptr noundef nonnull %ilt_hw_entry.i, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ilt_hw_entry.i) #13
  %inc.i19 = add i32 %line.085.i, 1
  %add46.i = add i32 %rt_offst.087.i, 2
  %149 = ptrtoint ptr %val9.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val9.i, align 4
  %151 = ptrtoint ptr %pf_start_line.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pf_start_line.i, align 8
  %sub11.i = sub i32 %150, %152
  %cmp12.not.i = icmp ugt i32 %inc.i19, %sub11.i
  br i1 %cmp12.not.i, label %if.end45.i.for.inc48.i_crit_edge, label %if.end45.i.for.body13.i_crit_edge

if.end45.i.for.body13.i_crit_edge:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13.i

if.end45.i.for.inc48.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.i

for.inc48.i:                                      ; preds = %if.end45.i.for.inc48.i_crit_edge, %if.else.i.for.inc48.i_crit_edge, %for.body.i11.for.inc48.i_crit_edge
  %inc49.i = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i20 = icmp eq i32 %inc49.i, 8
  br i1 %exitcond.not.i20, label %qed_ilt_init_pf.exit, label %for.inc48.i.for.body.i11_crit_edge

for.inc48.i.for.body.i11_crit_edge:               ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i11

qed_ilt_init_pf.exit:                             ; preds = %for.inc48.i
  %153 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %p_cxt_mngr.i, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 8
  %cids_per_vf.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %154, i32 0, i32 0, i32 1
  %157 = ptrtoint ptr %cids_per_vf.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cids_per_vf.i.i, align 4
  %arrayidx.1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %154, i32 0, i32 1
  %159 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.1.i.i, align 8
  %add.1.i.i = add i32 %160, %156
  %cids_per_vf.1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %154, i32 0, i32 1, i32 1
  %161 = ptrtoint ptr %cids_per_vf.1.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cids_per_vf.1.i.i, align 4
  %add3.1.i.i = add i32 %162, %158
  %arrayidx.5.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %154, i32 0, i32 5
  %163 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.5.i.i, align 8
  %add.5.i.i = add i32 %add.1.i.i, %164
  %cids_per_vf.5.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %154, i32 0, i32 5, i32 1
  %165 = ptrtoint ptr %cids_per_vf.5.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cids_per_vf.5.i.i, align 4
  %add3.5.i.i = add i32 %add3.1.i.i, %166
  %arfs_count.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %154, i32 0, i32 14
  %167 = ptrtoint ptr %arfs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arfs_count.i.i, align 8
  %add5.i.i = add i32 %add.5.i.i, %168
  %vf_count.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %154, i32 0, i32 3
  %169 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vf_count.i, align 8
  %mul.i22 = mul i32 %170, %add3.5.i.i
  %add.i23 = add i32 %add5.i.i, %mul.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i23)
  %tobool.not.i24 = icmp eq i32 %add.i23, 0
  br i1 %tobool.not.i24, label %qed_ilt_init_pf.exit.qed_src_init_pf.exit_crit_edge, label %cond.end23.i

qed_ilt_init_pf.exit.qed_src_init_pf.exit_crit_edge: ; preds = %qed_ilt_init_pf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_src_init_pf.exit

cond.end23.i:                                     ; preds = %qed_ilt_init_pf.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5934, i32 noundef %add.i23) #13
  %171 = call i32 @llvm.umax.i32(i32 %add.i23, i32 256) #13
  %sub.i25 = add i32 %171, -1
  %172 = call i32 @llvm.ctlz.i32(i32 %sub.i25, i1 true) #13, !range !151
  %sub.i.i.i.i = sub nuw nsw i32 32, %172
  %cond24.i = shl nuw i32 1, %sub.i.i.i.i
  %173 = call i32 @llvm.ctlz.i32(i32 %cond24.i, i1 true) #13, !range !151
  %sub.i.op.i67.i = xor i32 %173, 31
  call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 5935, i32 noundef %sub.i.op.i67.i) #13
  %174 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %p_cxt_mngr.i, align 8
  %first_free.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %175, i32 0, i32 11, i32 2
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef 5930, ptr noundef %first_free.i, i32 noundef 8) #13
  %176 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %p_cxt_mngr.i, align 8
  %last_free.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %177, i32 0, i32 11, i32 3
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef 5932, ptr noundef %last_free.i, i32 noundef 8) #13
  br label %qed_src_init_pf.exit

qed_src_init_pf.exit:                             ; preds = %cond.end23.i, %qed_ilt_init_pf.exit.qed_src_init_pf.exit_crit_edge
  %178 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %p_cxt_mngr.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm_iids.i) #13
  %180 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids.i, i32 0, i32 3
  %181 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg_word.i) #13
  %182 = call ptr @memset(ptr %tm_iids.i, i32 0, i32 32)
  call fastcc void @qed_cxt_tm_iids(ptr noundef %179, ptr noundef nonnull %tm_iids.i) #13
  %vf_count.i29 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %179, i32 0, i32 3
  %183 = ptrtoint ptr %vf_count.i29 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %vf_count.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp210.not.i = icmp eq i32 %184, 0
  br i1 %cmp210.not.i, label %qed_src_init_pf.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

qed_src_init_pf.exit.for.end.i_crit_edge:         ; preds = %qed_src_init_pf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %qed_src_init_pf.exit
  %185 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %180, align 4
  %187 = and i32 %186, 805371903
  %and9.i = zext i32 %187 to i64
  %rel_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  br label %for.body.i35

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %for.body.lr.ph.i
  %conv212.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i34, %for.body.i35.for.body.i35_crit_edge ]
  %i.0211.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc.i33, %for.body.i35.for.body.i35_crit_edge ]
  %188 = ptrtoint ptr %rel_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %rel_pf_id.i, align 1
  %conv10.i = zext i8 %189 to i64
  %shl11.i = shl nuw nsw i64 %conv10.i, 25
  %shl11.masked.i = and i64 %shl11.i, 1040187392
  %and16.i = or i64 %shl11.masked.i, %and9.i
  %190 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %and16.i, ptr %cfg_word.i, align 8
  %191 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info.i = getelementptr inbounds %struct.qed_dev, ptr %192, i32 0, i32 37
  %193 = ptrtoint ptr %p_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %p_iov_info.i, align 4
  %first_vf_in_pf.i = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %194, i32 0, i32 13
  %195 = ptrtoint ptr %first_vf_in_pf.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %first_vf_in_pf.i, align 4
  %add.i30 = add i32 %196, %conv212.i
  %mul.i31 = shl i32 %add.i30, 1
  %add21.i32 = add i32 %mul.i31, 27979
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add21.i32, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  %inc.i33 = add i8 %i.0211.i, 1
  %conv.i34 = zext i8 %inc.i33 to i32
  %197 = ptrtoint ptr %vf_count.i29 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vf_count.i29, align 8
  %cmp.i = icmp ugt i32 %198, %conv.i34
  br i1 %cmp.i, label %for.body.i35.for.body.i35_crit_edge, label %for.body.i35.for.end.i_crit_edge

for.body.i35.for.end.i_crit_edge:                 ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i35

for.end.i:                                        ; preds = %for.body.i35.for.end.i_crit_edge, %qed_src_init_pf.exit.for.end.i_crit_edge
  %199 = ptrtoint ptr %tm_iids.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %tm_iids.i, align 4
  %201 = and i32 %200, 805371903
  %and40.i = zext i32 %201 to i64
  %202 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %and40.i, ptr %cfg_word.i, align 8
  %203 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %p_hwfn, align 8
  %call.i36 = call i32 @qed_get_hsi_def_val(ptr noundef %204, i32 noundef 0) #13
  %rel_pf_id45.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %205 = ptrtoint ptr %rel_pf_id45.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %rel_pf_id45.i, align 1
  %conv46.i = zext i8 %206 to i32
  %add47.i = add i32 %call.i36, %conv46.i
  %mul48.i = shl i32 %add47.i, 1
  %add49.i37 = add i32 %mul48.i, 27979
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add49.i37, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i38 = icmp ne i32 %200, 0
  %cond.i = zext i1 %tobool.not.i38 to i32
  call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 27975, i32 noundef %cond.i) #13
  %207 = ptrtoint ptr %vf_count.i29 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %vf_count.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp55213.not.i = icmp eq i32 %208, 0
  br i1 %cmp55213.not.i, label %for.end.i.qed_tm_init_pf.exit_crit_edge, label %for.body57.lr.ph.i

for.end.i.qed_tm_init_pf.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_tm_init_pf.exit

for.body57.lr.ph.i:                               ; preds = %for.end.i
  %209 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %180, align 4
  %211 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %181, align 4
  %213 = and i32 %212, 805371903
  %and71.i = zext i32 %213 to i64
  %conv80.i = zext i32 %210 to i64
  %shl81.i = shl nuw nsw i64 %conv80.i, 30
  %shl81.masked.i = and i64 %shl81.i, 4324018591155355648
  %and79.i = or i64 %shl81.masked.i, %and71.i
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %for.body57.lr.ph.i
  %conv53215.i = phi i32 [ 0, %for.body57.lr.ph.i ], [ %conv53.i, %for.body57.i.for.body57.i_crit_edge ]
  %i.1214.i = phi i8 [ 0, %for.body57.lr.ph.i ], [ %inc98.i, %for.body57.i.for.body57.i_crit_edge ]
  %214 = ptrtoint ptr %rel_pf_id45.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %rel_pf_id45.i, align 1
  %conv73.i = zext i8 %215 to i64
  %shl74.i = shl nuw nsw i64 %conv73.i, 25
  %shl74.masked.i = and i64 %shl74.i, 1040187392
  %and86.i = or i64 %and79.i, %shl74.masked.i
  %216 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %and86.i, ptr %cfg_word.i, align 8
  %217 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info91.i = getelementptr inbounds %struct.qed_dev, ptr %218, i32 0, i32 37
  %219 = ptrtoint ptr %p_iov_info91.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %p_iov_info91.i, align 4
  %first_vf_in_pf92.i = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %220, i32 0, i32 13
  %221 = ptrtoint ptr %first_vf_in_pf92.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %first_vf_in_pf92.i, align 4
  %add94.i = add i32 %222, %conv53215.i
  %mul95.i = shl i32 %add94.i, 1
  %add96.i = add i32 %mul95.i, 28395
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add96.i, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  %inc98.i = add i8 %i.1214.i, 1
  %conv53.i = zext i8 %inc98.i to i32
  %223 = ptrtoint ptr %vf_count.i29 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %vf_count.i29, align 8
  %cmp55.i = icmp ugt i32 %224, %conv53.i
  br i1 %cmp55.i, label %for.body57.i.for.body57.i_crit_edge, label %for.body57.i.qed_tm_init_pf.exit_crit_edge

for.body57.i.qed_tm_init_pf.exit_crit_edge:       ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_tm_init_pf.exit

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57.i

qed_tm_init_pf.exit:                              ; preds = %for.body57.i.qed_tm_init_pf.exit_crit_edge, %for.end.i.qed_tm_init_pf.exit_crit_edge
  %225 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids.i, i32 0, i32 1, i32 3
  %226 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids.i, i32 0, i32 1, i32 2
  %227 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids.i, i32 0, i32 1, i32 1
  %228 = getelementptr inbounds %struct.qed_tm_iids, ptr %tm_iids.i, i32 0, i32 1
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %231 = and i32 %230, 805371903
  %and124.i = zext i32 %231 to i64
  %conv125.i = zext i32 %200 to i64
  %shl126.i = shl nuw nsw i64 %conv125.i, 30
  %shl126.masked.i = and i64 %shl126.i, 4324018591155355648
  %and131.i = or i64 %shl126.masked.i, %and124.i
  %232 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %and131.i, ptr %cfg_word.i, align 8
  %233 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %p_hwfn, align 8
  %call136.i = call i32 @qed_get_hsi_def_val(ptr noundef %234, i32 noundef 0) #13
  %235 = ptrtoint ptr %rel_pf_id45.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %rel_pf_id45.i, align 1
  %conv138.i = zext i8 %236 to i32
  %mul139.i = shl nuw nsw i32 %conv138.i, 2
  %add142.i = add i32 %mul139.i, %call136.i
  %mul143.i = shl i32 %add142.i, 1
  %add144.i = add i32 %mul143.i, 28395
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add144.i, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool148.not.i = icmp ne i32 %230, 0
  %spec.select.i = zext i1 %tobool148.not.i to i32
  %add156.i = add i32 %230, %200
  %237 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %227, align 4
  %239 = and i32 %238, 805371903
  %and124.1.i = zext i32 %239 to i64
  %conv125.1.i = zext i32 %add156.i to i64
  %shl126.1.i = shl nuw nsw i64 %conv125.1.i, 30
  %shl126.masked.1.i = and i64 %shl126.1.i, 4324018591155355648
  %and131.1.i = or i64 %shl126.masked.1.i, %and124.1.i
  %240 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %and131.1.i, ptr %cfg_word.i, align 8
  %241 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %p_hwfn, align 8
  %call136.1.i = call i32 @qed_get_hsi_def_val(ptr noundef %242, i32 noundef 0) #13
  %243 = ptrtoint ptr %rel_pf_id45.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %rel_pf_id45.i, align 1
  %conv138.1.i = zext i8 %244 to i32
  %mul139.1.i = shl nuw nsw i32 %conv138.1.i, 2
  %add140.1.i = add i32 %call136.1.i, 1
  %add142.1.i = add i32 %add140.1.i, %mul139.1.i
  %mul143.1.i = shl i32 %add142.1.i, 1
  %add144.1.i = add i32 %mul143.1.i, 28395
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add144.1.i, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool148.not.1.i = icmp eq i32 %238, 0
  %spec.select.1.i = select i1 %tobool148.not.1.i, i32 0, i32 2
  %or152.1.i = or i32 %spec.select.1.i, %spec.select.i
  %add156.1.i = add i32 %238, %add156.i
  %245 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %226, align 4
  %247 = and i32 %246, 805371903
  %and124.2.i = zext i32 %247 to i64
  %conv125.2.i = zext i32 %add156.1.i to i64
  %shl126.2.i = shl nuw nsw i64 %conv125.2.i, 30
  %shl126.masked.2.i = and i64 %shl126.2.i, 4324018591155355648
  %and131.2.i = or i64 %shl126.masked.2.i, %and124.2.i
  %248 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 %and131.2.i, ptr %cfg_word.i, align 8
  %249 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %p_hwfn, align 8
  %call136.2.i = call i32 @qed_get_hsi_def_val(ptr noundef %250, i32 noundef 0) #13
  %251 = ptrtoint ptr %rel_pf_id45.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %rel_pf_id45.i, align 1
  %conv138.2.i = zext i8 %252 to i32
  %mul139.2.i = shl nuw nsw i32 %conv138.2.i, 2
  %add140.2.i = add i32 %call136.2.i, 2
  %add142.2.i = add i32 %add140.2.i, %mul139.2.i
  %mul143.2.i = shl i32 %add142.2.i, 1
  %add144.2.i = add i32 %mul143.2.i, 28395
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add144.2.i, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool148.not.2.i = icmp eq i32 %246, 0
  %spec.select.2.i = select i1 %tobool148.not.2.i, i32 0, i32 4
  %or152.2.i = or i32 %or152.1.i, %spec.select.2.i
  %add156.2.i = add i32 %246, %add156.1.i
  %253 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %225, align 4
  %255 = and i32 %254, 805371903
  %and124.3.i = zext i32 %255 to i64
  %conv125.3.i = zext i32 %add156.2.i to i64
  %shl126.3.i = shl nuw nsw i64 %conv125.3.i, 30
  %shl126.masked.3.i = and i64 %shl126.3.i, 4324018591155355648
  %and131.3.i = or i64 %shl126.masked.3.i, %and124.3.i
  %256 = ptrtoint ptr %cfg_word.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %and131.3.i, ptr %cfg_word.i, align 8
  %257 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %p_hwfn, align 8
  %call136.3.i = call i32 @qed_get_hsi_def_val(ptr noundef %258, i32 noundef 0) #13
  %259 = ptrtoint ptr %rel_pf_id45.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %rel_pf_id45.i, align 1
  %conv138.3.i = zext i8 %260 to i32
  %mul139.3.i = shl nuw nsw i32 %conv138.3.i, 2
  %add140.3.i = add i32 %call136.3.i, 3
  %add142.3.i = add i32 %add140.3.i, %mul139.3.i
  %mul143.3.i = shl i32 %add142.3.i, 1
  %add144.3.i = add i32 %mul143.3.i, 28395
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add144.3.i, ptr noundef nonnull %cfg_word.i, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool148.not.3.i = icmp eq i32 %254, 0
  %spec.select.3.i = select i1 %tobool148.not.3.i, i32 0, i32 8
  %or152.3.i = or i32 %or152.2.i, %spec.select.3.i
  %hw_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %261 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %hw_info.i, align 8
  %.off.i = add i32 %262, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %spec.select209.i = select i1 %switch.i, i32 0, i32 %or152.3.i
  call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 27976, i32 noundef %spec.select209.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg_word.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm_iids.i) #13
  %263 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i40 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.not.i41 = icmp eq i32 %266, 0
  br i1 %tobool.not.i41, label %qed_tm_init_pf.exit.qed_prs_init_pf.exit_crit_edge, label %if.end.i42

qed_tm_init_pf.exit.qed_prs_init_pf.exit_crit_edge: ; preds = %qed_tm_init_pf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_prs_init_pf.exit

if.end.i42:                                       ; preds = %qed_tm_init_pf.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %264, i32 0, i32 1, i32 2, i32 1
  %is_target.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 1, i32 18
  %267 = ptrtoint ptr %is_target.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %is_target.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool2.not.i = icmp eq i8 %268, 0
  %..i = select i1 %tobool2.not.i, i32 5915, i32 5917
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %..i, ptr noundef %arrayidx1.i, i32 noundef 4) #13
  br label %qed_prs_init_pf.exit

qed_prs_init_pf.exit:                             ; preds = %if.end.i42, %qed_tm_init_pf.exit.qed_prs_init_pf.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_qed_cxt_acquire_cid(ptr noundef %p_hwfn, i32 noundef %type, ptr nocapture noundef %p_cid, i8 noundef zeroext %vfid) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp = icmp ugt i32 %type, 7
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp1 = icmp ult i8 %3, 3
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge, !prof !152

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1804, ptr noundef nonnull %spec.select, i32 noundef %type) #16
  br label %cleanup

if.end11:                                         ; preds = %entry
  %conv12 = zext i8 %vfid to i32
  %4 = add i8 %vfid, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %4)
  %5 = icmp ult i8 %4, -63
  br i1 %5, label %if.end49, label %do.body19

do.body19:                                        ; preds = %if.end11
  %dp_level20 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp22 = icmp ult i8 %7, 3
  br i1 %cmp22, label %do.end33, label %do.body19.cleanup_crit_edge, !prof !152

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end33:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  %name35 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool37.not = icmp eq ptr %name35, null
  %spec.select196 = select i1 %tobool37.not, ptr @.str.3, ptr %name35
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 1809, ptr noundef nonnull %spec.select196, i32 noundef %conv12) #16
  br label %cleanup

if.end49:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %vfid)
  %cmp16.not = icmp eq i8 %vfid, -1
  %arrayidx = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %type
  %arrayidx55 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %type, i32 %conv12
  %p_map.0 = select i1 %cmp16.not, ptr %arrayidx, ptr %arrayidx55
  %cid_map = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %p_map.0, i32 0, i32 2
  %8 = ptrtoint ptr %cid_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cid_map, align 4
  %tobool57.not = icmp eq ptr %9, null
  br i1 %tobool57.not, label %do.body59, label %if.end88

do.body59:                                        ; preds = %if.end49
  %dp_level60 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level60 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level60, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp62 = icmp ult i8 %11, 3
  br i1 %cmp62, label %do.end73, label %do.body59.cleanup_crit_edge, !prof !152

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end73:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  %name75 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool77.not = icmp eq ptr %name75, null
  %spec.select197 = select i1 %tobool77.not, ptr @.str.3, ptr %name75
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1820, ptr noundef nonnull %spec.select197, i32 noundef %type) #16
  br label %cleanup

if.end88:                                         ; preds = %if.end49
  %max_count = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %p_map.0, i32 0, i32 1
  %12 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_count, align 4
  %call90 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull %9, i32 noundef %13) #13
  %14 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call90, i32 %15)
  %cmp92.not = icmp ult i32 %call90, %15
  br i1 %cmp92.not, label %if.end124, label %do.body95

do.body95:                                        ; preds = %if.end88
  %dp_level96 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %16 = ptrtoint ptr %dp_level96 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level96, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp98 = icmp ult i8 %17, 3
  br i1 %cmp98, label %do.end109, label %do.body95.cleanup_crit_edge, !prof !152

do.body95.cleanup_crit_edge:                      ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end109:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  %name111 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool113.not = icmp eq ptr %name111, null
  %spec.select198 = select i1 %tobool113.not, ptr @.str.3, ptr %name111
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, i32 noundef 1827, ptr noundef nonnull %spec.select198, i32 noundef %type) #16
  br label %cleanup

if.end124:                                        ; preds = %if.end88
  %18 = ptrtoint ptr %cid_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cid_map, align 4
  %rem.i = and i32 %call90, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call90, 5
  %add.ptr.i = getelementptr i32, ptr %19, i32 %div2.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %21, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %p_map.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_map.0, align 4
  %add = add i32 %23, %call90
  %24 = ptrtoint ptr %p_cid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %p_cid, align 4
  %dp_level127 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %25 = ptrtoint ptr %dp_level127 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp_level127, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp129 = icmp eq i8 %26, 0
  br i1 %cmp129, label %land.rhs, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %if.end124
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %27 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp_module, align 4
  %and = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool131.not = icmp eq i32 %and, 0
  br i1 %tobool131.not, label %land.rhs.cleanup_crit_edge, label %do.end141, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end141:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name143 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool145.not = icmp eq ptr %name143, null
  %spec.select199 = select i1 %tobool145.not, ptr @.str.3, ptr %name143
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11, i32 noundef 1837, ptr noundef nonnull %spec.select199, i32 noundef %add, i32 noundef %call90, i32 noundef %conv12, i32 noundef %type) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end141, %land.rhs.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %do.end109, %do.body95.cleanup_crit_edge, %do.end73, %do.body59.cleanup_crit_edge, %do.end33, %do.body19.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end33 ], [ -22, %do.body19.cleanup_crit_edge ], [ -22, %do.end73 ], [ -22, %do.body59.cleanup_crit_edge ], [ -22, %do.end109 ], [ -22, %do.body95.cleanup_crit_edge ], [ 0, %if.end124.cleanup_crit_edge ], [ 0, %do.end141 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_acquire_cid(ptr noundef %p_hwfn, i32 noundef %type, ptr nocapture noundef %p_cid) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_qed_cxt_acquire_cid(ptr noundef %p_hwfn, i32 noundef %type, ptr noundef %p_cid, i8 noundef zeroext -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_qed_cxt_release_cid(ptr noundef %p_hwfn, i32 noundef %cid, i8 noundef zeroext %vfid) local_unnamed_addr #4 align 64 {
entry:
  %p_map = alloca ptr, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_map) #13
  %0 = ptrtoint ptr %p_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #13
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %type, align 4, !annotation !153
  %conv = zext i8 %vfid to i32
  %2 = add i8 %vfid, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %2)
  %3 = icmp ult i8 %2, 62
  br i1 %3, label %do.body, label %if.end17

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp6 = icmp ult i8 %5, 3
  br i1 %cmp6, label %do.end, label %do.body.cleanup_crit_edge, !prof !152

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool11.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool11.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 1900, ptr noundef nonnull %spec.select, i32 noundef %conv) #16
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call18 = call fastcc zeroext i1 @qed_cxt_test_cid_acquired(ptr noundef %p_hwfn, i32 noundef %cid, i8 noundef zeroext %vfid, ptr noundef nonnull %type, ptr noundef nonnull %p_map)
  br i1 %call18, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %6 = ptrtoint ptr %p_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_map, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %sub = sub i32 %cid, %9
  %cid_map = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %cid_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cid_map, align 4
  tail call void @_clear_bit(i32 noundef %sub, ptr noundef %11) #13
  %dp_level23 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %12 = ptrtoint ptr %dp_level23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp25 = icmp eq i8 %13, 0
  br i1 %cmp25, label %land.rhs, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %if.end21
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %14 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_module, align 4
  %and = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %land.rhs.cleanup_crit_edge, label %do.end37, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end37:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name39 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool41.not = icmp eq ptr %name39, null
  %spec.select70 = select i1 %tobool41.not, ptr @.str.3, ptr %name39
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 1916, ptr noundef nonnull %spec.select70, i32 noundef %cid, i32 noundef %sub, i32 noundef %conv, i32 noundef %17) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %land.rhs.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @qed_cxt_test_cid_acquired(ptr noundef %p_hwfn, i32 noundef %cid, i8 noundef zeroext %vfid, ptr nocapture noundef %p_type, ptr nocapture noundef %pp_map) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %vfid)
  %cmp1 = icmp eq i8 %vfid, -1
  %conv = zext i8 %vfid to i32
  %2 = ptrtoint ptr %p_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %storemerge101 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 6, i32 %storemerge101, i32 %conv
  %arrayidx = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %storemerge101
  %storemerge98 = select i1 %cmp1, ptr %arrayidx, ptr %arrayidx4
  %3 = ptrtoint ptr %pp_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge98, ptr %pp_map, align 4
  %cid_map = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %storemerge98, i32 0, i32 2
  %4 = ptrtoint ptr %cid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cid_map, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %6 = ptrtoint ptr %storemerge98 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %storemerge98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cid)
  %cmp7.not = icmp ugt i32 %7, %cid
  br i1 %cmp7.not, label %if.end6.for.inc_crit_edge, label %land.lhs.true

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %max_count = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %storemerge98, i32 0, i32 1
  %8 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_count, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cid)
  %cmp10 = icmp ugt i32 %add, %cid
  br i1 %cmp10, label %for.endthread-pre-split, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %p_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_type, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %p_type, align 4
  %cmp = icmp ult i32 %inc, 8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.endthread-pre-split:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %p_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %p_type, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.inc.for.end_crit_edge
  %13 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp14 = icmp eq i32 %13, 8
  br i1 %cmp14, label %do.body, label %if.end31

do.body:                                          ; preds = %for.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %14 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp18 = icmp ult i8 %15, 3
  br i1 %cmp18, label %do.end, label %do.body.fail_crit_edge, !prof !152

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool24.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool24.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 1872, ptr noundef nonnull %spec.select, i32 noundef %cid, i32 noundef %conv) #16
  br label %fail

if.end31:                                         ; preds = %for.end
  %16 = ptrtoint ptr %pp_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pp_map, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub = sub i32 %cid, %19
  %cid_map33 = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %cid_map33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cid_map33, align 4
  %div3.i = lshr i32 %sub, 5
  %arrayidx.i = getelementptr i32, ptr %21, i32 %div3.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub, 31
  %24 = shl nuw i32 1, %and.i
  %25 = and i32 %24, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool35.not = icmp eq i32 %25, 0
  br i1 %tobool35.not, label %do.body37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body37:                                        ; preds = %if.end31
  %dp_level38 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %26 = ptrtoint ptr %dp_level38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level38, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp40 = icmp ult i8 %27, 3
  br i1 %cmp40, label %do.end51, label %do.body37.fail_crit_edge, !prof !152

do.body37.fail_crit_edge:                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

do.end51:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  %name53 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool55.not = icmp eq ptr %name53, null
  %spec.select99 = select i1 %tobool55.not, ptr @.str.3, ptr %name53
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 1879, ptr noundef nonnull %spec.select99, i32 noundef %cid, i32 noundef %conv) #16
  br label %fail

fail:                                             ; preds = %do.end51, %do.body37.fail_crit_edge, %do.end, %do.body.fail_crit_edge
  %28 = ptrtoint ptr %p_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %p_type, align 4
  %29 = ptrtoint ptr %pp_map to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pp_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end31.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %fail ], [ true, %if.end31.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_cxt_release_cid(ptr noundef %p_hwfn, i32 noundef %cid) local_unnamed_addr #4 align 64 {
entry:
  %p_map.i = alloca ptr, align 4
  %type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_map.i) #13
  %0 = ptrtoint ptr %p_map.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_map.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #13
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %type.i, align 4, !annotation !153
  %call18.i = call fastcc zeroext i1 @qed_cxt_test_cid_acquired(ptr noundef %p_hwfn, i32 noundef %cid, i8 noundef zeroext -1, ptr noundef nonnull %type.i, ptr noundef nonnull %p_map.i) #13
  br i1 %call18.i, label %if.end21.i, label %entry._qed_cxt_release_cid.exit_crit_edge

entry._qed_cxt_release_cid.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %_qed_cxt_release_cid.exit

if.end21.i:                                       ; preds = %entry
  %2 = ptrtoint ptr %p_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_map.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub.i = sub i32 %cid, %5
  %cid_map.i = getelementptr inbounds %struct.qed_cid_acquired_map, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cid_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cid_map.i, align 4
  tail call void @_clear_bit(i32 noundef %sub.i, ptr noundef %7) #13
  %dp_level23.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level23.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25.i = icmp eq i8 %9, 0
  br i1 %cmp25.i, label %land.rhs.i, label %if.end21.i._qed_cxt_release_cid.exit_crit_edge

if.end21.i._qed_cxt_release_cid.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_qed_cxt_release_cid.exit

land.rhs.i:                                       ; preds = %if.end21.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %10 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %land.rhs.i._qed_cxt_release_cid.exit_crit_edge, label %do.end37.i, !prof !149

land.rhs.i._qed_cxt_release_cid.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_qed_cxt_release_cid.exit

do.end37.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %name39.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 1916, ptr noundef nonnull %name39.i, i32 noundef %cid, i32 noundef %sub.i, i32 noundef 255, i32 noundef %13) #16
  br label %_qed_cxt_release_cid.exit

_qed_cxt_release_cid.exit:                        ; preds = %do.end37.i, %land.rhs.i._qed_cxt_release_cid.exit_crit_edge, %if.end21.i._qed_cxt_release_cid.exit_crit_edge, %entry._qed_cxt_release_cid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_map.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_get_cid_info(ptr noundef %p_hwfn, ptr nocapture noundef %p_info) local_unnamed_addr #4 align 64 {
entry:
  %p_map = alloca ptr, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_map) #13
  %2 = ptrtoint ptr %p_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p_map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #13
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %type, align 4, !annotation !153
  %iid = getelementptr inbounds %struct.qed_cxt_info, ptr %p_info, i32 0, i32 1
  %4 = ptrtoint ptr %iid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iid, align 4
  %call = call fastcc zeroext i1 @qed_cxt_test_cid_acquired(ptr noundef %p_hwfn, i32 noundef %5, i8 noundef zeroext -1, ptr noundef nonnull %type, ptr noundef nonnull %p_map)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.qed_cxt_info, ptr %p_info, i32 0, i32 2
  %8 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %type1, align 4
  %9 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_cxt_mngr, align 8
  %val = getelementptr inbounds %struct.qed_cxt_mngr, ptr %10, i32 0, i32 1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_hwfn, align 8
  %cache_shift = getelementptr inbounds %struct.qed_dev, ptr %14, i32 0, i32 30
  %15 = ptrtoint ptr %cache_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cache_shift, align 4
  %conv = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv
  %sub = add nuw i32 %shl, 1215
  %neg = sub i32 0, %shl
  %and = and i32 %sub, %neg
  %add8 = add i32 %12, 12
  %shl9 = shl nuw i32 1, %add8
  %div = udiv i32 %shl9, %and
  %17 = ptrtoint ptr %iid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iid, align 4
  %.frozen = freeze i32 %18
  %div.frozen = freeze i32 %div
  %div11 = udiv i32 %.frozen, %div.frozen
  %ilt_shadow = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %ilt_shadow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ilt_shadow, align 8
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %20, i32 %div11, i32 1
  %21 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_addr, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %23 = mul i32 %div11, %div.frozen
  %rem.decomposed = sub i32 %.frozen, %23
  %mul = mul i32 %rem.decomposed, %and
  %add.ptr = getelementptr i8, ptr %22, i32 %mul
  %24 = ptrtoint ptr %p_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %p_info, align 4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %25 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  br i1 %cmp, label %land.rhs, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %if.end15
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %27 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp_module, align 4
  %and22 = and i32 %28, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool28.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool28.not, ptr @.str.3, ptr %name
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 1958, ptr noundef nonnull %spec.select, i32 noundef %div11, ptr noundef %add.ptr, i32 noundef %18) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.rhs.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_map) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_set_pf_params(ptr noundef %p_hwfn, i32 noundef %rdma_tasks) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %arrayidx.i, align 4
  %cids_per_vf.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %cids_per_vf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cids_per_vf.i, align 4
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %4 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_info, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 6, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge204
    i32 4, label %entry.sw.bb_crit_edge205
    i32 0, label %entry.sw.bb1_crit_edge
    i32 1, label %sw.bb9
    i32 2, label %sw.bb37
    i32 3, label %sw.bb86
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb_crit_edge205:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge204:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge204, %entry.sw.bb_crit_edge205
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %7 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcp_info.i, align 8
  %protocol.i = getelementptr inbounds %struct.qed_mcp_info, ptr %8, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp.i = icmp eq i32 %10, 6
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %sw.bb
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %11 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1.i = icmp eq i8 %12, 0
  br i1 %cmp1.i, label %land.rhs.i, label %do.body.i.if.end12.i.thread_crit_edge

do.body.i.if.end12.i.thread_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.thread

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %13 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end12.i.thread_crit_edge, label %do.end.i, !prof !149

land.rhs.i.if.end12.i.thread_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.thread

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 1972, ptr noundef nonnull %name.i) #16
  br label %if.end12.i.thread

if.end12.i.thread:                                ; preds = %do.end.i, %land.rhs.i.if.end12.i.thread_crit_edge, %do.body.i.if.end12.i.thread_crit_edge
  %15 = ptrtoint ptr %hw_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %hw_info, align 8
  br label %sw.bb23.i

if.end12.i:                                       ; preds = %sw.bb
  %16 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %hw_info, align 8
  %17 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %.pr, label %if.end12.i.sw.bb1_crit_edge [
    i32 5, label %sw.bb.i
    i32 4, label %if.end12.i.sw.bb23.i_crit_edge
  ]

if.end12.i.sw.bb23.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb23.i

if.end12.i.sw.bb1_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

sw.bb.i:                                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %num_qps15.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 4, i32 1
  %18 = ptrtoint ptr %num_qps15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_qps15.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 65536) #13
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end12.i.sw.bb23.i_crit_edge, %if.end12.i.thread
  %num_qps24.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 4, i32 1
  %21 = ptrtoint ptr %num_qps24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_qps24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %22)
  %cmp26.i = icmp ugt i32 %22, 32768
  %phi.bo.i = shl i32 %22, 1
  %cond31.i = select i1 %cmp26.i, i32 65536, i32 %phi.bo.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb23.i, %sw.bb.i
  %cmp.i.i = phi i1 [ true, %sw.bb23.i ], [ false, %sw.bb.i ]
  %proto.0.i = phi i32 [ 2, %sw.bb23.i ], [ 5, %sw.bb.i ]
  %num_cons.0.i = phi i32 [ %cond31.i, %sw.bb23.i ], [ %20, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cons.0.i)
  %tobool32.not.i = icmp eq i32 %num_cons.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdma_tasks)
  %tobool33.not.i = icmp eq i32 %rdma_tasks, 0
  %or.cond.i = or i1 %tobool33.not.i, %tobool32.not.i
  br i1 %or.cond.i, label %do.body44.i, label %if.then34.i

if.then34.i:                                      ; preds = %sw.epilog.i
  %23 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %24, i32 0, i32 %proto.0.i
  %add.i.i = add i32 %num_cons.0.i, 15
  %div41.i.i = and i32 %add.i.i, -16
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div41.i.i, ptr %arrayidx.i.i, align 4
  %cids_per_vf.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %24, i32 0, i32 %proto.0.i, i32 1
  %26 = ptrtoint ptr %cids_per_vf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cids_per_vf.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then34.i.qed_cxt_set_proto_cid_count.exit.i_crit_edge

if.then34.i.qed_cxt_set_proto_cid_count.exit.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_cxt_set_proto_cid_count.exit.i

if.then.i.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  %val.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %24, i32 0, i32 1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i.i, align 4
  %29 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_hwfn, align 8
  %cache_shift.i.i = getelementptr inbounds %struct.qed_dev, ptr %30, i32 0, i32 30
  %31 = ptrtoint ptr %cache_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cache_shift.i.i, align 4
  %conv.i.i = zext i8 %32 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %sub10.i.i = add nuw i32 %shl.i.i, 1215
  %neg.i.i = sub i32 0, %shl.i.i
  %and.i.i = and i32 %sub10.i.i, %neg.i.i
  %add16.i.i = add i32 %28, 12
  %shl17.i.i = shl nuw i32 1, %add16.i.i
  %div18.i.i = udiv i32 %shl17.i.i, %and.i.i
  %mul19.i.i = shl i32 %div18.i.i, 4
  %sub23.i.i = add i32 %div41.i.i, -1
  %add24.i.i = add i32 %sub23.i.i, %mul19.i.i
  %33 = urem i32 %add24.i.i, %mul19.i.i
  %mul26.i.i = sub i32 %add24.i.i, %33
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul26.i.i, ptr %arrayidx.i.i, align 4
  br label %qed_cxt_set_proto_cid_count.exit.i

qed_cxt_set_proto_cid_count.exit.i:               ; preds = %if.then.i.i, %if.then34.i.qed_cxt_set_proto_cid_count.exit.i_crit_edge
  %35 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx1.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %36, i32 0, i32 2, i32 2, i32 2
  %37 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %rdma_tasks, ptr %arrayidx1.i.i, align 4
  %has_fl_mem.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %36, i32 0, i32 2, i32 2, i32 2, i32 2
  %38 = ptrtoint ptr %has_fl_mem.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %has_fl_mem.i.i, align 1
  %type.i.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %36, i32 0, i32 2, i32 2, i32 2, i32 1
  %39 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %type.i.i, align 4
  %num_srqs35.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 4, i32 2
  %40 = ptrtoint ptr %num_srqs35.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_srqs35.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 32768) #13
  %43 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_cxt_mngr.i, align 8
  %val.i.i.i = getelementptr %struct.qed_cxt_mngr, ptr %44, i32 0, i32 1, i32 5, i32 3, i32 1
  %45 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i.i.i, align 4
  %add.i.i.i = add i32 %46, 12
  %shl.i.i.i = shl nuw i32 1, %add.i.i.i
  %div.i.i = udiv i32 %shl.i.i.i, 72
  %srq_count.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %44, i32 0, i32 12
  %47 = ptrtoint ptr %srq_count.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %srq_count.i.i, align 8
  %xrc_srq_count.i.i = getelementptr inbounds %struct.qed_cxt_mngr, ptr %44, i32 0, i32 13
  %48 = ptrtoint ptr %xrc_srq_count.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div.i.i, ptr %xrc_srq_count.i.i, align 4
  br label %sw.bb1

do.body44.i:                                      ; preds = %sw.epilog.i
  %49 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_hwfn, align 8
  %dp_level45.i = getelementptr inbounds %struct.qed_dev, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %dp_level45.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp47.i = icmp ult i8 %52, 2
  br i1 %cmp47.i, label %do.end58.i, label %do.body44.i.sw.bb1_crit_edge, !prof !152

do.body44.i.sw.bb1_crit_edge:                     ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

do.end58.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  %name61.i = getelementptr inbounds %struct.qed_dev, ptr %50, i32 0, i32 2
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 2011, ptr noundef nonnull %name61.i) #16
  br label %sw.bb1

sw.bb1:                                           ; preds = %do.end58.i, %do.body44.i.sw.bb1_crit_edge, %qed_cxt_set_proto_cid_count.exit.i, %if.end12.i.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %pf_params2 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36
  %num_vf_cons = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 0, i32 1
  %53 = ptrtoint ptr %num_vf_cons to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_vf_cons, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool3.not = icmp eq i8 %54, 0
  br i1 %tobool3.not, label %if.then4, label %sw.bb1.if.end6_crit_edge

sw.bb1.if.end6_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %num_vf_cons to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %num_vf_cons, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %sw.bb1.if.end6_crit_edge
  %56 = ptrtoint ptr %pf_params2 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pf_params2, align 4
  %conv = zext i16 %57 to i32
  %58 = ptrtoint ptr %num_vf_cons to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_vf_cons, align 2
  %conv8 = zext i8 %59 to i32
  %60 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i178 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %61, i32 0, i32 4
  %add.i179 = add nuw nsw i32 %conv, 15
  %div41.i180 = and i32 %add.i179, 131056
  %62 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div41.i180, ptr %arrayidx.i178, align 4
  %add5.i = add nuw nsw i32 %conv8, 15
  %div642.i = and i32 %add5.i, 496
  %cids_per_vf.i181 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %61, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %cids_per_vf.i181 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div642.i, ptr %cids_per_vf.i181, align 4
  %num_arfs_filters = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 0, i32 2
  %64 = ptrtoint ptr %num_arfs_filters to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_arfs_filters, align 4
  %66 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arfs_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %arfs_count to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %arfs_count, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %num_cons12 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 1, i32 2
  %68 = ptrtoint ptr %num_cons12 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num_cons12, align 8
  %conv13 = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool14.not = icmp eq i16 %69, 0
  br i1 %tobool14.not, label %sw.bb9.do.body_crit_edge, label %land.lhs.true

sw.bb9.do.body_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true:                                    ; preds = %sw.bb9
  %num_tasks = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 1, i32 3
  %70 = ptrtoint ptr %num_tasks to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_tasks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool16.not = icmp eq i16 %71, 0
  br i1 %tobool16.not, label %land.lhs.true.do.body_crit_edge, label %if.then17

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i183 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %73, i32 0, i32 1
  %add.i184 = add nuw nsw i32 %conv13, 15
  %div41.i185 = and i32 %add.i184, 131056
  %74 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div41.i185, ptr %arrayidx.i183, align 4
  %cids_per_vf.i186 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %73, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %cids_per_vf.i186 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %cids_per_vf.i186, align 4
  %76 = ptrtoint ptr %num_tasks to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_tasks, align 2
  %conv21 = zext i16 %77 to i32
  %78 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %78, i32 0, i32 1, i32 2, i32 1
  %79 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv21, ptr %arrayidx1.i, align 4
  %has_fl_mem.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %78, i32 0, i32 1, i32 2, i32 1, i32 2
  %80 = ptrtoint ptr %has_fl_mem.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %has_fl_mem.i, align 1
  %type.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %78, i32 0, i32 1, i32 2, i32 1, i32 1
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %type.i, align 4
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %sw.bb9.do.body_crit_edge
  %82 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %p_hwfn, align 8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp = icmp ult i8 %85, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !152

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_dev, ptr %83, i32 0, i32 2
  %tobool29.not = icmp eq ptr %name, null
  %spec.select174 = select i1 %tobool29.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 2066, ptr noundef nonnull %spec.select174) #16
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %num_cons40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 2, i32 6
  %86 = ptrtoint ptr %num_cons40 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %num_cons40, align 2
  %conv41 = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool42.not = icmp eq i16 %87, 0
  br i1 %tobool42.not, label %sw.bb37.do.body53_crit_edge, label %land.lhs.true43

sw.bb37.do.body53_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

land.lhs.true43:                                  ; preds = %sw.bb37
  %num_tasks44 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 2, i32 7
  %88 = ptrtoint ptr %num_tasks44 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %num_tasks44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool46.not = icmp eq i16 %89, 0
  br i1 %tobool46.not, label %land.lhs.true43.do.body53_crit_edge, label %if.then47

land.lhs.true43.do.body53_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %p_cxt_mngr.i, align 8
  %add.i189 = add nuw nsw i32 %conv41, 15
  %div41.i190 = and i32 %add.i189, 131056
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div41.i190, ptr %91, align 4
  %cids_per_vf.i191 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %91, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %cids_per_vf.i191 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %cids_per_vf.i191, align 4
  %94 = ptrtoint ptr %num_tasks44 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num_tasks44, align 4
  %conv51 = zext i16 %95 to i32
  %96 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx1.i193 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %96, i32 0, i32 0, i32 2, i32 0
  %97 = ptrtoint ptr %arrayidx1.i193 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv51, ptr %arrayidx1.i193, align 4
  %has_fl_mem.i194 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %96, i32 0, i32 0, i32 2, i32 0, i32 2
  %98 = ptrtoint ptr %has_fl_mem.i194 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %has_fl_mem.i194, align 1
  %type.i195 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %96, i32 0, i32 0, i32 2, i32 0, i32 1
  %99 = ptrtoint ptr %type.i195 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %type.i195, align 4
  br label %cleanup

do.body53:                                        ; preds = %land.lhs.true43.do.body53_crit_edge, %sw.bb37.do.body53_crit_edge
  %100 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p_hwfn, align 8
  %dp_level55 = getelementptr inbounds %struct.qed_dev, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %dp_level55 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dp_level55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp57 = icmp ult i8 %103, 2
  br i1 %cmp57, label %do.end68, label %do.body53.cleanup_crit_edge, !prof !152

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end68:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %name71 = getelementptr inbounds %struct.qed_dev, ptr %101, i32 0, i32 2
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select175 = select i1 %tobool73.not, ptr @.str.3, ptr %name71
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 2089, ptr noundef nonnull %spec.select175) #16
  br label %cleanup

sw.bb86:                                          ; preds = %entry
  %num_cons89 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 3, i32 2
  %104 = ptrtoint ptr %num_cons89 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %num_cons89, align 2
  %conv90 = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool91.not = icmp eq i16 %105, 0
  br i1 %tobool91.not, label %sw.bb86.do.body102_crit_edge, label %land.lhs.true92

sw.bb86.do.body102_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body102

land.lhs.true92:                                  ; preds = %sw.bb86
  %num_tasks93 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 3, i32 3
  %106 = ptrtoint ptr %num_tasks93 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %num_tasks93, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool95.not = icmp eq i16 %107, 0
  br i1 %tobool95.not, label %land.lhs.true92.do.body102_crit_edge, label %if.then96

land.lhs.true92.do.body102_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body102

if.then96:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %p_cxt_mngr.i, align 8
  %add.i197 = add nuw nsw i32 %conv90, 15
  %div41.i198 = and i32 %add.i197, 131056
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %div41.i198, ptr %109, align 4
  %cids_per_vf.i199 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %109, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %cids_per_vf.i199 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %cids_per_vf.i199, align 4
  %112 = ptrtoint ptr %num_tasks93 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %num_tasks93, align 4
  %conv100 = zext i16 %113 to i32
  %114 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx1.i201 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %114, i32 0, i32 0, i32 2, i32 0
  %115 = ptrtoint ptr %arrayidx1.i201 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv100, ptr %arrayidx1.i201, align 4
  %has_fl_mem.i202 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %114, i32 0, i32 0, i32 2, i32 0, i32 2
  %116 = ptrtoint ptr %has_fl_mem.i202 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %has_fl_mem.i202, align 1
  %type.i203 = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %114, i32 0, i32 0, i32 2, i32 0, i32 1
  %117 = ptrtoint ptr %type.i203 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %type.i203, align 4
  br label %cleanup

do.body102:                                       ; preds = %land.lhs.true92.do.body102_crit_edge, %sw.bb86.do.body102_crit_edge
  %118 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %p_hwfn, align 8
  %dp_level104 = getelementptr inbounds %struct.qed_dev, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %dp_level104 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %dp_level104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %121)
  %cmp106 = icmp ult i8 %121, 2
  br i1 %cmp106, label %do.end117, label %do.body102.cleanup_crit_edge, !prof !152

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end117:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  %name120 = getelementptr inbounds %struct.qed_dev, ptr %119, i32 0, i32 2
  %tobool122.not = icmp eq ptr %name120, null
  %spec.select176 = select i1 %tobool122.not, ptr @.str.3, ptr %name120
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef 2112, ptr noundef nonnull %spec.select176) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %do.body102.cleanup_crit_edge, %if.then96, %do.end68, %do.body53.cleanup_crit_edge, %if.then47, %do.end, %do.body.cleanup_crit_edge, %if.then17, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then96 ], [ 0, %do.end117 ], [ 0, %do.body102.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %do.end68 ], [ 0, %do.body53.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_get_tid_mem_info(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %p_info) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_info, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_cxt_get_tid_mem_info, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %has_fl_mem = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %switch.load, i32 2, i32 %switch.load, i32 2
  %8 = ptrtoint ptr %has_fl_mem to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_fl_mem, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add7 = add nuw nsw i32 %switch.load, 5
  %arrayidx8 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add7
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %real_size_in_page = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add7, i32 1
  %12 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_size_in_page, align 4
  %add9 = add i32 %11, -1
  %sub = add i32 %add9, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp52.not = icmp ugt i32 %13, %sub
  br i1 %cmp52.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %div = udiv i32 %sub, %13
  %start_line = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add7, i32 2
  %ilt_shadow = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 7
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %start_line to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_line, align 4
  %add11 = add i32 %15, %i.053
  %16 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_cxt_mngr, align 8
  %pf_start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pf_start_line, align 8
  %sub13 = sub i32 %add11, %19
  %20 = ptrtoint ptr %ilt_shadow to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ilt_shadow, align 8
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %21, i32 %sub13, i32 1
  %22 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt_addr, align 4
  %arrayidx15 = getelementptr %struct.qed_tid_mem, ptr %p_info, i32 0, i32 3, i32 %i.053
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %arrayidx15, align 4
  %inc = add nuw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %val = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 3, i32 1
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %add16 = add i32 %26, 12
  %shl = shl nuw i32 1, %add16
  %27 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %real_size_in_page, align 4
  %sub18 = sub i32 %shl, %28
  %waste = getelementptr inbounds %struct.qed_tid_mem, ptr %p_info, i32 0, i32 2
  %29 = ptrtoint ptr %waste to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub18, ptr %waste, align 4
  %type = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %switch.load, i32 2, i32 %switch.load, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %type, align 4
  %idxprom = zext i8 %31 to i32
  %arrayidx19 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx19, align 4
  %34 = ptrtoint ptr %p_info to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %p_info, align 4
  %35 = load i32, ptr %real_size_in_page, align 4
  %div22 = udiv i32 %35, %33
  %num_tids_per_block = getelementptr inbounds %struct.qed_tid_mem, ptr %p_info, i32 0, i32 1
  %36 = ptrtoint ptr %num_tids_per_block to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div22, ptr %num_tids_per_block, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_dynamic_ilt_alloc(ptr noundef %p_hwfn, i32 noundef %elem_type, i32 noundef %iid) local_unnamed_addr #4 align 64 {
entry:
  %p_phys = alloca i32, align 4
  %ilt_hw_entry = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_phys) #13
  %0 = ptrtoint ptr %p_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %p_phys, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ilt_hw_entry) #13
  %1 = ptrtoint ptr %ilt_hw_entry to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ilt_hw_entry, align 8, !annotation !153
  %2 = zext i32 %elem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %elem_type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 3, label %sw.bb15
    i32 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %3 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_cxt_mngr, align 8
  %clients = getelementptr inbounds %struct.qed_cxt_mngr, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %cache_shift = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 30
  %7 = ptrtoint ptr %cache_shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cache_shift, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv
  %sub = add nuw i32 %shl, 1215
  %neg = sub i32 0, %shl
  %and = and i32 %sub, %neg
  %pf_blks = getelementptr inbounds %struct.qed_cxt_mngr, ptr %4, i32 0, i32 1, i32 0, i32 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr8 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %9 = ptrtoint ptr %p_cxt_mngr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_cxt_mngr8, align 8
  %xrc_srq_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %xrc_srq_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xrc_srq_count, align 4
  %add9 = add i32 %12, %iid
  %arrayidx12 = getelementptr %struct.qed_cxt_mngr, ptr %10, i32 0, i32 1, i32 5
  %pf_blks13 = getelementptr %struct.qed_cxt_mngr, ptr %10, i32 0, i32 1, i32 5, i32 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr16 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %13 = ptrtoint ptr %p_cxt_mngr16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_cxt_mngr16, align 8
  %arrayidx18 = getelementptr %struct.qed_cxt_mngr, ptr %14, i32 0, i32 1, i32 5
  %pf_blks19 = getelementptr %struct.qed_cxt_mngr, ptr %14, i32 0, i32 1, i32 5, i32 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr22 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %15 = ptrtoint ptr %p_cxt_mngr22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_cxt_mngr22, align 8
  %arrayidx24 = getelementptr %struct.qed_cxt_mngr, ptr %16, i32 0, i32 1, i32 1
  %arrayidx26 = getelementptr %struct.qed_cxt_mngr, ptr %16, i32 0, i32 1, i32 1, i32 4, i32 3
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %17 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp = icmp ult i8 %18, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !152

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool31.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool31.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 2215, ptr noundef nonnull %spec.select, i32 noundef %elem_type) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb15, %sw.bb7, %sw.bb
  %elem_size.0 = phi i32 [ 320, %sw.bb21 ], [ 72, %sw.bb15 ], [ 64, %sw.bb7 ], [ %and, %sw.bb ]
  %p_cli.0 = phi ptr [ %arrayidx24, %sw.bb21 ], [ %arrayidx18, %sw.bb15 ], [ %arrayidx12, %sw.bb7 ], [ %clients, %sw.bb ]
  %p_blk.0 = phi ptr [ %arrayidx26, %sw.bb21 ], [ %pf_blks19, %sw.bb15 ], [ %pf_blks13, %sw.bb7 ], [ %pf_blks, %sw.bb ]
  %iid.addr.0 = phi i32 [ %iid, %sw.bb21 ], [ %iid, %sw.bb15 ], [ %add9, %sw.bb7 ], [ %iid, %sw.bb ]
  %val = getelementptr inbounds %struct.qed_ilt_client_cfg, ptr %p_cli.0, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %add36 = add i32 %20, 12
  %shl37 = shl nuw i32 1, %add36
  %div = udiv i32 %shl37, %elem_size.0
  %start_line = getelementptr inbounds %struct.qed_ilt_cli_blk, ptr %p_blk.0, i32 0, i32 2
  %21 = ptrtoint ptr %start_line to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_line, align 4
  %div38 = udiv i32 %iid.addr.0, %div
  %add39 = add i32 %div38, %22
  %p_cxt_mngr40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %23 = ptrtoint ptr %p_cxt_mngr40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_cxt_mngr40, align 8
  %pf_start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pf_start_line, align 8
  %sub41 = sub i32 %add39, %26
  %mutex = getelementptr inbounds %struct.qed_cxt_mngr, ptr %24, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %27 = ptrtoint ptr %p_cxt_mngr40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_cxt_mngr40, align 8
  %ilt_shadow = getelementptr inbounds %struct.qed_cxt_mngr, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %ilt_shadow to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ilt_shadow, align 8
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %30, i32 %sub41, i32 1
  %31 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt_addr, align 4
  %tobool45.not = icmp eq ptr %32, null
  br i1 %tobool45.not, label %if.end47, label %sw.epilog.out0_crit_edge

sw.epilog.out0_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %out0

if.end47:                                         ; preds = %sw.epilog
  %call48 = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #13
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.body51, label %if.end80

do.body51:                                        ; preds = %if.end47
  %dp_level52 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %33 = ptrtoint ptr %dp_level52 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level52, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp54 = icmp ult i8 %34, 3
  br i1 %cmp54, label %do.end65, label %do.body51.out0_crit_edge, !prof !152

do.body51.out0_crit_edge:                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %out0

do.end65:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  %name67 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool69.not = icmp eq ptr %name67, null
  %spec.select219 = select i1 %tobool69.not, ptr @.str.3, ptr %name67
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 2239, ptr noundef nonnull %spec.select219) #16
  br label %out0

if.end80:                                         ; preds = %if.end47
  %35 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %36, i32 0, i32 50
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %real_size_in_page = getelementptr inbounds %struct.qed_ilt_cli_blk, ptr %p_blk.0, i32 0, i32 1
  %39 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %real_size_in_page, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull %p_phys, i32 noundef 3264, i32 noundef 0) #13
  %tobool83.not = icmp eq ptr %call.i, null
  br i1 %tobool83.not, label %if.end80.out1_crit_edge, label %if.end85

if.end80.out1_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %out1

if.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %elem_type)
  %cmp86 = icmp eq i32 %elem_type, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %elem_size.0, i32 %shl37)
  %cmp89220 = icmp ule i32 %elem_size.0, %shl37
  %or.cond = select i1 %cmp86, i1 %cmp89220, i1 false
  br i1 %or.cond, label %for.body.preheader, label %if.end85.if.end100_crit_edge

if.end85.if.end100_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

for.body.preheader:                               ; preds = %if.end85
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %elem_start.0222 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %call.i, %for.body.preheader ]
  %elem_i.0221 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %flags192 = getelementptr inbounds %struct.rdma_task_context, ptr %elem_start.0222, i32 0, i32 2, i32 8
  %41 = ptrtoint ptr %flags192 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags192, align 4
  %43 = or i32 %42, 15
  store i32 %43, ptr %flags192, align 4
  %add.ptr = getelementptr i8, ptr %elem_start.0222, i32 320
  %inc = add nuw i32 %elem_i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.if.end100_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end100_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.end100:                                        ; preds = %for.body.if.end100_crit_edge, %if.end85.if.end100_crit_edge
  %44 = ptrtoint ptr %p_cxt_mngr40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p_cxt_mngr40, align 8
  %ilt_shadow102 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %ilt_shadow102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ilt_shadow102, align 8
  %virt_addr104 = getelementptr %struct.phys_mem_desc, ptr %47, i32 %sub41, i32 1
  %48 = ptrtoint ptr %virt_addr104 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %virt_addr104, align 4
  %49 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p_phys, align 4
  %51 = load ptr, ptr %p_cxt_mngr40, align 8
  %ilt_shadow106 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %ilt_shadow106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ilt_shadow106, align 8
  %arrayidx107 = getelementptr %struct.phys_mem_desc, ptr %53, i32 %sub41
  %54 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %50, ptr %arrayidx107, align 4
  %55 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %real_size_in_page, align 4
  %57 = load ptr, ptr %p_cxt_mngr40, align 8
  %ilt_shadow110 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %ilt_shadow110 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ilt_shadow110, align 8
  %size = getelementptr %struct.phys_mem_desc, ptr %59, i32 %sub41, i32 2
  %60 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %56, ptr %size, align 4
  %mul112 = shl i32 %add39, 3
  %add113 = add i32 %mul112, 2490368
  %61 = load ptr, ptr %p_cxt_mngr40, align 8
  %ilt_shadow122 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %ilt_shadow122 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ilt_shadow122, align 8
  %arrayidx123 = getelementptr %struct.phys_mem_desc, ptr %63, i32 %sub41
  %64 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx123, align 4
  %shr = lshr i32 %65, 12
  %conv125 = zext i32 %shr to i64
  %or127 = or i64 %conv125, 4503599627370496
  %66 = ptrtoint ptr %ilt_hw_entry to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %or127, ptr %ilt_hw_entry, align 8
  %67 = ptrtoint ptr %ilt_hw_entry to i32
  %conv130 = zext i32 %67 to i64
  %call131 = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef nonnull %call48, i64 noundef %conv130, i32 noundef %add113, i32 noundef 2, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elem_type)
  %cmp132 = icmp eq i32 %elem_type, 0
  br i1 %cmp132, label %if.then134, label %if.end100.out1_crit_edge

if.end100.out1_crit_edge:                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %out1

if.then134:                                       ; preds = %if.end100
  %add136 = add i32 %div38, 1
  %mul137 = mul i32 %add136, %div
  %sub138 = add i32 %mul137, -1
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef nonnull %call48, i32 noundef 2032688, i32 noundef %sub138) #13
  %b_rdma_enabled_in_prs = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 37
  %68 = ptrtoint ptr %b_rdma_enabled_in_prs to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %b_rdma_enabled_in_prs, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool139.not = icmp eq i8 %69, 0
  br i1 %tobool139.not, label %if.then140, label %if.then134.out1_crit_edge

if.then134.out1_crit_edge:                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  br label %out1

if.then140:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  %rdma_prs_search_reg = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 38
  %70 = ptrtoint ptr %rdma_prs_search_reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rdma_prs_search_reg, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef nonnull %call48, i32 noundef %71, i32 noundef 1) #13
  %72 = ptrtoint ptr %b_rdma_enabled_in_prs to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %b_rdma_enabled_in_prs, align 8
  br label %out1

out1:                                             ; preds = %if.then140, %if.then134.out1_crit_edge, %if.end100.out1_crit_edge, %if.end80.out1_crit_edge
  %rc.0 = phi i32 [ 0, %if.end100.out1_crit_edge ], [ -12, %if.end80.out1_crit_edge ], [ 0, %if.then140 ], [ 0, %if.then134.out1_crit_edge ]
  call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call48) #13
  br label %out0

out0:                                             ; preds = %out1, %do.end65, %do.body51.out0_crit_edge, %sw.epilog.out0_crit_edge
  %rc.1 = phi i32 [ 0, %sw.epilog.out0_crit_edge ], [ %rc.0, %out1 ], [ -16, %do.end65 ], [ -16, %do.body51.out0_crit_edge ]
  %73 = ptrtoint ptr %p_cxt_mngr40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p_cxt_mngr40, align 8
  %mutex145 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %74, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex145) #13
  br label %cleanup

cleanup:                                          ; preds = %out0, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out0 ], [ -95, %do.end ], [ -95, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ilt_hw_entry) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_host2grc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_cxt_free_proto_ilt(ptr noundef %p_hwfn, i32 noundef %proto) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 5, i32 %proto
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %proto
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3.i, align 8
  %call2 = tail call fastcc i32 @qed_cxt_free_ilt_range(ptr noundef %p_hwfn, i32 noundef 0, i32 noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_cxt_mngr.i, align 8
  %arrayidx1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %7, i32 0, i32 2, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 8
  %arrayidx1.1.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %7, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.1.i, align 8
  %add.1.i = add i32 %11, %9
  %arrayidx1.2.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %7, i32 0, i32 2, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.2.i, align 8
  %add.2.i = add i32 %add.1.i, %13
  %arrayidx1.3.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %7, i32 0, i32 2, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.3.i, align 8
  %add.3.i = add i32 %add.2.i, %15
  %arrayidx1.4.i = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %7, i32 0, i32 2, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.4.i, align 8
  %add.4.i = add i32 %add.3.i, %17
  %call4 = tail call fastcc i32 @qed_cxt_free_ilt_range(ptr noundef %p_hwfn, i32 noundef 2, i32 noundef 0, i32 noundef %add.4.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_cxt_mngr.i, align 8
  %xrc_srq_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %xrc_srq_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xrc_srq_count, align 4
  %call8 = tail call fastcc i32 @qed_cxt_free_ilt_range(ptr noundef %p_hwfn, i32 noundef 3, i32 noundef 0, i32 noundef %21)
  %22 = ptrtoint ptr %p_cxt_mngr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_cxt_mngr.i, align 8
  %xrc_srq_count10 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %xrc_srq_count10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xrc_srq_count10, align 4
  %srq_count = getelementptr inbounds %struct.qed_cxt_mngr, ptr %23, i32 0, i32 12
  %26 = ptrtoint ptr %srq_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %srq_count, align 8
  %call12 = tail call fastcc i32 @qed_cxt_free_ilt_range(ptr noundef %p_hwfn, i32 noundef 1, i32 noundef %25, i32 noundef %27)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_cxt_free_ilt_range(ptr noundef %p_hwfn, i32 noundef %elem_type, i32 noundef %start_iid, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  %ilt_hw_entry = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, %start_iid
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ilt_hw_entry) #13
  %0 = ptrtoint ptr %ilt_hw_entry to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ilt_hw_entry, align 8
  %1 = zext i32 %elem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %elem_type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb14
    i32 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %2 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_cxt_mngr, align 8
  %clients = getelementptr inbounds %struct.qed_cxt_mngr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %cache_shift = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %cache_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_shift, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %sub = add nuw i32 %shl, 1215
  %neg = sub i32 0, %shl
  %and = and i32 %sub, %neg
  %pf_blks = getelementptr inbounds %struct.qed_cxt_mngr, ptr %3, i32 0, i32 1, i32 0, i32 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr9 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %8 = ptrtoint ptr %p_cxt_mngr9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_cxt_mngr9, align 8
  %arrayidx11 = getelementptr %struct.qed_cxt_mngr, ptr %9, i32 0, i32 1, i32 5
  %pf_blks12 = getelementptr %struct.qed_cxt_mngr, ptr %9, i32 0, i32 1, i32 5, i32 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr15 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %10 = ptrtoint ptr %p_cxt_mngr15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_cxt_mngr15, align 8
  %arrayidx17 = getelementptr %struct.qed_cxt_mngr, ptr %11, i32 0, i32 1, i32 5
  %pf_blks18 = getelementptr %struct.qed_cxt_mngr, ptr %11, i32 0, i32 1, i32 5, i32 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_cxt_mngr21 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %12 = ptrtoint ptr %p_cxt_mngr21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_cxt_mngr21, align 8
  %arrayidx23 = getelementptr %struct.qed_cxt_mngr, ptr %13, i32 0, i32 1, i32 1
  %arrayidx25 = getelementptr %struct.qed_cxt_mngr, ptr %13, i32 0, i32 1, i32 1, i32 4, i32 3
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %14 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp = icmp ult i8 %15, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !152

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool30.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool30.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 2357, ptr noundef nonnull %spec.select, i32 noundef %elem_type) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb14, %sw.bb8, %sw.bb
  %elem_size.0 = phi i32 [ 320, %sw.bb20 ], [ 72, %sw.bb14 ], [ 64, %sw.bb8 ], [ %and, %sw.bb ]
  %p_cli.0 = phi ptr [ %arrayidx23, %sw.bb20 ], [ %arrayidx17, %sw.bb14 ], [ %arrayidx11, %sw.bb8 ], [ %clients, %sw.bb ]
  %p_blk.0 = phi ptr [ %arrayidx25, %sw.bb20 ], [ %pf_blks18, %sw.bb14 ], [ %pf_blks12, %sw.bb8 ], [ %pf_blks, %sw.bb ]
  %val = getelementptr inbounds %struct.qed_ilt_client_cfg, ptr %p_cli.0, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %add35 = add i32 %17, 12
  %shl36 = shl nuw i32 1, %add35
  %div = udiv i32 %shl36, %elem_size.0
  %start_line37 = getelementptr inbounds %struct.qed_ilt_cli_blk, ptr %p_blk.0, i32 0, i32 2
  %18 = ptrtoint ptr %start_line37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start_line37, align 4
  %div41 = udiv i32 %add, %div
  %add42 = add i32 %div41, %19
  %add43 = add i32 %add, 1
  %div44 = udiv i32 %add43, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div44, i32 %div41)
  %cmp46.not = icmp ne i32 %div44, %div41
  %dec = sext i1 %cmp46.not to i32
  %spec.select184 = add i32 %add42, %dec
  %p_cxt_mngr50 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %20 = ptrtoint ptr %p_cxt_mngr50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_cxt_mngr50, align 8
  %pf_start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pf_start_line, align 8
  %sub54 = sub i32 %spec.select184, %23
  %call55 = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #13
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %do.body58, label %if.end87

do.body58:                                        ; preds = %sw.epilog
  %dp_level59 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %24 = ptrtoint ptr %dp_level59 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level59, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp61 = icmp ult i8 %25, 3
  br i1 %cmp61, label %do.end72, label %do.body58.cleanup_crit_edge, !prof !152

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end72:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  %name74 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool76.not = icmp eq ptr %name74, null
  %spec.select185 = select i1 %tobool76.not, ptr @.str.3, ptr %name74
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.68, i32 noundef 2375, ptr noundef nonnull %spec.select185) #16
  br label %cleanup

if.end87:                                         ; preds = %sw.epilog
  %div38 = udiv i32 %start_iid, %div
  %add39 = add i32 %div38, %19
  %sub51 = sub i32 %add39, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51, i32 %sub54)
  %cmp88186 = icmp ult i32 %sub51, %sub54
  br i1 %cmp88186, label %for.body.lr.ph, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end87
  %26 = ptrtoint ptr %ilt_hw_entry to i32
  %conv120 = zext i32 %26 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %start_line.0189 = phi i32 [ %add39, %for.body.lr.ph ], [ %start_line.1, %for.inc.for.body_crit_edge ]
  %i.0187 = phi i32 [ %sub51, %for.body.lr.ph ], [ %inc122, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %p_cxt_mngr50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_cxt_mngr50, align 8
  %ilt_shadow = getelementptr inbounds %struct.qed_cxt_mngr, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %ilt_shadow to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ilt_shadow, align 8
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %30, i32 %i.0187, i32 1
  %31 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt_addr, align 4
  %tobool92.not = icmp eq ptr %32, null
  br i1 %tobool92.not, label %for.body.for.inc_crit_edge, label %if.end94

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end94:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx91 = getelementptr %struct.phys_mem_desc, ptr %30, i32 %i.0187
  %33 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %size = getelementptr %struct.phys_mem_desc, ptr %30, i32 %i.0187, i32 2
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %39 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx91, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull %32, i32 noundef %40, i32 noundef 0) #13
  %41 = ptrtoint ptr %p_cxt_mngr50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_cxt_mngr50, align 8
  %ilt_shadow107 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %ilt_shadow107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ilt_shadow107, align 8
  %virt_addr109 = getelementptr %struct.phys_mem_desc, ptr %44, i32 %i.0187, i32 1
  %45 = ptrtoint ptr %virt_addr109 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %virt_addr109, align 4
  %46 = load ptr, ptr %p_cxt_mngr50, align 8
  %ilt_shadow111 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %ilt_shadow111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ilt_shadow111, align 8
  %arrayidx112 = getelementptr %struct.phys_mem_desc, ptr %48, i32 %i.0187
  %49 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx112, align 4
  %50 = load ptr, ptr %p_cxt_mngr50, align 8
  %ilt_shadow115 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %ilt_shadow115 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ilt_shadow115, align 8
  %size117 = getelementptr %struct.phys_mem_desc, ptr %52, i32 %i.0187, i32 2
  %53 = ptrtoint ptr %size117 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %size117, align 4
  %inc = add i32 %start_line.0189, 1
  %mul118 = shl i32 %start_line.0189, 3
  %add119 = add i32 %mul118, 2490368
  %call121 = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef nonnull %call55, i64 noundef %conv120, i32 noundef %add119, i32 noundef 2, ptr noundef null) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end94, %for.body.for.inc_crit_edge
  %start_line.1 = phi i32 [ %inc, %if.end94 ], [ %start_line.0189, %for.body.for.inc_crit_edge ]
  %inc122 = add i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc122, %sub54
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end87.for.end_crit_edge
  call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call55) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end72, %do.body58.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -16, %do.end72 ], [ -16, %do.body58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ilt_hw_entry) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_cxt_get_task_ctx(ptr nocapture noundef readonly %p_hwfn, i32 noundef %tid, i8 noundef zeroext %ctx_type, ptr nocapture noundef writeonly %pp_task_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_info, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_cxt_get_task_ctx, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %8 = zext i8 %ctx_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %ctx_type, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.if.end22_crit_edge
    i8 1, label %if.then12
  ]

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %has_fl_mem = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %switch.load, i32 2, i32 %switch.load, i32 2
  %9 = ptrtoint ptr %has_fl_mem to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_fl_mem, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end22_crit_edge

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.then12.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %.sink = phi i32 [ 1, %if.end.if.end22_crit_edge ], [ 5, %if.then12.if.end22_crit_edge ]
  %add18 = add nuw nsw i32 %switch.load, %.sink
  %p_seg.0 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add18
  %11 = ptrtoint ptr %p_seg.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_seg.0, align 4
  %real_size_in_page = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add18, i32 1
  %13 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %real_size_in_page, align 4
  %add23 = add i32 %12, -1
  %sub = add i32 %add23, %14
  %div = udiv i32 %sub, %14
  %type = getelementptr [8 x %struct.qed_conn_type_cfg], ptr %1, i32 0, i32 %switch.load, i32 2, i32 %switch.load, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 4
  %idxprom = zext i8 %16 to i32
  %arrayidx25 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 2, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 4
  %div27 = udiv i32 %14, %18
  %div27.frozen = freeze i32 %div27
  %div28 = udiv i32 %tid, %div27.frozen
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div28)
  %cmp29 = icmp ult i32 %div, %div28
  br i1 %cmp29, label %if.end22.cleanup_crit_edge, label %if.end32

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %start_line = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 %add18, i32 2
  %19 = ptrtoint ptr %start_line to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_line, align 4
  %add34 = add i32 %20, %div28
  %pf_start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pf_start_line, align 8
  %sub35 = sub i32 %add34, %22
  %ilt_shadow = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %ilt_shadow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ilt_shadow, align 8
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %24, i32 %sub35, i32 1
  %25 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_addr, align 4
  %27 = mul i32 %div28, %div27.frozen
  %rem.decomposed = sub i32 %tid, %27
  %mul = mul i32 %rem.decomposed, %18
  %add.ptr = getelementptr i8, ptr %26, i32 %mul
  %28 = ptrtoint ptr %pp_task_ctx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %pp_task_ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end22.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qed_get_cdut_num_pf_init_pages(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %real_size_in_page.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 5, i32 1
  %2 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_size_in_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.qed_blk_calculate_pages.exit_crit_edge, label %if.end.i

entry.qed_blk_calculate_pages.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 5
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %add.i = add i32 %3, -1
  %sub.i = add i32 %add.i, %5
  %div.i = udiv i32 %sub.i, %3
  %conv.i = trunc i32 %div.i to i16
  br label %qed_blk_calculate_pages.exit

qed_blk_calculate_pages.exit:                     ; preds = %if.end.i, %entry.qed_blk_calculate_pages.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 0, %entry.qed_blk_calculate_pages.exit_crit_edge ]
  %real_size_in_page.i.1 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 6, i32 1
  %6 = ptrtoint ptr %real_size_in_page.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_size_in_page.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.1 = icmp eq i32 %7, 0
  br i1 %cmp.i.1, label %qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge, label %if.end.i.1

qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge: ; preds = %qed_blk_calculate_pages.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit.1

if.end.i.1:                                       ; preds = %qed_blk_calculate_pages.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.1 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 6
  %8 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.1, align 4
  %add.i.1 = add i32 %7, -1
  %sub.i.1 = add i32 %add.i.1, %9
  %div.i.1 = udiv i32 %sub.i.1, %7
  %conv.i.1 = trunc i32 %div.i.1 to i16
  br label %qed_blk_calculate_pages.exit.1

qed_blk_calculate_pages.exit.1:                   ; preds = %if.end.i.1, %qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ %conv.i.1, %if.end.i.1 ], [ 0, %qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge ]
  %real_size_in_page.i.2 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 7, i32 1
  %10 = ptrtoint ptr %real_size_in_page.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %real_size_in_page.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.2 = icmp eq i32 %11, 0
  br i1 %cmp.i.2, label %qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge, label %if.end.i.2

qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge: ; preds = %qed_blk_calculate_pages.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit.2

if.end.i.2:                                       ; preds = %qed_blk_calculate_pages.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.2 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 7
  %12 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.2, align 4
  %add.i.2 = add i32 %11, -1
  %sub.i.2 = add i32 %add.i.2, %13
  %div.i.2 = udiv i32 %sub.i.2, %11
  %conv.i.2 = trunc i32 %div.i.2 to i16
  br label %qed_blk_calculate_pages.exit.2

qed_blk_calculate_pages.exit.2:                   ; preds = %if.end.i.2, %qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge
  %retval.0.i.2 = phi i16 [ %conv.i.2, %if.end.i.2 ], [ 0, %qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge ]
  %real_size_in_page.i.3 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 8, i32 1
  %14 = ptrtoint ptr %real_size_in_page.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_size_in_page.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.3 = icmp eq i32 %15, 0
  br i1 %cmp.i.3, label %qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge, label %if.end.i.3

qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge: ; preds = %qed_blk_calculate_pages.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit.3

if.end.i.3:                                       ; preds = %qed_blk_calculate_pages.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.3 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 8
  %16 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.3, align 4
  %add.i.3 = add i32 %15, -1
  %sub.i.3 = add i32 %add.i.3, %17
  %div.i.3 = udiv i32 %sub.i.3, %15
  %conv.i.3 = trunc i32 %div.i.3 to i16
  br label %qed_blk_calculate_pages.exit.3

qed_blk_calculate_pages.exit.3:                   ; preds = %if.end.i.3, %qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge
  %retval.0.i.3 = phi i16 [ %conv.i.3, %if.end.i.3 ], [ 0, %qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge ]
  %add7.1 = add i16 %retval.0.i.1, %retval.0.i
  %add7.2 = add i16 %retval.0.i.2, %add7.1
  %add7.3 = add i16 %retval.0.i.3, %add7.2
  ret i16 %add7.3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qed_get_cdut_num_vf_init_pages(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %real_size_in_page.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2, i32 1
  %2 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_size_in_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.qed_blk_calculate_pages.exit_crit_edge, label %if.end.i

entry.qed_blk_calculate_pages.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i32 %3, -1
  %arrayidx4 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %sub.i = add i32 %add.i, %5
  %div.i = udiv i32 %sub.i, %3
  %conv.i = trunc i32 %div.i to i16
  br label %qed_blk_calculate_pages.exit

qed_blk_calculate_pages.exit:                     ; preds = %if.end.i, %entry.qed_blk_calculate_pages.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 0, %entry.qed_blk_calculate_pages.exit_crit_edge ]
  ret i16 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qed_get_cdut_num_pf_work_pages(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %real_size_in_page.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_size_in_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.qed_blk_calculate_pages.exit_crit_edge, label %if.end.i

entry.qed_blk_calculate_pages.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %add.i = add i32 %3, -1
  %sub.i = add i32 %add.i, %5
  %div.i = udiv i32 %sub.i, %3
  %conv.i = trunc i32 %div.i to i16
  br label %qed_blk_calculate_pages.exit

qed_blk_calculate_pages.exit:                     ; preds = %if.end.i, %entry.qed_blk_calculate_pages.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 0, %entry.qed_blk_calculate_pages.exit_crit_edge ]
  %real_size_in_page.i.1 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 2, i32 1
  %6 = ptrtoint ptr %real_size_in_page.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_size_in_page.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.1 = icmp eq i32 %7, 0
  br i1 %cmp.i.1, label %qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge, label %if.end.i.1

qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge: ; preds = %qed_blk_calculate_pages.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit.1

if.end.i.1:                                       ; preds = %qed_blk_calculate_pages.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.1 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.1, align 4
  %add.i.1 = add i32 %7, -1
  %sub.i.1 = add i32 %add.i.1, %9
  %div.i.1 = udiv i32 %sub.i.1, %7
  %conv.i.1 = trunc i32 %div.i.1 to i16
  br label %qed_blk_calculate_pages.exit.1

qed_blk_calculate_pages.exit.1:                   ; preds = %if.end.i.1, %qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ %conv.i.1, %if.end.i.1 ], [ 0, %qed_blk_calculate_pages.exit.qed_blk_calculate_pages.exit.1_crit_edge ]
  %real_size_in_page.i.2 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 3, i32 1
  %10 = ptrtoint ptr %real_size_in_page.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %real_size_in_page.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.2 = icmp eq i32 %11, 0
  br i1 %cmp.i.2, label %qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge, label %if.end.i.2

qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge: ; preds = %qed_blk_calculate_pages.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit.2

if.end.i.2:                                       ; preds = %qed_blk_calculate_pages.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.2 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.2, align 4
  %add.i.2 = add i32 %11, -1
  %sub.i.2 = add i32 %add.i.2, %13
  %div.i.2 = udiv i32 %sub.i.2, %11
  %conv.i.2 = trunc i32 %div.i.2 to i16
  br label %qed_blk_calculate_pages.exit.2

qed_blk_calculate_pages.exit.2:                   ; preds = %if.end.i.2, %qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge
  %retval.0.i.2 = phi i16 [ %conv.i.2, %if.end.i.2 ], [ 0, %qed_blk_calculate_pages.exit.1.qed_blk_calculate_pages.exit.2_crit_edge ]
  %real_size_in_page.i.3 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 4, i32 1
  %14 = ptrtoint ptr %real_size_in_page.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_size_in_page.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.3 = icmp eq i32 %15, 0
  br i1 %cmp.i.3, label %qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge, label %if.end.i.3

qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge: ; preds = %qed_blk_calculate_pages.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit.3

if.end.i.3:                                       ; preds = %qed_blk_calculate_pages.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.3 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.3, align 4
  %add.i.3 = add i32 %15, -1
  %sub.i.3 = add i32 %add.i.3, %17
  %div.i.3 = udiv i32 %sub.i.3, %15
  %conv.i.3 = trunc i32 %div.i.3 to i16
  br label %qed_blk_calculate_pages.exit.3

qed_blk_calculate_pages.exit.3:                   ; preds = %if.end.i.3, %qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge
  %retval.0.i.3 = phi i16 [ %conv.i.3, %if.end.i.3 ], [ 0, %qed_blk_calculate_pages.exit.2.qed_blk_calculate_pages.exit.3_crit_edge ]
  %add7.1 = add i16 %retval.0.i.1, %retval.0.i
  %add7.2 = add i16 %retval.0.i.2, %add7.1
  %add7.3 = add i16 %retval.0.i.3, %add7.2
  ret i16 %add7.3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qed_get_cdut_num_vf_work_pages(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %real_size_in_page.i = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %real_size_in_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_size_in_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.qed_blk_calculate_pages.exit_crit_edge, label %if.end.i

entry.qed_blk_calculate_pages.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_blk_calculate_pages.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4 = getelementptr %struct.qed_cxt_mngr, ptr %1, i32 0, i32 1, i32 1, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %add.i = add i32 %3, -1
  %sub.i = add i32 %add.i, %5
  %div.i = udiv i32 %sub.i, %3
  %conv.i = trunc i32 %div.i to i16
  br label %qed_blk_calculate_pages.exit

qed_blk_calculate_pages.exit:                     ; preds = %if.end.i, %entry.qed_blk_calculate_pages.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 0, %entry.qed_blk_calculate_pages.exit_crit_edge ]
  ret i16 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_cxt_ilt_shadow_size(ptr nocapture noundef readonly %ilt_clients) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ilt_clients to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ilt_clients, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.else

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %val = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %val3 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val3, align 4
  %add = add i32 %3, 1
  %add4 = sub i32 %add, %5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %entry.for.inc_crit_edge
  %size.1 = phi i32 [ %add4, %if.else ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.else.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %val.1 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 1, i32 2, i32 1
  %8 = ptrtoint ptr %val.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.1, align 4
  %val3.1 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %val3.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3.1, align 4
  %sub.1 = add i32 %size.1, 1
  %add.1 = add i32 %sub.1, %9
  %add4.1 = sub i32 %add.1, %11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.inc.for.inc.1_crit_edge
  %size.1.1 = phi i32 [ %add4.1, %if.else.1 ], [ %size.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.2 = icmp eq i8 %13, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.else.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %val.2 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 2, i32 2, i32 1
  %14 = ptrtoint ptr %val.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.2, align 4
  %val3.2 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %val3.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val3.2, align 4
  %sub.2 = add i32 %size.1.1, 1
  %add.2 = add i32 %sub.2, %15
  %add4.2 = sub i32 %add.2, %17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.inc.1.for.inc.2_crit_edge
  %size.1.2 = phi i32 [ %add4.2, %if.else.2 ], [ %size.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3 = icmp eq i8 %19, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.else.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %val.3 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 3, i32 2, i32 1
  %20 = ptrtoint ptr %val.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.3, align 4
  %val3.3 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 3, i32 1, i32 1
  %22 = ptrtoint ptr %val3.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val3.3, align 4
  %sub.3 = add i32 %size.1.2, 1
  %add.3 = add i32 %sub.3, %21
  %add4.3 = sub i32 %add.3, %23
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.inc.2.for.inc.3_crit_edge
  %size.1.3 = phi i32 [ %add4.3, %if.else.3 ], [ %size.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.4 = icmp eq i8 %25, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.else.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %val.4 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 4, i32 2, i32 1
  %26 = ptrtoint ptr %val.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.4, align 4
  %val3.4 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 4, i32 1, i32 1
  %28 = ptrtoint ptr %val3.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val3.4, align 4
  %sub.4 = add i32 %size.1.3, 1
  %add.4 = add i32 %sub.4, %27
  %add4.4 = sub i32 %add.4, %29
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %for.inc.3.for.inc.4_crit_edge
  %size.1.4 = phi i32 [ %add4.4, %if.else.4 ], [ %size.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.5 = icmp eq i8 %31, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.else.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %val.5 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 5, i32 2, i32 1
  %32 = ptrtoint ptr %val.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.5, align 4
  %val3.5 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 5, i32 1, i32 1
  %34 = ptrtoint ptr %val3.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val3.5, align 4
  %sub.5 = add i32 %size.1.4, 1
  %add.5 = add i32 %sub.5, %33
  %add4.5 = sub i32 %add.5, %35
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %for.inc.4.for.inc.5_crit_edge
  %size.1.5 = phi i32 [ %add4.5, %if.else.5 ], [ %size.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.6, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.6 = icmp eq i8 %37, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.else.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %val.6 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 6, i32 2, i32 1
  %38 = ptrtoint ptr %val.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.6, align 4
  %val3.6 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 6, i32 1, i32 1
  %40 = ptrtoint ptr %val3.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val3.6, align 4
  %sub.6 = add i32 %size.1.5, 1
  %add.6 = add i32 %sub.6, %39
  %add4.6 = sub i32 %add.6, %41
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %for.inc.5.for.inc.6_crit_edge
  %size.1.6 = phi i32 [ %add4.6, %if.else.6 ], [ %size.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.7, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.7 = icmp eq i8 %43, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.else.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %val.7 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 7, i32 2, i32 1
  %44 = ptrtoint ptr %val.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.7, align 4
  %val3.7 = getelementptr %struct.qed_ilt_client_cfg, ptr %ilt_clients, i32 7, i32 1, i32 1
  %46 = ptrtoint ptr %val3.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val3.7, align 4
  %sub.7 = add i32 %size.1.6, 1
  %add.7 = add i32 %sub.7, %45
  %add4.7 = sub i32 %add.7, %47
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.else.7, %for.inc.6.for.inc.7_crit_edge
  %size.1.7 = phi i32 [ %add4.7, %if.else.7 ], [ %size.1.6, %for.inc.6.for.inc.7_crit_edge ]
  ret i32 %size.1.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_ilt_blk_alloc(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_blk, i32 noundef %ilt_client, i32 noundef %start_line_offset) unnamed_addr #4 align 64 {
entry:
  %p_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_cxt_mngr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 39
  %0 = ptrtoint ptr %p_cxt_mngr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cxt_mngr, align 8
  %ilt_shadow1 = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ilt_shadow1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ilt_shadow1, align 8
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %4 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_info, align 8
  %.off = add i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = zext i32 %ilt_client to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %ilt_client, label %land.lhs.true.if.end_crit_edge [
    i32 1, label %land.lhs.true.cleanup53_crit_edge
    i32 5, label %land.lhs.true.cleanup53_crit_edge100
  ]

land.lhs.true.cleanup53_crit_edge100:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

land.lhs.true.cleanup53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %p_blk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_blk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup53_crit_edge, label %if.end13

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

if.end13:                                         ; preds = %if.end
  %dynamic_line_cnt = getelementptr inbounds %struct.qed_ilt_cli_blk, ptr %p_blk, i32 0, i32 4
  %9 = ptrtoint ptr %dynamic_line_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dynamic_line_cnt, align 4
  %real_size_in_page = getelementptr inbounds %struct.qed_ilt_cli_blk, ptr %p_blk, i32 0, i32 1
  %11 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %real_size_in_page, align 4
  %add = add i32 %8, -1
  %sub = add i32 %add, %12
  %div = udiv i32 %sub, %12
  %sub16 = sub i32 %div, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %tobool21.not96 = icmp eq i32 %sub16, 0
  br i1 %tobool21.not96, label %if.end13.cleanup53_crit_edge, label %for.body.lr.ph

if.end13.cleanup53_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %if.end13
  %add17 = add i32 %10, %start_line_offset
  %start_line = getelementptr inbounds %struct.qed_ilt_cli_blk, ptr %p_blk, i32 0, i32 2
  %13 = ptrtoint ptr %start_line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_line, align 4
  %sub19 = add i32 %add17, %14
  %pf_start_line = getelementptr inbounds %struct.qed_cxt_mngr, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %pf_start_line to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pf_start_line, align 8
  %add20 = sub i32 %sub19, %16
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool38.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool38.not, ptr @.str.3, ptr %name
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sz_left.099 = phi i32 [ %8, %for.body.lr.ph ], [ %sub50, %for.inc.for.body_crit_edge ]
  %line.098 = phi i32 [ %add20, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %lines.097 = phi i32 [ %sub16, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_phys) #13
  %17 = ptrtoint ptr %p_phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %p_phys, align 4, !annotation !153
  %18 = ptrtoint ptr %real_size_in_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %real_size_in_page, align 4
  %20 = call i32 @llvm.umin.i32(i32 %sz_left.099, i32 %19)
  %21 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 50
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull %p_phys, i32 noundef 3264, i32 noundef 0) #13
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %cleanup.thread, label %if.end26

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys) #13
  br label %cleanup53

if.end26:                                         ; preds = %for.body
  %25 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_phys, align 4
  %arrayidx = getelementptr %struct.phys_mem_desc, ptr %3, i32 %line.098
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx, align 4
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %3, i32 %line.098, i32 1
  %28 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %virt_addr, align 4
  %size29 = getelementptr %struct.phys_mem_desc, ptr %3, i32 %line.098, i32 2
  %29 = ptrtoint ptr %size29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %20, ptr %size29, align 4
  %30 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp30 = icmp eq i8 %31, 0
  br i1 %cmp30, label %land.rhs, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs:                                         ; preds = %if.end26
  %32 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dp_module, align 4
  %and = and i32 %33, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.rhs.for.inc_crit_edge, label %do.end, !prof !149

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_phys, align 4
  %conv45 = zext i32 %35 to i64
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 978, ptr noundef nonnull %spec.select, i32 noundef %line.098, i64 noundef %conv45, ptr noundef nonnull %call.i, i32 noundef %20) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.rhs.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %sub50 = sub i32 %sz_left.099, %20
  %inc = add i32 %line.098, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys) #13
  %dec = add i32 %lines.097, -1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %for.inc.cleanup53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

cleanup53:                                        ; preds = %for.inc.cleanup53_crit_edge, %cleanup.thread, %if.end13.cleanup53_crit_edge, %if.end.cleanup53_crit_edge, %land.lhs.true.cleanup53_crit_edge, %land.lhs.true.cleanup53_crit_edge100
  %retval.2 = phi i32 [ 0, %land.lhs.true.cleanup53_crit_edge ], [ 0, %land.lhs.true.cleanup53_crit_edge100 ], [ 0, %if.end.cleanup53_crit_edge ], [ -12, %cleanup.thread ], [ 0, %if.end13.cleanup53_crit_edge ], [ 0, %for.inc.cleanup53_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_store_rt_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_cm_pq_idx(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_store_rt_agg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_get_hsi_def_val(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 480, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_cxt_cfg_ilt_compute._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_cxt_cfg_ilt_compute._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 640, i32 2}
!9 = !{ptr @qed_cxt_cfg_ilt_compute._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_cxt_cfg_ilt_compute._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 767, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qed_cxt_cfg_ilt_compute_excess._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qed_cxt_cfg_ilt_compute_excess._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @qed_cxt_mngr_alloc.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1161, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1804, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @_qed_cxt_acquire_cid._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @_qed_cxt_acquire_cid._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1809, i32 3}
!26 = !{ptr @_qed_cxt_acquire_cid._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @_qed_cxt_acquire_cid._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @_qed_cxt_acquire_cid._entry.15, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1820, i32 3}
!30 = !{ptr @_qed_cxt_acquire_cid._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1827, i32 3}
!33 = !{ptr @_qed_cxt_acquire_cid._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @_qed_cxt_acquire_cid._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1835, i32 2}
!37 = !{ptr @_qed_cxt_acquire_cid._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @_qed_cxt_acquire_cid._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1898, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @_qed_cxt_release_cid._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @_qed_cxt_release_cid._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1914, i32 2}
!46 = !{ptr @_qed_cxt_release_cid._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @_qed_cxt_release_cid._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1956, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qed_cxt_get_cid_info._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @qed_cxt_get_cid_info._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2065, i32 4}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qed_cxt_set_pf_params._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qed_cxt_set_pf_params._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2088, i32 4}
!60 = !{ptr @qed_cxt_set_pf_params._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qed_cxt_set_pf_params._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2111, i32 4}
!64 = !{ptr @qed_cxt_set_pf_params._entry.35, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qed_cxt_set_pf_params._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2215, i32 3}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qed_cxt_dynamic_ilt_alloc._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qed_cxt_dynamic_ilt_alloc._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2238, i32 3}
!73 = !{ptr @qed_cxt_dynamic_ilt_alloc._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qed_cxt_dynamic_ilt_alloc._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 400, i32 2}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @qed_ilt_cli_adv_line._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @qed_ilt_cli_adv_line._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 251, i32 2}
!82 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qed_cxt_qm_iids._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qed_cxt_qm_iids._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1003, i32 2}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qed_ilt_shadow_alloc._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qed_ilt_shadow_alloc._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 976, i32 3}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @qed_ilt_blk_alloc._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @qed_ilt_blk_alloc._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 851, i32 3}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qed_cxt_src_t2_alloc._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qed_cxt_src_t2_alloc._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1067, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @qed_cid_map_alloc_single._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @qed_cid_map_alloc_single._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @qed_cdu_init_pf.rt_type_offset_arr, !106, !"rt_type_offset_arr", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1350, i32 19}
!107 = !{ptr @qed_cdu_init_pf.rt_type_offset_fl_arr, !108, !"rt_type_offset_fl_arr", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1357, i32 19}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1604, i32 5}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @qed_ilt_init_pf._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @qed_ilt_init_pf._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1872, i32 3}
!116 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @qed_cxt_test_cid_acquired._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @qed_cxt_test_cid_acquired._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1878, i32 3}
!121 = !{ptr @qed_cxt_test_cid_acquired._entry.59, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @qed_cxt_test_cid_acquired._entry_ptr.61, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 1971, i32 3}
!125 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qed_rdma_set_pf_params._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @qed_rdma_set_pf_params._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2010, i32 3}
!130 = !{ptr @qed_rdma_set_pf_params._entry.64, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qed_rdma_set_pf_params._entry_ptr.66, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2357, i32 3}
!134 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @qed_cxt_free_ilt_range._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @qed_cxt_free_ilt_range._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @qed_cxt_free_ilt_range._entry.69, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qed/qed_cxt.c", i32 2374, i32 3}
!139 = !{ptr @qed_cxt_free_ilt_range._entry_ptr.70, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i8 0, i8 2}
!151 = !{i32 0, i32 33}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{!"auto-init"}
