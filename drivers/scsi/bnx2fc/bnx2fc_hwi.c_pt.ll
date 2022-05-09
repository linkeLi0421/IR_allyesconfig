; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2fc/bnx2fc_hwi.c_pt.bc'
source_filename = "../drivers/scsi/bnx2fc/bnx2fc_hwi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.bnx2fc_percpu_s = type { ptr, %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fcoe_kwqe_stat = type { i16, %struct.fcoe_kwqe_header, i32, i32, [5 x i32] }
%struct.fcoe_kwqe_header = type { i8, i8 }
%struct.bnx2fc_hba = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, i32, i32, i32, i16, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, %struct.bnx2fc_fw_stats, %struct.fcoe_statistics_params, ptr, i32, %struct.completion, %struct.fcoe_capabilities, %struct.timer_list, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, %struct.list_head, [16 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnx2fc_fw_stats = type { i64, i64, i64, i64, i64 }
%struct.fcoe_statistics_params = type { %struct.fcoe_tx_stat_params, %struct.fcoe_rx_stat_params_section0, %struct.fcoe_rx_stat_params_section1, %struct.fcoe_rx_stat_params_section2 }
%struct.fcoe_tx_stat_params = type { i32, i32, i32, i32 }
%struct.fcoe_rx_stat_params_section0 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section1 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fcoe_capabilities = type { i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cnic_dev = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, [6 x i8], i32, i32, i32, i32, ptr, ptr, ptr }
%struct.fcoe_kwqe_init1 = type { i16, %struct.fcoe_kwqe_header, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.fcoe_kwqe_init2 = type { i8, i8, %struct.fcoe_kwqe_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_kwqe_init3 = type { i16, %struct.fcoe_kwqe_header, i32, i32, i8, [3 x i8], [4 x i32] }
%struct.fcoe_kwqe_destroy = type { i16, %struct.fcoe_kwqe_header, [7 x i32] }
%struct.fcoe_kwqe_conn_offload1 = type { i16, %struct.fcoe_kwqe_header, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.fcoe_kwqe_conn_offload2 = type { i16, %struct.fcoe_kwqe_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_kwqe_conn_offload3 = type { i16, %struct.fcoe_kwqe_header, [3 x i8], i8, [3 x i8], i8, i32, i32, i32, i16, i16, i16, i8, i8 }
%struct.fcoe_kwqe_conn_offload4 = type { i8, i8, %struct.fcoe_kwqe_header, [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], i32, i32, i32, i32 }
%struct.fcoe_port = type { ptr, ptr, %struct.sk_buff_head, i8, i32, i32, %struct.timer_list, %struct.work_struct, [6 x i8], ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bnx2fc_interface = type { %struct.list_head, i32, ptr, ptr, %struct.packet_type, %struct.packet_type, ptr, %struct.kref, i8, i32, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bnx2fc_rport = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, %struct.atomic_t, %struct.b577xx_doorbell_set_prod, %struct.b577xx_fcoe_rx_doorbell, ptr, i32, i16, i8, i32, ptr, i32, i16, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [4 x ptr], [4 x i32], ptr, i32, %struct.spinlock, %struct.spinlock, %struct.atomic_t, i32, i32, i32, %struct.list_head, [257 x ptr], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, %struct.wait_queue_head }
%struct.b577xx_doorbell_set_prod = type { i16, i8, %struct.b577xx_doorbell_hdr }
%struct.b577xx_doorbell_hdr = type { i8 }
%struct.b577xx_fcoe_rx_doorbell = type { %struct.b577xx_doorbell_hdr, i8, i16 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.fcoe_kwqe_conn_enable_disable = type { i16, %struct.fcoe_kwqe_header, [2 x i8], [2 x i8], [2 x i8], i16, [2 x i8], [2 x i8], [2 x i8], i16, [3 x i8], i8, [3 x i8], i8, i32, i32, i32 }
%struct.fcoe_kwqe_conn_destroy = type { i16, %struct.fcoe_kwqe_header, i32, i32, [5 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.bnx2fc_unsol_els = type { ptr, ptr, ptr, %struct.work_struct }
%struct.bnx2fc_lport = type { %struct.list_head, ptr }
%struct.bnx2fc_cmd_mgr = type { ptr, i16, ptr, ptr, ptr, ptr }
%struct.bnx2fc_cmd = type { %struct.list_head, i8, i8, i8, i8, %struct.kref, ptr, ptr, ptr, ptr, %struct.bnx2fc_mp_req, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, i32, i32, i16, %struct.fcoe_err_report_entry, ptr, ptr, ptr, i32, i32, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.bnx2fc_mp_req = type { i8, i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fcoe_err_report_entry = type { %struct.fcoe_partial_err_report_entry, %struct.fcoe_fc_hdr }
%struct.fcoe_partial_err_report_entry = type { i32, i32, i32, i32 }
%struct.fcoe_fc_hdr = type { [3 x i8], i8, [3 x i8], i8, i16, i8, i8, [3 x i8], i8, i32, i16, i16 }
%struct.fcoe_task_ctx_entry = type { %struct.fcoe_tce_tx_only, %struct.fcoe_tce_tx_wr_rx_rd, %struct.fcoe_tce_rx_wr_tx_rd, %struct.fcoe_tce_rx_only }
%struct.fcoe_tce_tx_only = type { %union.fcoe_sgl_union_ctx, i32 }
%union.fcoe_sgl_union_ctx = type { %struct.fcoe_cached_sge_ctx }
%struct.fcoe_cached_sge_ctx = type { %struct.regpair, i16, i16, %struct.regpair }
%struct.regpair = type { i32, i32 }
%struct.fcoe_tce_tx_wr_rx_rd = type { %union.fcoe_tx_wr_rx_rd_union_ctx, %struct.fcoe_tce_tx_wr_rx_rd_const }
%union.fcoe_tx_wr_rx_rd_union_ctx = type { %struct.fcoe_fc_frame }
%struct.fcoe_fc_frame = type { %struct.fcoe_fc_hdr, [2 x i32] }
%struct.fcoe_tce_tx_wr_rx_rd_const = type { i8, i8, i16, i32 }
%struct.fcoe_tce_rx_wr_tx_rd = type { %struct.fcoe_tce_rx_wr_tx_rd_const, %struct.fcoe_tce_rx_wr_tx_rd_var }
%struct.fcoe_tce_rx_wr_tx_rd_const = type { i32, i32 }
%struct.fcoe_tce_rx_wr_tx_rd_var = type { i16, i16, %struct.fcoe_fcp_xfr_rdy_payload }
%struct.fcoe_fcp_xfr_rdy_payload = type { i32, i32 }
%struct.fcoe_tce_rx_only = type { %struct.fcoe_rx_seq_ctx, %union.fcoe_rx_wr_union_ctx }
%struct.fcoe_rx_seq_ctx = type { i8, %struct.fcoe_s_stat_ctx, i16, i32, i32 }
%struct.fcoe_s_stat_ctx = type { i8 }
%union.fcoe_rx_wr_union_ctx = type { %struct.fcoe_read_flow_info }
%struct.fcoe_read_flow_info = type { %union.fcoe_sgl_union_ctx, [3 x i32] }
%struct.fcoe_cqe = type { i16 }
%struct.fcoe_conn_db = type { i16, i16, i32, %struct.regpair }
%struct.bnx2fc_work = type { %struct.list_head, ptr, ptr, [256 x i8], i16, i8 }
%struct.fcoe_kcqe = type { i32, i32, i32, %union.fcoe_kcqe_params, i16, i8, i8 }
%union.fcoe_kcqe_params = type { [4 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.122 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.fcoe_sqe = type { i16 }
%struct.io_bdt = type { ptr, ptr, i32, i16 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_cleanup_info = type { i16, i16, i32 }
%struct.fcoe_bd_ctx = type { i32, i32, i16, i16, i16, i16 }
%struct.fcoe_mul_sges_ctx = type { %struct.regpair, i16, i8, i8 }
%struct.fcoe_t2_hash_table_entry = type { %struct.fcoe_hash_table_entry, %struct.regpair, [3 x %struct.regpair] }
%struct.fcoe_hash_table_entry = type { i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i32, i32 }

@bnx2fc_send_fw_fcoe_init_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: hba->cnic NULL during fcoe fw init\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2fc_send_fw_fcoe_init_msg\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/bnx2fc/bnx2fc_hwi.c\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_send_fw_fcoe_init_msg._entry_ptr = internal global ptr @bnx2fc_send_fw_fcoe_init_msg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ofld_req: port_id = 0, link down?\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2fc_send_session_enable_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bnx2fc: WARN: enable_req port_id = 0x%x,sid = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bnx2fc_send_session_enable_req\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_send_session_enable_req._entry_ptr = internal global ptr @bnx2fc_send_session_enable_req._entry, section ".printk_index", align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to allocate unsol_work\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"l2_frame_compl l2_oxid = 0x%x, frame_len = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2fc_process_l2_frame_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: fc_frame_alloc failure\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnx2fc_process_l2_frame_compl\00", [34 x i8] zeroinitializer }, align 32
@bnx2fc_process_l2_frame_compl._entry_ptr = internal global ptr @bnx2fc_process_l2_frame_compl._entry, section ".printk_index", align 4
@bnx2fc_process_l2_frame_compl._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013bnx2fc: dropping ELS 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2fc_process_l2_frame_compl._entry_ptr.12 = internal global ptr @bnx2fc_process_l2_frame_compl._entry.10, section ".printk_index", align 4
@bnx2fc_process_l2_frame_compl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&unsol_els->unsol_els_work)\00", [50 x i8] zeroinitializer }, align 32
@bnx2fc_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fh_r_ctl = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: ERROR? cq_compl - io_req is NULL\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_process_cq_compl\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry_ptr = internal global ptr @bnx2fc_process_cq_compl._entry, section ".printk_index", align 4
@bnx2fc_process_cq_compl._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bnx2fc: Invalid rx state - %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry_ptr.19 = internal global ptr @bnx2fc_process_cq_compl._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Processing TM complete\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cq_compl- ABTS sent out by fw\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: Invalid rx state =  %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry_ptr.24 = internal global ptr @bnx2fc_process_cq_compl._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cq_compl- cleanup resp rcvd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cq_compl(0x%x) - seq cleanup resp\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013bnx2fc: Invalid cmd_type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_process_cq_compl._entry_ptr.29 = internal global ptr @bnx2fc_process_cq_compl._entry.27, section ".printk_index", align 4
@bnx2fc_process_new_cqes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: process_new_cqes: cq is NULL\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_process_new_cqes\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_process_new_cqes._entry_ptr = internal global ptr @bnx2fc_process_new_cqes._entry, section ".printk_index", align 4
@bnx2fc_indicate_kcqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016bnx2fc: [%.2x]: FCOE_INIT passed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_indicate_kcqe\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_kcqe._entry_ptr = internal global ptr @bnx2fc_indicate_kcqe._entry, section ".printk_index", align 4
@bnx2fc_indicate_kcqe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013bnx2fc: DESTROY failed\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_kcqe._entry_ptr.36 = internal global ptr @bnx2fc_indicate_kcqe._entry.34, section ".printk_index", align 4
@bnx2fc_indicate_kcqe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bnx2fc: DESTROY success\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_kcqe._entry_ptr.39 = internal global ptr @bnx2fc_indicate_kcqe._entry.37, section ".printk_index", align 4
@bnx2fc_indicate_kcqe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013bnx2fc: STAT failed\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_kcqe._entry_ptr.42 = internal global ptr @bnx2fc_indicate_kcqe._entry.40, section ".printk_index", align 4
@bnx2fc_indicate_kcqe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.2, i32 1408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013bnx2fc: unknown opcode 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_kcqe._entry_ptr.45 = internal global ptr @bnx2fc_indicate_kcqe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Init MP task for cmd_type = %d task_type = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2fc_setup_task_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bnx2fc: unable to allocate task context BDT\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2fc_setup_task_ctx\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_setup_task_ctx._entry_ptr = internal global ptr @bnx2fc_setup_task_ctx._entry, section ".printk_index", align 4
@bnx2fc_setup_task_ctx._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013bnx2fc: unable to allocate task context array\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_setup_task_ctx._entry_ptr.51 = internal global ptr @bnx2fc_setup_task_ctx._entry.49, section ".printk_index", align 4
@bnx2fc_setup_task_ctx._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013bnx2fc: unable to alloc context mapping array\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_setup_task_ctx._entry_ptr.54 = internal global ptr @bnx2fc_setup_task_ctx._entry.52, section ".printk_index", align 4
@bnx2fc_setup_task_ctx._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 1919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: unable to alloc task context\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_setup_task_ctx._entry_ptr.57 = internal global ptr @bnx2fc_setup_task_ctx._entry.55, section ".printk_index", align 4
@bnx2fc_setup_fw_resc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 2124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2fc: unable to allocate t2 hash table ptr\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_setup_fw_resc\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_setup_fw_resc._entry_ptr = internal global ptr @bnx2fc_setup_fw_resc._entry, section ".printk_index", align 4
@bnx2fc_setup_fw_resc._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 2135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: unable to allocate t2 hash table\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_setup_fw_resc._entry_ptr.62 = internal global ptr @bnx2fc_setup_fw_resc._entry.60, section ".printk_index", align 4
@bnx2fc_setup_fw_resc._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 2150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: unable to alloc MP Dummy Buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_setup_fw_resc._entry_ptr.65 = internal global ptr @bnx2fc_setup_fw_resc._entry.63, section ".printk_index", align 4
@bnx2fc_setup_fw_resc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 2159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: unable to alloc Stats Buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_setup_fw_resc._entry_ptr.68 = internal global ptr @bnx2fc_setup_fw_resc._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Entered UNSOL COMPLETION wqe = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Memory alloc failure\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsol Error Frame OX_ID = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"err_warn_bitmap = %08x:%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"buf_offsets - tx = 0x%x, rx = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xid(0x%x) out of FW range\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2fc: err_warn: Not a SCSI cmd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2fc_process_unsol_compl\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry_ptr = internal global ptr @bnx2fc_process_unsol_compl._entry, section ".printk_index", align 4
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unsol_err: cleanup in progress.. ignore unsol err\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.77, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013bnx2fc: err_warn: io_req (0x%x) already in ABTS processing\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry_ptr.81 = internal global ptr @bnx2fc_process_unsol_compl._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"err = 0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REC TOV popped for xid - 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bnx2fc: SRR in progress\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry_ptr.86 = internal global ptr @bnx2fc_process_unsol_compl._entry.84, section ".printk_index", align 4
@bnx2fc_process_unsol_compl._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013bnx2fc: err_warn: initiate_abts failed xid = 0x%x. issue cleanup\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry_ptr.89 = internal global ptr @bnx2fc_process_unsol_compl._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsol Warning Frame OX_ID = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"err_warn_bitmap = %08x:%08x\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"buf_offsets - tx = 0x%x, rx = 0x%x\00", [61 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"warn = 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry_ptr.95 = internal global ptr @bnx2fc_process_unsol_compl._entry.94, section ".printk_index", align 4
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unsolicited warning\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.77, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: Unsol Compl: Invalid CQE Subtype\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_process_unsol_compl._entry_ptr.99 = internal global ptr @bnx2fc_process_unsol_compl._entry.97, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@bnx2fc_pending_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: bnx2fc: ERROR:xid out of range\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_pending_work\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_pending_work._entry_ptr = internal global ptr @bnx2fc_pending_work._entry, section ".printk_index", align 4
@bnx2fc_percpu = external dso_local global %struct.bnx2fc_percpu_s, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bnx2fc_fastpath_notification._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: conn_id 0x%x not valid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2fc_fastpath_notification\00", [35 x i8] zeroinitializer }, align 32
@bnx2fc_fastpath_notification._entry_ptr = internal global ptr @bnx2fc_fastpath_notification._entry, section ".printk_index", align 4
@bnx2fc_process_ofld_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011bnx2fc: ERROR:ofld_cmpl: No pending ofld req\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2fc_process_ofld_cmpl\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_process_ofld_cmpl._entry_ptr = internal global ptr @bnx2fc_process_ofld_cmpl._entry, section ".printk_index", align 4
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Entered ofld compl - context_id = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_process_ofld_cmpl._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.105, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: ERROR:ofld_cmpl: HBA mis-match\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_process_ofld_cmpl._entry_ptr.109 = internal global ptr @bnx2fc_process_ofld_cmpl._entry.107, section ".printk_index", align 4
@bnx2fc_process_ofld_cmpl._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.105, ptr @.str.2, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013bnx2fc: unable to allocate FCoE context resources\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_process_ofld_cmpl._entry_ptr.112 = internal global ptr @bnx2fc_process_ofld_cmpl._entry.110, section ".printk_index", align 4
@bnx2fc_process_enable_conn_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2fc: ERROR:enbl_cmpl: No pending ofld req\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bnx2fc_process_enable_conn_cmpl\00", [32 x i8] zeroinitializer }, align 32
@bnx2fc_process_enable_conn_cmpl._entry_ptr = internal global ptr @bnx2fc_process_enable_conn_cmpl._entry, section ".printk_index", align 4
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enable compl - context_id = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_process_enable_conn_cmpl._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.114, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013bnx2fc: context id mis-match\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2fc_process_enable_conn_cmpl._entry_ptr.118 = internal global ptr @bnx2fc_process_enable_conn_cmpl._entry.116, section ".printk_index", align 4
@bnx2fc_process_enable_conn_cmpl._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.2, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: bnx2fc-enbl_cmpl: HBA mis-match\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_process_enable_conn_cmpl._entry_ptr.121 = internal global ptr @bnx2fc_process_enable_conn_cmpl._entry.119, section ".printk_index", align 4
@bnx2fc_init_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: init_failure due to invalid opcode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_init_failure\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_init_failure._entry_ptr = internal global ptr @bnx2fc_init_failure._entry, section ".printk_index", align 4
@bnx2fc_init_failure._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2fc: init failed due to ctx alloc failure\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2fc_init_failure._entry_ptr.126 = internal global ptr @bnx2fc_init_failure._entry.124, section ".printk_index", align 4
@bnx2fc_init_failure._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bnx2fc: init_failure due to NIC error\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2fc_init_failure._entry_ptr.129 = internal global ptr @bnx2fc_init_failure._entry.127, section ".printk_index", align 4
@bnx2fc_init_failure._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.2, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2fc: init failure due to compl status err\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2fc_init_failure._entry_ptr.132 = internal global ptr @bnx2fc_init_failure._entry.130, section ".printk_index", align 4
@bnx2fc_init_failure._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.123, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: init failure due to HSI mismatch\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_init_failure._entry_ptr.135 = internal global ptr @bnx2fc_init_failure._entry.133, section ".printk_index", align 4
@bnx2fc_init_failure._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.123, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bnx2fc: Unknown Error code %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_init_failure._entry_ptr.138 = internal global ptr @bnx2fc_init_failure._entry.136, section ".printk_index", align 4
@bnx2fc_process_conn_disable_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bnx2fc: ERROR: disable_cmpl: No disable req\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnx2fc_process_conn_disable_cmpl\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_disable_cmpl._entry_ptr = internal global ptr @bnx2fc_process_conn_disable_cmpl._entry, section ".printk_index", align 4
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bnx2fc: disable_cmpl: conn_id %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_disable_cmpl._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: Disable failed with cmpl status %d\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_disable_cmpl._entry_ptr.144 = internal global ptr @bnx2fc_process_conn_disable_cmpl._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable successful\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_destroy_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: destroy_cmpl: No destroy req\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnx2fc_process_conn_destroy_cmpl\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_destroy_cmpl._entry_ptr = internal global ptr @bnx2fc_process_conn_destroy_cmpl._entry, section ".printk_index", align 4
@.str.148 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"destroy_cmpl: conn_id %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_destroy_cmpl._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.147, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bnx2fc: Destroy conn failed, cmpl status %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2fc_process_conn_destroy_cmpl._entry_ptr.151 = internal global ptr @bnx2fc_process_conn_destroy_cmpl._entry.149, section ".printk_index", align 4
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"upload successful\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnx2fc_allocate_hash_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 2040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: hash table pointers alloc failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2fc_allocate_hash_table\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_allocate_hash_table._entry_ptr = internal global ptr @bnx2fc_allocate_hash_table._entry, section ".printk_index", align 4
@bnx2fc_allocate_hash_table._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 2046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bnx2fc: hash table pointers (dma) alloc failed\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_allocate_hash_table._entry_ptr.157 = internal global ptr @bnx2fc_allocate_hash_table._entry.155, section ".printk_index", align 4
@bnx2fc_allocate_hash_table._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.154, ptr @.str.2, i32 2056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: hash segment alloc failed\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_allocate_hash_table._entry_ptr.160 = internal global ptr @bnx2fc_allocate_hash_table._entry.158, section ".printk_index", align 4
@bnx2fc_allocate_hash_table._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.154, ptr @.str.2, i32 2065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: hash table pbl alloc failed\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_allocate_hash_table._entry_ptr.163 = internal global ptr @bnx2fc_allocate_hash_table._entry.161, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 12, i64 17, i64 96, i64 105]
@__sancov_gen_cov_switch_values.164 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.166 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.168 = internal global [8 x i64] [i64 6, i64 8, i64 16, i64 20, i64 23, i64 24, i64 45, i64 61]
@__sancov_gen_cov_switch_values.169 = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 17, i64 18, i64 21, i64 22, i64 23, i64 24, i64 32]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.171 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 72, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 245, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 394, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 566, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 570, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 577, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 602, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 617, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 620, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 878, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 906, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 911, i32 25 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 921, i32 25 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 934, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 939, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 944, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 951, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1081, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1373, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1382, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1384, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1401, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1407, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1632, i32 24 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1882, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1895, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1906, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1919, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2124, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2135, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2150, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2159, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 161, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 643, i32 22 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 662, i32 25 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 696, i32 23 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 697, i32 23 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 700, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 704, i32 24 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 715, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 721, i32 26 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 744, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 748, i32 23 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 758, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 771, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 788, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 808, i32 23 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 809, i32 23 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 812, i32 23 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 829, i32 23 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 836, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 847, i32 24 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 854, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1010, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1137, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1165, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1168, i32 22 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1172, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1183, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1217, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1221, i32 22 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1229, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1234, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1312, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1316, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1320, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1323, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1326, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1329, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1256, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1260, i32 22 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1263, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1270, i32 23 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1288, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1292, i32 22 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1295, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1300, i32 23 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2040, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2046, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2056, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.618 = private constant [36 x i8] c"../drivers/scsi/bnx2fc/bnx2fc_hwi.c\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 2065, i32 3 }
@llvm.compiler.used = appending global [199 x ptr] [ptr @bnx2fc_allocate_hash_table._entry, ptr @bnx2fc_allocate_hash_table._entry.155, ptr @bnx2fc_allocate_hash_table._entry.158, ptr @bnx2fc_allocate_hash_table._entry.161, ptr @bnx2fc_allocate_hash_table._entry_ptr, ptr @bnx2fc_allocate_hash_table._entry_ptr.157, ptr @bnx2fc_allocate_hash_table._entry_ptr.160, ptr @bnx2fc_allocate_hash_table._entry_ptr.163, ptr @bnx2fc_fastpath_notification._entry, ptr @bnx2fc_fastpath_notification._entry_ptr, ptr @bnx2fc_indicate_kcqe._entry, ptr @bnx2fc_indicate_kcqe._entry.34, ptr @bnx2fc_indicate_kcqe._entry.37, ptr @bnx2fc_indicate_kcqe._entry.40, ptr @bnx2fc_indicate_kcqe._entry.43, ptr @bnx2fc_indicate_kcqe._entry_ptr, ptr @bnx2fc_indicate_kcqe._entry_ptr.36, ptr @bnx2fc_indicate_kcqe._entry_ptr.39, ptr @bnx2fc_indicate_kcqe._entry_ptr.42, ptr @bnx2fc_indicate_kcqe._entry_ptr.45, ptr @bnx2fc_init_failure._entry, ptr @bnx2fc_init_failure._entry.124, ptr @bnx2fc_init_failure._entry.127, ptr @bnx2fc_init_failure._entry.130, ptr @bnx2fc_init_failure._entry.133, ptr @bnx2fc_init_failure._entry.136, ptr @bnx2fc_init_failure._entry_ptr, ptr @bnx2fc_init_failure._entry_ptr.126, ptr @bnx2fc_init_failure._entry_ptr.129, ptr @bnx2fc_init_failure._entry_ptr.132, ptr @bnx2fc_init_failure._entry_ptr.135, ptr @bnx2fc_init_failure._entry_ptr.138, ptr @bnx2fc_pending_work._entry, ptr @bnx2fc_pending_work._entry_ptr, ptr @bnx2fc_process_conn_destroy_cmpl._entry, ptr @bnx2fc_process_conn_destroy_cmpl._entry.149, ptr @bnx2fc_process_conn_destroy_cmpl._entry_ptr, ptr @bnx2fc_process_conn_destroy_cmpl._entry_ptr.151, ptr @bnx2fc_process_conn_disable_cmpl._entry, ptr @bnx2fc_process_conn_disable_cmpl._entry.142, ptr @bnx2fc_process_conn_disable_cmpl._entry_ptr, ptr @bnx2fc_process_conn_disable_cmpl._entry_ptr.144, ptr @bnx2fc_process_cq_compl._entry, ptr @bnx2fc_process_cq_compl._entry.17, ptr @bnx2fc_process_cq_compl._entry.22, ptr @bnx2fc_process_cq_compl._entry.27, ptr @bnx2fc_process_cq_compl._entry_ptr, ptr @bnx2fc_process_cq_compl._entry_ptr.19, ptr @bnx2fc_process_cq_compl._entry_ptr.24, ptr @bnx2fc_process_cq_compl._entry_ptr.29, ptr @bnx2fc_process_enable_conn_cmpl._entry, ptr @bnx2fc_process_enable_conn_cmpl._entry.116, ptr @bnx2fc_process_enable_conn_cmpl._entry.119, ptr @bnx2fc_process_enable_conn_cmpl._entry_ptr, ptr @bnx2fc_process_enable_conn_cmpl._entry_ptr.118, ptr @bnx2fc_process_enable_conn_cmpl._entry_ptr.121, ptr @bnx2fc_process_l2_frame_compl._entry, ptr @bnx2fc_process_l2_frame_compl._entry.10, ptr @bnx2fc_process_l2_frame_compl._entry_ptr, ptr @bnx2fc_process_l2_frame_compl._entry_ptr.12, ptr @bnx2fc_process_new_cqes._entry, ptr @bnx2fc_process_new_cqes._entry_ptr, ptr @bnx2fc_process_ofld_cmpl._entry, ptr @bnx2fc_process_ofld_cmpl._entry.107, ptr @bnx2fc_process_ofld_cmpl._entry.110, ptr @bnx2fc_process_ofld_cmpl._entry_ptr, ptr @bnx2fc_process_ofld_cmpl._entry_ptr.109, ptr @bnx2fc_process_ofld_cmpl._entry_ptr.112, ptr @bnx2fc_process_unsol_compl._entry, ptr @bnx2fc_process_unsol_compl._entry.79, ptr @bnx2fc_process_unsol_compl._entry.84, ptr @bnx2fc_process_unsol_compl._entry.87, ptr @bnx2fc_process_unsol_compl._entry.94, ptr @bnx2fc_process_unsol_compl._entry.97, ptr @bnx2fc_process_unsol_compl._entry_ptr, ptr @bnx2fc_process_unsol_compl._entry_ptr.81, ptr @bnx2fc_process_unsol_compl._entry_ptr.86, ptr @bnx2fc_process_unsol_compl._entry_ptr.89, ptr @bnx2fc_process_unsol_compl._entry_ptr.95, ptr @bnx2fc_process_unsol_compl._entry_ptr.99, ptr @bnx2fc_send_fw_fcoe_init_msg._entry, ptr @bnx2fc_send_fw_fcoe_init_msg._entry_ptr, ptr @bnx2fc_send_session_enable_req._entry, ptr @bnx2fc_send_session_enable_req._entry_ptr, ptr @bnx2fc_setup_fw_resc._entry, ptr @bnx2fc_setup_fw_resc._entry.60, ptr @bnx2fc_setup_fw_resc._entry.63, ptr @bnx2fc_setup_fw_resc._entry.66, ptr @bnx2fc_setup_fw_resc._entry_ptr, ptr @bnx2fc_setup_fw_resc._entry_ptr.62, ptr @bnx2fc_setup_fw_resc._entry_ptr.65, ptr @bnx2fc_setup_fw_resc._entry_ptr.68, ptr @bnx2fc_setup_task_ctx._entry, ptr @bnx2fc_setup_task_ctx._entry.49, ptr @bnx2fc_setup_task_ctx._entry.52, ptr @bnx2fc_setup_task_ctx._entry.55, ptr @bnx2fc_setup_task_ctx._entry_ptr, ptr @bnx2fc_setup_task_ctx._entry_ptr.51, ptr @bnx2fc_setup_task_ctx._entry_ptr.54, ptr @bnx2fc_setup_task_ctx._entry_ptr.57, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @bnx2fc_process_l2_frame_compl.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_fw_fcoe_init_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_session_enable_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_l2_frame_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_l2_frame_compl._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_l2_frame_compl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_cq_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_cq_compl._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_cq_compl._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_cq_compl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_new_cqes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_kcqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_kcqe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_kcqe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_kcqe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_kcqe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_task_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_task_ctx._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_task_ctx._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_task_ctx._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_fw_resc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_fw_resc._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_fw_resc._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_setup_fw_resc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_unsol_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_unsol_compl._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_unsol_compl._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_unsol_compl._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_unsol_compl._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_unsol_compl._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_pending_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fastpath_notification._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_ofld_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_ofld_cmpl._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_ofld_cmpl._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_enable_conn_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_enable_conn_cmpl._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_enable_conn_cmpl._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_failure._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_failure._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_failure._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_failure._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_failure._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_conn_disable_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_conn_disable_cmpl._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_conn_destroy_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_conn_destroy_cmpl._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_allocate_hash_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_allocate_hash_table._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_allocate_hash_table._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_allocate_hash_table._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_stat_req(ptr nocapture noundef readonly %hba) local_unnamed_addr #0 align 64 {
entry:
  %stat_req = alloca %struct.fcoe_kwqe_stat, align 4
  %kwqe_arr = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stat_req) #12
  %0 = getelementptr inbounds %struct.fcoe_kwqe_stat, ptr %stat_req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fcoe_kwqe_stat, ptr %stat_req, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.fcoe_kwqe_stat, ptr %stat_req, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #12
  %3 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !289
  %5 = call ptr @memset(ptr %stat_req, i32 0, i32 32)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 11, ptr %0, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 112, ptr %1, align 1
  %stats_buf_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 34
  %8 = ptrtoint ptr %stats_buf_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_buf_dma, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %11 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %stat_req, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 1
  %12 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cnic, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %submit_kwqes, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %15(ptr noundef nonnull %13, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stat_req) #12
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_fw_fcoe_init_msg(ptr nocapture noundef readonly %hba) local_unnamed_addr #0 align 64 {
entry:
  %fcoe_init1 = alloca %struct.fcoe_kwqe_init1, align 4
  %fcoe_init2 = alloca %struct.fcoe_kwqe_init2, align 4
  %fcoe_init3 = alloca %struct.fcoe_kwqe_init3, align 4
  %kwqe_arr = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fcoe_init1) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fcoe_init2) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fcoe_init3) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %kwqe_arr) #12
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnic, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds [3 x ptr], ptr %kwqe_arr, i32 0, i32 2
  %3 = getelementptr inbounds [3 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fcoe_kwqe_init3, ptr %fcoe_init3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.fcoe_kwqe_init3, ptr %fcoe_init3, i32 0, i32 3
  %6 = getelementptr inbounds %struct.fcoe_kwqe_init3, ptr %fcoe_init3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fcoe_kwqe_init3, ptr %fcoe_init3, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.fcoe_kwqe_init3, ptr %fcoe_init3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 9
  %10 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 8
  %11 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 7
  %12 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 6
  %13 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 5
  %14 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 3
  %16 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fcoe_kwqe_init2, ptr %fcoe_init2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 12
  %20 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 11
  %21 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 10
  %22 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 9
  %23 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 8
  %24 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 7
  %25 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 6
  %26 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 5
  %27 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.fcoe_kwqe_init1, ptr %fcoe_init1, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %fcoe_init1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %fcoe_init1, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 112, ptr %30, align 1
  %max_tasks = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 13
  %33 = ptrtoint ptr %max_tasks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_tasks, align 8
  %conv = trunc i32 %34 to i16
  store i16 %conv, ptr %fcoe_init1, align 4
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 256, ptr %25, align 4
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 16, ptr %24, align 2
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 8, ptr %23, align 4
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 272, ptr %22, align 2
  %dummy_buf_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 29
  %39 = ptrtoint ptr %dummy_buf_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dummy_buf_dma, align 8
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %27, align 4
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %26, align 4
  %task_ctx_bd_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 19
  %43 = ptrtoint ptr %task_ctx_bd_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %task_ctx_bd_dma, align 8
  %45 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %29, align 4
  %46 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %28, align 4
  %47 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2500, ptr %21, align 4
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 12, ptr %19, align 1
  %49 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %20, align 2
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %17, align 2
  %51 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 112, ptr %16, align 1
  %52 = ptrtoint ptr %fcoe_init2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %fcoe_init2, align 4
  %53 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %18, align 1
  %hash_tbl_pbl_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 23
  %54 = ptrtoint ptr %hash_tbl_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hash_tbl_pbl_dma, align 8
  %56 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %15, align 4
  %57 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %14, align 4
  %t2_hash_tbl_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 25
  %58 = ptrtoint ptr %t2_hash_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %t2_hash_tbl_dma, align 8
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %13, align 4
  %61 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %12, align 4
  %t2_hash_tbl_ptr_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 27
  %62 = ptrtoint ptr %t2_hash_tbl_ptr_dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %t2_hash_tbl_ptr_dma, align 8
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %11, align 4
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %10, align 4
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1024, ptr %9, align 4
  %67 = call ptr @memset(ptr %fcoe_init3, i32 0, i32 32)
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %8, align 2
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 112, ptr %7, align 1
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %6, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %5, align 4
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 3, ptr %4, align 4
  %73 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fcoe_init1, ptr %kwqe_arr, align 4
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %fcoe_init2, ptr %3, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %fcoe_init3, ptr %2, align 4
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %submit_kwqes, align 4
  %tobool35.not = icmp eq ptr %77, null
  br i1 %tobool35.not, label %land.lhs.true.cleanup_crit_edge, label %if.then36

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = call i32 %77(ptr noundef nonnull %1, ptr noundef nonnull %kwqe_arr, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call40, %if.then36 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %kwqe_arr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fcoe_init3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fcoe_init2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fcoe_init1) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_fw_fcoe_destroy_msg(ptr nocapture noundef readonly %hba) local_unnamed_addr #0 align 64 {
entry:
  %fcoe_destroy = alloca %struct.fcoe_kwqe_destroy, align 4
  %kwqe_arr = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fcoe_destroy) #12
  %0 = getelementptr inbounds %struct.fcoe_kwqe_destroy, ptr %fcoe_destroy, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fcoe_kwqe_destroy, ptr %fcoe_destroy, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #12
  %2 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !289
  %4 = call ptr @memset(ptr %fcoe_destroy, i32 0, i32 32)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %0, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 112, ptr %1, align 1
  %7 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fcoe_destroy, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 1
  %8 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cnic, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %submit_kwqes, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %11(ptr noundef nonnull %9, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ -1, %land.lhs.true.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fcoe_destroy) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_session_ofld_req(ptr nocapture noundef readonly %port, ptr nocapture noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  %kwqe_arr = alloca [4 x ptr], align 4
  %ofld_req1 = alloca %struct.fcoe_kwqe_conn_offload1, align 4
  %ofld_req2 = alloca %struct.fcoe_kwqe_conn_offload2, align 4
  %ofld_req3 = alloca %struct.fcoe_kwqe_conn_offload3, align 4
  %ofld_req4 = alloca %struct.fcoe_kwqe_conn_offload4, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr inbounds %struct.fcoe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %hba2 = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kwqe_arr) #12
  %6 = getelementptr inbounds [4 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %7 = getelementptr inbounds [4 x ptr], ptr %kwqe_arr, i32 0, i32 2
  %8 = getelementptr inbounds [4 x ptr], ptr %kwqe_arr, i32 0, i32 3
  %9 = call ptr @memset(ptr %kwqe_arr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req1) #12
  %10 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 5
  %16 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 6
  %17 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 7
  %18 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, ptr %ofld_req1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req2) #12
  %19 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 1, i32 1
  %21 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 2
  %22 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 4
  %24 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 5
  %25 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 6
  %26 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload2, ptr %ofld_req2, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req3) #12
  %27 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 1, i32 1
  %29 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ofld_req4) #12
  %30 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 3
  %33 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 3, i32 1
  %34 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 4
  %35 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 4, i32 1
  %36 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 5
  %37 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 5, i32 1
  %38 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 6
  %39 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 6, i32 1
  %40 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 7
  %41 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 7, i32 1
  %42 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 8
  %43 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 8, i32 1
  %44 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 9
  %45 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 10
  %46 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 11
  %47 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload4, ptr %ofld_req4, i32 0, i32 12
  %rdata3 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 2
  %48 = call ptr @memset(ptr %ofld_req4, i32 255, i32 32)
  %49 = ptrtoint ptr %rdata3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rdata3, align 4
  %rport4 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 1
  %51 = ptrtoint ptr %rport4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rport4, align 4
  %53 = getelementptr inbounds i8, ptr %ofld_req1, i32 28
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %53, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %10, align 2
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 112, ptr %11, align 1
  %fcoe_conn_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 5
  %57 = ptrtoint ptr %fcoe_conn_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fcoe_conn_id, align 4
  %conv = trunc i32 %58 to i16
  %59 = ptrtoint ptr %ofld_req1 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv, ptr %ofld_req1, align 4
  %sq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 18
  %60 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sq_dma, align 4
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %12, align 4
  %63 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %13, align 4
  %rq_pbl_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 33
  %64 = ptrtoint ptr %rq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rq_pbl_dma, align 4
  %66 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %14, align 4
  %67 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %15, align 4
  %rq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 28
  %68 = ptrtoint ptr %rq_dma to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rq_dma, align 4
  %70 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %16, align 4
  %71 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %17, align 4
  %72 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -32768, ptr %18, align 4
  %73 = getelementptr inbounds i8, ptr %ofld_req2, i32 28
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %73, align 4
  %75 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %19, align 2
  %76 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 112, ptr %20, align 1
  %maxframe_size = getelementptr inbounds %struct.fc_rport_priv, ptr %50, i32 0, i32 8
  %77 = ptrtoint ptr %maxframe_size to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %maxframe_size, align 2
  %79 = ptrtoint ptr %ofld_req2 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %ofld_req2, align 4
  %cq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 23
  %80 = ptrtoint ptr %cq_dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cq_dma, align 4
  %82 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %21, align 4
  %83 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %22, align 4
  %xferq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 36
  %84 = ptrtoint ptr %xferq_dma to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xferq_dma, align 4
  %86 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %23, align 4
  %87 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %24, align 4
  %conn_db_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 45
  %88 = ptrtoint ptr %conn_db_dma to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %conn_db_dma, align 4
  %90 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %25, align 4
  %91 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %26, align 4
  %92 = getelementptr inbounds i8, ptr %ofld_req3, i32 4
  %93 = call ptr @memset(ptr %92, i32 0, i32 28)
  %94 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 5, ptr %27, align 2
  %95 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 112, ptr %28, align 1
  %vlan_id = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 9
  %96 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vlan_id, align 4
  %98 = trunc i32 %97 to i16
  %conv41 = or i16 %98, 24576
  %99 = ptrtoint ptr %ofld_req3 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv41, ptr %ofld_req3, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %101, i32 0, i32 51
  %102 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shost_data, align 8
  %port_id42 = getelementptr inbounds %struct.fc_host_attrs, ptr %103, i32 0, i32 22
  %104 = ptrtoint ptr %port_id42 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port_id42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp = icmp eq i32 %105, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %1, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %106 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 13
  %107 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 12
  %108 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 11
  %109 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 10
  %110 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 9
  %111 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 8
  %112 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 7
  %113 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 4, i32 2
  %114 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 4, i32 1
  %115 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 4
  %116 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 3
  %117 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 2, i32 2
  %118 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 2, i32 1
  %119 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload3, ptr %ofld_req3, i32 0, i32 2
  %sid = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 7
  %120 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %105, ptr %sid, align 4
  %conv44 = trunc i32 %105 to i8
  %121 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv44, ptr %119, align 4
  %and45 = lshr i32 %105, 8
  %conv47 = trunc i32 %and45 to i8
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv47, ptr %118, align 1
  %and50 = lshr i32 %105, 16
  %conv52 = trunc i32 %and50 to i8
  %123 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv52, ptr %117, align 2
  %port_id55 = getelementptr inbounds %struct.fc_rport, ptr %52, i32 0, i32 6
  %124 = ptrtoint ptr %port_id55 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port_id55, align 8
  %conv57 = trunc i32 %125 to i8
  %126 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv57, ptr %115, align 4
  %and59 = lshr i32 %125, 8
  %conv61 = trunc i32 %and59 to i8
  %127 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv61, ptr %114, align 1
  %and64 = lshr i32 %125, 16
  %conv66 = trunc i32 %and64 to i8
  %128 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv66, ptr %113, align 2
  %max_seq = getelementptr inbounds %struct.fc_rport_priv, ptr %50, i32 0, i32 6
  %129 = ptrtoint ptr %max_seq to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %max_seq, align 2
  %131 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %110, align 4
  %conv70 = trunc i16 %130 to i8
  %132 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv70, ptr %116, align 1
  %mfs = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 26
  %133 = ptrtoint ptr %mfs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mfs, align 4
  %conv71 = trunc i32 %134 to i16
  %135 = ptrtoint ptr %109 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv71, ptr %109, align 2
  %136 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 255, ptr %108, align 4
  %137 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -1, ptr %107, align 2
  %138 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %106, align 1
  %confq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 39
  %139 = ptrtoint ptr %confq_dma to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %confq_dma, align 4
  %141 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %112, align 4
  %142 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %111, align 4
  %sp_features = getelementptr inbounds %struct.fc_rport_priv, ptr %50, i32 0, i32 22
  %143 = ptrtoint ptr %sp_features to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %sp_features, align 4
  %145 = lshr i16 %144, 9
  %146 = trunc i16 %145 to i8
  %conv83 = and i8 %146, 2
  %.tr = trunc i16 %144 to i8
  %147 = shl i8 %.tr, 1
  %shl89 = and i8 %147, 4
  %or92 = or i8 %conv83, %shl89
  %148 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %or92, ptr %29, align 1
  %dev_type = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 8
  %149 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp94 = icmp eq i32 %150, 1
  br i1 %cmp94, label %if.then96, label %if.end.if.end111_crit_edge

if.end.if.end111_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then96:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %151 = or i8 %or92, 8
  %flags101 = getelementptr inbounds %struct.fc_rport_priv, ptr %50, i32 0, i32 5
  %152 = ptrtoint ptr %flags101 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %flags101, align 8
  %.tr254 = trunc i16 %153 to i8
  %154 = shl i8 %.tr254, 4
  %shl106 = and i8 %154, 16
  %or109 = or i8 %shl106, %151
  %155 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %or109, ptr %29, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then96, %if.end.if.end111_crit_edge
  %vlan_enabled = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 8
  %156 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %vlan_enabled, align 4
  %shl113 = shl i8 %157, 7
  %158 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %29, align 1
  %or116 = or i8 %shl113, %159
  store i8 %or116, ptr %29, align 1
  %160 = call ptr @memset(ptr %ofld_req4, i32 0, i32 32)
  %161 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 6, ptr %30, align 2
  %162 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 112, ptr %31, align 1
  %e_d_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 22
  %163 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %e_d_tov, align 4
  %div = udiv i32 %164, 20
  %conv122 = trunc i32 %div to i8
  %165 = ptrtoint ptr %ofld_req4 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv122, ptr %ofld_req4, align 4
  %data_src_addr = getelementptr inbounds %struct.fcoe_port, ptr %port, i32 0, i32 8
  %arrayidx123 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 5
  %166 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx123, align 1
  %168 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %32, align 4
  %arrayidx126 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 4
  %169 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx126, align 4
  %171 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %33, align 1
  %arrayidx130 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 3
  %172 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx130, align 1
  %174 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %34, align 2
  %arrayidx133 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 2
  %175 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx133, align 2
  %177 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %35, align 1
  %arrayidx137 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 1
  %178 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx137, align 1
  %180 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %36, align 4
  %181 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %data_src_addr, align 4
  %183 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %37, align 1
  %dest_addr = getelementptr %struct.fcoe_ctlr, ptr %3, i32 -1, i32 27
  %arrayidx143 = getelementptr %struct.fcoe_ctlr, ptr %3, i32 -1, i32 27, i32 5
  %184 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx143, align 1
  %186 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %40, align 4
  %arrayidx146 = getelementptr %struct.fcoe_ctlr, ptr %3, i32 -1, i32 27, i32 4
  %187 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx146, align 1
  %189 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %41, align 1
  %arrayidx150 = getelementptr %struct.fcoe_ctlr, ptr %3, i32 -1, i32 27, i32 3
  %190 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx150, align 1
  %192 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %42, align 2
  %arrayidx153 = getelementptr %struct.fcoe_ctlr, ptr %3, i32 -1, i32 27, i32 2
  %193 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx153, align 1
  %195 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %43, align 1
  %arrayidx157 = getelementptr %struct.fcoe_ctlr, ptr %3, i32 -1, i32 27, i32 1
  %196 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx157, align 1
  %198 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %38, align 2
  %199 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %dest_addr, align 1
  %201 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %39, align 1
  %lcq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 48
  %202 = ptrtoint ptr %lcq_dma to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %lcq_dma, align 4
  %204 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %44, align 4
  %205 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %45, align 4
  %confq_pbl_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 42
  %206 = ptrtoint ptr %confq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %confq_pbl_dma, align 4
  %208 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %46, align 4
  %209 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %47, align 4
  %210 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %ofld_req1, ptr %kwqe_arr, align 4
  %211 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %ofld_req2, ptr %6, align 4
  %212 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %ofld_req3, ptr %7, align 4
  %213 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %ofld_req4, ptr %8, align 4
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 1
  %214 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cnic, align 8
  %tobool175.not = icmp eq ptr %215, null
  br i1 %tobool175.not, label %if.end111.cleanup_crit_edge, label %land.lhs.true

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end111
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %215, i32 0, i32 6
  %216 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %submit_kwqes, align 4
  %tobool177.not = icmp eq ptr %217, null
  br i1 %tobool177.not, label %land.lhs.true.cleanup_crit_edge, label %if.then178

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then178:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %217(ptr noundef nonnull %215, ptr noundef nonnull %kwqe_arr, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %land.lhs.true.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.then178 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ofld_req1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kwqe_arr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_HBA_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_session_enable_req(ptr nocapture noundef readonly %port, ptr nocapture noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  %kwqe_arr = alloca [2 x ptr], align 4
  %enbl_req = alloca %struct.fcoe_kwqe_conn_enable_disable, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #12
  %0 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %kwqe_arr, align 4, !annotation !289
  %1 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !289
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hba1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %enbl_req) #12
  %lport2 = getelementptr inbounds %struct.fcoe_port, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport2, align 4
  %rport3 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 1
  %9 = ptrtoint ptr %rport3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rport3, align 4
  %11 = call ptr @memset(ptr %enbl_req, i32 0, i32 40)
  %hdr = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 1
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %hdr, align 2
  %flags = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 112, ptr %flags, align 1
  %data_src_addr = getelementptr inbounds %struct.fcoe_port, ptr %port, i32 0, i32 8
  %arrayidx = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %src_mac_addr_lo = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 2
  %16 = ptrtoint ptr %src_mac_addr_lo to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %src_mac_addr_lo, align 4
  %arrayidx7 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11, align 1
  %src_mac_addr_mid = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 3
  %22 = ptrtoint ptr %src_mac_addr_mid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %src_mac_addr_mid, align 2
  %arrayidx14 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14, align 2
  %arrayidx16 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.fcoe_port, ptr %port, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18, align 1
  %src_mac_addr_hi = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 4
  %28 = ptrtoint ptr %src_mac_addr_hi to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %src_mac_addr_hi, align 4
  %29 = ptrtoint ptr %data_src_addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data_src_addr, align 4
  %arrayidx23 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx23, align 1
  %src_addr = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10
  %32 = call ptr @memcpy(ptr %src_addr, ptr %data_src_addr, i32 6)
  %dest_addr = getelementptr %struct.fcoe_ctlr, ptr %4, i32 -1, i32 27
  %arrayidx26 = getelementptr %struct.fcoe_ctlr, ptr %4, i32 -1, i32 27, i32 5
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx26, align 1
  %dst_mac_addr_lo = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 6
  %35 = ptrtoint ptr %dst_mac_addr_lo to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %dst_mac_addr_lo, align 4
  %arrayidx29 = getelementptr %struct.fcoe_ctlr, ptr %4, i32 -1, i32 27, i32 4
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx29, align 1
  %arrayidx31 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr %struct.fcoe_ctlr, ptr %4, i32 -1, i32 27, i32 3
  %39 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx33, align 1
  %dst_mac_addr_mid = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 7
  %41 = ptrtoint ptr %dst_mac_addr_mid to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %dst_mac_addr_mid, align 2
  %arrayidx36 = getelementptr %struct.fcoe_ctlr, ptr %4, i32 -1, i32 27, i32 2
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx38, align 1
  %arrayidx40 = getelementptr %struct.fcoe_ctlr, ptr %4, i32 -1, i32 27, i32 1
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx40, align 1
  %dst_mac_addr_hi = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 8
  %47 = ptrtoint ptr %dst_mac_addr_hi to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %dst_mac_addr_hi, align 4
  %48 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dest_addr, align 1
  %arrayidx45 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx45, align 1
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %8, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %52, i32 0, i32 51
  %53 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shost_data, align 8
  %port_id46 = getelementptr inbounds %struct.fc_host_attrs, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %port_id46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port_id46, align 8
  %sid = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 7
  %57 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.not = icmp eq i32 %56, %58
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %56, i32 noundef %58) #15
  %59 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sid, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %port_id.0 = phi i32 [ %60, %do.end ], [ %56, %entry.if.end_crit_edge ]
  %conv = trunc i32 %port_id.0 to i8
  %s_id = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 10
  %61 = ptrtoint ptr %s_id to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv, ptr %s_id, align 4
  %and50 = lshr i32 %port_id.0, 8
  %conv51 = trunc i32 %and50 to i8
  %arrayidx53 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv51, ptr %arrayidx53, align 1
  %and54 = lshr i32 %port_id.0, 16
  %conv56 = trunc i32 %and54 to i8
  %arrayidx58 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 10, i32 2
  %63 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv56, ptr %arrayidx58, align 2
  %port_id59 = getelementptr inbounds %struct.fc_rport, ptr %10, i32 0, i32 6
  %64 = ptrtoint ptr %port_id59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port_id59, align 8
  %conv61 = trunc i32 %65 to i8
  %d_id = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 12
  %66 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv61, ptr %d_id, align 4
  %and63 = lshr i32 %65, 8
  %conv65 = trunc i32 %and63 to i8
  %arrayidx67 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 12, i32 1
  %67 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv65, ptr %arrayidx67, align 1
  %and68 = lshr i32 %65, 16
  %conv70 = trunc i32 %and68 to i8
  %arrayidx72 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 12, i32 2
  %68 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv70, ptr %arrayidx72, align 2
  %vlan_id = getelementptr inbounds %struct.bnx2fc_interface, ptr %4, i32 0, i32 9
  %69 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vlan_id, align 4
  %vlan_tag = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 5
  %71 = trunc i32 %70 to i16
  %conv76 = or i16 %71, 24576
  %72 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv76, ptr %vlan_tag, align 2
  %vlan_enabled = getelementptr inbounds %struct.bnx2fc_interface, ptr %4, i32 0, i32 8
  %73 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vlan_enabled, align 4
  %vlan_flag = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 11
  %75 = ptrtoint ptr %vlan_flag to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %vlan_flag, align 1
  %context_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 6
  %76 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %context_id, align 4
  %context_id77 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 14
  %78 = ptrtoint ptr %context_id77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %context_id77, align 4
  %fcoe_conn_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 5
  %79 = ptrtoint ptr %fcoe_conn_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fcoe_conn_id, align 4
  %conn_id = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %enbl_req, i32 0, i32 15
  %81 = ptrtoint ptr %conn_id to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %conn_id, align 4
  %82 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %enbl_req, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %6, i32 0, i32 1
  %83 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cnic, align 8
  %tobool.not = icmp eq ptr %84, null
  br i1 %tobool.not, label %if.end.if.end87_crit_edge, label %land.lhs.true

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %submit_kwqes, align 4
  %tobool80.not = icmp eq ptr %86, null
  br i1 %tobool80.not, label %land.lhs.true.if.end87_crit_edge, label %if.then81

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call86 = call i32 %86(ptr noundef nonnull %84, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %land.lhs.true.if.end87_crit_edge, %if.end.if.end87_crit_edge
  %rc.0 = phi i32 [ %call86, %if.then81 ], [ 0, %land.lhs.true.if.end87_crit_edge ], [ 0, %if.end.if.end87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %enbl_req) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_session_disable_req(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %tgt) local_unnamed_addr #0 align 64 {
entry:
  %disable_req = alloca %struct.fcoe_kwqe_conn_enable_disable, align 4
  %kwqe_arr = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %disable_req) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #12
  %4 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !289
  %rport2 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 1
  %6 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rport2, align 4
  %8 = call ptr @memset(ptr %disable_req, i32 0, i32 40)
  %hdr = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 1
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %hdr, align 2
  %flags = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 112, ptr %flags, align 1
  %src_addr = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10
  %arrayidx = getelementptr %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10, i32 5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %src_mac_addr_lo = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 2
  %13 = ptrtoint ptr %src_mac_addr_lo to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %src_mac_addr_lo, align 4
  %arrayidx6 = getelementptr %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %src_mac_addr_mid = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 3
  %19 = ptrtoint ptr %src_mac_addr_mid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %src_mac_addr_mid, align 2
  %arrayidx13 = getelementptr %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 2
  %arrayidx15 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17, align 1
  %src_mac_addr_hi = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 4
  %25 = ptrtoint ptr %src_mac_addr_hi to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %src_mac_addr_hi, align 4
  %26 = ptrtoint ptr %src_addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %src_addr, align 4
  %arrayidx22 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx22, align 1
  %dest_addr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27
  %arrayidx23 = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27, i32 5
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx23, align 1
  %dst_mac_addr_lo = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 6
  %31 = ptrtoint ptr %dst_mac_addr_lo to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dst_mac_addr_lo, align 4
  %arrayidx26 = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27, i32 4
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx26, align 1
  %arrayidx28 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx28, align 1
  %arrayidx30 = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27, i32 3
  %35 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx30, align 1
  %dst_mac_addr_mid = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 7
  %37 = ptrtoint ptr %dst_mac_addr_mid to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %dst_mac_addr_mid, align 2
  %arrayidx33 = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27, i32 2
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx33, align 1
  %arrayidx35 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx35, align 1
  %arrayidx37 = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27, i32 1
  %41 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx37, align 1
  %dst_mac_addr_hi = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 8
  %43 = ptrtoint ptr %dst_mac_addr_hi to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %dst_mac_addr_hi, align 4
  %44 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dest_addr, align 1
  %arrayidx42 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx42, align 1
  %sid = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 7
  %47 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sid, align 4
  %conv = trunc i32 %48 to i8
  %s_id = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 10
  %49 = ptrtoint ptr %s_id to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %s_id, align 4
  %and44 = lshr i32 %48, 8
  %conv45 = trunc i32 %and44 to i8
  %arrayidx47 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv45, ptr %arrayidx47, align 1
  %and48 = lshr i32 %48, 16
  %conv50 = trunc i32 %and48 to i8
  %arrayidx52 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 10, i32 2
  %51 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv50, ptr %arrayidx52, align 2
  %port_id53 = getelementptr inbounds %struct.fc_rport, ptr %7, i32 0, i32 6
  %52 = ptrtoint ptr %port_id53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_id53, align 8
  %conv55 = trunc i32 %53 to i8
  %d_id = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 12
  %54 = ptrtoint ptr %d_id to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv55, ptr %d_id, align 4
  %and57 = lshr i32 %53, 8
  %conv59 = trunc i32 %and57 to i8
  %arrayidx61 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 12, i32 1
  %55 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv59, ptr %arrayidx61, align 1
  %and62 = lshr i32 %53, 16
  %conv64 = trunc i32 %and62 to i8
  %arrayidx66 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 12, i32 2
  %56 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv64, ptr %arrayidx66, align 2
  %context_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 6
  %57 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %context_id, align 4
  %context_id67 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 14
  %59 = ptrtoint ptr %context_id67 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %context_id67, align 4
  %fcoe_conn_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 5
  %60 = ptrtoint ptr %fcoe_conn_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fcoe_conn_id, align 4
  %conn_id = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 15
  %62 = ptrtoint ptr %conn_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %conn_id, align 4
  %vlan_id = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vlan_id, align 4
  %vlan_tag = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 5
  %65 = trunc i32 %64 to i16
  %conv71 = or i16 %65, 24576
  %66 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv71, ptr %vlan_tag, align 2
  %vlan_enabled = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vlan_enabled, align 4
  %vlan_flag = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, ptr %disable_req, i32 0, i32 11
  %69 = ptrtoint ptr %vlan_flag to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %vlan_flag, align 1
  %70 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %disable_req, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 1
  %71 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cnic, align 8
  %tobool.not = icmp eq ptr %72, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %submit_kwqes, align 4
  %tobool74.not = icmp eq ptr %74, null
  br i1 %tobool74.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %74(ptr noundef nonnull %72, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %disable_req) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_session_destroy_req(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %tgt) local_unnamed_addr #0 align 64 {
entry:
  %destroy_req = alloca %struct.fcoe_kwqe_conn_destroy, align 4
  %kwqe_arr = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %destroy_req) #12
  %0 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, ptr %destroy_req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, ptr %destroy_req, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, ptr %destroy_req, i32 0, i32 2
  %3 = getelementptr inbounds %struct.fcoe_kwqe_conn_destroy, ptr %destroy_req, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kwqe_arr) #12
  %4 = getelementptr inbounds [2 x ptr], ptr %kwqe_arr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !289
  %6 = call ptr @memset(ptr %destroy_req, i32 0, i32 32)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 9, ptr %0, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 112, ptr %1, align 1
  %context_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 6
  %9 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %context_id, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  %fcoe_conn_id = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 5
  %12 = ptrtoint ptr %fcoe_conn_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fcoe_conn_id, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %3, align 4
  %15 = ptrtoint ptr %kwqe_arr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %destroy_req, ptr %kwqe_arr, align 4
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 1
  %16 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cnic, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %submit_kwqes = getelementptr inbounds %struct.cnic_dev, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %submit_kwqes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %submit_kwqes, align 4
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %19(ptr noundef nonnull %17, ptr noundef nonnull %kwqe_arr, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kwqe_arr) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %destroy_req) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_l2_frame_compl(ptr noundef %tgt, ptr nocapture noundef readonly %buf, i32 noundef %frame_len, i16 noundef zeroext %l2_oxid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt, align 4
  %lport2 = getelementptr inbounds %struct.fcoe_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 56) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %l2_oxid to i32
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %frame_len) #12
  %sub = add i32 %frame_len, -24
  %rem.i = and i32 %frame_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %3, i32 noundef %sub) #12
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %sub) #12
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool4.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end7:                                          ; preds = %fc_frame_alloc.exit
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %8)
  %cmp.i = icmp ult i32 %8, 24
  br i1 %cmp.i, label %do.end.i, label %if.end7.fc_frame_header_get.exit_crit_edge, !prof !290

if.end7.fc_frame_header_get.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 161, i32 noundef 9, ptr noundef null) #12
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end7.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %buf, i32 %frame_len)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %l2_oxid)
  %cmp.not = icmp eq i16 %l2_oxid, -1
  br i1 %cmp.not, label %fc_frame_header_get.exit.if.end12_crit_edge, label %if.then11

fc_frame_header_get.exit.if.end12_crit_edge:      ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %10, i32 0, i32 9
  %12 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %l2_oxid, ptr %fh_ox_id, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %fc_frame_header_get.exit.if.end12_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %10, align 4
  %15 = and i8 %14, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %15)
  %switch = icmp eq i8 %15, 34
  br i1 %switch, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end12
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp23 = icmp eq i8 %17, 1
  br i1 %cmp23, label %if.then25, label %if.then21.if.end50_crit_edge

if.then21.if.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then25:                                        ; preds = %if.then21
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %19)
  %cmp.i.i = icmp ugt i32 %19, 24
  br i1 %cmp.i.i, label %fc_frame_payload_get.exit.i, label %if.then25.if.end50_crit_edge

if.then25.if.end50_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

fc_frame_payload_get.exit.i:                      ; preds = %if.then25
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %21, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.if.end50_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.if.end50_crit_edge:   ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %fc_frame_payload_op.exit.if.end50_crit_edge [
    i8 17, label %fc_frame_payload_op.exit.do.end45_crit_edge
    i8 12, label %fc_frame_payload_op.exit.do.end45_crit_edge132
    i8 96, label %fc_frame_payload_op.exit.do.end45_crit_edge133
    i8 105, label %fc_frame_payload_op.exit.do.end45_crit_edge134
  ]

fc_frame_payload_op.exit.do.end45_crit_edge134:   ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

fc_frame_payload_op.exit.do.end45_crit_edge133:   ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

fc_frame_payload_op.exit.do.end45_crit_edge132:   ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

fc_frame_payload_op.exit.do.end45_crit_edge:      ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

fc_frame_payload_op.exit.if.end50_crit_edge:      ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end45:                                         ; preds = %fc_frame_payload_op.exit.do.end45_crit_edge, %fc_frame_payload_op.exit.do.end45_crit_edge132, %fc_frame_payload_op.exit.do.end45_crit_edge133, %fc_frame_payload_op.exit.do.end45_crit_edge134
  %conv27 = zext i8 %23 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv27) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end50:                                         ; preds = %fc_frame_payload_op.exit.if.end50_crit_edge, %fc_frame_payload_get.exit.i.if.end50_crit_edge, %if.then25.if.end50_crit_edge, %if.then21.if.end50_crit_edge
  %call51 = tail call i32 @fcoe_fc_crc(ptr noundef nonnull %fp.0.i) #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3
  %fr_seq.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %fr_seq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fr_seq.i, align 4
  %fr_flags.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 20
  %26 = ptrtoint ptr %fr_flags.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %fr_flags.i, align 4
  %fr_encaps.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 21
  %27 = ptrtoint ptr %fr_encaps.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %fr_encaps.i, align 1
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %cb.i, align 8
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 18
  %29 = ptrtoint ptr %fr_sof to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 46, ptr %fr_sof, align 2
  %fr_eof = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 19
  %30 = ptrtoint ptr %fr_eof to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 66, ptr %fr_eof, align 1
  %neg = xor i32 %call51, -1
  %31 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %fr_crc = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %fr_crc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %fr_crc, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %3, ptr %call7.i.i, align 8
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hba, align 4
  %hba63 = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %hba63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %hba63, align 8
  %fp64 = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %fp64 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %fp.0.i, ptr %fp64, align 4
  %unsol_els_work = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %unsol_els_work, i32 noundef 0) #12
  %38 = ptrtoint ptr %unsol_els_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %unsol_els_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @bnx2fc_process_l2_frame_compl.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry69 = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry69, ptr %entry69, align 8
  %prev.i = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry69, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bnx2fc_unsol_els, ptr %call7.i.i, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bnx2fc_unsol_els_work, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_wq to i32))
  %42 = load ptr, ptr @bnx2fc_wq, align 4
  %call.i129 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %unsol_els_work) #12
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %conv14 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %conv14) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end50, %do.end45, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_TGT_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_fc_crc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_unsol_els_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fp2 = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %fp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp2, align 4
  %hba3 = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %hba3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba3, align 4
  %hba_lock.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock.i) #12
  %vports.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 42
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %blport.0.in.i = phi ptr [ %vports.i, %entry ], [ %blport.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %blport.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %blport.0.i = load ptr, ptr %blport.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %blport.0.i, %vports.i
  br i1 %cmp.not.i, label %is_valid_lport.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %lport2.i = getelementptr inbounds %struct.bnx2fc_lport, ptr %blport.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %lport2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport2.i, align 4
  %cmp3.i = icmp eq ptr %8, %1
  br i1 %cmp3.i, label %if.then, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

is_valid_lport.exit:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i) #12
  br label %if.end

if.then:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i) #12
  tail call void @fc_exch_recv(ptr noundef %1, ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %is_valid_lport.exit
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_cq_compl(ptr noundef %tgt, i16 noundef zeroext %wqe, ptr noundef %rq_data, i8 noundef zeroext %num_rq, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hba2 = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba2, align 4
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #12
  %6 = and i16 %wqe, 16383
  %cmd_mgr = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_mgr, align 8
  %cmds = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmds, align 4
  %idxprom = zext i16 %6 to i32
  %arrayidx = getelementptr ptr, ptr %10, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_type6 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cmd_type6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd_type6, align 2
  %var_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %var_ctx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %var_ctx, align 4
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  %conv9 = and i8 %18, 15
  %19 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.164)
  switch i8 %14, label %do.end72 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb34
    i8 3, label %sw.bb35
    i8 4, label %sw.bb37
    i8 5, label %sw.bb62
    i8 6, label %sw.bb65
  ]

sw.bb:                                            ; preds = %if.end
  %trunc144 = trunc i16 %17 to i4
  %20 = zext i4 %trunc144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.165)
  switch i4 %trunc144, label %do.end28 [
    i4 1, label %if.then14
    i4 7, label %if.then20
    i4 -7, label %if.then24
  ]

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bnx2fc_process_scsi_cmd_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq, ptr noundef %rq_data) #12
  br label %cleanup

if.then20:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bnx2fc_process_abts_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq) #12
  br label %cleanup

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bnx2fc_process_cleanup_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq) #12
  br label %cleanup

do.end28:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv11 = zext i8 %conv9 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv11) #15
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %12, ptr noundef nonnull @.str.20) #12
  tail call void @bnx2fc_process_tm_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq, ptr noundef %rq_data) #12
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %12, ptr noundef nonnull @.str.21) #12
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !292
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !293

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #12
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  %trunc = trunc i16 %17 to i4
  %22 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.166)
  switch i4 %trunc, label %do.end55 [
    i4 1, label %if.then41
    i4 7, label %if.then46
    i4 -7, label %if.then51
  ]

if.then41:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bnx2fc_process_els_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq) #12
  br label %cleanup

if.then46:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bnx2fc_process_abts_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq) #12
  br label %cleanup

if.then51:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bnx2fc_process_cleanup_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %num_rq) #12
  br label %cleanup

do.end55:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  %conv38 = zext i8 %conv9 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv38) #15
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %12, ptr noundef nonnull @.str.25) #12
  %refcount63 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount63, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @llvm.prefetch.p0(ptr %refcount63, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount63, ptr %refcount63, i32 1, ptr elementtype(i32) %refcount63) #12, !srcloc !292
  %asmresult.i.i.i.i.i.i.i129 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i129)
  %cmp.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i.i129, 1
  br i1 %cmp.i.i.i.i130, label %if.then.i134, label %if.end5.i.i.i.i132

if.end5.i.i.i.i132:                               ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i129)
  %.not.i.i.i.i131 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i129, 0
  br i1 %.not.i.i.i.i131, label %if.end5.i.i.i.i132.cleanup_crit_edge, label %if.then10.i.i.i.i133, !prof !293

if.end5.i.i.i.i132.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i133:                             ; preds = %if.end5.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount63, i32 noundef 3) #12
  br label %cleanup

if.then.i134:                                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount63) #12
  br label %cleanup

sw.bb65:                                          ; preds = %if.end
  %xid66 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %12, i32 0, i32 18
  %24 = ptrtoint ptr %xid66 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %xid66, align 4
  %conv67 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %12, ptr noundef nonnull @.str.26, i32 noundef %conv67) #12
  tail call void @bnx2fc_process_seq_cleanup_compl(ptr noundef nonnull %12, ptr noundef %task, i8 noundef zeroext %conv9) #12
  %refcount68 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount68, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @llvm.prefetch.p0(ptr %refcount68, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount68, ptr %refcount68, i32 1, ptr elementtype(i32) %refcount68) #12, !srcloc !292
  %asmresult.i.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i137)
  %cmp.i.i.i.i138 = icmp eq i32 %asmresult.i.i.i.i.i.i.i137, 1
  br i1 %cmp.i.i.i.i138, label %if.then.i142, label %if.end5.i.i.i.i140

if.end5.i.i.i.i140:                               ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i137)
  %.not.i.i.i.i139 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i137, 0
  br i1 %.not.i.i.i.i139, label %if.end5.i.i.i.i140.cleanup_crit_edge, label %if.then10.i.i.i.i141, !prof !293

if.end5.i.i.i.i140.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i141:                             ; preds = %if.end5.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount68, i32 noundef 3) #12
  br label %cleanup

if.then.i142:                                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount68) #12
  br label %cleanup

do.end72:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv10 = zext i8 %14 to i32
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv10) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.then.i142, %if.then10.i.i.i.i141, %if.end5.i.i.i.i140.cleanup_crit_edge, %if.then.i134, %if.then10.i.i.i.i133, %if.end5.i.i.i.i132.cleanup_crit_edge, %do.end55, %if.then51, %if.then46, %if.then41, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.bb34, %do.end28, %if.then24, %if.then20, %if.then14, %do.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_scsi_cmd_compl(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_abts_compl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_cleanup_compl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_IO_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_tm_compl(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_cmd_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_els_compl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_seq_cleanup_compl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_arm_cq(ptr nocapture noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_db1 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  tail call void @arm_heavy_mb() #12
  %cq_cons_idx = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 24
  %0 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cq_cons_idx, align 4
  %cq_curr_toggle_bit = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 25
  %2 = ptrtoint ptr %cq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cq_curr_toggle_bit, align 2
  %conv2 = zext i8 %3 to i16
  %shl = shl i16 %conv2, 15
  %or = or i16 %shl, %1
  %doorbell_cq_cons = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 16, i32 2
  %4 = ptrtoint ptr %doorbell_cq_cons to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or, ptr %doorbell_cq_cons, align 2
  %5 = ptrtoint ptr %rx_db1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_db1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  %ctx_base = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 3
  %7 = ptrtoint ptr %ctx_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #12, !srcloc !297
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_process_new_cqes(ptr noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  %rq_data_buff.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 55
  tail call void @_raw_spin_lock_bh(ptr noundef %cq_lock) #12
  %cq1 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 22
  %0 = ptrtoint ptr %cq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %cq_lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq_cons_idx = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 24
  %2 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cq_cons_idx, align 4
  %conv = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.fcoe_cqe, ptr %1, i32 %conv
  %cq_curr_toggle_bit = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 25
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv596 = zext i16 %5 to i32
  %and97 = and i32 %conv596, 32768
  %6 = ptrtoint ptr %cq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cq_curr_toggle_bit, align 2
  %conv698 = zext i8 %7 to i32
  %shl99 = shl nuw nsw i32 %conv698, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and97, i32 %shl99)
  %cmp100 = icmp eq i32 %and97, %shl99
  br i1 %cmp100, label %while.body.lr.ph, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

while.body.lr.ph:                                 ; preds = %if.end
  %tgt_lock126.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 54
  %rq_cons_idx.i358.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 30
  %rq.i361.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 27
  %rq_prod_idx.i369.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 29
  %conn_db.i376.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 44
  %dev_type.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %conv5104 = phi i32 [ %conv596, %while.body.lr.ph ], [ %conv5, %if.end30.while.body_crit_edge ]
  %8 = phi i16 [ %5, %while.body.lr.ph ], [ %215, %if.end30.while.body_crit_edge ]
  %num_cqes.0103 = phi i32 [ 0, %while.body.lr.ph ], [ %inc19, %if.end30.while.body_crit_edge ]
  %num_free_sqes.0102 = phi i32 [ 0, %while.body.lr.ph ], [ %num_free_sqes.1, %if.end30.while.body_crit_edge ]
  %cqe.0101 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %cqe.1, %if.end30.while.body_crit_edge ]
  %and9 = and i32 %conv5104, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.i.i.i, label %if.then11

if.then11:                                        ; preds = %while.body
  %9 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tgt, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba1.i, align 4
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.70, i32 noundef %conv5104) #12
  %and.i = and i32 %conv5104, 3
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %and.i, label %do.end208.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb23.i
    i32 2, label %sw.bb125.i
  ]

sw.bb.i:                                          ; preds = %if.then11
  %and4.i = lshr i32 %conv5104, 2
  %16 = and i32 %and4.i, 4095
  %sub.i = add nuw nsw i32 %16, 255
  %div320.i = lshr i32 %sub.i, 8
  call void @_raw_spin_lock_bh(ptr noundef %tgt_lock126.i) #12
  %17 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq_cons_idx.i358.i, align 4
  %add.i.i = add i32 %18, %div320.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 16
  br i1 %cmp.i.i, label %bnx2fc_get_next_rqe.exit.thread.i, label %bnx2fc_get_next_rqe.exit.i

bnx2fc_get_next_rqe.exit.thread.i:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  br label %if.end8.i.i

bnx2fc_get_next_rqe.exit.i:                       ; preds = %sw.bb.i
  %19 = ptrtoint ptr %rq.i361.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rq.i361.i, align 4
  %mul.i.i = shl i32 %18, 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i)
  %cmp7.i.i = icmp eq i32 %add.i.i, 16
  %spec.select.i.i = select i1 %cmp7.i.i, i32 0, i32 %add.i.i
  %21 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i.i, ptr %rq_cons_idx.i358.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %bnx2fc_get_next_rqe.exit.i.if.end8.i.i_crit_edge, label %if.end16.thread.i

bnx2fc_get_next_rqe.exit.i.if.end8.i.i_crit_edge: ; preds = %bnx2fc_get_next_rqe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end16.thread.i:                                ; preds = %bnx2fc_get_next_rqe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @bnx2fc_process_l2_frame_compl(ptr noundef %tgt, ptr noundef nonnull %add.ptr.i.i, i32 noundef %16, i16 noundef zeroext -1) #12
  br label %if.end20.i

if.end8.i.i:                                      ; preds = %bnx2fc_get_next_rqe.exit.i.if.end8.i.i_crit_edge, %bnx2fc_get_next_rqe.exit.thread.i
  %mul.i = and i32 %sub.i, 7936
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 2592) #17
  %tobool9.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp387.not.i = icmp eq i32 %16, 0
  br i1 %cmp387.not.i, label %for.cond.preheader.i.if.end16.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end16.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div320.i, i32 1) #12
  br label %for.body.i

if.then10.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.71) #12
  br label %if.end16

for.body.i:                                       ; preds = %bnx2fc_get_next_rqe.exit333.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf1.0389.i = phi ptr [ %call9.i.i, %for.body.lr.ph.i ], [ %add.ptr.i, %bnx2fc_get_next_rqe.exit333.i.for.body.i_crit_edge ]
  %i.0388.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %bnx2fc_get_next_rqe.exit333.i.for.body.i_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %tgt_lock126.i) #12
  %22 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_cons_idx.i358.i, align 4
  %add.i324.i = add i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i324.i)
  %cmp.i325.i = icmp ugt i32 %add.i324.i, 16
  br i1 %cmp.i325.i, label %for.body.i.bnx2fc_get_next_rqe.exit333.i_crit_edge, label %if.end.i331.i

for.body.i.bnx2fc_get_next_rqe.exit333.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnx2fc_get_next_rqe.exit333.i

if.end.i331.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %rq.i361.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rq.i361.i, align 4
  %mul.i327.i = shl nsw i32 %23, 8
  %add.ptr.i328.i = getelementptr i8, ptr %25, i32 %mul.i327.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i324.i)
  %cmp7.i329.i = icmp eq i32 %add.i324.i, 16
  %spec.select.i330.i = select i1 %cmp7.i329.i, i32 0, i32 %add.i324.i
  %26 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i330.i, ptr %rq_cons_idx.i358.i, align 4
  br label %bnx2fc_get_next_rqe.exit333.i

bnx2fc_get_next_rqe.exit333.i:                    ; preds = %if.end.i331.i, %for.body.i.bnx2fc_get_next_rqe.exit333.i_crit_edge
  %retval.0.i332.i = phi ptr [ %add.ptr.i328.i, %if.end.i331.i ], [ null, %for.body.i.bnx2fc_get_next_rqe.exit333.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  %27 = call ptr @memcpy(ptr %buf1.0389.i, ptr %retval.0.i332.i, i32 256)
  %add.ptr.i = getelementptr i8, ptr %buf1.0389.i, i32 256
  %inc.i = add nuw nsw i32 %i.0388.i, 1
  %exitcond393.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond393.not.i, label %bnx2fc_get_next_rqe.exit333.i.if.end16.i_crit_edge, label %bnx2fc_get_next_rqe.exit333.i.for.body.i_crit_edge

bnx2fc_get_next_rqe.exit333.i.for.body.i_crit_edge: ; preds = %bnx2fc_get_next_rqe.exit333.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

bnx2fc_get_next_rqe.exit333.i.if.end16.i_crit_edge: ; preds = %bnx2fc_get_next_rqe.exit333.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %bnx2fc_get_next_rqe.exit333.i.if.end16.i_crit_edge, %for.cond.preheader.i.if.end16.i_crit_edge
  %rq_data.0.lcssa.i = phi ptr [ null, %for.cond.preheader.i.if.end16.i_crit_edge ], [ %retval.0.i332.i, %bnx2fc_get_next_rqe.exit333.i.if.end16.i_crit_edge ]
  call void @bnx2fc_process_l2_frame_compl(ptr noundef %tgt, ptr noundef nonnull %call9.i.i, i32 noundef %16, i16 noundef zeroext -1) #12
  %cmp17.not.i = icmp eq ptr %call9.i.i, %rq_data.0.lcssa.i
  br i1 %cmp17.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then19.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end20.i_crit_edge, %if.end16.thread.i
  call void @_raw_spin_lock_bh(ptr noundef %tgt_lock126.i) #12
  %28 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i335.i = add i32 %29, %div320.i
  %and.i.i = and i32 %add.i335.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i)
  %cmp.i336.i = icmp eq i32 %and.i.i, 16
  %add2.i.i = add i32 %add.i335.i, 32752
  %spec.select.i337.i = select i1 %cmp.i336.i, i32 %add2.i.i, i32 %add.i335.i
  %30 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i337.i, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i = trunc i32 %spec.select.i337.i to i16
  %31 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i = getelementptr inbounds %struct.fcoe_conn_db, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %rq_prod.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv5.i.i, ptr %rq_prod.i.i, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  br label %if.end16

sw.bb23.i:                                        ; preds = %if.then11
  call void @_raw_spin_lock_bh(ptr noundef %tgt_lock126.i) #12
  %34 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_cons_idx.i358.i, align 4
  %add.i339.i = add i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i339.i)
  %cmp.i340.i = icmp ugt i32 %add.i339.i, 16
  br i1 %cmp.i340.i, label %sw.bb23.i.bnx2fc_get_next_rqe.exit348.i_crit_edge, label %if.end.i346.i

sw.bb23.i.bnx2fc_get_next_rqe.exit348.i_crit_edge: ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnx2fc_get_next_rqe.exit348.i

if.end.i346.i:                                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %rq.i361.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq.i361.i, align 4
  %mul.i342.i = shl nsw i32 %35, 8
  %add.ptr.i343.i = getelementptr i8, ptr %37, i32 %mul.i342.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i339.i)
  %cmp7.i344.i = icmp eq i32 %add.i339.i, 16
  %spec.select.i345.i = select i1 %cmp7.i344.i, i32 0, i32 %add.i339.i
  %38 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i345.i, ptr %rq_cons_idx.i358.i, align 4
  br label %bnx2fc_get_next_rqe.exit348.i

bnx2fc_get_next_rqe.exit348.i:                    ; preds = %if.end.i346.i, %sw.bb23.i.bnx2fc_get_next_rqe.exit348.i_crit_edge
  %retval.0.i347.i = phi ptr [ %add.ptr.i343.i, %if.end.i346.i ], [ null, %sw.bb23.i.bnx2fc_get_next_rqe.exit348.i_crit_edge ]
  %ox_id.i = getelementptr inbounds %struct.fcoe_err_report_entry, ptr %retval.0.i347.i, i32 0, i32 1, i32 11
  %39 = ptrtoint ptr %ox_id.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ox_id.i, align 2
  %conv26.i = zext i16 %40 to i32
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.72, i32 noundef %conv26.i) #12
  %err_warn_bitmap_hi.i = getelementptr inbounds %struct.fcoe_partial_err_report_entry, ptr %retval.0.i347.i, i32 0, i32 1
  %41 = ptrtoint ptr %err_warn_bitmap_hi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err_warn_bitmap_hi.i, align 4
  %43 = ptrtoint ptr %retval.0.i347.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %retval.0.i347.i, align 4
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.73, i32 noundef %42, i32 noundef %44) #12
  %tx_buf_off.i = getelementptr inbounds %struct.fcoe_partial_err_report_entry, ptr %retval.0.i347.i, i32 0, i32 2
  %45 = ptrtoint ptr %tx_buf_off.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_buf_off.i, align 4
  %rx_buf_off.i = getelementptr inbounds %struct.fcoe_partial_err_report_entry, ptr %retval.0.i347.i, i32 0, i32 3
  %47 = ptrtoint ptr %rx_buf_off.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_buf_off.i, align 4
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.74, i32 noundef %46, i32 noundef %48) #12
  %max_xid.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %14, i32 0, i32 12
  %49 = ptrtoint ptr %max_xid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %max_xid.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %50)
  %cmp32.i = icmp ugt i16 %40, %50
  br i1 %cmp32.i, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %bnx2fc_get_next_rqe.exit348.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.75, i32 noundef %conv26.i) #12
  br label %ret_err_rqe.i

if.end36.i:                                       ; preds = %bnx2fc_get_next_rqe.exit348.i
  %cmd_mgr.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %14, i32 0, i32 5
  %51 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_mgr.i, align 8
  %cmds.i = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %54, i32 %conv26.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %tobool37.not.i = icmp eq ptr %56, null
  br i1 %tobool37.not.i, label %if.end36.i.ret_err_rqe.i_crit_edge, label %if.end39.i

if.end36.i.ret_err_rqe.i_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_err_rqe.i

if.end39.i:                                       ; preds = %if.end36.i
  %cmd_type.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cmd_type.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cmd_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp41.not.i = icmp eq i8 %58, 1
  br i1 %cmp41.not.i, label %if.end45.i, label %do.end.i

do.end.i:                                         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #15
  br label %ret_err_rqe.i

if.end45.i:                                       ; preds = %if.end39.i
  %req_flags.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %56, i32 0, i32 24
  %call46.i = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %req_flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %56, ptr noundef nonnull @.str.78) #12
  br label %ret_err_rqe.i

if.end49.i:                                       ; preds = %if.end45.i
  %59 = ptrtoint ptr %err_warn_bitmap_hi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %err_warn_bitmap_hi.i, align 4
  %conv52.i = zext i32 %60 to i64
  %shl.i = shl nuw i64 %conv52.i, 32
  %61 = ptrtoint ptr %retval.0.i347.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %retval.0.i347.i, align 4
  %conv55.i = zext i32 %62 to i64
  %or.i = or i64 %shl.i, %conv55.i
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc66.i.for.body59.i_crit_edge, %if.end49.i
  %i.1386.i = phi i32 [ 0, %if.end49.i ], [ %inc67.i, %for.inc66.i.for.body59.i_crit_edge ]
  %sh_prom.i = zext i32 %i.1386.i to i64
  %shl60.i = shl nuw i64 1, %sh_prom.i
  %and61.i = and i64 %shl60.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61.i)
  %tobool62.not.i = icmp eq i64 %and61.i, 0
  br i1 %tobool62.not.i, label %for.inc66.i, label %if.then63.i

if.then63.i:                                      ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast319.i = and i32 %i.1386.i, 255
  br label %for.end68.i

for.inc66.i:                                      ; preds = %for.body59.i
  %inc67.i = add nuw nsw i32 %i.1386.i, 1
  %exitcond392.not.i = icmp eq i32 %inc67.i, 63
  br i1 %exitcond392.not.i, label %for.inc66.i.for.end68.i_crit_edge, label %for.inc66.i.for.body59.i_crit_edge

for.inc66.i.for.body59.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59.i

for.inc66.i.for.end68.i_crit_edge:                ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end68.i

for.end68.i:                                      ; preds = %for.inc66.i.for.end68.i_crit_edge, %if.then63.i
  %err_warn.0.i = phi i32 [ %phi.cast319.i, %if.then63.i ], [ 255, %for.inc66.i.for.end68.i_crit_edge ]
  %63 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %req_flags.i, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool71.not.i = icmp eq i32 %65, 0
  br i1 %tobool71.not.i, label %if.end79.i, label %do.end75.i

do.end75.i:                                       ; preds = %for.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %conv26.i) #15
  br label %ret_err_rqe.i

if.end79.i:                                       ; preds = %for.end68.i
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.82, i32 noundef %err_warn.0.i) #12
  %66 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp81.not.i = icmp eq i32 %67, 1
  br i1 %cmp81.not.i, label %if.end84.i, label %if.end79.i.skip_rec.i_crit_edge

if.end79.i.skip_rec.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rec.i

if.end84.i:                                       ; preds = %if.end79.i
  %trunc.i = trunc i32 %err_warn.0.i to i8
  %68 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %trunc.i, label %if.end84.i.skip_rec.i_crit_edge [
    i8 61, label %if.end84.i.sw.bb86.i_crit_edge
    i8 20, label %if.end84.i.sw.bb86.i_crit_edge119
    i8 45, label %if.end84.i.sw.bb86.i_crit_edge120
    i8 23, label %if.end84.i.sw.bb86.i_crit_edge121
    i8 16, label %if.end84.i.sw.bb86.i_crit_edge122
    i8 24, label %if.end84.i.sw.bb86.i_crit_edge123
  ]

if.end84.i.sw.bb86.i_crit_edge123:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb86.i

if.end84.i.sw.bb86.i_crit_edge122:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb86.i

if.end84.i.sw.bb86.i_crit_edge121:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb86.i

if.end84.i.sw.bb86.i_crit_edge120:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb86.i

if.end84.i.sw.bb86.i_crit_edge119:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb86.i

if.end84.i.sw.bb86.i_crit_edge:                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb86.i

if.end84.i.skip_rec.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rec.i

sw.bb86.i:                                        ; preds = %if.end84.i.sw.bb86.i_crit_edge, %if.end84.i.sw.bb86.i_crit_edge119, %if.end84.i.sw.bb86.i_crit_edge120, %if.end84.i.sw.bb86.i_crit_edge121, %if.end84.i.sw.bb86.i_crit_edge122, %if.end84.i.sw.bb86.i_crit_edge123
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.83, i32 noundef %conv26.i) #12
  %err_entry88.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %56, i32 0, i32 19
  %69 = call ptr @memcpy(ptr %err_entry88.i, ptr %retval.0.i347.i, i32 40)
  %70 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %req_flags.i, align 4
  %72 = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool91.not.i = icmp eq i32 %72, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %do.end102.i

if.then92.i:                                      ; preds = %sw.bb86.i
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  %call94.i = call i32 @bnx2fc_send_rec(ptr noundef nonnull %56) #12
  call void @_raw_spin_lock_bh(ptr noundef %tgt_lock126.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool96.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool96.not.i, label %if.then92.i.ret_err_rqe.i_crit_edge, label %if.then92.i.skip_rec.i_crit_edge

if.then92.i.skip_rec.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rec.i

if.then92.i.ret_err_rqe.i_crit_edge:              ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_err_rqe.i

do.end102.i:                                      ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #14
  %call104.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #15
  br label %ret_err_rqe.i

skip_rec.i:                                       ; preds = %if.then92.i.skip_rec.i_crit_edge, %if.end84.i.skip_rec.i_crit_edge, %if.end79.i.skip_rec.i_crit_edge
  call void @_set_bit(i32 noundef 2, ptr noundef %req_flags.i) #12
  %timeout_work.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %56, i32 0, i32 13
  %call107.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #12
  br i1 %call107.i, label %if.then108.i, label %skip_rec.i.if.end110.i_crit_edge

skip_rec.i.if.end110.i_crit_edge:                 ; preds = %skip_rec.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

if.then108.i:                                     ; preds = %skip_rec.i
  %refcount.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %56, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !291
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !292
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end110.i_crit_edge, label %if.then10.i.i.i.i, !prof !293

if.end5.i.i.i.i.if.end110.i_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.end110.i

if.then.i:                                        ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  call void @bnx2fc_cmd_release(ptr noundef %refcount.i) #12
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end110.i_crit_edge, %skip_rec.i.if.end110.i_crit_edge
  %call111.i = call i32 @bnx2fc_initiate_abts(ptr noundef nonnull %56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call111.i)
  %cmp112.not.i = icmp eq i32 %call111.i, 8194
  br i1 %cmp112.not.i, label %if.end110.i.ret_err_rqe.i_crit_edge, label %do.end117.i

if.end110.i.ret_err_rqe.i_crit_edge:              ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_err_rqe.i

do.end117.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #14
  %xid119.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %56, i32 0, i32 18
  %74 = ptrtoint ptr %xid119.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %xid119.i, align 4
  %conv120.i = zext i16 %75 to i32
  %call121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv120.i) #15
  %call122.i = call i32 @bnx2fc_initiate_cleanup(ptr noundef nonnull %56) #12
  br label %ret_err_rqe.i

ret_err_rqe.i:                                    ; preds = %do.end117.i, %if.end110.i.ret_err_rqe.i_crit_edge, %do.end102.i, %if.then92.i.ret_err_rqe.i_crit_edge, %do.end75.i, %if.then48.i, %do.end.i, %if.end36.i.ret_err_rqe.i_crit_edge, %if.then34.i
  %76 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i350.i = add i32 %77, 1
  %and.i351.i = and i32 %add.i350.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i351.i)
  %cmp.i352.i = icmp eq i32 %and.i351.i, 16
  %add2.i353.i = add i32 %77, 32753
  %spec.select.i354.i = select i1 %cmp.i352.i, i32 %add2.i353.i, i32 %add.i350.i
  %78 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %spec.select.i354.i, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i355.i = trunc i32 %spec.select.i354.i to i16
  %79 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i357.i = getelementptr inbounds %struct.fcoe_conn_db, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %rq_prod.i357.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv5.i355.i, ptr %rq_prod.i357.i, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  br label %if.end16

sw.bb125.i:                                       ; preds = %if.then11
  call void @_raw_spin_lock_bh(ptr noundef %tgt_lock126.i) #12
  %82 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rq_cons_idx.i358.i, align 4
  %add.i359.i = add i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i359.i)
  %cmp.i360.i = icmp ugt i32 %add.i359.i, 16
  br i1 %cmp.i360.i, label %sw.bb125.i.bnx2fc_get_next_rqe.exit368.i_crit_edge, label %if.end.i366.i

sw.bb125.i.bnx2fc_get_next_rqe.exit368.i_crit_edge: ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnx2fc_get_next_rqe.exit368.i

if.end.i366.i:                                    ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %rq.i361.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rq.i361.i, align 4
  %mul.i362.i = shl nsw i32 %83, 8
  %add.ptr.i363.i = getelementptr i8, ptr %85, i32 %mul.i362.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i359.i)
  %cmp7.i364.i = icmp eq i32 %add.i359.i, 16
  %spec.select.i365.i = select i1 %cmp7.i364.i, i32 0, i32 %add.i359.i
  %86 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select.i365.i, ptr %rq_cons_idx.i358.i, align 4
  br label %bnx2fc_get_next_rqe.exit368.i

bnx2fc_get_next_rqe.exit368.i:                    ; preds = %if.end.i366.i, %sw.bb125.i.bnx2fc_get_next_rqe.exit368.i_crit_edge
  %retval.0.i367.i = phi ptr [ %add.ptr.i363.i, %if.end.i366.i ], [ null, %sw.bb125.i.bnx2fc_get_next_rqe.exit368.i_crit_edge ]
  %ox_id129.i = getelementptr inbounds %struct.fcoe_err_report_entry, ptr %retval.0.i367.i, i32 0, i32 1, i32 11
  %87 = ptrtoint ptr %ox_id129.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ox_id129.i, align 2
  %conv130.i = zext i16 %88 to i32
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.90, i32 noundef %conv130.i) #12
  %err_warn_bitmap_hi132.i = getelementptr inbounds %struct.fcoe_partial_err_report_entry, ptr %retval.0.i367.i, i32 0, i32 1
  %89 = ptrtoint ptr %err_warn_bitmap_hi132.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %err_warn_bitmap_hi132.i, align 4
  %91 = ptrtoint ptr %retval.0.i367.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %retval.0.i367.i, align 4
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.91, i32 noundef %90, i32 noundef %92) #12
  %tx_buf_off136.i = getelementptr inbounds %struct.fcoe_partial_err_report_entry, ptr %retval.0.i367.i, i32 0, i32 2
  %93 = ptrtoint ptr %tx_buf_off136.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_buf_off136.i, align 4
  %rx_buf_off138.i = getelementptr inbounds %struct.fcoe_partial_err_report_entry, ptr %retval.0.i367.i, i32 0, i32 3
  %95 = ptrtoint ptr %rx_buf_off138.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_buf_off138.i, align 4
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.92, i32 noundef %94, i32 noundef %96) #12
  %max_xid140.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %14, i32 0, i32 12
  %97 = ptrtoint ptr %max_xid140.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max_xid140.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %98)
  %cmp142.i = icmp ugt i16 %88, %98
  br i1 %cmp142.i, label %if.then144.i, label %if.end146.i

if.then144.i:                                     ; preds = %bnx2fc_get_next_rqe.exit368.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.75, i32 noundef %conv130.i) #12
  br label %ret_warn_rqe.i

if.end146.i:                                      ; preds = %bnx2fc_get_next_rqe.exit368.i
  %99 = ptrtoint ptr %err_warn_bitmap_hi132.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %err_warn_bitmap_hi132.i, align 4
  %conv149.i = zext i32 %100 to i64
  %shl150.i = shl nuw i64 %conv149.i, 32
  %101 = ptrtoint ptr %retval.0.i367.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %retval.0.i367.i, align 4
  %conv153.i = zext i32 %102 to i64
  %or154.i = or i64 %shl150.i, %conv153.i
  br label %for.body158.i

for.body158.i:                                    ; preds = %for.inc166.i.for.body158.i_crit_edge, %if.end146.i
  %i.2385.i = phi i32 [ 0, %if.end146.i ], [ %inc167.i, %for.inc166.i.for.body158.i_crit_edge ]
  %sh_prom159.i = zext i32 %i.2385.i to i64
  %shl160.i = shl nuw i64 1, %sh_prom159.i
  %and161.i = and i64 %shl160.i, %or154.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and161.i)
  %tobool162.not.i = icmp eq i64 %and161.i, 0
  br i1 %tobool162.not.i, label %for.inc166.i, label %if.then163.i

if.then163.i:                                     ; preds = %for.body158.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.i = and i32 %i.2385.i, 255
  br label %for.end168.i

for.inc166.i:                                     ; preds = %for.body158.i
  %inc167.i = add nuw nsw i32 %i.2385.i, 1
  %exitcond.not.i = icmp eq i32 %inc167.i, 63
  br i1 %exitcond.not.i, label %for.inc166.i.for.end168.i_crit_edge, label %for.inc166.i.for.body158.i_crit_edge

for.inc166.i.for.body158.i_crit_edge:             ; preds = %for.inc166.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body158.i

for.inc166.i.for.end168.i_crit_edge:              ; preds = %for.inc166.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end168.i

for.end168.i:                                     ; preds = %for.inc166.i.for.end168.i_crit_edge, %if.then163.i
  %err_warn.1.i = phi i32 [ %phi.cast.i, %if.then163.i ], [ 255, %for.inc166.i.for.end168.i_crit_edge ]
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.93, i32 noundef %err_warn.1.i) #12
  %cmd_mgr170.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %14, i32 0, i32 5
  %103 = ptrtoint ptr %cmd_mgr170.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cmd_mgr170.i, align 8
  %cmds171.i = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %cmds171.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cmds171.i, align 4
  %arrayidx173.i = getelementptr ptr, ptr %106, i32 %conv130.i
  %107 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx173.i, align 4
  %tobool174.not.i = icmp eq ptr %108, null
  br i1 %tobool174.not.i, label %for.end168.i.ret_warn_rqe.i_crit_edge, label %if.end176.i

for.end168.i.ret_warn_rqe.i_crit_edge:            ; preds = %for.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_warn_rqe.i

if.end176.i:                                      ; preds = %for.end168.i
  %cmd_type177.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %cmd_type177.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cmd_type177.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp179.not.i = icmp eq i8 %110, 1
  br i1 %cmp179.not.i, label %if.end187.i, label %do.end184.i

do.end184.i:                                      ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #14
  %call186.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #15
  br label %ret_warn_rqe.i

if.end187.i:                                      ; preds = %if.end176.i
  %err_entry188.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %108, i32 0, i32 19
  %111 = call ptr @memcpy(ptr %err_entry188.i, ptr %retval.0.i367.i, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %err_warn.1.i)
  %cmp190.i = icmp eq i32 %err_warn.1.i, 61
  br i1 %cmp190.i, label %do.body194.i, label %if.else202.i

do.body194.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_hwi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 845, 0\0A.popsection", ""() #12, !srcloc !298
  unreachable

if.else202.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.96) #12
  br label %ret_warn_rqe.i

ret_warn_rqe.i:                                   ; preds = %if.else202.i, %do.end184.i, %for.end168.i.ret_warn_rqe.i_crit_edge, %if.then144.i
  %112 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i370.i = add i32 %113, 1
  %and.i371.i = and i32 %add.i370.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i371.i)
  %cmp.i372.i = icmp eq i32 %and.i371.i, 16
  %add2.i373.i = add i32 %113, 32753
  %spec.select.i374.i = select i1 %cmp.i372.i, i32 %add2.i373.i, i32 %add.i370.i
  %114 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.select.i374.i, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i375.i = trunc i32 %spec.select.i374.i to i16
  %115 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i377.i = getelementptr inbounds %struct.fcoe_conn_db, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %rq_prod.i377.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv5.i375.i, ptr %rq_prod.i377.i, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock126.i) #12
  br label %if.end16

do.end208.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call210.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #15
  br label %if.end16

if.end.i.i.i:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %118 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %118) #12
  %rem.i = urem i32 %conv5104, %call4.i.i.i
  %119 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tgt, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %hba2.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %hba2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hba2.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rq_data_buff.i) #12
  %conv.i65 = and i32 %conv5104, 16383
  %max_tasks.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %max_tasks.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_tasks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i65, i32 %126)
  %cmp.not.i = icmp ult i32 %conv.i65, %126
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i66

do.end.i66:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #15
  br label %bnx2fc_pending_work.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %div100.i = lshr i32 %conv.i65, 5
  %rem8.i = and i32 %conv5104, 31
  %task_ctx.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %124, i32 0, i32 16
  %127 = ptrtoint ptr %task_ctx.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task_ctx.i, align 4
  %arrayidx.i67 = getelementptr ptr, ptr %128, i32 %div100.i
  %129 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i67, align 4
  %arrayidx9.i = getelementptr %struct.fcoe_task_ctx_entry, ptr %130, i32 %rem8.i
  %var_ctx.i = getelementptr %struct.fcoe_task_ctx_entry, ptr %130, i32 %rem8.i, i32 2, i32 1
  %131 = ptrtoint ptr %var_ctx.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %var_ctx.i, align 4
  %133 = trunc i16 %132 to i8
  %134 = lshr i8 %133, 4
  %conv12.i = and i8 %134, 7
  %135 = call ptr @memset(ptr %rq_data_buff.i, i32 0, i32 256)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12.i)
  %tobool.not.i68 = icmp eq i8 %conv12.i, 0
  br i1 %tobool.not.i68, label %if.end.i.do.body37.i_crit_edge, label %if.end14.i

if.end.i.do.body37.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

if.end14.i:                                       ; preds = %if.end.i
  %136 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rq_cons_idx.i358.i, align 4
  %add.i.i70 = add i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i70)
  %cmp.i.i71 = icmp ugt i32 %add.i.i70, 16
  br i1 %cmp.i.i71, label %if.end14.i.bnx2fc_get_next_rqe.exit.i77_crit_edge, label %if.end.i.i

if.end14.i.bnx2fc_get_next_rqe.exit.i77_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnx2fc_get_next_rqe.exit.i77

if.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %rq.i361.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rq.i361.i, align 4
  %mul.i.i73 = shl nsw i32 %137, 8
  %add.ptr.i.i74 = getelementptr i8, ptr %139, i32 %mul.i.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i70)
  %cmp7.i.i75 = icmp eq i32 %add.i.i70, 16
  %spec.select.i.i76 = select i1 %cmp7.i.i75, i32 0, i32 %add.i.i70
  %140 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %spec.select.i.i76, ptr %rq_cons_idx.i358.i, align 4
  br label %bnx2fc_get_next_rqe.exit.i77

bnx2fc_get_next_rqe.exit.i77:                     ; preds = %if.end.i.i, %if.end14.i.bnx2fc_get_next_rqe.exit.i77_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i74, %if.end.i.i ], [ null, %if.end14.i.bnx2fc_get_next_rqe.exit.i77_crit_edge ]
  %conv16.i = zext i8 %conv12.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv12.i)
  %cmp21117.i = icmp ugt i8 %conv12.i, 1
  br i1 %cmp21117.i, label %for.body.lr.ph.i78, label %bnx2fc_get_next_rqe.exit.i77.if.end24.i_crit_edge

bnx2fc_get_next_rqe.exit.i77.if.end24.i_crit_edge: ; preds = %bnx2fc_get_next_rqe.exit.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

for.body.lr.ph.i78:                               ; preds = %bnx2fc_get_next_rqe.exit.i77
  %141 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %rq_cons_idx.i.promoted.i = load i32, ptr %rq_cons_idx.i358.i, align 4
  br label %for.body.i79

for.body.i79:                                     ; preds = %bnx2fc_get_next_rqe.exit111.i.for.body.i79_crit_edge, %for.body.lr.ph.i78
  %142 = phi i32 [ %rq_cons_idx.i.promoted.i, %for.body.lr.ph.i78 ], [ %144, %bnx2fc_get_next_rqe.exit111.i.for.body.i79_crit_edge ]
  %i.0118.i = phi i32 [ 1, %for.body.lr.ph.i78 ], [ %inc.i80, %bnx2fc_get_next_rqe.exit111.i.for.body.i79_crit_edge ]
  %add.i102.i = add i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i102.i)
  %cmp.i103.i = icmp ugt i32 %add.i102.i, 16
  br i1 %cmp.i103.i, label %for.body.i79.bnx2fc_get_next_rqe.exit111.i_crit_edge, label %if.end.i109.i

for.body.i79.bnx2fc_get_next_rqe.exit111.i_crit_edge: ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnx2fc_get_next_rqe.exit111.i

if.end.i109.i:                                    ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i102.i)
  %cmp7.i107.i = icmp eq i32 %add.i102.i, 16
  %spec.select.i108.i = select i1 %cmp7.i107.i, i32 0, i32 %add.i102.i
  %143 = ptrtoint ptr %rq_cons_idx.i358.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %spec.select.i108.i, ptr %rq_cons_idx.i358.i, align 4
  br label %bnx2fc_get_next_rqe.exit111.i

bnx2fc_get_next_rqe.exit111.i:                    ; preds = %if.end.i109.i, %for.body.i79.bnx2fc_get_next_rqe.exit111.i_crit_edge
  %144 = phi i32 [ %142, %for.body.i79.bnx2fc_get_next_rqe.exit111.i_crit_edge ], [ %spec.select.i108.i, %if.end.i109.i ]
  %inc.i80 = add nuw nsw i32 %i.0118.i, 1
  %exitcond.not.i81 = icmp eq i32 %inc.i80, %conv16.i
  br i1 %exitcond.not.i81, label %bnx2fc_get_next_rqe.exit111.i.if.end24.i_crit_edge, label %bnx2fc_get_next_rqe.exit111.i.for.body.i79_crit_edge

bnx2fc_get_next_rqe.exit111.i.for.body.i79_crit_edge: ; preds = %bnx2fc_get_next_rqe.exit111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i79

bnx2fc_get_next_rqe.exit111.i.if.end24.i_crit_edge: ; preds = %bnx2fc_get_next_rqe.exit111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end24.i:                                       ; preds = %bnx2fc_get_next_rqe.exit111.i.if.end24.i_crit_edge, %bnx2fc_get_next_rqe.exit.i77.if.end24.i_crit_edge
  %tobool25.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool25.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then26.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %145 = call ptr @memcpy(ptr %rq_data_buff.i, ptr %retval.0.i.i, i32 256)
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end28.i_crit_edge
  %umax.i84 = call i32 @llvm.umax.i32(i32 %conv16.i, i32 1) #12
  %146 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i = add i32 %147, 1
  %and.i.i85 = and i32 %add.i112.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85)
  %cmp.i113.i = icmp eq i32 %and.i.i85, 16
  %add2.i.i86 = add i32 %147, 32753
  %spec.select.i114.i = select i1 %cmp.i113.i, i32 %add2.i.i86, i32 %add.i112.i
  %148 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %spec.select.i114.i, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87 = trunc i32 %spec.select.i114.i to i16
  %149 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88 = getelementptr inbounds %struct.fcoe_conn_db, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %rq_prod.i.i88 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv5.i.i87, ptr %rq_prod.i.i88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv12.i)
  %exitcond120.not.i = icmp ult i8 %conv12.i, 2
  br i1 %exitcond120.not.i, label %if.end28.i.do.body37.i_crit_edge, label %for.body33.i.1

if.end28.i.do.body37.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

for.body33.i.1:                                   ; preds = %if.end28.i
  %152 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i.1 = add i32 %153, 1
  %and.i.i85.1 = and i32 %add.i112.i.1, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85.1)
  %cmp.i113.i.1 = icmp eq i32 %and.i.i85.1, 16
  %add2.i.i86.1 = add i32 %153, 32753
  %spec.select.i114.i.1 = select i1 %cmp.i113.i.1, i32 %add2.i.i86.1, i32 %add.i112.i.1
  %154 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %spec.select.i114.i.1, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87.1 = trunc i32 %spec.select.i114.i.1 to i16
  %155 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88.1 = getelementptr inbounds %struct.fcoe_conn_db, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %rq_prod.i.i88.1 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv5.i.i87.1, ptr %rq_prod.i.i88.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i84)
  %exitcond120.not.i.1 = icmp eq i32 %umax.i84, 2
  br i1 %exitcond120.not.i.1, label %for.body33.i.1.do.body37.i_crit_edge, label %for.body33.i.2

for.body33.i.1.do.body37.i_crit_edge:             ; preds = %for.body33.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

for.body33.i.2:                                   ; preds = %for.body33.i.1
  %158 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i.2 = add i32 %159, 1
  %and.i.i85.2 = and i32 %add.i112.i.2, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85.2)
  %cmp.i113.i.2 = icmp eq i32 %and.i.i85.2, 16
  %add2.i.i86.2 = add i32 %159, 32753
  %spec.select.i114.i.2 = select i1 %cmp.i113.i.2, i32 %add2.i.i86.2, i32 %add.i112.i.2
  %160 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %spec.select.i114.i.2, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87.2 = trunc i32 %spec.select.i114.i.2 to i16
  %161 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88.2 = getelementptr inbounds %struct.fcoe_conn_db, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %rq_prod.i.i88.2 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv5.i.i87.2, ptr %rq_prod.i.i88.2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i84)
  %exitcond120.not.i.2 = icmp eq i32 %umax.i84, 3
  br i1 %exitcond120.not.i.2, label %for.body33.i.2.do.body37.i_crit_edge, label %for.body33.i.3

for.body33.i.2.do.body37.i_crit_edge:             ; preds = %for.body33.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

for.body33.i.3:                                   ; preds = %for.body33.i.2
  %164 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i.3 = add i32 %165, 1
  %and.i.i85.3 = and i32 %add.i112.i.3, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85.3)
  %cmp.i113.i.3 = icmp eq i32 %and.i.i85.3, 16
  %add2.i.i86.3 = add i32 %165, 32753
  %spec.select.i114.i.3 = select i1 %cmp.i113.i.3, i32 %add2.i.i86.3, i32 %add.i112.i.3
  %166 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %spec.select.i114.i.3, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87.3 = trunc i32 %spec.select.i114.i.3 to i16
  %167 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88.3 = getelementptr inbounds %struct.fcoe_conn_db, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %rq_prod.i.i88.3 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv5.i.i87.3, ptr %rq_prod.i.i88.3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax.i84)
  %exitcond120.not.i.3 = icmp eq i32 %umax.i84, 4
  br i1 %exitcond120.not.i.3, label %for.body33.i.3.do.body37.i_crit_edge, label %for.body33.i.4

for.body33.i.3.do.body37.i_crit_edge:             ; preds = %for.body33.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

for.body33.i.4:                                   ; preds = %for.body33.i.3
  %170 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i.4 = add i32 %171, 1
  %and.i.i85.4 = and i32 %add.i112.i.4, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85.4)
  %cmp.i113.i.4 = icmp eq i32 %and.i.i85.4, 16
  %add2.i.i86.4 = add i32 %171, 32753
  %spec.select.i114.i.4 = select i1 %cmp.i113.i.4, i32 %add2.i.i86.4, i32 %add.i112.i.4
  %172 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %spec.select.i114.i.4, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87.4 = trunc i32 %spec.select.i114.i.4 to i16
  %173 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88.4 = getelementptr inbounds %struct.fcoe_conn_db, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %rq_prod.i.i88.4 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv5.i.i87.4, ptr %rq_prod.i.i88.4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax.i84)
  %exitcond120.not.i.4 = icmp eq i32 %umax.i84, 5
  br i1 %exitcond120.not.i.4, label %for.body33.i.4.do.body37.i_crit_edge, label %for.body33.i.5

for.body33.i.4.do.body37.i_crit_edge:             ; preds = %for.body33.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

for.body33.i.5:                                   ; preds = %for.body33.i.4
  %176 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i.5 = add i32 %177, 1
  %and.i.i85.5 = and i32 %add.i112.i.5, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85.5)
  %cmp.i113.i.5 = icmp eq i32 %and.i.i85.5, 16
  %add2.i.i86.5 = add i32 %177, 32753
  %spec.select.i114.i.5 = select i1 %cmp.i113.i.5, i32 %add2.i.i86.5, i32 %add.i112.i.5
  %178 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %spec.select.i114.i.5, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87.5 = trunc i32 %spec.select.i114.i.5 to i16
  %179 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88.5 = getelementptr inbounds %struct.fcoe_conn_db, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %rq_prod.i.i88.5 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv5.i.i87.5, ptr %rq_prod.i.i88.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umax.i84)
  %exitcond120.not.i.5 = icmp eq i32 %umax.i84, 6
  br i1 %exitcond120.not.i.5, label %for.body33.i.5.do.body37.i_crit_edge, label %for.body33.i.6

for.body33.i.5.do.body37.i_crit_edge:             ; preds = %for.body33.i.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

for.body33.i.6:                                   ; preds = %for.body33.i.5
  call void @__sanitizer_cov_trace_pc() #14
  %182 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rq_prod_idx.i369.i, align 4
  %add.i112.i.6 = add i32 %183, 1
  %and.i.i85.6 = and i32 %add.i112.i.6, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i85.6)
  %cmp.i113.i.6 = icmp eq i32 %and.i.i85.6, 16
  %add2.i.i86.6 = add i32 %183, 32753
  %spec.select.i114.i.6 = select i1 %cmp.i113.i.6, i32 %add2.i.i86.6, i32 %add.i112.i.6
  %184 = ptrtoint ptr %rq_prod_idx.i369.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %spec.select.i114.i.6, ptr %rq_prod_idx.i369.i, align 4
  %conv5.i.i87.6 = trunc i32 %spec.select.i114.i.6 to i16
  %185 = ptrtoint ptr %conn_db.i376.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %conn_db.i376.i, align 4
  %rq_prod.i.i88.6 = getelementptr inbounds %struct.fcoe_conn_db, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %rq_prod.i.i88.6 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv5.i.i87.6, ptr %rq_prod.i.i88.6, align 2
  br label %do.body37.i

do.body37.i:                                      ; preds = %for.body33.i.6, %for.body33.i.5.do.body37.i_crit_edge, %for.body33.i.4.do.body37.i_crit_edge, %for.body33.i.3.do.body37.i_crit_edge, %for.body33.i.2.do.body37.i_crit_edge, %for.body33.i.1.do.body37.i_crit_edge, %if.end28.i.do.body37.i_crit_edge, %if.end.i.do.body37.i_crit_edge
  %arrayidx42.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %rem.i
  %188 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx42.i, align 4
  %add.i = add i32 %189, ptrtoint (ptr @bnx2fc_percpu to i32)
  %190 = inttoptr i32 %add.i to ptr
  %fp_work_lock.i = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %190, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %fp_work_lock.i) #12
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %tobool43.not.i = icmp eq ptr %192, null
  br i1 %tobool43.not.i, label %do.body37.i.if.end54.i_crit_edge, label %if.then44.i

do.body37.i.if.end54.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.then44.i:                                      ; preds = %do.body37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %193 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %193, i32 noundef 2848, i32 noundef 276) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then44.i.if.end54.i_crit_edge, label %if.then49.i

if.then44.i.if.end54.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.then44.i
  %194 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %tgt1.i.i = getelementptr inbounds %struct.bnx2fc_work, ptr %call7.i.i.i.i, i32 0, i32 1
  %196 = ptrtoint ptr %tgt1.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %tgt, ptr %tgt1.i.i, align 8
  %wqe2.i.i = getelementptr inbounds %struct.bnx2fc_work, ptr %call7.i.i.i.i, i32 0, i32 4
  %197 = ptrtoint ptr %wqe2.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %8, ptr %wqe2.i.i, align 8
  %num_rq3.i.i = getelementptr inbounds %struct.bnx2fc_work, ptr %call7.i.i.i.i, i32 0, i32 5
  %198 = ptrtoint ptr %num_rq3.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv12.i, ptr %num_rq3.i.i, align 2
  %task4.i.i = getelementptr inbounds %struct.bnx2fc_work, ptr %call7.i.i.i.i, i32 0, i32 2
  %199 = ptrtoint ptr %task4.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %arrayidx9.i, ptr %task4.i.i, align 4
  %rq_data7.i.i = getelementptr inbounds %struct.bnx2fc_work, ptr %call7.i.i.i.i, i32 0, i32 3
  %200 = call ptr @memcpy(ptr %rq_data7.i.i, ptr %rq_data_buff.i, i32 256)
  %work_list.i = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %190, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %190, i32 0, i32 1, i32 1
  %201 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %202, ptr noundef %work_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i116.i, label %if.then49.i.list_add_tail.exit.i_crit_edge

if.then49.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i116.i:                                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  %203 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call7.i.i.i.i, ptr %prev.i.i, align 4
  %204 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %work_list.i, ptr %call7.i.i.i.i, align 8
  %205 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %202, ptr %prev.i.i.i, align 4
  %206 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %call7.i.i.i.i, ptr %202, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i116.i, %if.then49.i.list_add_tail.exit.i_crit_edge
  %207 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %190, align 4
  %call51.i = call i32 @wake_up_process(ptr noundef %208) #12
  call void @_raw_spin_unlock_bh(ptr noundef %fp_work_lock.i) #12
  br label %bnx2fc_pending_work.exit

if.end54.i:                                       ; preds = %if.then44.i.if.end54.i_crit_edge, %do.body37.i.if.end54.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %fp_work_lock.i) #12
  call void @bnx2fc_process_cq_compl(ptr noundef %tgt, i16 noundef zeroext %8, ptr noundef nonnull %rq_data_buff.i, i8 noundef zeroext %conv12.i, ptr noundef %arrayidx9.i) #12
  br label %bnx2fc_pending_work.exit

bnx2fc_pending_work.exit:                         ; preds = %if.end54.i, %list_add_tail.exit.i, %do.end.i66
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rq_data_buff.i) #12
  %inc = zext i1 %cmp.not.i to i32
  %spec.select = add i32 %num_free_sqes.0102, %inc
  br label %if.end16

if.end16:                                         ; preds = %bnx2fc_pending_work.exit, %do.end208.i, %ret_warn_rqe.i, %ret_err_rqe.i, %if.end20.i, %if.then10.i
  %num_free_sqes.1 = phi i32 [ %spec.select, %bnx2fc_pending_work.exit ], [ %num_free_sqes.0102, %if.then10.i ], [ %num_free_sqes.0102, %if.end20.i ], [ %num_free_sqes.0102, %ret_err_rqe.i ], [ %num_free_sqes.0102, %ret_warn_rqe.i ], [ %num_free_sqes.0102, %do.end208.i ]
  %incdec.ptr = getelementptr %struct.fcoe_cqe, ptr %cqe.0101, i32 1
  %209 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %cq_cons_idx, align 4
  %inc18 = add i16 %210, 1
  store i16 %inc18, ptr %cq_cons_idx, align 4
  %inc19 = add i32 %num_cqes.0103, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %inc18)
  %cmp22 = icmp eq i16 %inc18, 272
  br i1 %cmp22, label %if.then24, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %211 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %cq_cons_idx, align 4
  %212 = ptrtoint ptr %cq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %cq_curr_toggle_bit, align 2
  %sub = sub i8 1, %213
  store i8 %sub, ptr %cq_curr_toggle_bit, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end16.if.end30_crit_edge
  %cqe.1 = phi ptr [ %1, %if.then24 ], [ %incdec.ptr, %if.end16.if.end30_crit_edge ]
  %214 = ptrtoint ptr %cqe.1 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %cqe.1, align 2
  %conv5 = zext i16 %215 to i32
  %and = and i32 %conv5, 32768
  %216 = ptrtoint ptr %cq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %cq_curr_toggle_bit, align 2
  %conv6 = zext i8 %217 to i32
  %shl = shl nuw nsw i32 %conv6, 15
  %cmp = icmp eq i32 %and, %shl
  br i1 %cmp, label %if.end30.while.body_crit_edge, label %while.end

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc19)
  %phi.cmp = icmp eq i32 %inc19, 0
  br i1 %phi.cmp, label %while.end.if.end36_crit_edge, label %if.then32

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then32:                                        ; preds = %while.end
  %ctx_base = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 3
  %218 = ptrtoint ptr %ctx_base to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ctx_base, align 4
  %tobool33.not = icmp eq ptr %219, null
  br i1 %tobool33.not, label %if.then32.if.end35_crit_edge, label %if.then34

if.then32.if.end35_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %rx_db1.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  call void @arm_heavy_mb() #12
  %220 = ptrtoint ptr %cq_cons_idx to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %cq_cons_idx, align 4
  %222 = ptrtoint ptr %cq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %cq_curr_toggle_bit, align 2
  %conv2.i = zext i8 %223 to i16
  %shl.i89 = shl i16 %conv2.i, 15
  %or.i90 = or i16 %shl.i89, %221
  %doorbell_cq_cons.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 16, i32 2
  %224 = ptrtoint ptr %doorbell_cq_cons.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %or.i90, ptr %doorbell_cq_cons.i, align 2
  %225 = ptrtoint ptr %rx_db1.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %rx_db1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  call void @arm_heavy_mb() #12
  %227 = ptrtoint ptr %ctx_base to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ctx_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %226) #12, !srcloc !297
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then32.if.end35_crit_edge
  %free_sqes = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %free_sqes, i32 1, i32 3, i32 1) #12
  %229 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes, ptr %free_sqes, i32 %num_free_sqes.1, ptr elementtype(i32) %free_sqes) #12, !srcloc !299
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %while.end.if.end36_crit_edge, %if.end.if.end36_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %cq_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_indicate_kcqe(ptr noundef %context, ptr nocapture noundef readonly %kcq, i32 noundef %num_cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cqe)
  %cmp116.not = icmp eq i32 %num_cqe, 0
  br i1 %cmp116.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %stat_req_done = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 35
  %tgt_ofld_list.i103 = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 30
  %flags = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 10
  %destroy_wait = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 38
  %adapter_state = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 9
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %i.0117 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %sw.epilog.while.body_crit_edge ]
  %inc = add nuw i32 %i.0117, 1
  %arrayidx = getelementptr ptr, ptr %kcq, i32 %i.0117
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %op_code = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op_code to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op_code, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %3, label %do.end41 [
    i8 32, label %sw.bb
    i8 21, label %sw.bb1
    i8 22, label %sw.bb2
    i8 16, label %sw.bb3
    i8 17, label %sw.bb8
    i8 23, label %sw.bb25
    i8 24, label %sw.bb26
    i8 18, label %sw.bb27
  ]

sw.bb:                                            ; preds = %while.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %7 = ptrtoint ptr %tgt_ofld_list.i103 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tgt_ofld_list.i103, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %6) #15
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @bnx2fc_process_new_cqes(ptr noundef nonnull %10) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %fcoe_conn_context_id.i = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %fcoe_conn_context_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fcoe_conn_context_id.i, align 4
  %15 = ptrtoint ptr %tgt_ofld_list.i103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tgt_ofld_list.i103, align 4
  %arrayidx.i69 = getelementptr ptr, ptr %16, i32 %12
  %17 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i69, align 4
  %tobool.not.i70 = icmp eq ptr %18, null
  br i1 %tobool.not.i70, label %do.end.i72, label %if.end.i73

do.end.i72:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #15
  br label %sw.epilog

if.end.i73:                                       ; preds = %sw.bb1
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %18, ptr noundef nonnull @.str.106, i32 noundef %14) #12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %hba2.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %hba2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hba2.i, align 4
  %cmp.not.i = icmp eq ptr %24, %context
  br i1 %cmp.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #15
  br label %ofld_cmpl_err.i

if.end9.i:                                        ; preds = %if.end.i73
  %context_id10.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %18, i32 0, i32 6
  %25 = ptrtoint ptr %context_id10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %14, ptr %context_id10.i, align 4
  %completion_status.i = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %completion_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %completion_status.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %27, label %if.end9.i.ofld_cmpl_err.i_crit_edge [
    i32 0, label %if.else.i
    i32 3, label %do.end18.i
  ]

if.end9.i.ofld_cmpl_err.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ofld_cmpl_err.i

do.end18.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #15
  %flags.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %18, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #12
  br label %ofld_cmpl_err.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags22.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %18, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags22.i) #12
  br label %ofld_cmpl_err.i

ofld_cmpl_err.i:                                  ; preds = %if.else.i, %do.end18.i, %if.end9.i.ofld_cmpl_err.i_crit_edge, %do.end6.i
  %flags24.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %18, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags24.i) #12
  %ofld_wait.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %18, i32 0, i32 67
  tail call void @__wake_up(ptr noundef %ofld_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %31 = ptrtoint ptr %tgt_ofld_list.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tgt_ofld_list.i103, align 4
  %arrayidx.i75 = getelementptr ptr, ptr %32, i32 %30
  %33 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i75, align 4
  %tobool.not.i76 = icmp eq ptr %34, null
  br i1 %tobool.not.i76, label %do.end.i78, label %if.end.i81

do.end.i78:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %call.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #15
  br label %sw.epilog

if.end.i81:                                       ; preds = %sw.bb2
  %fcoe_conn_context_id.i79 = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %fcoe_conn_context_id.i79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fcoe_conn_context_id.i79, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %34, ptr noundef nonnull @.str.115, i32 noundef %36) #12
  %context_id2.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %context_id2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %context_id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i80 = icmp eq i32 %38, %36
  br i1 %cmp.not.i80, label %if.end9.i84, label %do.end6.i83

do.end6.i83:                                      ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #15
  br label %sw.epilog

if.end9.i84:                                      ; preds = %if.end.i81
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %hba10.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %hba10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hba10.i, align 4
  %cmp11.not.i = icmp eq ptr %44, %context
  br i1 %cmp11.not.i, label %if.end18.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i84
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #15
  br label %enbl_cmpl_err.i

if.end18.i:                                       ; preds = %if.end9.i84
  %completion_status.i85 = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %completion_status.i85 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %completion_status.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool19.not.i = icmp eq i32 %46, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end18.i.enbl_cmpl_err.i_crit_edge

if.end18.i.enbl_cmpl_err.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enbl_cmpl_err.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i86 = getelementptr inbounds %struct.bnx2fc_rport, ptr %34, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i86) #12
  br label %enbl_cmpl_err.i

enbl_cmpl_err.i:                                  ; preds = %if.then20.i, %if.end18.i.enbl_cmpl_err.i_crit_edge, %do.end15.i
  %flags22.i87 = getelementptr inbounds %struct.bnx2fc_rport, ptr %34, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags22.i87) #12
  %ofld_wait.i88 = getelementptr inbounds %struct.bnx2fc_rport, ptr %34, i32 0, i32 67
  tail call void @__wake_up(ptr noundef %ofld_wait.i88, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.body
  %completion_status = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %completion_status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %completion_status, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %48, label %do.end22.i [
    i32 0, label %if.else
    i32 2, label %do.end.i90
    i32 3, label %do.end3.i
    i32 5, label %do.end8.i
    i32 1, label %do.end13.i
    i32 6, label %do.end18.i92
  ]

do.end.i90:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #15
  br label %sw.epilog

do.end3.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #15
  br label %sw.epilog

do.end8.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #15
  br label %sw.epilog

do.end13.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #15
  br label %sw.epilog

do.end18.i92:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #15
  br label %sw.epilog

do.end22.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %48) #15
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %adapter_state) #12
  tail call void @bnx2fc_get_link_state(ptr noundef %context) #12
  %50 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcidev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %number, align 4
  %conv7 = zext i8 %55 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv7) #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %completion_status9 = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %completion_status9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %completion_status9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp10.not = icmp eq i32 %57, 0
  %.str.38..str.35 = select i1 %cmp10.not, ptr @.str.38, ptr @.str.35
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.38..str.35) #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  tail call void @__wake_up(ptr noundef %destroy_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %1, align 4
  %60 = ptrtoint ptr %tgt_ofld_list.i103 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tgt_ofld_list.i103, align 4
  %arrayidx.i94 = getelementptr ptr, ptr %61, i32 %59
  %62 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i94, align 4
  %tobool.not.i95 = icmp eq ptr %63, null
  br i1 %tobool.not.i95, label %do.end.i97, label %if.end.i99

do.end.i97:                                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  %call.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #15
  br label %sw.epilog

if.end.i99:                                       ; preds = %sw.bb25
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %63, ptr noundef nonnull @.str.141, i32 noundef %59) #12
  %completion_status.i98 = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %completion_status.i98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %completion_status.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool1.not.i = icmp eq i32 %65, 0
  br i1 %tobool1.not.i, label %if.else.i102, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %65) #15
  %flags.i101 = getelementptr inbounds %struct.bnx2fc_rport, ptr %63, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags.i101) #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i101) #12
  %upld_wait.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %63, i32 0, i32 69
  tail call void @__wake_up(ptr noundef %upld_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

if.else.i102:                                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %63, ptr noundef nonnull @.str.145) #12
  %flags10.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %63, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags10.i) #12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags10.i) #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags10.i) #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags10.i) #12
  %upld_wait14.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %63, i32 0, i32 69
  tail call void @__wake_up(ptr noundef %upld_wait14.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %1, align 4
  %68 = ptrtoint ptr %tgt_ofld_list.i103 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tgt_ofld_list.i103, align 4
  %arrayidx.i104 = getelementptr ptr, ptr %69, i32 %67
  %70 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i104, align 4
  %tobool.not.i105 = icmp eq ptr %71, null
  br i1 %tobool.not.i105, label %do.end.i107, label %if.end.i110

do.end.i107:                                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  %call.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #15
  br label %sw.epilog

if.end.i110:                                      ; preds = %sw.bb26
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %71, ptr noundef nonnull @.str.148, i32 noundef %67) #12
  %completion_status.i108 = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %completion_status.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %completion_status.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool1.not.i109 = icmp eq i32 %73, 0
  br i1 %tobool1.not.i109, label %if.else.i115, label %do.end5.i112

do.end5.i112:                                     ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %73) #15
  br label %sw.epilog

if.else.i115:                                     ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %71, ptr noundef nonnull @.str.152) #12
  %flags.i113 = getelementptr inbounds %struct.bnx2fc_rport, ptr %71, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i113) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i113) #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i113) #12
  %upld_wait.i114 = getelementptr inbounds %struct.bnx2fc_rport, ptr %71, i32 0, i32 69
  tail call void @__wake_up(ptr noundef %upld_wait.i114, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body
  %completion_status28 = getelementptr inbounds %struct.fcoe_kcqe, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %completion_status28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %completion_status28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp29.not = icmp eq i32 %75, 0
  br i1 %cmp29.not, label %sw.bb27.if.end37_crit_edge, label %do.end34

sw.bb27.if.end37_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end34:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %sw.bb27.if.end37_crit_edge
  tail call void @complete(ptr noundef %stat_req_done) #12
  br label %sw.epilog

do.end41:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %3 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end41, %if.end37, %if.else.i115, %do.end5.i112, %do.end.i107, %if.else.i102, %do.end5.i, %do.end.i97, %sw.bb8, %if.else, %do.end22.i, %do.end18.i92, %do.end13.i, %do.end8.i, %do.end3.i, %do.end.i90, %enbl_cmpl_err.i, %do.end6.i83, %do.end.i78, %ofld_cmpl_err.i, %do.end.i72, %if.end.i, %do.end.i
  %exitcond.not = icmp eq i32 %inc, %num_cqe
  br i1 %exitcond.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_get_link_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bnx2fc_add_2_sq(ptr nocapture noundef %tgt, i16 noundef zeroext %xid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 17
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 4
  %sq_prod_idx = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 19
  %2 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sq_prod_idx, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.fcoe_sqe, ptr %1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %xid, ptr %arrayidx, align 2
  %sq_curr_toggle_bit = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 20
  %5 = ptrtoint ptr %sq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sq_curr_toggle_bit, align 2
  %conv2 = zext i8 %6 to i16
  %shl3 = shl i16 %conv2, 15
  %or = or i16 %shl3, %xid
  store i16 %or, ptr %arrayidx, align 2
  %7 = load i16, ptr %sq_prod_idx, align 4
  %inc = add i16 %7, 1
  store i16 %inc, ptr %sq_prod_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %inc)
  %cmp = icmp eq i16 %inc, 256
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %sq_prod_idx, align 4
  %9 = ptrtoint ptr %sq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sq_curr_toggle_bit, align 2
  %sub = sub i8 1, %10
  store i8 %sub, ptr %sq_curr_toggle_bit, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_ring_doorbell(ptr nocapture noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_db1 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  tail call void @arm_heavy_mb() #12
  %sq_prod_idx = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 19
  %0 = ptrtoint ptr %sq_prod_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sq_prod_idx, align 4
  %sq_curr_toggle_bit = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 20
  %2 = ptrtoint ptr %sq_curr_toggle_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sq_curr_toggle_bit, align 2
  %conv2 = zext i8 %3 to i16
  %shl = shl i16 %conv2, 15
  %or = or i16 %shl, %1
  %4 = ptrtoint ptr %sq_db1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or, ptr %sq_db1, align 2
  %5 = load i32, ptr %sq_db1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  tail call void @arm_heavy_mb() #12
  %ctx_base = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 3
  %6 = ptrtoint ptr %ctx_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #12, !srcloc !297
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_map_doorbell(ptr nocapture noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context_id1 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 6
  %0 = ptrtoint ptr %context_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context_id1, align 4
  %2 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgt, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hba3 = getelementptr inbounds %struct.bnx2fc_interface, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hba3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba3, align 4
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %and = shl i32 %1, 3
  %mul = and i32 %and, 1048568
  %add = add i32 %11, %mul
  %call = tail call ptr @ioremap(i32 noundef %add, i32 noundef 4) #12
  %ctx_base = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 3
  %12 = ptrtoint ptr %ctx_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %ctx_base, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bnx2fc_get_next_rqe(ptr nocapture noundef %tgt, i8 noundef zeroext %num_items) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_cons_idx = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 30
  %0 = ptrtoint ptr %rq_cons_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_cons_idx, align 4
  %conv = zext i8 %num_items to i32
  %add = add i32 %1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp = icmp ugt i32 %add, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 27
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 4
  %mul = shl i32 %1, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp7 = icmp eq i32 %add, 16
  %spec.select = select i1 %cmp7, i32 0, i32 %add
  %4 = ptrtoint ptr %rq_cons_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %rq_cons_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bnx2fc_return_rqe(ptr nocapture noundef %tgt, i8 noundef zeroext %num_items) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_prod_idx = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 29
  %0 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_prod_idx, align 4
  %conv = zext i8 %num_items to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp = icmp eq i32 %and, 16
  %add2 = add i32 %add, 32752
  %spec.select = select i1 %cmp, i32 %add2, i32 %add
  %2 = ptrtoint ptr %rq_prod_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %rq_prod_idx, align 4
  %conv5 = trunc i32 %spec.select to i16
  %conn_db = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 44
  %3 = ptrtoint ptr %conn_db to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn_db, align 4
  %rq_prod = getelementptr inbounds %struct.fcoe_conn_db, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %rq_prod to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv5, ptr %rq_prod, align 2
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_init_seq_cleanup_task(ptr nocapture noundef readonly %seq_clnp_req, ptr nocapture noundef writeonly %task, ptr nocapture noundef readonly %orig_io_req, i32 noundef %offset) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %tgt2 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %seq_clnp_req, i32 0, i32 7
  %2 = ptrtoint ptr %tgt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgt2, align 4
  %bd_tbl = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 21
  %4 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_tbl, align 4
  %bd_tbl3 = getelementptr inbounds %struct.io_bdt, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_tbl3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_tbl3, align 4
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 18
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xid, align 4
  %context_id4 = getelementptr inbounds %struct.bnx2fc_rport, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %context_id4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %context_id4, align 4
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %bd_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd_tbl_dma, align 4
  %conv = zext i32 %13 to i64
  %14 = call ptr @memset(ptr %task, i32 0, i32 128)
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  %const_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1
  %tx_flags = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 14, ptr %tx_flags, align 1
  %18 = ptrtoint ptr %const_ctx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %const_ctx, align 4
  %init_flags18 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %init_flags18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %init_flags18, align 4
  %ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %9, ptr %ctx, align 4
  %rolled_tx_seq_cnt = getelementptr inbounds %struct.fcoe_cleanup_info, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %rolled_tx_seq_cnt to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %rolled_tx_seq_cnt, align 2
  %rolled_tx_data_offset = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %rolled_tx_data_offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %offset, ptr %rolled_tx_data_offset, align 4
  %23 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_tbl, align 4
  %bd_valid = getelementptr inbounds %struct.io_bdt, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bd_valid, align 4
  %conv31 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp32137.not = icmp eq i16 %26, 0
  br i1 %cmp32137.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0139 = phi i32 [ %inc, %if.end38.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %offset.addr.0138 = phi i32 [ %sub, %if.end38.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %buf_len = getelementptr %struct.fcoe_bd_ctx, ptr %7, i32 %i.0139, i32 2
  %27 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %buf_len, align 4
  %conv34 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.0138, i32 %conv34)
  %cmp35 = icmp ult i32 %offset.addr.0138, %conv34
  br i1 %cmp35, label %for.body.for.end_crit_edge, label %if.end38

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end38:                                         ; preds = %for.body
  %sub = sub i32 %offset.addr.0138, %conv34
  %inc = add nuw nsw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %inc, %conv31
  br i1 %exitcond.not, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry.for.end_crit_edge ], [ %offset.addr.0138, %for.body.for.end_crit_edge ], [ %sub, %if.end38.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.0139, %for.body.for.end_crit_edge ], [ %conv31, %if.end38.for.end_crit_edge ]
  %mul = shl i32 %i.0.lcssa, 4
  %conv42 = zext i32 %mul to i64
  %add = add nuw nsw i64 %conv42, %conv
  br i1 %cmp, label %if.then46, label %if.else65

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv47 = trunc i64 %add to i32
  %29 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv47, ptr %task, align 4
  %shr = lshr i64 %add, 32
  %conv48 = trunc i64 %shr to i32
  %hi = getelementptr inbounds %struct.regpair, ptr %task, i32 0, i32 1
  %30 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv48, ptr %hi, align 4
  %conv53 = trunc i16 %26 to i8
  %sgl_size = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %task, i32 0, i32 3
  %31 = ptrtoint ptr %sgl_size to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv53, ptr %sgl_size, align 1
  %conv57 = trunc i32 %offset.addr.0.lcssa to i16
  %cur_sge_off = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %task, i32 0, i32 1
  %32 = ptrtoint ptr %cur_sge_off to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv57, ptr %cur_sge_off, align 4
  %conv61 = trunc i32 %i.0.lcssa to i8
  %cur_sge_idx = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %task, i32 0, i32 2
  %33 = ptrtoint ptr %cur_sge_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv61, ptr %cur_sge_idx, align 2
  br label %if.end91

if.else65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %rxwr_only = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3
  %union_ctx66 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  %conv68 = trunc i64 %add to i32
  %34 = ptrtoint ptr %union_ctx66 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv68, ptr %union_ctx66, align 4
  %shr72 = lshr i64 %add, 32
  %conv73 = trunc i64 %shr72 to i32
  %hi76 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %hi76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv73, ptr %hi76, align 4
  %conv77 = trunc i16 %26 to i8
  %sgl_size79 = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %union_ctx66, i32 0, i32 3
  %36 = ptrtoint ptr %sgl_size79 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv77, ptr %sgl_size79, align 1
  %conv80 = trunc i32 %offset.addr.0.lcssa to i16
  %cur_sge_off82 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %cur_sge_off82 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv80, ptr %cur_sge_off82, align 4
  %conv83 = trunc i32 %i.0.lcssa to i8
  %cur_sge_idx85 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %cur_sge_idx85 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv83, ptr %cur_sge_idx85, align 2
  %39 = ptrtoint ptr %rxwr_only to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rxwr_only, align 4
  %low_exp_ro = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 0, i32 3
  %40 = ptrtoint ptr %low_exp_ro to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %offset, ptr %low_exp_ro, align 4
  %high_exp_ro = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 0, i32 4
  %41 = ptrtoint ptr %high_exp_ro to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %offset, ptr %high_exp_ro, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else65, %if.then46
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bnx2fc_init_cleanup_task(ptr nocapture noundef readonly %io_req, ptr nocapture noundef %task, i16 noundef zeroext %orig_xid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  %context_id2 = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %context_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %context_id2, align 4
  %4 = call ptr @memset(ptr %task, i32 0, i32 128)
  %const_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %const_ctx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %const_ctx, align 4
  %dev_type = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = select i1 %cmp, i8 13, i8 5
  %8 = ptrtoint ptr %const_ctx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %., ptr %const_ctx, align 4
  %ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %orig_xid, ptr %ctx, align 4
  %tx_flags = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %tx_flags, align 1
  %init_flags27 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %init_flags27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %init_flags27, align 4
  %var_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %var_ctx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4096, ptr %var_ctx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_init_mp_task(ptr noundef %io_req, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt2 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt2, align 4
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_type, align 2
  %switch.tableidx = add i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.idx.cast.not = icmp eq i8 %5, 0
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 132098, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %if.end13

if.end13:                                         ; preds = %switch.lookup, %entry.if.end13_crit_edge
  %cmp19 = phi i1 [ %switch.idx.cast.not, %switch.lookup ], [ false, %entry.if.end13_crit_edge ]
  %task_type.0 = phi i8 [ %switch.masked, %switch.lookup ], [ 0, %entry.if.end13_crit_edge ]
  %6 = call ptr @memset(ptr %task, i32 0, i32 128)
  %task14 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 20
  %7 = ptrtoint ptr %task14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %task, ptr %task14, align 4
  %8 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_type, align 2
  %conv16 = zext i8 %9 to i32
  %conv17 = zext i8 %task_type.0 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.46, i32 noundef %conv16, i32 noundef %conv17) #12
  br i1 %cmp19, label %if.then25, label %if.end13.if.end36_crit_edge

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %mp_req_bd_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 5
  %10 = ptrtoint ptr %mp_req_bd_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mp_req_bd_dma, align 4
  %12 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %task, align 4
  %hi = getelementptr inbounds %struct.regpair, ptr %task, i32 0, i32 1
  %13 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %hi, align 4
  %sgl_size = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %task, i32 0, i32 3
  %14 = ptrtoint ptr %sgl_size to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %sgl_size, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then25, %if.end13.if.end36_crit_edge
  %txwr_rxrd = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1
  %const_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %const_ctx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %task_type.0, ptr %const_ctx, align 4
  %dev_type = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp39 = icmp eq i32 %17, 1
  %or = or i8 %task_type.0, 8
  %storemerge = select i1 %cmp39, i8 %or, i8 %task_type.0
  %18 = ptrtoint ptr %const_ctx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge, ptr %const_ctx, align 4
  %tx_flags = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_flags, align 1
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 23
  %20 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_xfer_len, align 4
  %rxwr_txrd = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2
  %22 = ptrtoint ptr %rxwr_txrd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rxwr_txrd, align 4
  %var_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %var_ctx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %var_ctx, align 4
  %25 = or i16 %24, 4096
  store i16 %25, ptr %var_ctx, align 4
  %context_id68 = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %context_id68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %context_id68, align 4
  %init_flags72 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %init_flags72 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %init_flags72, align 4
  %req_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 6
  br i1 %cmp19, label %if.then76, label %if.end113.critedge

if.then76:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %29 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %xid, align 4
  %fh_ox_id = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 6, i32 9
  %31 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %fh_ox_id, align 4
  %fh_rx_id = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 6, i32 10
  %32 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %fh_rx_id, align 2
  %rx_id = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 1, i32 1
  %33 = ptrtoint ptr %rx_id to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %rx_id, align 2
  %34 = ptrtoint ptr %req_fc_hdr to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %temp_hdr.sroa.0.0.copyload.c157 = load i64, ptr %req_fc_hdr, align 4
  %temp_hdr.sroa.5.0..sroa_idx.c158 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 6, i32 4
  %35 = ptrtoint ptr %temp_hdr.sroa.5.0..sroa_idx.c158 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %temp_hdr.sroa.5.0.copyload.c159 = load i64, ptr %temp_hdr.sroa.5.0..sroa_idx.c158, align 4
  %temp_hdr.sroa.7.0.copyload.c161 = load i64, ptr %fh_ox_id, align 4
  %36 = ptrtoint ptr %txwr_rxrd to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %temp_hdr.sroa.0.0.copyload.c157, ptr %txwr_rxrd, align 8
  %arrayidx92.c162 = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx92.c162 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %temp_hdr.sroa.5.0.copyload.c159, ptr %arrayidx92.c162, align 8
  %arrayidx94.c163 = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx94.c163 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %temp_hdr.sroa.7.0.copyload.c161, ptr %arrayidx94.c163, align 8
  %union_ctx99 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  %mp_resp_bd_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 11
  %39 = ptrtoint ptr %mp_resp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mp_resp_bd_dma, align 4
  %41 = ptrtoint ptr %union_ctx99 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %union_ctx99, align 4
  %hi110 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %hi110 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %hi110, align 4
  %sgl_size112 = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %union_ctx99, i32 0, i32 3
  %43 = ptrtoint ptr %sgl_size112 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %sgl_size112, align 1
  br label %if.end113

if.end113.critedge:                               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %req_fc_hdr to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %temp_hdr.sroa.0.0.copyload.c = load i64, ptr %req_fc_hdr, align 4
  %temp_hdr.sroa.5.0..sroa_idx.c = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 6, i32 4
  %45 = ptrtoint ptr %temp_hdr.sroa.5.0..sroa_idx.c to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %temp_hdr.sroa.5.0.copyload.c = load i64, ptr %temp_hdr.sroa.5.0..sroa_idx.c, align 4
  %temp_hdr.sroa.7.0..sroa_idx.c = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 6, i32 9
  %46 = ptrtoint ptr %temp_hdr.sroa.7.0..sroa_idx.c to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %temp_hdr.sroa.7.0.copyload.c = load i64, ptr %temp_hdr.sroa.7.0..sroa_idx.c, align 4
  %47 = ptrtoint ptr %txwr_rxrd to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %temp_hdr.sroa.0.0.copyload.c, ptr %txwr_rxrd, align 8
  %arrayidx92.c = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx92.c to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %temp_hdr.sroa.5.0.copyload.c, ptr %arrayidx92.c, align 8
  %arrayidx94.c = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 0, i32 9
  %49 = ptrtoint ptr %arrayidx94.c to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %temp_hdr.sroa.7.0.copyload.c, ptr %arrayidx94.c, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.end113.critedge, %if.then76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_init_task(ptr noundef %io_req, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %tmp_fcp_cmnd = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %bd_tbl2 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 21
  %2 = ptrtoint ptr %bd_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_tbl2, align 4
  %tgt3 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %4 = ptrtoint ptr %tgt3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt3, align 4
  %dev_type4 = getelementptr inbounds %struct.bnx2fc_rport, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev_type4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_fcp_cmnd) #12
  %8 = getelementptr inbounds [4 x i64], ptr %tmp_fcp_cmnd, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i64], ptr %tmp_fcp_cmnd, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i64], ptr %tmp_fcp_cmnd, i32 0, i32 3
  %11 = call ptr @memset(ptr %tmp_fcp_cmnd, i32 255, i32 32)
  %12 = call ptr @memset(ptr %task, i32 0, i32 128)
  %task5 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 20
  %13 = ptrtoint ptr %task5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %task, ptr %task5, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i8
  %bd_valid = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 3
  %union_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  br i1 %cmp, label %if.then9, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then9:                                         ; preds = %entry
  %16 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bd_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp12 = icmp eq i16 %17, 1
  %or.cond = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end47.thread, label %if.else29

if.end47.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %bd_tbl15 = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %bd_tbl15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_tbl15, align 4
  %buf_addr_lo = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %buf_addr_lo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_addr_lo, align 4
  %22 = ptrtoint ptr %union_ctx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %union_ctx, align 4
  %23 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %task, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %hi = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hi, align 4
  %hi23 = getelementptr inbounds %struct.regpair, ptr %task, i32 0, i32 1
  %27 = ptrtoint ptr %hi23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %hi23, align 4
  %buf_len = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %buf_len, align 4
  %cur_buf_rem = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %cur_buf_rem to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %cur_buf_rem, align 4
  %cur_buf_rem26 = getelementptr inbounds %struct.fcoe_cached_sge_ctx, ptr %task, i32 0, i32 1
  %31 = ptrtoint ptr %cur_buf_rem26 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %29, ptr %cur_buf_rem26, align 4
  %const_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %const_ctx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %const_ctx, align 4
  %txwr_rxrd49282 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1
  %34 = or i8 %33, %.
  %conv54284 = or i8 %34, 32
  br label %if.else65

if.else29:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %bd_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bd_tbl_dma, align 4
  %37 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %task, align 4
  %hi40 = getelementptr inbounds %struct.regpair, ptr %task, i32 0, i32 1
  %38 = ptrtoint ptr %hi40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %hi40, align 4
  %39 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bd_valid, align 4
  %conv42 = trunc i16 %40 to i8
  %sgl_size = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %task, i32 0, i32 3
  %41 = ptrtoint ptr %sgl_size to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv42, ptr %sgl_size, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.else29, %entry.if.end47_crit_edge
  %txwr_rxrd49 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1
  %const_ctx50 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %const_ctx50 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %const_ctx50, align 4
  %conv54 = or i8 %43, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp55 = icmp eq i32 %7, 1
  br i1 %cmp55, label %if.then57, label %if.end47.if.else65_crit_edge

if.end47.if.else65_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %44 = or i8 %conv54, 8
  %45 = ptrtoint ptr %const_ctx50 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %const_ctx50, align 4
  %rec_retry = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 25
  %46 = ptrtoint ptr %rec_retry to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %rec_retry, align 4
  br label %if.end72

if.else65:                                        ; preds = %if.end47.if.else65_crit_edge, %if.end47.thread
  %conv54290 = phi i8 [ %conv54284, %if.end47.thread ], [ %conv54, %if.end47.if.else65_crit_edge ]
  %const_ctx50288 = phi ptr [ %const_ctx, %if.end47.thread ], [ %const_ctx50, %if.end47.if.else65_crit_edge ]
  %txwr_rxrd49287 = phi ptr [ %txwr_rxrd49282, %if.end47.thread ], [ %txwr_rxrd49, %if.end47.if.else65_crit_edge ]
  %47 = ptrtoint ptr %const_ctx50288 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv54290, ptr %const_ctx50288, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else65, %if.then57
  %const_ctx50289 = phi ptr [ %const_ctx50288, %if.else65 ], [ %const_ctx50, %if.then57 ]
  %txwr_rxrd49286 = phi ptr [ %txwr_rxrd49287, %if.else65 ], [ %txwr_rxrd49, %if.then57 ]
  %tx_flags = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 1, i32 1
  %48 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %tx_flags, align 1
  %seq_cnt = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %seq_cnt to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %seq_cnt, align 4
  call void @bnx2fc_build_fcp_cmnd(ptr noundef %io_req, ptr noundef nonnull %tmp_fcp_cmnd) #12
  %50 = ptrtoint ptr %tmp_fcp_cmnd to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tmp_fcp_cmnd, align 8
  %52 = ptrtoint ptr %txwr_rxrd49286 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %txwr_rxrd49286, align 8
  %incdec.ptr = getelementptr i64, ptr %txwr_rxrd49286, i32 1
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %8, align 8
  %55 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %incdec.ptr, align 8
  %incdec.ptr.1 = getelementptr i64, ptr %txwr_rxrd49286, i32 2
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %9, align 8
  %58 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %incdec.ptr.1, align 8
  %incdec.ptr.2 = getelementptr i64, ptr %txwr_rxrd49286, i32 3
  %59 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %10, align 8
  %61 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %incdec.ptr.2, align 8
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 23
  %62 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_xfer_len, align 4
  %rxwr_txrd = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2
  %64 = ptrtoint ptr %rxwr_txrd to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rxwr_txrd, align 4
  %context_id88 = getelementptr inbounds %struct.bnx2fc_rport, ptr %5, i32 0, i32 6
  %65 = ptrtoint ptr %context_id88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %context_id88, align 4
  %init_flags92 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 0, i32 1
  %67 = ptrtoint ptr %init_flags92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %init_flags92, align 4
  %var_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %var_ctx to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %var_ctx, align 4
  %70 = or i16 %69, 4096
  store i16 %70, ptr %var_ctx, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 2, i32 1, i32 1
  %71 = ptrtoint ptr %rx_id to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %rx_id, align 2
  br i1 %cmp, label %if.end72.cleanup_crit_edge, label %if.end103

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end103:                                        ; preds = %if.end72
  %72 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %bd_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp109 = icmp eq i32 %7, 0
  br i1 %cmp109, label %if.then111, label %if.else175

if.then111:                                       ; preds = %if.end103
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.172)
  switch i16 %73, label %if.else158 [
    i16 1, label %if.then114
    i16 2, label %if.then134
  ]

if.then114:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  %bd_tbl116 = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 1
  %75 = ptrtoint ptr %bd_tbl116 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bd_tbl116, align 4
  %buf_addr_lo117 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %buf_addr_lo117 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_addr_lo117, align 4
  %79 = ptrtoint ptr %union_ctx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %union_ctx, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %76, align 4
  %hi122 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %82 = ptrtoint ptr %hi122 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %hi122, align 4
  %buf_len123 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %76, i32 0, i32 2
  %83 = ptrtoint ptr %buf_len123 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %buf_len123, align 4
  %cur_buf_rem124 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %cur_buf_rem124 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %cur_buf_rem124, align 4
  %86 = ptrtoint ptr %const_ctx50289 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %const_ctx50289, align 4
  %88 = or i8 %87, 32
  store i8 %88, ptr %const_ctx50289, align 4
  br label %cleanup

if.then134:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  %bd_tbl136 = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 1
  %89 = ptrtoint ptr %bd_tbl136 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bd_tbl136, align 4
  %buf_addr_lo137 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %buf_addr_lo137 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_addr_lo137, align 4
  %93 = ptrtoint ptr %union_ctx to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %union_ctx, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %90, align 4
  %hi142 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %hi142 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %hi142, align 4
  %buf_len143 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %90, i32 0, i32 2
  %97 = ptrtoint ptr %buf_len143 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %buf_len143, align 4
  %cur_buf_rem144 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %cur_buf_rem144 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %cur_buf_rem144, align 4
  %incdec.ptr145 = getelementptr %struct.fcoe_bd_ctx, ptr %90, i32 1
  %buf_addr_lo146 = getelementptr %struct.fcoe_bd_ctx, ptr %90, i32 1, i32 1
  %100 = ptrtoint ptr %buf_addr_lo146 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %buf_addr_lo146, align 4
  %second_buf_addr = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3
  %102 = ptrtoint ptr %second_buf_addr to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %second_buf_addr, align 4
  %103 = ptrtoint ptr %incdec.ptr145 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %incdec.ptr145, align 4
  %hi150 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %hi150 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %hi150, align 4
  %buf_len151 = getelementptr %struct.fcoe_bd_ctx, ptr %90, i32 1, i32 2
  %106 = ptrtoint ptr %buf_len151 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %buf_len151, align 4
  %second_buf_rem = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 2
  %108 = ptrtoint ptr %second_buf_rem to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %second_buf_rem, align 2
  %109 = ptrtoint ptr %const_ctx50289 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %const_ctx50289, align 4
  %111 = or i8 %110, 32
  store i8 %111, ptr %const_ctx50289, align 4
  br label %cleanup

if.else158:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  %bd_tbl_dma159 = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 2
  %112 = ptrtoint ptr %bd_tbl_dma159 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bd_tbl_dma159, align 4
  %114 = ptrtoint ptr %union_ctx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %union_ctx, align 4
  %hi169 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %115 = ptrtoint ptr %hi169 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %hi169, align 4
  %conv170 = trunc i16 %73 to i8
  %sgl_size172 = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %union_ctx, i32 0, i32 3
  %116 = ptrtoint ptr %sgl_size172 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv170, ptr %sgl_size172, align 1
  br label %cleanup

if.else175:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %bd_tbl_dma176 = getelementptr inbounds %struct.io_bdt, ptr %3, i32 0, i32 2
  %117 = ptrtoint ptr %bd_tbl_dma176 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bd_tbl_dma176, align 4
  %119 = ptrtoint ptr %union_ctx to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %union_ctx, align 4
  %hi186 = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %hi186 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %hi186, align 4
  %conv187 = trunc i16 %73 to i8
  %sgl_size189 = getelementptr inbounds %struct.fcoe_mul_sges_ctx, ptr %union_ctx, i32 0, i32 3
  %121 = ptrtoint ptr %sgl_size189 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv187, ptr %sgl_size189, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else175, %if.else158, %if.then134, %if.then114, %if.end72.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_fcp_cmnd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_build_fcp_cmnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_setup_task_ctx(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %task_ctx_bd_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 19
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %task_ctx_bd_dma, i32 noundef 3264, i32 noundef 0) #12
  %task_ctx_bd_tbl = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 18
  %2 = ptrtoint ptr %task_ctx_bd_tbl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %task_ctx_bd_tbl, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_tasks = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 13
  %3 = ptrtoint ptr %max_tasks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_tasks, align 8
  %div123 = lshr i32 %4, 5
  %mul = shl nuw nsw i32 %div123, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #17
  %task_ctx138 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 16
  %5 = ptrtoint ptr %task_ctx138 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i, ptr %task_ctx138, align 4
  %tobool5.not139 = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not139, label %do.end9, label %if.end8.i

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %out1

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #17
  %task_ctx_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 17
  %6 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %task_ctx_dma, align 8
  %tobool16.not = icmp eq ptr %call9.i, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #15
  br label %out2

if.end23:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp154.not = icmp ult i32 %4, 32
  br i1 %cmp154.not, label %if.end23.cleanup_crit_edge, label %for.body.preheader

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end23
  %7 = ptrtoint ptr %task_ctx_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task_ctx_bd_tbl, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div123, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.preheader
  %task_ctx_bdt.0156 = phi ptr [ %incdec.ptr, %if.end40.for.body_crit_edge ], [ %8, %for.body.preheader ]
  %i.0155 = phi i32 [ %inc, %if.end40.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task_ctx_dma, align 8
  %arrayidx = getelementptr i32, ptr %12, i32 %i.0155
  %call.i127 = tail call ptr @dma_alloc_attrs(ptr noundef %dev26, i32 noundef 4096, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #12
  %13 = ptrtoint ptr %task_ctx138 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task_ctx138, align 4
  %arrayidx30 = getelementptr ptr, ptr %14, i32 %i.0155
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i127, ptr %arrayidx30, align 4
  %16 = load ptr, ptr %task_ctx138, align 4
  %arrayidx32 = getelementptr ptr, ptr %16, i32 %i.0155
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %18, null
  br i1 %tobool33.not, label %for.body49.preheader, label %if.end40

for.body49.preheader:                             ; preds = %for.body
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #15
  br label %for.body49

if.end40:                                         ; preds = %for.body
  %19 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task_ctx_dma, align 8
  %arrayidx42 = getelementptr i32, ptr %20, i32 %i.0155
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx42, align 4
  %hi = getelementptr inbounds %struct.regpair, ptr %task_ctx_bdt.0156, i32 0, i32 1
  %23 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %hi, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %22)
  %25 = ptrtoint ptr %task_ctx_bdt.0156 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %task_ctx_bdt.0156, align 4
  %incdec.ptr = getelementptr %struct.regpair, ptr %task_ctx_bdt.0156, i32 1
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body49:                                       ; preds = %for.inc63.for.body49_crit_edge, %for.body49.preheader
  %i.1158 = phi i32 [ %inc64, %for.inc63.for.body49_crit_edge ], [ 0, %for.body49.preheader ]
  %26 = ptrtoint ptr %task_ctx138 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task_ctx138, align 4
  %arrayidx51 = getelementptr ptr, ptr %27, i32 %i.1158
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %for.body49.for.inc63_crit_edge, label %if.then53

for.body49.for.inc63_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

if.then53:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcidev, align 4
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task_ctx_dma, align 8
  %arrayidx59 = getelementptr i32, ptr %33, i32 %i.1158
  %34 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx59, align 4
  tail call void @dma_free_attrs(ptr noundef %dev55, i32 noundef 4096, ptr noundef nonnull %29, i32 noundef %35, i32 noundef 0) #12
  %36 = ptrtoint ptr %task_ctx138 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task_ctx138, align 4
  %arrayidx61 = getelementptr ptr, ptr %37, i32 %i.1158
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx61, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %if.then53, %for.body49.for.inc63_crit_edge
  %inc64 = add nuw nsw i32 %i.1158, 1
  %exitcond161.not = icmp eq i32 %inc64, %umax
  br i1 %exitcond161.not, label %for.end65, label %for.inc63.for.body49_crit_edge

for.inc63.for.body49_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49

for.end65:                                        ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task_ctx_dma, align 8
  tail call void @kfree(ptr noundef %40) #12
  %41 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %task_ctx_dma, align 8
  br label %out2

out2:                                             ; preds = %for.end65, %do.end20
  %42 = ptrtoint ptr %task_ctx138 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task_ctx138, align 4
  tail call void @kfree(ptr noundef %43) #12
  %44 = ptrtoint ptr %task_ctx138 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %task_ctx138, align 4
  br label %out1

out1:                                             ; preds = %out2, %do.end9
  %45 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcidev, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %task_ctx_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task_ctx_bd_tbl, align 4
  %49 = ptrtoint ptr %task_ctx_bd_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %task_ctx_bd_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev71, i32 noundef 4096, ptr noundef %48, i32 noundef %50, i32 noundef 0) #12
  %51 = ptrtoint ptr %task_ctx_bd_tbl to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %task_ctx_bd_tbl, align 4
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end40.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %out1 ], [ -1, %do.end ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_free_task_ctx(ptr nocapture noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %task_ctx_bd_tbl = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 18
  %0 = ptrtoint ptr %task_ctx_bd_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_ctx_bd_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %task_ctx_bd_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 19
  %4 = ptrtoint ptr %task_ctx_bd_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %task_ctx_bd_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #12
  %6 = ptrtoint ptr %task_ctx_bd_tbl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %task_ctx_bd_tbl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_tasks = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 13
  %7 = ptrtoint ptr %max_tasks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_tasks, align 8
  %div42 = lshr i32 %8, 5
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 16
  %9 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task_ctx, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %for.cond.preheader

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp43.not = icmp ult i32 %8, 32
  br i1 %cmp43.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pcidev8 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %task_ctx_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 17
  %umax = call i32 @llvm.umax.i32(i32 %div42, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.044
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %pcidev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %task_ctx_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task_ctx_dma, align 8
  %arrayidx12 = getelementptr i32, ptr %18, i32 %i.044
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9, i32 noundef 4096, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #12
  %21 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task_ctx, align 4
  %arrayidx14 = getelementptr ptr, ptr %22, i32 %i.044
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task_ctx, align 4
  tail call void @kfree(ptr noundef %25) #12
  %26 = ptrtoint ptr %task_ctx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %task_ctx, align 4
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.end.if.end18_crit_edge
  %task_ctx_dma19 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 17
  %27 = ptrtoint ptr %task_ctx_dma19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task_ctx_dma19, align 8
  tail call void @kfree(ptr noundef %28) #12
  %29 = ptrtoint ptr %task_ctx_dma19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %task_ctx_dma19, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_setup_fw_resc(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_tbl_segment_count.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 20
  %0 = ptrtoint ptr %hash_tbl_segment_count.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %hash_tbl_segment_count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #16
  %hash_tbl_segments.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 21
  %2 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %hash_tbl_segments.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i128.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool5.not.i = icmp eq ptr %call7.i.i128.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %pcidev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  br label %for.body.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #15
  br label %cleanup_ht.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0130.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0130.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %arrayidx.i = getelementptr i32, ptr %call7.i.i128.i, i32 %i.0130.i
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 16384, ptr noundef %arrayidx.i, i32 noundef 3264, i32 noundef 0) #12
  %6 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash_tbl_segments.i, align 8
  %arrayidx15.i = getelementptr ptr, ptr %7, i32 %i.0130.i
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %arrayidx15.i, align 4
  %9 = load ptr, ptr %hash_tbl_segments.i, align 8
  %arrayidx17.i = getelementptr ptr, ptr %9, i32 %i.0130.i
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %11, null
  br i1 %tobool18.not.i, label %for.body.i.cleanup_dma.i_crit_edge, label %for.cond.i

for.body.i.cleanup_dma.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_dma.i

for.end.i:                                        ; preds = %for.cond.i
  %12 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev.i, align 4
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %hash_tbl_pbl_dma.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 23
  %call.i129.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev27.i, i32 noundef 4096, ptr noundef %hash_tbl_pbl_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %hash_tbl_pbl.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 22
  %14 = ptrtoint ptr %hash_tbl_pbl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i129.i, ptr %hash_tbl_pbl.i, align 4
  %tobool30.not.i = icmp eq ptr %call.i129.i, null
  br i1 %tobool30.not.i, label %for.end.i.cleanup_dma.i_crit_edge, label %for.body41.preheader.i

for.end.i.cleanup_dma.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_dma.i

for.body41.preheader.i:                           ; preds = %for.end.i
  %15 = ptrtoint ptr %call7.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i128.i, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %18 = ptrtoint ptr %call.i129.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call.i129.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i129.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %incdec.ptr.i, align 4
  %incdec.ptr45.i = getelementptr i32, ptr %call.i129.i, i32 2
  %arrayidx42.1.i = getelementptr i32, ptr %call7.i.i128.i, i32 1
  %20 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx42.1.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr45.i, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %call.i129.i, i32 3
  %24 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr45.1.i = getelementptr i32, ptr %call.i129.i, i32 4
  %arrayidx42.2.i = getelementptr i32, ptr %call7.i.i128.i, i32 2
  %25 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx42.2.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = ptrtoint ptr %incdec.ptr45.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr45.1.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %call.i129.i, i32 5
  %29 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %incdec.ptr.2.i, align 4
  %incdec.ptr45.2.i = getelementptr i32, ptr %call.i129.i, i32 6
  %arrayidx42.3.i = getelementptr i32, ptr %call7.i.i128.i, i32 3
  %30 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx42.3.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %33 = ptrtoint ptr %incdec.ptr45.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr45.2.i, align 4
  %incdec.ptr.3.i = getelementptr i32, ptr %call.i129.i, i32 7
  %34 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr.3.i, align 4
  %incdec.ptr45.3.i = getelementptr i32, ptr %call.i129.i, i32 8
  %arrayidx42.4.i = getelementptr i32, ptr %call7.i.i128.i, i32 4
  %35 = ptrtoint ptr %arrayidx42.4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx42.4.i, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  %38 = ptrtoint ptr %incdec.ptr45.3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %incdec.ptr45.3.i, align 4
  %incdec.ptr.4.i = getelementptr i32, ptr %call.i129.i, i32 9
  %39 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %incdec.ptr.4.i, align 4
  %incdec.ptr45.4.i = getelementptr i32, ptr %call.i129.i, i32 10
  %arrayidx42.5.i = getelementptr i32, ptr %call7.i.i128.i, i32 5
  %40 = ptrtoint ptr %arrayidx42.5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx42.5.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  %43 = ptrtoint ptr %incdec.ptr45.4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %incdec.ptr45.4.i, align 4
  %incdec.ptr.5.i = getelementptr i32, ptr %call.i129.i, i32 11
  %44 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %incdec.ptr.5.i, align 4
  %incdec.ptr45.5.i = getelementptr i32, ptr %call.i129.i, i32 12
  %arrayidx42.6.i = getelementptr i32, ptr %call7.i.i128.i, i32 6
  %45 = ptrtoint ptr %arrayidx42.6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx42.6.i, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %48 = ptrtoint ptr %incdec.ptr45.5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %incdec.ptr45.5.i, align 4
  %incdec.ptr.6.i = getelementptr i32, ptr %call.i129.i, i32 13
  %49 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %incdec.ptr.6.i, align 4
  %incdec.ptr45.6.i = getelementptr i32, ptr %call.i129.i, i32 14
  %arrayidx42.7.i = getelementptr i32, ptr %call7.i.i128.i, i32 7
  %50 = ptrtoint ptr %arrayidx42.7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx42.7.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %53 = ptrtoint ptr %incdec.ptr45.6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incdec.ptr45.6.i, align 4
  %incdec.ptr.7.i = getelementptr i32, ptr %call.i129.i, i32 15
  %54 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %incdec.ptr.7.i, align 4
  %incdec.ptr45.7.i = getelementptr i32, ptr %call.i129.i, i32 16
  %arrayidx42.8.i = getelementptr i32, ptr %call7.i.i128.i, i32 8
  %55 = ptrtoint ptr %arrayidx42.8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx42.8.i, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  %58 = ptrtoint ptr %incdec.ptr45.7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %incdec.ptr45.7.i, align 4
  %incdec.ptr.8.i = getelementptr i32, ptr %call.i129.i, i32 17
  %59 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %incdec.ptr.8.i, align 4
  %incdec.ptr45.8.i = getelementptr i32, ptr %call.i129.i, i32 18
  %arrayidx42.9.i = getelementptr i32, ptr %call7.i.i128.i, i32 9
  %60 = ptrtoint ptr %arrayidx42.9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx42.9.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  %63 = ptrtoint ptr %incdec.ptr45.8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr45.8.i, align 4
  %incdec.ptr.9.i = getelementptr i32, ptr %call.i129.i, i32 19
  %64 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %incdec.ptr.9.i, align 4
  %incdec.ptr45.9.i = getelementptr i32, ptr %call.i129.i, i32 20
  %arrayidx42.10.i = getelementptr i32, ptr %call7.i.i128.i, i32 10
  %65 = ptrtoint ptr %arrayidx42.10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx42.10.i, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  %68 = ptrtoint ptr %incdec.ptr45.9.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %incdec.ptr45.9.i, align 4
  %incdec.ptr.10.i = getelementptr i32, ptr %call.i129.i, i32 21
  %69 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %incdec.ptr.10.i, align 4
  %incdec.ptr45.10.i = getelementptr i32, ptr %call.i129.i, i32 22
  %arrayidx42.11.i = getelementptr i32, ptr %call7.i.i128.i, i32 11
  %70 = ptrtoint ptr %arrayidx42.11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx42.11.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  %73 = ptrtoint ptr %incdec.ptr45.10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %incdec.ptr45.10.i, align 4
  %incdec.ptr.11.i = getelementptr i32, ptr %call.i129.i, i32 23
  %74 = ptrtoint ptr %incdec.ptr.11.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %incdec.ptr.11.i, align 4
  %incdec.ptr45.11.i = getelementptr i32, ptr %call.i129.i, i32 24
  %arrayidx42.12.i = getelementptr i32, ptr %call7.i.i128.i, i32 12
  %75 = ptrtoint ptr %arrayidx42.12.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx42.12.i, align 8
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #12
  %78 = ptrtoint ptr %incdec.ptr45.11.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %incdec.ptr45.11.i, align 4
  %incdec.ptr.12.i = getelementptr i32, ptr %call.i129.i, i32 25
  %79 = ptrtoint ptr %incdec.ptr.12.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %incdec.ptr.12.i, align 4
  %incdec.ptr45.12.i = getelementptr i32, ptr %call.i129.i, i32 26
  %arrayidx42.13.i = getelementptr i32, ptr %call7.i.i128.i, i32 13
  %80 = ptrtoint ptr %arrayidx42.13.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx42.13.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  %83 = ptrtoint ptr %incdec.ptr45.12.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %incdec.ptr45.12.i, align 4
  %incdec.ptr.13.i = getelementptr i32, ptr %call.i129.i, i32 27
  %84 = ptrtoint ptr %incdec.ptr.13.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %incdec.ptr.13.i, align 4
  %incdec.ptr45.13.i = getelementptr i32, ptr %call.i129.i, i32 28
  %arrayidx42.14.i = getelementptr i32, ptr %call7.i.i128.i, i32 14
  %85 = ptrtoint ptr %arrayidx42.14.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx42.14.i, align 8
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  %88 = ptrtoint ptr %incdec.ptr45.13.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %incdec.ptr45.13.i, align 4
  %incdec.ptr.14.i = getelementptr i32, ptr %call.i129.i, i32 29
  %89 = ptrtoint ptr %incdec.ptr.14.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %incdec.ptr.14.i, align 4
  %incdec.ptr45.14.i = getelementptr i32, ptr %call.i129.i, i32 30
  %arrayidx42.15.i = getelementptr i32, ptr %call7.i.i128.i, i32 15
  %90 = ptrtoint ptr %arrayidx42.15.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx42.15.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #12
  %93 = ptrtoint ptr %incdec.ptr45.14.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %incdec.ptr45.14.i, align 4
  %incdec.ptr.15.i = getelementptr i32, ptr %call.i129.i, i32 31
  %94 = ptrtoint ptr %incdec.ptr.15.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %incdec.ptr.15.i, align 4
  %95 = ptrtoint ptr %hash_tbl_pbl.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hash_tbl_pbl.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool50.not133.i = icmp eq i32 %98, 0
  br i1 %tobool50.not133.i, label %for.body41.preheader.i.if.end_crit_edge, label %for.body41.preheader.i.land.rhs.i_crit_edge

for.body41.preheader.i.land.rhs.i_crit_edge:      ; preds = %for.body41.preheader.i
  br label %land.rhs.i

for.body41.preheader.i.if.end_crit_edge:          ; preds = %for.body41.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.i:                                     ; preds = %land.rhs.i
  %incdec.ptr53.i = getelementptr i32, ptr %pbl.1134.i, i32 2
  %99 = ptrtoint ptr %incdec.ptr53.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %incdec.ptr53.i, align 4
  %tobool50.not.i = icmp eq i32 %100, 0
  br i1 %tobool50.not.i, label %while.cond.i.if.end_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %for.body41.preheader.i.land.rhs.i_crit_edge
  %pbl.1134.i = phi ptr [ %incdec.ptr53.i, %while.cond.i.land.rhs.i_crit_edge ], [ %96, %for.body41.preheader.i.land.rhs.i_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %pbl.1134.i, i32 1
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool51.not.i = icmp eq i32 %102, 0
  br i1 %tobool51.not.i, label %land.rhs.i.if.end_crit_edge, label %while.cond.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup_dma.i:                                    ; preds = %for.end.i.cleanup_dma.i_crit_edge, %for.body.i.cleanup_dma.i_crit_edge
  %.str.162.sink.i = phi ptr [ @.str.162, %for.end.i.cleanup_dma.i_crit_edge ], [ @.str.159, %for.body.i.cleanup_dma.i_crit_edge ]
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.162.sink.i) #15
  br label %for.body58.i

for.body58.i:                                     ; preds = %for.inc69.i.for.body58.i_crit_edge, %cleanup_dma.i
  %i.3135.i = phi i32 [ 0, %cleanup_dma.i ], [ %inc70.i, %for.inc69.i.for.body58.i_crit_edge ]
  %103 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hash_tbl_segments.i, align 8
  %arrayidx60.i = getelementptr ptr, ptr %104, i32 %i.3135.i
  %105 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx60.i, align 4
  %tobool61.not.i = icmp eq ptr %106, null
  br i1 %tobool61.not.i, label %for.body58.i.for.inc69.i_crit_edge, label %if.then62.i

for.body58.i.for.inc69.i_crit_edge:               ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc69.i

if.then62.i:                                      ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pcidev.i, align 4
  %dev64.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %arrayidx67.i = getelementptr i32, ptr %call7.i.i128.i, i32 %i.3135.i
  %109 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx67.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev64.i, i32 noundef 16384, ptr noundef nonnull %106, i32 noundef %110, i32 noundef 0) #12
  br label %for.inc69.i

for.inc69.i:                                      ; preds = %if.then62.i, %for.body58.i.for.inc69.i_crit_edge
  %inc70.i = add nuw nsw i32 %i.3135.i, 1
  %exitcond138.not.i = icmp eq i32 %inc70.i, 16
  br i1 %exitcond138.not.i, label %for.end71.i, label %for.inc69.i.for.body58.i_crit_edge

for.inc69.i.for.body58.i_crit_edge:               ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body58.i

for.end71.i:                                      ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i128.i) #12
  br label %cleanup_ht.i

cleanup_ht.i:                                     ; preds = %for.end71.i, %do.end9.i
  %111 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hash_tbl_segments.i, align 8
  tail call void @kfree(ptr noundef %112) #12
  %113 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %hash_tbl_segments.i, align 8
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i.if.end_crit_edge, %while.cond.i.if.end_crit_edge, %for.body41.preheader.i.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i128.i) #12
  %114 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pcidev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %t2_hash_tbl_ptr_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 27
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %t2_hash_tbl_ptr_dma, i32 noundef 3264, i32 noundef 0) #12
  %t2_hash_tbl_ptr = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 26
  %116 = ptrtoint ptr %t2_hash_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i, ptr %t2_hash_tbl_ptr, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #15
  tail call void @bnx2fc_free_fw_resc(ptr noundef %hba)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %117 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pcidev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %t2_hash_tbl_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 25
  %call.i82 = tail call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 65536, ptr noundef %t2_hash_tbl_dma, i32 noundef 3264, i32 noundef 0) #12
  %t2_hash_tbl = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 24
  %119 = ptrtoint ptr %t2_hash_tbl to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i82, ptr %t2_hash_tbl, align 4
  %tobool11.not = icmp eq ptr %call.i82, null
  br i1 %tobool11.not, label %do.end15, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #15
  tail call void @bnx2fc_free_fw_resc(ptr noundef %hba)
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.087 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %120 = ptrtoint ptr %t2_hash_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %t2_hash_tbl_dma, align 8
  %add = add nuw nsw i32 %i.087, 1
  %mul = shl i32 %add, 6
  %add20 = add i32 %121, %mul
  %122 = ptrtoint ptr %t2_hash_tbl to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %t2_hash_tbl, align 4
  %next = getelementptr %struct.fcoe_t2_hash_table_entry, ptr %123, i32 %i.087, i32 1
  %124 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add20, ptr %next, align 4
  %125 = load ptr, ptr %t2_hash_tbl, align 4
  %hi = getelementptr %struct.fcoe_t2_hash_table_entry, ptr %125, i32 %i.087, i32 1, i32 1
  %126 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %hi, align 4
  %exitcond.not = icmp eq i32 %add, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %127 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcidev.i, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  %dummy_buf_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 29
  %call.i83 = tail call ptr @dma_alloc_attrs(ptr noundef %dev28, i32 noundef 4096, ptr noundef %dummy_buf_dma, i32 noundef 3264, i32 noundef 0) #12
  %dummy_buffer = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 28
  %129 = ptrtoint ptr %dummy_buffer to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i83, ptr %dummy_buffer, align 4
  %tobool31.not = icmp eq ptr %call.i83, null
  br i1 %tobool31.not, label %do.end35, label %if.end38

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #15
  tail call void @bnx2fc_free_fw_resc(ptr noundef %hba)
  br label %cleanup

if.end38:                                         ; preds = %for.end
  %130 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pcidev.i, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %stats_buf_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 34
  %call.i84 = tail call ptr @dma_alloc_attrs(ptr noundef %dev40, i32 noundef 4096, ptr noundef %stats_buf_dma, i32 noundef 3264, i32 noundef 0) #12
  %stats_buffer = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 33
  %132 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i84, ptr %stats_buffer, align 8
  %tobool43.not = icmp eq ptr %call.i84, null
  br i1 %tobool43.not, label %do.end47, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #15
  tail call void @bnx2fc_free_fw_resc(ptr noundef %hba)
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end38.cleanup_crit_edge, %do.end35, %do.end15, %do.end, %cleanup_ht.i, %do.end.i
  %retval.0 = phi i32 [ -12, %do.end47 ], [ -12, %do.end35 ], [ -12, %do.end15 ], [ -12, %do.end ], [ 0, %if.end38.cleanup_crit_edge ], [ -12, %cleanup_ht.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_free_fw_resc(ptr nocapture noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_buffer = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 33
  %0 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %stats_buf_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 34
  %4 = ptrtoint ptr %stats_buf_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #12
  %6 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stats_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dummy_buffer = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 28
  %7 = ptrtoint ptr %dummy_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dummy_buffer, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pcidev5 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %9 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev5, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dummy_buf_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 29
  %11 = ptrtoint ptr %dummy_buf_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dummy_buf_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 4096, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #12
  %13 = ptrtoint ptr %dummy_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dummy_buffer, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %t2_hash_tbl_ptr = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 26
  %14 = ptrtoint ptr %t2_hash_tbl_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t2_hash_tbl_ptr, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %pcidev12 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %16 = ptrtoint ptr %pcidev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %t2_hash_tbl_ptr_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 27
  %18 = ptrtoint ptr %t2_hash_tbl_ptr_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t2_hash_tbl_ptr_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 8192, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #12
  %20 = ptrtoint ptr %t2_hash_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %t2_hash_tbl_ptr, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %t2_hash_tbl = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 24
  %21 = ptrtoint ptr %t2_hash_tbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t2_hash_tbl, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.end16.if.end23_crit_edge, label %if.then18

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %pcidev19 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %23 = ptrtoint ptr %pcidev19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %t2_hash_tbl_dma = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 25
  %25 = ptrtoint ptr %t2_hash_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t2_hash_tbl_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev20, i32 noundef 65536, ptr noundef nonnull %22, i32 noundef %26, i32 noundef 0) #12
  %27 = ptrtoint ptr %t2_hash_tbl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %t2_hash_tbl, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16.if.end23_crit_edge
  %hash_tbl_segments.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 21
  %28 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hash_tbl_segments.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end23.if.end9.i_crit_edge, label %if.then.i

if.end23.if.end9.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end23
  %hash_tbl_pbl.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 22
  %30 = ptrtoint ptr %hash_tbl_pbl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hash_tbl_pbl.i, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  %hash_tbl_segment_count.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 20
  %32 = ptrtoint ptr %hash_tbl_segment_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_tbl_segment_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp37.i = icmp sgt i32 %33, 0
  br i1 %cmp37.i, label %for.body.lr.ph.i, label %if.then2.i.if.end.i_crit_edge

if.then2.i.if.end.i_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.lr.ph.i:                                 ; preds = %if.then2.i
  %pcidev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pbl.038.i = phi ptr [ %31, %for.body.lr.ph.i ], [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %pbl.038.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pbl.038.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %incdec.ptr5.i = getelementptr i32, ptr %pbl.038.i, i32 2
  %37 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hash_tbl_segments.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %i.039.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 16384, ptr noundef %42, i32 noundef %36, i32 noundef 0) #12
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.then2.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %43 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hash_tbl_segments.i, align 8
  tail call void @kfree(ptr noundef %44) #12
  %45 = ptrtoint ptr %hash_tbl_segments.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %hash_tbl_segments.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %if.end23.if.end9.i_crit_edge
  %hash_tbl_pbl10.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 22
  %46 = ptrtoint ptr %hash_tbl_pbl10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hash_tbl_pbl10.i, align 4
  %tobool11.not.i = icmp eq ptr %47, null
  br i1 %tobool11.not.i, label %if.end9.i.bnx2fc_free_hash_table.exit_crit_edge, label %if.then12.i

if.end9.i.bnx2fc_free_hash_table.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnx2fc_free_hash_table.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %pcidev13.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %48 = ptrtoint ptr %pcidev13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcidev13.i, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %hash_tbl_pbl_dma.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 23
  %50 = ptrtoint ptr %hash_tbl_pbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hash_tbl_pbl_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev14.i, i32 noundef 4096, ptr noundef nonnull %47, i32 noundef %51, i32 noundef 0) #12
  %52 = ptrtoint ptr %hash_tbl_pbl10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %hash_tbl_pbl10.i, align 4
  br label %bnx2fc_free_hash_table.exit

bnx2fc_free_hash_table.exit:                      ; preds = %if.then12.i, %if.end9.i.bnx2fc_free_hash_table.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_recv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_rec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_initiate_abts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_initiate_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !141, !142, !143, !145, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !166, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !246, !247, !248, !250, !252, !253, !254, !255, !257, !259, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 72, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2fc_send_fw_fcoe_init_msg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2fc_send_fw_fcoe_init_msg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 245, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 394, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bnx2fc_send_session_enable_req._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @bnx2fc_send_session_enable_req._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 566, i32 23}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 570, i32 22}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 577, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bnx2fc_process_l2_frame_compl._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bnx2fc_process_l2_frame_compl._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 602, i32 5}
!24 = !{ptr @bnx2fc_process_l2_frame_compl._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bnx2fc_process_l2_frame_compl._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @bnx2fc_process_l2_frame_compl.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 617, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 620, i32 25}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 878, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bnx2fc_process_cq_compl._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bnx2fc_process_cq_compl._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 906, i32 4}
!38 = !{ptr @bnx2fc_process_cq_compl._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bnx2fc_process_cq_compl._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 911, i32 25}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 921, i32 25}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 934, i32 4}
!46 = !{ptr @bnx2fc_process_cq_compl._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bnx2fc_process_cq_compl._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 939, i32 25}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 944, i32 25}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 951, i32 3}
!54 = !{ptr @bnx2fc_process_cq_compl._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bnx2fc_process_cq_compl._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1081, i32 3}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bnx2fc_process_new_cqes._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @bnx2fc_process_new_cqes._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1373, i32 5}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @bnx2fc_indicate_kcqe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @bnx2fc_indicate_kcqe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1382, i32 5}
!68 = !{ptr @bnx2fc_indicate_kcqe._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bnx2fc_indicate_kcqe._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1384, i32 5}
!72 = !{ptr @bnx2fc_indicate_kcqe._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bnx2fc_indicate_kcqe._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1401, i32 5}
!76 = !{ptr @bnx2fc_indicate_kcqe._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bnx2fc_indicate_kcqe._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1407, i32 4}
!80 = !{ptr @bnx2fc_indicate_kcqe._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bnx2fc_indicate_kcqe._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1632, i32 24}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1882, i32 3}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @bnx2fc_setup_task_ctx._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @bnx2fc_setup_task_ctx._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1895, i32 3}
!91 = !{ptr @bnx2fc_setup_task_ctx._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @bnx2fc_setup_task_ctx._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1906, i32 3}
!95 = !{ptr @bnx2fc_setup_task_ctx._entry.52, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @bnx2fc_setup_task_ctx._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1919, i32 4}
!99 = !{ptr @bnx2fc_setup_task_ctx._entry.55, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @bnx2fc_setup_task_ctx._entry_ptr.57, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2124, i32 3}
!103 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @bnx2fc_setup_fw_resc._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @bnx2fc_setup_fw_resc._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2135, i32 3}
!108 = !{ptr @bnx2fc_setup_fw_resc._entry.60, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @bnx2fc_setup_fw_resc._entry_ptr.62, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2150, i32 3}
!112 = !{ptr @bnx2fc_setup_fw_resc._entry.63, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @bnx2fc_setup_fw_resc._entry_ptr.65, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2159, i32 3}
!116 = !{ptr @bnx2fc_setup_fw_resc._entry.66, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @bnx2fc_setup_fw_resc._entry_ptr.68, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!120 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 643, i32 22}
!122 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 662, i32 25}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 696, i32 23}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 697, i32 23}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 700, i32 23}
!130 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 704, i32 24}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 715, i32 4}
!134 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bnx2fc_process_unsol_compl._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bnx2fc_process_unsol_compl._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 721, i32 26}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 744, i32 4}
!141 = !{ptr @bnx2fc_process_unsol_compl._entry.79, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @bnx2fc_process_unsol_compl._entry_ptr.81, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 748, i32 23}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 758, i32 24}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 771, i32 5}
!149 = !{ptr @bnx2fc_process_unsol_compl._entry.84, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @bnx2fc_process_unsol_compl._entry_ptr.86, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 788, i32 4}
!153 = !{ptr @bnx2fc_process_unsol_compl._entry.87, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @bnx2fc_process_unsol_compl._entry_ptr.89, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.90, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 808, i32 23}
!157 = !{ptr @.str.91, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 809, i32 23}
!159 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 812, i32 23}
!161 = !{ptr @.str.93, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 829, i32 23}
!163 = !{ptr @bnx2fc_process_unsol_compl._entry.94, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 836, i32 4}
!165 = !{ptr @bnx2fc_process_unsol_compl._entry_ptr.95, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.96, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 847, i32 24}
!168 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 854, i32 3}
!170 = !{ptr @bnx2fc_process_unsol_compl._entry.97, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @bnx2fc_process_unsol_compl._entry_ptr.99, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.100, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1010, i32 3}
!174 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @bnx2fc_pending_work._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @bnx2fc_pending_work._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1137, i32 3}
!179 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @bnx2fc_fastpath_notification._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @bnx2fc_fastpath_notification._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1165, i32 3}
!184 = !{ptr @.str.105, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @bnx2fc_process_ofld_cmpl._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @bnx2fc_process_ofld_cmpl._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.106, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1168, i32 22}
!189 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1172, i32 3}
!191 = !{ptr @bnx2fc_process_ofld_cmpl._entry.107, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @bnx2fc_process_ofld_cmpl._entry_ptr.109, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.111, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1183, i32 4}
!195 = !{ptr @bnx2fc_process_ofld_cmpl._entry.110, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @bnx2fc_process_ofld_cmpl._entry_ptr.112, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.113, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1217, i32 3}
!199 = !{ptr @.str.114, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @bnx2fc_process_enable_conn_cmpl._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @bnx2fc_process_enable_conn_cmpl._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1221, i32 22}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1229, i32 3}
!206 = !{ptr @bnx2fc_process_enable_conn_cmpl._entry.116, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @bnx2fc_process_enable_conn_cmpl._entry_ptr.118, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.120, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1234, i32 3}
!210 = !{ptr @bnx2fc_process_enable_conn_cmpl._entry.119, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @bnx2fc_process_enable_conn_cmpl._entry_ptr.121, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.122, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1312, i32 3}
!214 = !{ptr @.str.123, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @bnx2fc_init_failure._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @bnx2fc_init_failure._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.125, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1316, i32 3}
!219 = !{ptr @bnx2fc_init_failure._entry.124, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @bnx2fc_init_failure._entry_ptr.126, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.128, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1320, i32 3}
!223 = !{ptr @bnx2fc_init_failure._entry.127, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @bnx2fc_init_failure._entry_ptr.129, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.131, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1323, i32 3}
!227 = !{ptr @bnx2fc_init_failure._entry.130, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @bnx2fc_init_failure._entry_ptr.132, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.134, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1326, i32 3}
!231 = !{ptr @bnx2fc_init_failure._entry.133, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @bnx2fc_init_failure._entry_ptr.135, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.137, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1329, i32 3}
!235 = !{ptr @bnx2fc_init_failure._entry.136, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @bnx2fc_init_failure._entry_ptr.138, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.139, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1256, i32 3}
!239 = !{ptr @.str.140, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @bnx2fc_process_conn_disable_cmpl._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @bnx2fc_process_conn_disable_cmpl._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.141, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1260, i32 22}
!244 = !{ptr @.str.143, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1263, i32 3}
!246 = !{ptr @bnx2fc_process_conn_disable_cmpl._entry.142, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @bnx2fc_process_conn_disable_cmpl._entry_ptr.144, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.145, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1270, i32 23}
!250 = !{ptr @.str.146, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1288, i32 3}
!252 = !{ptr @.str.147, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @bnx2fc_process_conn_destroy_cmpl._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @bnx2fc_process_conn_destroy_cmpl._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.148, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1292, i32 22}
!257 = !{ptr @.str.150, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1295, i32 3}
!259 = !{ptr @bnx2fc_process_conn_destroy_cmpl._entry.149, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @bnx2fc_process_conn_destroy_cmpl._entry_ptr.151, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.152, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 1300, i32 23}
!263 = !{ptr @.str.153, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2040, i32 3}
!265 = !{ptr @.str.154, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @bnx2fc_allocate_hash_table._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @bnx2fc_allocate_hash_table._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.156, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2046, i32 3}
!270 = !{ptr @bnx2fc_allocate_hash_table._entry.155, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @bnx2fc_allocate_hash_table._entry_ptr.157, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.159, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2056, i32 4}
!274 = !{ptr @bnx2fc_allocate_hash_table._entry.158, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @bnx2fc_allocate_hash_table._entry_ptr.160, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.162, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/bnx2fc/bnx2fc_hwi.c", i32 2065, i32 3}
!278 = !{ptr @bnx2fc_allocate_hash_table._entry.161, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @bnx2fc_allocate_hash_table._entry_ptr.163, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{!"auto-init"}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{i64 2148507895}
!292 = !{i64 2148422335, i64 2148422367, i64 2148422396, i64 2148422430, i64 2148422461, i64 2148422484}
!293 = !{!"branch_weights", i32 2000, i32 1}
!294 = !{i64 2149384009}
!295 = !{i64 2157186473}
!296 = !{i64 2157186842}
!297 = !{i64 6307947}
!298 = !{i64 2157177389, i64 2157177886, i64 2157177426, i64 2157177482, i64 2157177516, i64 2157177540, i64 2157177581, i64 2157177602, i64 2157177630, i64 2157177664}
!299 = !{i64 2148418340, i64 2148418366, i64 2148418395, i64 2148418429, i64 2148418460, i64 2148418483}
!300 = !{i64 2157232189}
!301 = !{i64 2157232555}
