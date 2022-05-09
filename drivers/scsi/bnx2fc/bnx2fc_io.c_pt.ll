; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2fc/bnx2fc_io.c_pt.bc'
source_filename = "../drivers/scsi/bnx2fc/bnx2fc_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bnx2fc_cmd = type { %struct.list_head, i8, i8, i8, i8, %struct.kref, ptr, ptr, ptr, ptr, %struct.bnx2fc_mp_req, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, i32, i32, i16, %struct.fcoe_err_report_entry, ptr, ptr, ptr, i32, i32, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bnx2fc_mp_req = type { i8, i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fcoe_err_report_entry = type { %struct.fcoe_partial_err_report_entry, %struct.fcoe_fc_hdr }
%struct.fcoe_partial_err_report_entry = type { i32, i32, i32, i32 }
%struct.fcoe_fc_hdr = type { [3 x i8], i8, [3 x i8], i8, i16, i8, i8, [3 x i8], i8, i32, i16, i16 }
%struct.bnx2fc_interface = type { %struct.list_head, i32, ptr, ptr, %struct.packet_type, %struct.packet_type, ptr, %struct.kref, i8, i32, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.bnx2fc_hba = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, i32, i32, i32, i16, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, %struct.bnx2fc_fw_stats, %struct.fcoe_statistics_params, ptr, i32, %struct.completion, %struct.fcoe_capabilities, %struct.timer_list, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, %struct.list_head, [16 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnx2fc_fw_stats = type { i64, i64, i64, i64, i64 }
%struct.fcoe_statistics_params = type { %struct.fcoe_tx_stat_params, %struct.fcoe_rx_stat_params_section0, %struct.fcoe_rx_stat_params_section1, %struct.fcoe_rx_stat_params_section2 }
%struct.fcoe_tx_stat_params = type { i32, i32, i32, i32 }
%struct.fcoe_rx_stat_params_section0 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section1 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_capabilities = type { i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bnx2fc_cmd_mgr = type { ptr, i16, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.123, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.123 = type { ptr }
%struct.io_bdt = type { ptr, ptr, i32, i16 }
%struct.bnx2fc_rport = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, %struct.atomic_t, %struct.b577xx_doorbell_set_prod, %struct.b577xx_fcoe_rx_doorbell, ptr, i32, i16, i8, i32, ptr, i32, i16, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [4 x ptr], [4 x i32], ptr, i32, %struct.spinlock, %struct.spinlock, %struct.atomic_t, i32, i32, i32, %struct.list_head, [257 x ptr], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, %struct.wait_queue_head }
%struct.b577xx_doorbell_set_prod = type { i16, i8, %struct.b577xx_doorbell_hdr }
%struct.b577xx_doorbell_hdr = type { i8 }
%struct.b577xx_fcoe_rx_doorbell = type { %struct.b577xx_doorbell_hdr, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fcoe_bd_ctx = type { i32, i32, i16, i16, i16, i16 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.fcoe_port = type { ptr, ptr, %struct.sk_buff_head, i8, i32, i32, %struct.timer_list, %struct.work_struct, [6 x i8], ptr }
%struct.sk_buff_head = type { %union.anon.103, i32, %struct.spinlock }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
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
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnx2fc_els_cb_arg = type { ptr, ptr, i16, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_rport_libfc_priv = type { ptr, i32, i16, i32, i32 }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.fcoe_fcp_rsp_payload = type { %struct.regpair, i32, i8, %struct.fcoe_fcp_rsp_flags, i16, i32, i32 }
%struct.fcoe_fcp_rsp_flags = type { i8 }
%struct.fc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@bnx2fc_cmd_mgr_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013bnx2fc: cmd_mgr_alloc: Invalid min_xid 0x%x \09\09\09\09\09and max_xid 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_cmd_mgr_alloc\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/bnx2fc/bnx2fc_io.c\00", [32 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr = internal global ptr @bnx2fc_cmd_mgr_alloc._entry, section ".printk_index", align 4
@bnx2fc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@bnx2fc_cmd_mgr_alloc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bnx2fc: min xid 0x%x, max xid 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.5 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.3, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013bnx2fc: failed to alloc cmgr\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.8 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.6, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: failed to alloc free_list\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.11 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.9, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: failed to alloc free_list_lock\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.14 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.12, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&cmgr->free_list_lock[i]\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: failed to alloc io_req\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.18 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.16, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&io_req->timeout_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&io_req->timeout_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: failed to alloc io_bdt_pool\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.25 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.23, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: failed to alloc io_bdt_pool[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.28 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.26, section ".printk_index", align 4
@bnx2fc_cmd_mgr_alloc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: failed to alloc bdt_tbl[%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_mgr_alloc._entry_ptr.31 = internal global ptr @bnx2fc_cmd_mgr_alloc._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No free els_tm cmds available ios(%d):sqes(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2fc_elstm_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2fc: elstm_alloc: list_empty\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_elstm_alloc\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_elstm_alloc._entry_ptr = internal global ptr @bnx2fc_elstm_alloc._entry, section ".printk_index", align 4
@bnx2fc_init_mp_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bnx2fc: unable to alloc MP req buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_init_mp_req\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_init_mp_req._entry_ptr = internal global ptr @bnx2fc_init_mp_req._entry, section ".printk_index", align 4
@bnx2fc_init_mp_req._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: unable to alloc TM resp buffer\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_init_mp_req._entry_ptr.39 = internal global ptr @bnx2fc_init_mp_req._entry.37, section ".printk_index", align 4
@bnx2fc_init_mp_req._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: unable to alloc MP req bd\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_init_mp_req._entry_ptr.42 = internal global ptr @bnx2fc_init_mp_req._entry.40, section ".printk_index", align 4
@bnx2fc_init_mp_req._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2fc: unable to alloc MP resp bd\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_init_mp_req._entry_ptr.45 = internal global ptr @bnx2fc_init_mp_req._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Entered bnx2fc_initiate_abts\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_abts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: initiate_abts: tgt not offloaded\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_initiate_abts\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_abts._entry_ptr = internal global ptr @bnx2fc_initiate_abts._entry, section ".printk_index", align 4
@bnx2fc_initiate_abts._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: initiate_abts: rport is NULL\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_abts._entry_ptr.51 = internal global ptr @bnx2fc_initiate_abts._entry.49, section ".printk_index", align 4
@bnx2fc_initiate_abts._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: initiate_abts: link is not ready\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_abts._entry_ptr.54 = internal global ptr @bnx2fc_initiate_abts._entry.52, section ".printk_index", align 4
@bnx2fc_initiate_abts._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: abts: couldn't allocate cmd\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_abts._entry_ptr.57 = internal global ptr @bnx2fc_initiate_abts._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ABTS io_req\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bnx2fc_initiate_seq_cleanup xid = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_seq_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bnx2fc: Unable to alloc cb_arg for seq clnup\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2fc_initiate_seq_cleanup\00", [36 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_seq_cleanup._entry_ptr = internal global ptr @bnx2fc_initiate_seq_cleanup._entry, section ".printk_index", align 4
@bnx2fc_initiate_seq_cleanup._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: cleanup: couldn't allocate cmd\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_seq_cleanup._entry_ptr.64 = internal global ptr @bnx2fc_initiate_seq_cleanup._entry.62, section ".printk_index", align 4
@bnx2fc_initiate_seq_cleanup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2fc: call init_seq_cleanup_task\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_seq_cleanup._entry_ptr.67 = internal global ptr @bnx2fc_initiate_seq_cleanup._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Entered bnx2fc_initiate_cleanup\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.69, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_initiate_cleanup\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_cleanup._entry_ptr = internal global ptr @bnx2fc_initiate_cleanup._entry, section ".printk_index", align 4
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CLEANUP io_req xid = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2fc: eh_abort: link not ready\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_eh_abort\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry_ptr = internal global ptr @bnx2fc_eh_abort._entry, section ".printk_index", align 4
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Entered bnx2fc_eh_abort\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2fc: eh_abort: io_req is NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry_ptr.76 = internal global ptr @bnx2fc_eh_abort._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"eh_abort - refcnt = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.72, ptr @.str.2, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013bnx2fc: eh_abort: io_req (xid = 0x%x) flush in progress\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry_ptr.80 = internal global ptr @bnx2fc_eh_abort._entry.78, section ".printk_index", align 4
@bnx2fc_eh_abort._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.72, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013bnx2fc: eh_abort: io_req (xid = 0x%x) not on active_q\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry_ptr.83 = internal global ptr @bnx2fc_eh_abort._entry.81, section ".printk_index", align 4
@bnx2fc_eh_abort._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.72, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013bnx2fc: eh_abort: io_req (xid = 0x%x) already in abts processing\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry_ptr.86 = internal global ptr @bnx2fc_eh_abort._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Timed out in eh_abort waiting for abts_done\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IO completed in a different context\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.72, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2fc: abort failed, xid = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_eh_abort._entry_ptr.91 = internal global ptr @bnx2fc_eh_abort._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abort succeeded\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Entered process_cleanup_compl xid = 0x%xcmd_type = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_process_seq_cleanup_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: seq cleanup ignored - xid = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnx2fc_process_seq_cleanup_compl\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_process_seq_cleanup_compl._entry_ptr = internal global ptr @bnx2fc_process_seq_cleanup_compl._entry, section ".printk_index", align 4
@bnx2fc_process_seq_cleanup_compl._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013bnx2fc: clnup_compl: Unable to send SRR IO will abort\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_process_seq_cleanup_compl._entry_ptr.98 = internal global ptr @bnx2fc_process_seq_cleanup_compl._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Entered process_cleanup_compl refcnt = %d, cmd_type = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Entered process_abts_compl xid = 0x%xrefcnt = %d, cmd_type = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timer context finished processing this io\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ABTS response - ACC Send RRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ABTS response - RJT\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_process_abts_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bnx2fc: Unknown ABTS response\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2fc_process_abts_compl\00", [38 x i8] zeroinitializer }, align 32
@bnx2fc_process_abts_compl._entry_ptr = internal global ptr @bnx2fc_process_abts_compl._entry, section ".printk_index", align 4
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Issue RRQ after R_A_TOV\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entered process_tm_compl\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2fc_process_tm_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: tmf's fc_hdr r_ctl = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_process_tm_compl\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_process_tm_compl._entry_ptr = internal global ptr @bnx2fc_process_tm_compl._entry, section ".printk_index", align 4
@bnx2fc_process_tm_compl._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: tm_compl: SCp.ptr is NULL\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_process_tm_compl._entry_ptr.112 = internal global ptr @bnx2fc_process_tm_compl._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"process_tm_compl: fcp_status = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2fc_process_tm_compl._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.109, ptr @.str.2, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: Command not on active_cmd_queue!\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_process_tm_compl._entry_ptr.116 = internal global ptr @bnx2fc_process_tm_compl._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tm_compl - wake up the waiter\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnx2fc_queuecommand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 1896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bnx2fc: Unable to post io_req\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_queuecommand\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_queuecommand._entry_ptr = internal global ptr @bnx2fc_queuecommand._entry, section ".printk_index", align 4
@.str.120 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timer context finished processing this scsi cmd\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Actual completion after cleanup request cleaning up\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_process_scsi_cmd_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: scsi_cmd_compl - sc_cmd is NULL\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnx2fc_process_scsi_cmd_compl\00", [34 x i8] zeroinitializer }, align 32
@bnx2fc_process_scsi_cmd_compl._entry_ptr = internal global ptr @bnx2fc_process_scsi_cmd_compl._entry, section ".printk_index", align 4
@bnx2fc_process_scsi_cmd_compl._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bnx2fc: SCp.ptr is NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_process_scsi_cmd_compl._entry_ptr.126 = internal global ptr @bnx2fc_process_scsi_cmd_compl._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xid not on active_cmd_queue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"scsi_cmpl: cdb_status = %d fcp_resid = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2fc_process_scsi_cmd_compl._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.123, ptr @.str.2, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: scsi_cmd_compl: fcp_status = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_process_scsi_cmd_compl._entry_ptr.131 = internal global ptr @bnx2fc_process_scsi_cmd_compl._entry.129, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bnx2fc_post_io_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2fc: BD list creation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_post_io_req\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_post_io_req._entry_ptr = internal global ptr @bnx2fc_post_io_req._entry, section ".printk_index", align 4
@bnx2fc_post_io_req._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 2082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: Flush in progress..Host Busy\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_post_io_req._entry_ptr.136 = internal global ptr @bnx2fc_post_io_req._entry.134, section ".printk_index", align 4
@bnx2fc_post_io_req._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.2, i32 2088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: Session not ready...post_io\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_post_io_req._entry_ptr.139 = internal global ptr @bnx2fc_post_io_req._entry.137, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cmd_timeout, cmd_type = %d,req_flags = %lx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IO ready for reuse now\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eh_abort timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ABTS timed out refcnt = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IO timed out. issue ABTS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IO completed before  timer expiry\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IO already in ABTS processing\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ABTS for ELS timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ELS timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: cmd_timeout: invalid cmd_type %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_cmd_timeout\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_cmd_timeout._entry_ptr = internal global ptr @bnx2fc_cmd_timeout._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnx2fc_initiate_tmf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: device_reset: rport is NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_initiate_tmf\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_tmf._entry_ptr = internal global ptr @bnx2fc_initiate_tmf._entry, section ".printk_index", align 4
@bnx2fc_initiate_tmf._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: device_reset: link is not ready\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_tmf._entry_ptr.156 = internal global ptr @bnx2fc_initiate_tmf._entry.154, section ".printk_index", align 4
@bnx2fc_initiate_tmf._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: device_reset: tgt not offloaded\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_tmf._entry_ptr.159 = internal global ptr @bnx2fc_initiate_tmf._entry.157, section ".printk_index", align 4
@bnx2fc_initiate_tmf._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.153, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013bnx2fc: tmf: Failed TMF\00", [38 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_tmf._entry_ptr.162 = internal global ptr @bnx2fc_initiate_tmf._entry.160, section ".printk_index", align 4
@bnx2fc_initiate_tmf._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.153, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: Task mgmt MP request init failed\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_tmf._entry_ptr.165 = internal global ptr @bnx2fc_initiate_tmf._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Initiate TMF - xid = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"task mgmt command failed...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"task mgmt command success...\0A\00", [34 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): Wait for cleanup timed out.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.bnx2fc_abts_cleanup = private unnamed_addr constant [20 x i8] c"bnx2fc_abts_cleanup\00", align 1
@.str.171 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scsi_done. err_code = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2fc_scsi_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bnx2fc: scsi_done - sc_cmd NULL. IO(0x%x) already cleaned up\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_scsi_done\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_scsi_done._entry_ptr = internal global ptr @bnx2fc_scsi_done._entry, section ".printk_index", align 4
@bnx2fc_scsi_done._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013bnx2fc: bnx2fc: 0x%x: sc_cmd->device is NULL.\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_scsi_done._entry_ptr.176 = internal global ptr @bnx2fc_scsi_done._entry.174, section ".printk_index", align 4
@bnx2fc_scsi_done._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bnx2fc: bnx2fc: 0x%x: sc_cmd->device->host is NULL.\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_scsi_done._entry_ptr.179 = internal global ptr @bnx2fc_scsi_done._entry.177, section ".printk_index", align 4
@.str.180 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sc=%p, result=0x%x, retries=%d, allowed=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Entered bnx2fc_lun_reset_cmpl\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LUN RST cmpl: scan for pending IOs\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_lun_reset_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013bnx2fc: lun_rst: abts already in progress for this IO 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2fc_lun_reset_cmpl\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_lun_reset_cmpl._entry_ptr = internal global ptr @bnx2fc_lun_reset_cmpl._entry, section ".printk_index", align 4
@.str.185 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Entered bnx2fc_tgt_reset_cmpl\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TGT RST cmpl: scan for pending IOs\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_tgt_reset_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.2, i32 1518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013bnx2fc: tgt_rst: abts already in progress for this IO 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2fc_tgt_reset_cmpl\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_tgt_reset_cmpl._entry_ptr = internal global ptr @bnx2fc_tgt_reset_cmpl._entry, section ".printk_index", align 4
@bnx2fc_parse_fcp_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bnx2fc: invalid sns length %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_parse_fcp_rsp\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_parse_fcp_rsp._entry_ptr = internal global ptr @bnx2fc_parse_fcp_rsp._entry, section ".printk_index", align 4
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fcp_rsp_code = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_parse_fcp_rsp._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.190, ptr @.str.2, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2fc: Truncating sense buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2fc_parse_fcp_rsp._entry_ptr.194 = internal global ptr @bnx2fc_parse_fcp_rsp._entry.192, section ".printk_index", align 4
@bnx2fc_build_bd_list_from_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013bnx2fc: bd_count = %d exceeded FW supported max BD(255), task_id = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2fc_build_bd_list_from_sg\00", [35 x i8] zeroinitializer }, align 32
@bnx2fc_build_bd_list_from_sg._entry_ptr = internal global ptr @bnx2fc_build_bd_list_from_sg._entry, section ".printk_index", align 4
@bnx2fc_map_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bnx2fc: byte_count = %d != scsi_bufflen = %d, task_id = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bnx2fc_map_sg\00", [18 x i8] zeroinitializer }, align 32
@bnx2fc_map_sg._entry_ptr = internal global ptr @bnx2fc_map_sg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 8, i64 132, i64 133]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 227, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 231, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 239, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 247, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 254, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 264, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 278, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 283, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 300, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 308, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 323, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 428, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 432, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 604, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 613, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 626, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 634, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 841, i32 24 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 848, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 854, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 860, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 867, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 896, i32 29 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 944, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 953, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 960, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 986, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1011, i32 24 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1018, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1040, i32 24 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1141, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1147, i32 22 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1153, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1157, i32 24 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1172, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1180, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1206, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1250, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1255, i32 25 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1260, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1274, i32 25 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1297, i32 29 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1302, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1312, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1325, i32 24 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1362, i32 24 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1369, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1408, i32 25 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1413, i32 25 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1416, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1421, i32 25 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1534, i32 24 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1572, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1576, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1593, i32 25 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1608, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1617, i32 25 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1896, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1920, i32 25 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1925, i32 11 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1938, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1950, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1964, i32 25 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1981, i32 26 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2017, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2068, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2082, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2088, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 48, i32 24 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 63, i32 25 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 72, i32 26 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 77, i32 26 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 93, i32 26 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 96, i32 27 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 112, i32 27 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 120, i32 26 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 136, i32 26 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 151, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 688, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 699, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 707, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 715, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 731, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 758, i32 22 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 811, i32 23 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 814, i32 23 }
@___asan_gen_.662 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 87, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1102, i32 25 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 175, i32 24 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 186, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 192, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 196, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 203, i32 24 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1463, i32 24 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1469, i32 23 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1484, i32 5 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1498, i32 24 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1504, i32 23 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1517, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1805, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1815, i32 26 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1823, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1715, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.762 = private constant [35 x i8] c"../drivers/scsi/bnx2fc/bnx2fc_io.c\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1687, i32 3 }
@llvm.compiler.used = appending global [242 x ptr] [ptr @bnx2fc_build_bd_list_from_sg._entry, ptr @bnx2fc_build_bd_list_from_sg._entry_ptr, ptr @bnx2fc_cmd_mgr_alloc._entry, ptr @bnx2fc_cmd_mgr_alloc._entry.12, ptr @bnx2fc_cmd_mgr_alloc._entry.16, ptr @bnx2fc_cmd_mgr_alloc._entry.23, ptr @bnx2fc_cmd_mgr_alloc._entry.26, ptr @bnx2fc_cmd_mgr_alloc._entry.29, ptr @bnx2fc_cmd_mgr_alloc._entry.3, ptr @bnx2fc_cmd_mgr_alloc._entry.6, ptr @bnx2fc_cmd_mgr_alloc._entry.9, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.11, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.14, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.18, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.25, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.28, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.31, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.5, ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.8, ptr @bnx2fc_cmd_timeout._entry, ptr @bnx2fc_cmd_timeout._entry_ptr, ptr @bnx2fc_eh_abort._entry, ptr @bnx2fc_eh_abort._entry.74, ptr @bnx2fc_eh_abort._entry.78, ptr @bnx2fc_eh_abort._entry.81, ptr @bnx2fc_eh_abort._entry.84, ptr @bnx2fc_eh_abort._entry.89, ptr @bnx2fc_eh_abort._entry_ptr, ptr @bnx2fc_eh_abort._entry_ptr.76, ptr @bnx2fc_eh_abort._entry_ptr.80, ptr @bnx2fc_eh_abort._entry_ptr.83, ptr @bnx2fc_eh_abort._entry_ptr.86, ptr @bnx2fc_eh_abort._entry_ptr.91, ptr @bnx2fc_elstm_alloc._entry, ptr @bnx2fc_elstm_alloc._entry_ptr, ptr @bnx2fc_init_mp_req._entry, ptr @bnx2fc_init_mp_req._entry.37, ptr @bnx2fc_init_mp_req._entry.40, ptr @bnx2fc_init_mp_req._entry.43, ptr @bnx2fc_init_mp_req._entry_ptr, ptr @bnx2fc_init_mp_req._entry_ptr.39, ptr @bnx2fc_init_mp_req._entry_ptr.42, ptr @bnx2fc_init_mp_req._entry_ptr.45, ptr @bnx2fc_initiate_abts._entry, ptr @bnx2fc_initiate_abts._entry.49, ptr @bnx2fc_initiate_abts._entry.52, ptr @bnx2fc_initiate_abts._entry.55, ptr @bnx2fc_initiate_abts._entry_ptr, ptr @bnx2fc_initiate_abts._entry_ptr.51, ptr @bnx2fc_initiate_abts._entry_ptr.54, ptr @bnx2fc_initiate_abts._entry_ptr.57, ptr @bnx2fc_initiate_cleanup._entry, ptr @bnx2fc_initiate_cleanup._entry_ptr, ptr @bnx2fc_initiate_seq_cleanup._entry, ptr @bnx2fc_initiate_seq_cleanup._entry.62, ptr @bnx2fc_initiate_seq_cleanup._entry.65, ptr @bnx2fc_initiate_seq_cleanup._entry_ptr, ptr @bnx2fc_initiate_seq_cleanup._entry_ptr.64, ptr @bnx2fc_initiate_seq_cleanup._entry_ptr.67, ptr @bnx2fc_initiate_tmf._entry, ptr @bnx2fc_initiate_tmf._entry.154, ptr @bnx2fc_initiate_tmf._entry.157, ptr @bnx2fc_initiate_tmf._entry.160, ptr @bnx2fc_initiate_tmf._entry.163, ptr @bnx2fc_initiate_tmf._entry_ptr, ptr @bnx2fc_initiate_tmf._entry_ptr.156, ptr @bnx2fc_initiate_tmf._entry_ptr.159, ptr @bnx2fc_initiate_tmf._entry_ptr.162, ptr @bnx2fc_initiate_tmf._entry_ptr.165, ptr @bnx2fc_lun_reset_cmpl._entry, ptr @bnx2fc_lun_reset_cmpl._entry_ptr, ptr @bnx2fc_map_sg._entry, ptr @bnx2fc_map_sg._entry_ptr, ptr @bnx2fc_parse_fcp_rsp._entry, ptr @bnx2fc_parse_fcp_rsp._entry.192, ptr @bnx2fc_parse_fcp_rsp._entry_ptr, ptr @bnx2fc_parse_fcp_rsp._entry_ptr.194, ptr @bnx2fc_post_io_req._entry, ptr @bnx2fc_post_io_req._entry.134, ptr @bnx2fc_post_io_req._entry.137, ptr @bnx2fc_post_io_req._entry_ptr, ptr @bnx2fc_post_io_req._entry_ptr.136, ptr @bnx2fc_post_io_req._entry_ptr.139, ptr @bnx2fc_process_abts_compl._entry, ptr @bnx2fc_process_abts_compl._entry_ptr, ptr @bnx2fc_process_scsi_cmd_compl._entry, ptr @bnx2fc_process_scsi_cmd_compl._entry.124, ptr @bnx2fc_process_scsi_cmd_compl._entry.129, ptr @bnx2fc_process_scsi_cmd_compl._entry_ptr, ptr @bnx2fc_process_scsi_cmd_compl._entry_ptr.126, ptr @bnx2fc_process_scsi_cmd_compl._entry_ptr.131, ptr @bnx2fc_process_seq_cleanup_compl._entry, ptr @bnx2fc_process_seq_cleanup_compl._entry.96, ptr @bnx2fc_process_seq_cleanup_compl._entry_ptr, ptr @bnx2fc_process_seq_cleanup_compl._entry_ptr.98, ptr @bnx2fc_process_tm_compl._entry, ptr @bnx2fc_process_tm_compl._entry.110, ptr @bnx2fc_process_tm_compl._entry.114, ptr @bnx2fc_process_tm_compl._entry_ptr, ptr @bnx2fc_process_tm_compl._entry_ptr.112, ptr @bnx2fc_process_tm_compl._entry_ptr.116, ptr @bnx2fc_queuecommand._entry, ptr @bnx2fc_queuecommand._entry_ptr, ptr @bnx2fc_scsi_done._entry, ptr @bnx2fc_scsi_done._entry.174, ptr @bnx2fc_scsi_done._entry.177, ptr @bnx2fc_scsi_done._entry_ptr, ptr @bnx2fc_scsi_done._entry_ptr.176, ptr @bnx2fc_scsi_done._entry_ptr.179, ptr @bnx2fc_tgt_reset_cmpl._entry, ptr @bnx2fc_tgt_reset_cmpl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @bnx2fc_cmd_mgr_alloc.__key, ptr @.str.15, ptr @.str.17, ptr @bnx2fc_cmd_mgr_alloc.__key.19, ptr @.str.20, ptr @bnx2fc_cmd_mgr_alloc.__key.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @init_completion.__key, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_mgr_alloc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_elstm_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_mp_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_mp_req._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_mp_req._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_mp_req._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_abts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_abts._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_abts._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_abts._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_seq_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_seq_cleanup._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_seq_cleanup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_eh_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_eh_abort._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_eh_abort._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_eh_abort._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_eh_abort._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_eh_abort._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_seq_cleanup_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_seq_cleanup_compl._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_abts_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_tm_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_tm_compl._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_tm_compl._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_queuecommand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_scsi_cmd_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_scsi_cmd_compl._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_scsi_cmd_compl._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_post_io_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_post_io_req._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_post_io_req._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cmd_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_tmf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_tmf._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_tmf._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_tmf._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_tmf._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_scsi_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_scsi_done._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_scsi_done._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_lun_reset_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_tgt_reset_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_parse_fcp_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_parse_fcp_rsp._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_build_bd_list_from_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_map_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_cmd_timer_set(ptr noundef %io_req, i32 noundef %timer_msec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %timer_work_queue = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %timer_work_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer_work_queue, align 4
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timer_msec) #9
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %timeout_work, i32 noundef %call2.i) #9
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !360
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !361

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !362

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2fc_cmd_mgr_alloc(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #9
  %add = add i32 %call4.i.i, 1
  %max_xid1 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 12
  %1 = ptrtoint ptr %max_xid1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %max_xid1, align 4
  %conv = zext i16 %2 to i32
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %do.body10 [
    i16 0, label %entry.do.end_crit_edge
    i16 -1, label %entry.do.end_crit_edge588
  ]

entry.do.end_crit_edge588:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge588
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %conv) #12
  br label %cleanup

do.body10:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %4 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body10.do.end23_crit_edge, label %do.end16, !prof !362

do.body10.do.end23_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv) #12
  br label %do.end23

do.end23:                                         ; preds = %do.end16, %do.body10.do.end23_crit_edge
  %add26 = add nuw nsw i32 %conv, 1
  %mul = shl nuw nsw i32 %add26, 2
  %add27 = add nuw nsw i32 %mul, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add27, i32 noundef 3520) #13
  %tobool29.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool29.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end36:                                         ; preds = %do.end23
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hba, ptr %call9.i.i, align 128
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !361

kcalloc.exit.thread:                              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %free_list542 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %free_list542 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %free_list542, align 8
  br label %do.end44

if.end7.i.i:                                      ; preds = %if.end36
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %free_list = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %free_list, align 8
  %tobool40.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool40.not, label %if.end7.i.i.do.end44_crit_edge, label %if.end47

if.end7.i.i.do.end44_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

do.end44:                                         ; preds = %if.end7.i.i.do.end44_crit_edge, %kcalloc.exit.thread
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %mem_err

if.end47:                                         ; preds = %if.end7.i.i
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 44) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit289.thread, label %if.end7.i.i287, !prof !361

kcalloc.exit289.thread:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %free_list_lock550 = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %free_list_lock550 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %free_list_lock550, align 4
  br label %do.end54

if.end7.i.i287:                                   ; preds = %if.end47
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i286 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #13
  %free_list_lock = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i286, ptr %free_list_lock, align 4
  %tobool50.not = icmp eq ptr %call8.i.i286, null
  br i1 %tobool50.not, label %if.end7.i.i287.do.end54_crit_edge, label %if.end59

if.end7.i.i287.do.end54_crit_edge:                ; preds = %if.end7.i.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end54:                                         ; preds = %if.end7.i.i287.do.end54_crit_edge, %kcalloc.exit289.thread
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  %16 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_list, align 8
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %free_list, align 8
  br label %mem_err

if.end59:                                         ; preds = %if.end7.i.i287
  %add.ptr = getelementptr %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 1
  %cmds = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call4.i.i)
  %cmp60559 = icmp ult i32 %call4.i.i, 2147483647
  br i1 %cmp60559, label %if.end59.for.body_crit_edge, label %if.end59.for.end_crit_edge

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end59.for.body_crit_edge
  %i.0560 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end59.for.body_crit_edge ]
  %20 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free_list, align 8
  %arrayidx = getelementptr %struct.list_head, ptr %21, i32 %i.0560
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %21, i32 %i.0560, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %prev.i, align 4
  %24 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_list_lock, align 4
  %arrayidx65 = getelementptr %struct.spinlock, ptr %25, i32 %i.0560
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx65, ptr noundef nonnull @.str.15, ptr noundef nonnull @bnx2fc_cmd_mgr_alloc.__key, i16 noundef signext 3) #9
  %inc = add nuw nsw i32 %i.0560, 1
  %exitcond.not = icmp eq i32 %i.0560, %call4.i.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end59.for.end_crit_edge
  %elstm_xids = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 15
  %26 = ptrtoint ptr %elstm_xids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %elstm_xids, align 8
  %sub69 = sub i32 %add26, %27
  br label %for.body73

for.body73:                                       ; preds = %if.end117.for.body73_crit_edge, %for.end
  %i.1561 = phi i32 [ 0, %for.end ], [ %inc119, %if.end117.for.body73_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i298 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 444) #14
  %tobool75.not = icmp eq ptr %call7.i.i298, null
  br i1 %tobool75.not, label %do.end79, label %if.end82

do.end79:                                         ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %mem_err

if.end82:                                         ; preds = %for.body73
  %29 = ptrtoint ptr %call7.i.i298 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i298, ptr %call7.i.i298, align 8
  %prev.i300 = getelementptr inbounds %struct.list_head, ptr %call7.i.i298, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i300 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i298, ptr %prev.i300, align 4
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 13
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #9
  %31 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @bnx2fc_cmd_mgr_alloc.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry91 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 13, i32 0, i32 1
  %32 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry91, ptr %entry91, align 8
  %prev.i301 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 13, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i301 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry91, ptr %prev.i301, align 4
  %func = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 13, i32 0, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bnx2fc_cmd_timeout, ptr %func, align 8
  %timer = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @bnx2fc_cmd_mgr_alloc.__key.21) #9
  %xid103 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call7.i.i298, i32 0, i32 18
  %35 = trunc i32 %i.1561 to i16
  %36 = ptrtoint ptr %xid103 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %xid103, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1561, i32 %sub69)
  %cmp104 = icmp slt i32 %i.1561, %sub69
  %37 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %free_list, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i400 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %39) #9
  br i1 %cmp104, label %if.end.i.i401, label %if.end.i.i505

if.end.i.i401:                                    ; preds = %if.end82
  %rem = urem i32 %i.1561, %call4.i.i400
  %arrayidx112 = getelementptr %struct.list_head, ptr %38, i32 %rem
  %prev.i404 = getelementptr %struct.list_head, ptr %38, i32 %rem, i32 1
  %40 = ptrtoint ptr %prev.i404 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i404, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i298, ptr noundef %41, ptr noundef %arrayidx112) #9
  br i1 %call.i.i, label %if.end.i.i401.if.end117.sink.split_crit_edge, label %if.end.i.i401.if.end117_crit_edge

if.end.i.i401.if.end117_crit_edge:                ; preds = %if.end.i.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.end.i.i401.if.end117.sink.split_crit_edge:     ; preds = %if.end.i.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117.sink.split

if.end.i.i505:                                    ; preds = %if.end82
  %arrayidx116 = getelementptr %struct.list_head, ptr %38, i32 %call4.i.i400
  %prev.i508 = getelementptr %struct.list_head, ptr %38, i32 %call4.i.i400, i32 1
  %42 = ptrtoint ptr %prev.i508 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i508, align 4
  %call.i.i509 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i298, ptr noundef %43, ptr noundef %arrayidx116) #9
  br i1 %call.i.i509, label %if.end.i.i505.if.end117.sink.split_crit_edge, label %if.end.i.i505.if.end117_crit_edge

if.end.i.i505.if.end117_crit_edge:                ; preds = %if.end.i.i505
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.end.i.i505.if.end117.sink.split_crit_edge:     ; preds = %if.end.i.i505
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117.sink.split

if.end117.sink.split:                             ; preds = %if.end.i.i505.if.end117.sink.split_crit_edge, %if.end.i.i401.if.end117.sink.split_crit_edge
  %prev.i508.sink = phi ptr [ %prev.i404, %if.end.i.i401.if.end117.sink.split_crit_edge ], [ %prev.i508, %if.end.i.i505.if.end117.sink.split_crit_edge ]
  %arrayidx116.sink = phi ptr [ %arrayidx112, %if.end.i.i401.if.end117.sink.split_crit_edge ], [ %arrayidx116, %if.end.i.i505.if.end117.sink.split_crit_edge ]
  %.sink581 = phi ptr [ %41, %if.end.i.i401.if.end117.sink.split_crit_edge ], [ %43, %if.end.i.i505.if.end117.sink.split_crit_edge ]
  %44 = ptrtoint ptr %prev.i508.sink to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i298, ptr %prev.i508.sink, align 4
  %45 = ptrtoint ptr %call7.i.i298 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx116.sink, ptr %call7.i.i298, align 8
  %46 = ptrtoint ptr %prev.i300 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.sink581, ptr %prev.i300, align 4
  %47 = ptrtoint ptr %.sink581 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i298, ptr %.sink581, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end117.sink.split, %if.end.i.i505.if.end117_crit_edge, %if.end.i.i401.if.end117_crit_edge
  %inc119 = add nuw nsw i32 %i.1561, 1
  %exitcond567 = icmp eq i32 %i.1561, %conv
  br i1 %exitcond567, label %if.end8.i.i538, label %if.end117.for.body73_crit_edge

if.end117.for.body73_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73

if.end8.i.i538:                                   ; preds = %if.end117
  %call9.i.i537 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #13
  %io_bdt_pool = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %call9.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i537, ptr %io_bdt_pool, align 16
  %tobool124.not = icmp eq ptr %call9.i.i537, null
  br i1 %tobool124.not, label %do.end128, label %if.end8.i.i538.for.body135_crit_edge

if.end8.i.i538.for.body135_crit_edge:             ; preds = %if.end8.i.i538
  br label %for.body135

do.end128:                                        ; preds = %if.end8.i.i538
  call void @__sanitizer_cov_trace_pc() #11
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %mem_err

for.cond152.preheader:                            ; preds = %for.inc149
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  br label %for.body155

for.body135:                                      ; preds = %for.inc149.for.body135_crit_edge, %if.end8.i.i538.for.body135_crit_edge
  %i.2563 = phi i32 [ %inc150, %for.inc149.for.body135_crit_edge ], [ 0, %if.end8.i.i538.for.body135_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 16) #14
  %50 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_bdt_pool, align 16
  %arrayidx138 = getelementptr ptr, ptr %51, i32 %i.2563
  %52 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i, ptr %arrayidx138, align 4
  %53 = load ptr, ptr %io_bdt_pool, align 16
  %arrayidx140 = getelementptr ptr, ptr %53, i32 %i.2563
  %54 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx140, align 4
  %tobool141.not = icmp eq ptr %55, null
  br i1 %tobool141.not, label %do.end145, label %for.inc149

do.end145:                                        ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #11
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.2563) #12
  br label %mem_err

for.inc149:                                       ; preds = %for.body135
  %inc150 = add nuw nsw i32 %i.2563, 1
  %exitcond568 = icmp eq i32 %i.2563, %conv
  br i1 %exitcond568, label %for.cond152.preheader, label %for.inc149.for.body135_crit_edge

for.inc149.for.body135_crit_edge:                 ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body135

for.body155:                                      ; preds = %for.inc168.for.body155_crit_edge, %for.cond152.preheader
  %i.3564 = phi i32 [ 0, %for.cond152.preheader ], [ %inc169, %for.inc168.for.body155_crit_edge ]
  %56 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_bdt_pool, align 16
  %arrayidx157 = getelementptr ptr, ptr %57, i32 %i.3564
  %58 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx157, align 4
  %60 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %59, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4080, ptr noundef %bd_tbl_dma, i32 noundef 3264, i32 noundef 0) #9
  %bd_tbl = getelementptr inbounds %struct.io_bdt, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %bd_tbl, align 4
  %tobool160.not = icmp eq ptr %call.i, null
  br i1 %tobool160.not, label %do.end164, label %for.inc168

do.end164:                                        ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #11
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %i.3564) #12
  br label %mem_err

for.inc168:                                       ; preds = %for.body155
  %inc169 = add nuw nsw i32 %i.3564, 1
  %exitcond569 = icmp eq i32 %i.3564, %conv
  br i1 %exitcond569, label %for.inc168.cleanup_crit_edge, label %for.inc168.for.body155_crit_edge

for.inc168.for.body155_crit_edge:                 ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body155

for.inc168.cleanup_crit_edge:                     ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mem_err:                                          ; preds = %do.end164, %do.end145, %do.end128, %do.end79, %do.end54, %do.end44
  tail call void @bnx2fc_cmd_mgr_free(ptr noundef nonnull %call9.i.i)
  br label %cleanup

cleanup:                                          ; preds = %mem_err, %for.inc168.cleanup_crit_edge, %do.end33, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %mem_err ], [ null, %do.end33 ], [ %call9.i.i, %for.inc168.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_cmd_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -132
  %cmd_type1 = getelementptr i8, ptr %work, i32 -122
  %0 = ptrtoint ptr %cmd_type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_type1, align 2
  %tgt2 = getelementptr i8, ptr %work, i32 -112
  %2 = ptrtoint ptr %tgt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgt2, align 4
  %conv = zext i8 %1 to i32
  %req_flags = getelementptr i8, ptr %work, i32 280
  %4 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_flags, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.140, i32 noundef %conv, i32 noundef %5) #9
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %3, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %req_flags) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  %call6 = tail call i32 @bnx2fc_send_rrq(ptr noundef %add.ptr) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.141) #9
  br label %done

if.end11:                                         ; preds = %if.end
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %1, label %do.end [
    i8 1, label %sw.bb
    i8 4, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end11
  %call14 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.142) #9
  %abts_done = getelementptr i8, ptr %work, i32 100
  tail call void @complete(ptr noundef %abts_done) #9
  br label %done

if.else:                                          ; preds = %sw.bb
  %7 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %req_flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %if.else31, label %if.then20

if.then20:                                        ; preds = %if.else
  %refcount = getelementptr i8, ptr %work, i32 -120
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %refcount, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.143, i32 noundef %11) #9
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then20.done_crit_edge

if.then20.done_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %add.ptr)
  tail call fastcc void @kref_put(ptr noundef %refcount)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.else31:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.144) #9
  %call33 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.145) #9
  br label %done

if.end36:                                         ; preds = %if.else31
  %call38 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.else48

if.then40:                                        ; preds = %if.end36
  %call41 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call41)
  %cmp = icmp eq i32 %call41, 8194
  br i1 %cmp, label %if.then40.done_crit_edge, label %if.end44

if.then40.done_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end44:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %refcount45 = getelementptr i8, ptr %work, i32 -120
  tail call fastcc void @kref_put(ptr noundef %refcount45)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.else48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.146) #9
  br label %done

sw.bb52:                                          ; preds = %if.end11
  %12 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %req_flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %if.else65, label %if.then56

if.then56:                                        ; preds = %sw.bb52
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.147) #9
  %call58 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.then56.done_crit_edge

if.then56.done_crit_edge:                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %refcount61 = getelementptr i8, ptr %work, i32 -120
  tail call fastcc void @kref_put(ptr noundef %refcount61)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.else65:                                        ; preds = %sw.bb52
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.148) #9
  %call67 = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.else65.done_crit_edge

if.else65.done_crit_edge:                         ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end70:                                         ; preds = %if.else65
  tail call void @_set_bit(i32 noundef 11, ptr noundef %req_flags) #9
  %cb_func = getelementptr i8, ptr %work, i32 -8
  %15 = ptrtoint ptr %cb_func to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cb_func, align 4
  %tobool72.not = icmp eq ptr %16, null
  br i1 %tobool72.not, label %if.end70.done_crit_edge, label %land.lhs.true

if.end70.done_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true:                                    ; preds = %if.end70
  %cb_arg = getelementptr i8, ptr %work, i32 -4
  %17 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb_arg, align 4
  %tobool73.not = icmp eq ptr %18, null
  br i1 %tobool73.not, label %land.lhs.true.done_crit_edge, label %if.then74

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef nonnull %18) #9
  %19 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cb_arg, align 4
  br label %done

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %conv) #12
  br label %done

done:                                             ; preds = %do.end, %if.then74, %land.lhs.true.done_crit_edge, %if.end70.done_crit_edge, %if.else65.done_crit_edge, %if.then56.done_crit_edge, %if.else48, %if.then40.done_crit_edge, %if.then35, %if.then20.done_crit_edge, %if.then16, %if.then10
  %refcount83 = getelementptr i8, ptr %work, i32 -120
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount83, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount83, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount83, ptr %refcount83, i32 1, ptr elementtype(i32) %refcount83) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount83, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount83) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %if.then60, %if.end44, %if.then25, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_cmd_mgr_free(ptr noundef %cmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_bdt_pool = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %cmgr, i32 0, i32 4
  %0 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_bdt_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.free_cmd_pool_crit_edge, label %for.cond.preheader

entry.free_cmd_pool_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cmd_pool

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %cmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmgr, align 4
  %max_xid2 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %max_xid2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_xid2, align 4
  %conv = zext i16 %5 to i32
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.090 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.090
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %bd_tbl = getelementptr inbounds %struct.io_bdt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_tbl, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %bd_tbl_dma = getelementptr inbounds %struct.io_bdt, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %bd_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_tbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4080, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %bd_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bd_tbl, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond = icmp eq i32 %i.090, %conv
  br i1 %exitcond, label %for.inc.for.body14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.inc.for.body14_crit_edge
  %i.191 = phi i32 [ %inc20, %for.body14.for.body14_crit_edge ], [ 0, %for.inc.for.body14_crit_edge ]
  %17 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx16 = getelementptr ptr, ptr %18, i32 %i.191
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  tail call void @kfree(ptr noundef %20) #9
  %21 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx18 = getelementptr ptr, ptr %22, i32 %i.191
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx18, align 4
  %inc20 = add nuw nsw i32 %i.191, 1
  %exitcond96 = icmp eq i32 %i.191, %conv
  br i1 %exitcond96, label %for.end21, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.end21:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_bdt_pool, align 4
  tail call void @kfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %io_bdt_pool, align 4
  br label %free_cmd_pool

free_cmd_pool:                                    ; preds = %for.end21, %entry.free_cmd_pool_crit_edge
  %free_list_lock = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %cmgr, i32 0, i32 3
  %27 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free_list_lock, align 4
  tail call void @kfree(ptr noundef %28) #9
  %free_list = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %cmgr, i32 0, i32 2
  %29 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free_list, align 4
  %tobool24.not = icmp eq ptr %30, null
  br i1 %tobool24.not, label %free_cmd_pool.free_cmgr_crit_edge, label %free_cmd_pool.if.end.i.i_crit_edge

free_cmd_pool.if.end.i.i_crit_edge:               ; preds = %free_cmd_pool
  br label %if.end.i.i

free_cmd_pool.free_cmgr_crit_edge:                ; preds = %free_cmd_pool
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cmgr

if.end.i.i:                                       ; preds = %for.end53, %free_cmd_pool.if.end.i.i_crit_edge
  %i.2 = phi i32 [ %inc55, %for.end53 ], [ 0, %free_cmd_pool.if.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %31) #9
  %add28 = add i32 %call4.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %add28)
  %cmp29 = icmp ult i32 %i.2, %add28
  %32 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %free_list, align 4
  br i1 %cmp29, label %for.body31, label %for.end56

for.body31:                                       ; preds = %if.end.i.i
  %arrayidx33 = getelementptr %struct.list_head, ptr %33, i32 %i.2
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx33, align 4
  %cmp43.not93 = icmp eq ptr %35, %arrayidx33
  br i1 %cmp43.not93, label %for.body31.for.end53_crit_edge, label %for.body31.for.body45_crit_edge

for.body31.for.body45_crit_edge:                  ; preds = %for.body31
  br label %for.body45

for.body31.for.end53_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.body45:                                       ; preds = %list_del.exit.for.body45_crit_edge, %for.body31.for.body45_crit_edge
  %io_req.094 = phi ptr [ %tmp.0, %list_del.exit.for.body45_crit_edge ], [ %35, %for.body31.for.body45_crit_edge ]
  %36 = ptrtoint ptr %io_req.094 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp.0 = load ptr, ptr %io_req.094, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req.094) #9
  br i1 %call.i.i, label %if.end.i.i89, label %for.body45.list_del.exit_crit_edge

for.body45.list_del.exit_crit_edge:               ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i89:                                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %io_req.094, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %io_req.094 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_req.094, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i89, %for.body45.list_del.exit_crit_edge
  %43 = ptrtoint ptr %io_req.094 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %io_req.094, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %io_req.094, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %io_req.094) #9
  %45 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %free_list, align 4
  %arrayidx42 = getelementptr %struct.list_head, ptr %46, i32 %i.2
  %cmp43.not = icmp eq ptr %tmp.0, %arrayidx42
  br i1 %cmp43.not, label %list_del.exit.for.end53_crit_edge, label %list_del.exit.for.body45_crit_edge

list_del.exit.for.body45_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

list_del.exit.for.end53_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.end53:                                        ; preds = %list_del.exit.for.end53_crit_edge, %for.body31.for.end53_crit_edge
  %inc55 = add i32 %i.2, 1
  br label %if.end.i.i

for.end56:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %33) #9
  br label %free_cmgr

free_cmgr:                                        ; preds = %for.end56, %free_cmd_pool.free_cmgr_crit_edge
  tail call void @kfree(ptr noundef %cmgr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2fc_elstm_alloc(ptr noundef %tgt, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba, align 4
  %cmd_mgr2 = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_mgr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_mgr2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %8) #9
  %max_sqes3 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 11
  %9 = ptrtoint ptr %max_sqes3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_sqes3, align 4
  %11 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %max_sqes.0 = phi i32 [ %10, %entry.sw.epilog_crit_edge ], [ 127, %sw.bb4 ], [ 128, %sw.bb ]
  %free_list_lock = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_list_lock, align 4
  %arrayidx = getelementptr %struct.spinlock, ptr %13, i32 %call4.i.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #9
  %free_sqes5 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_sqes5, i32 noundef 4) #9
  %14 = ptrtoint ptr %free_sqes5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %free_sqes5, align 4
  %free_list = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_list, align 4
  %arrayidx7 = getelementptr %struct.list_head, ptr %17, i32 %call4.i.i
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx7, align 4
  %cmp.i.not = icmp eq ptr %19, %arrayidx7
  br i1 %cmp.i.not, label %sw.epilog.if.then_crit_edge, label %lor.lhs.false

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %num_active_ios = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 56
  %20 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %max_sqes.0)
  %cmp.not = icmp uge i32 %21, %max_sqes.0
  %add = add i32 %15, %max_sqes.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %add)
  %cmp10 = icmp ult i32 %add, 257
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp10
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end22

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %num_active_ios11 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 56
  %22 = ptrtoint ptr %num_active_ios11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_active_ios11, align 4
  %24 = ptrtoint ptr %max_sqes3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_sqes3, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.32, i32 noundef %23, i32 noundef %25) #9
  %26 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %free_list, align 4
  %arrayidx15 = getelementptr %struct.list_head, ptr %27, i32 %call4.i.i
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx15, align 4
  %cmp.i84.not = icmp eq ptr %29, %arrayidx15
  br i1 %cmp.i84.not, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %30 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free_list_lock, align 4
  %arrayidx21 = getelementptr %struct.spinlock, ptr %31, i32 %call4.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21) #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %call.i.i86 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #9
  br i1 %call.i.i86, label %if.end.i.i87, label %if.end22.list_del_init.exit_crit_edge

if.end22.list_del_init.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i87:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i87, %if.end22.list_del_init.exit_crit_edge
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %19, ptr %prev.i3.i, align 4
  %xid25 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 18
  %40 = ptrtoint ptr %xid25 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %xid25, align 4
  %cmds = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 5
  %42 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmds, align 4
  %idxprom = zext i16 %41 to i32
  %arrayidx26 = getelementptr ptr, ptr %43, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %19, ptr %arrayidx26, align 4
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_ios, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_active_ios, i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_ios, ptr %num_active_ios, i32 1, ptr elementtype(i32) %num_active_ios) #9, !srcloc !366
  %call.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes5, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %free_sqes5, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes5, ptr %free_sqes5, i32 1, ptr elementtype(i32) %free_sqes5) #9, !srcloc !367
  %47 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_list_lock, align 4
  %arrayidx30 = getelementptr %struct.spinlock, ptr %48, i32 %call4.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx30) #9
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %19, ptr %19, align 4
  %50 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %19, ptr %prev.i3.i, align 4
  %port31 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 6
  %51 = ptrtoint ptr %port31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %port31, align 4
  %cmd_mgr32 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 9
  %52 = ptrtoint ptr %cmd_mgr32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %7, ptr %cmd_mgr32, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 24
  %53 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %req_flags, align 4
  %conv = trunc i32 %type to i8
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 3
  %54 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %cmd_type, align 2
  %io_bdt_pool = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 4
  %55 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx34 = getelementptr ptr, ptr %56, i32 %idxprom
  %57 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx34, align 4
  %bd_tbl35 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 21
  %59 = ptrtoint ptr %bd_tbl35 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %bd_tbl35, align 4
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %19, ptr %58, align 4
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %19, i32 0, i32 5
  %call.i.i.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %61 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %19, %list_del_init.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_TGT_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2fc_cmd_alloc(ptr noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba, align 4
  %cmd_mgr2 = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_mgr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_mgr2, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !368
  %12 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %free_list_lock = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_list_lock, align 4
  %arrayidx = getelementptr %struct.spinlock, ptr %17, i32 %15
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #9
  %free_sqes3 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_sqes3, i32 noundef 4) #9
  %18 = ptrtoint ptr %free_sqes3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %free_sqes3, align 4
  %free_list = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free_list, align 4
  %arrayidx5 = getelementptr %struct.list_head, ptr %21, i32 %15
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx5, align 4
  %cmp.i.not = icmp eq ptr %23, %arrayidx5
  br i1 %cmp.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %num_active_ios = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 56
  %24 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %25)
  %cmp = icmp ugt i32 %25, 95
  %add = add i32 %19, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %add)
  %cmp8 = icmp ult i32 %add, 257
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %26 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %free_list_lock, align 4
  %arrayidx10 = getelementptr %struct.spinlock, ptr %27, i32 %15
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx10) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !369
  %28 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i.i.i68 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i68 to ptr
  %preempt_count.i.i69 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i69, align 4
  %sub.i = add i32 %31, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i69, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i75 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #9
  br i1 %call.i.i75, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %23, ptr %prev.i3.i, align 4
  %xid16 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 18
  %40 = ptrtoint ptr %xid16 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %xid16, align 4
  %cmds = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 5
  %42 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmds, align 4
  %idxprom = zext i16 %41 to i32
  %arrayidx17 = getelementptr ptr, ptr %43, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %23, ptr %arrayidx17, align 4
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_ios, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_active_ios, i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_ios, ptr %num_active_ios, i32 1, ptr elementtype(i32) %num_active_ios) #9, !srcloc !366
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes3, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %free_sqes3, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes3, ptr %free_sqes3, i32 1, ptr elementtype(i32) %free_sqes3) #9, !srcloc !367
  %47 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_list_lock, align 4
  %arrayidx21 = getelementptr %struct.spinlock, ptr %48, i32 %15
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !370
  %49 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i.i.i72 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i72 to ptr
  %preempt_count.i.i73 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i73, align 4
  %sub.i74 = add i32 %52, -1
  store volatile i32 %sub.i74, ptr %preempt_count.i.i73, align 4
  %53 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %23, ptr %23, align 4
  %54 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %23, ptr %prev.i3.i, align 4
  %port25 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 6
  %55 = ptrtoint ptr %port25 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %1, ptr %port25, align 4
  %cmd_mgr26 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 9
  %56 = ptrtoint ptr %cmd_mgr26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %7, ptr %cmd_mgr26, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 24
  %57 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %req_flags, align 4
  %io_bdt_pool = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %7, i32 0, i32 4
  %58 = ptrtoint ptr %io_bdt_pool to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_bdt_pool, align 4
  %arrayidx28 = getelementptr ptr, ptr %59, i32 %idxprom
  %60 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx28, align 4
  %bd_tbl29 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 21
  %62 = ptrtoint ptr %bd_tbl29 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %bd_tbl29, align 4
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %23, ptr %61, align 4
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %64 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %23, %list_del_init.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_cmd_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -12
  %cmd_mgr1 = getelementptr i8, ptr %ref, i32 16
  %0 = ptrtoint ptr %cmd_mgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_mgr1, align 4
  %cmd_type = getelementptr i8, ptr %ref, i32 -2
  %2 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.end.i.i129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %xid = getelementptr i8, ptr %ref, i32 340
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xid, align 4
  %conv3 = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #9
  %rem = urem i32 %conv3, %call4.i.i
  br label %if.end

if.end.i.i129:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i128 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i.i129, %if.then
  %index.0 = phi i32 [ %rem, %if.then ], [ %call4.i.i128, %if.end.i.i129 ]
  %free_list_lock = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_list_lock, align 4
  %arrayidx = getelementptr %struct.spinlock, ptr %9, i32 %index.0
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #9
  %10 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp7.not = icmp eq i8 %11, 1
  br i1 %cmp7.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bnx2fc_free_mp_resc(ptr noundef %add.ptr)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %cmds = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmds, align 4
  %xid11 = getelementptr i8, ptr %ref, i32 340
  %14 = ptrtoint ptr %xid11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %xid11, align 4
  %idxprom = zext i16 %15 to i32
  %arrayidx12 = getelementptr ptr, ptr %13, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx12, align 4
  %call.i.i132 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #9
  br i1 %call.i.i132, label %if.end.i.i133, label %if.end10.list_del_init.exit_crit_edge

if.end10.list_del_init.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i133:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %ref, i32 -8
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i133, %if.end10.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %ref, i32 -8
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  %free_list = getelementptr inbounds %struct.bnx2fc_cmd_mgr, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free_list, align 4
  %arrayidx14 = getelementptr %struct.list_head, ptr %26, i32 %index.0
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx14, align 4
  %call.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %arrayidx14, ptr noundef %28) #9
  br i1 %call.i.i134, label %if.end.i.i135, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i135:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %add.ptr, align 4
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx14, ptr %prev.i3.i, align 4
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %add.ptr, ptr %arrayidx14, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i135, %list_del_init.exit.list_add.exit_crit_edge
  %tgt = getelementptr i8, ptr %ref, i32 8
  %33 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tgt, align 4
  %num_active_ios = getelementptr inbounds %struct.bnx2fc_rport, ptr %34, i32 0, i32 56
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_ios, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_active_ios, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_active_ios, ptr %num_active_ios, i32 1, ptr elementtype(i32) %num_active_ios) #9, !srcloc !367
  %36 = ptrtoint ptr %free_list_lock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_list_lock, align 4
  %arrayidx16 = getelementptr %struct.spinlock, ptr %37, i32 %index.0
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_free_mp_resc(ptr nocapture noundef %io_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mp_req1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10
  %port = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hba2 = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba2, align 4
  %6 = ptrtoint ptr %mp_req1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mp_req1, align 4
  %mp_req_bd = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 4
  %7 = ptrtoint ptr %mp_req_bd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mp_req_bd, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %mp_req_bd_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 5
  %11 = ptrtoint ptr %mp_req_bd_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mp_req_bd_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #9
  %13 = ptrtoint ptr %mp_req_bd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mp_req_bd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mp_resp_bd = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 10
  %14 = ptrtoint ptr %mp_resp_bd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mp_resp_bd, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev7 = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %pcidev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev7, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %mp_resp_bd_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 11
  %18 = ptrtoint ptr %mp_resp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mp_resp_bd_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 16, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #9
  %20 = ptrtoint ptr %mp_resp_bd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mp_resp_bd, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %req_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req_buf, align 4
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev14 = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %pcidev14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %req_buf_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 3
  %25 = ptrtoint ptr %req_buf_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %req_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev15, i32 noundef 4096, ptr noundef nonnull %22, i32 noundef %26, i32 noundef 0) #9
  %27 = ptrtoint ptr %req_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %req_buf, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end11.if.end18_crit_edge
  %resp_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 8
  %28 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resp_buf, align 4
  %tobool19.not = icmp eq ptr %29, null
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev21 = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %pcidev21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcidev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %resp_buf_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 9
  %32 = ptrtoint ptr %resp_buf_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resp_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev22, i32 noundef 4096, ptr noundef nonnull %29, i32 noundef %33, i32 noundef 0) #9
  %34 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %resp_buf, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_init_mp_req(ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba1, align 4
  %mp_req2 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10
  %6 = call ptr @memset(ptr %mp_req2, i32 0, i32 92)
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp.not = icmp eq i8 %8, 4
  %data_xfer_len5 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 23
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data_xfer_len5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %data_xfer_len5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %data_xfer_len5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_xfer_len5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %11, %if.else ], [ 32, %if.then ]
  %12 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %req_buf_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %req_buf_dma, i32 noundef 2592, i32 noundef 0) #9
  %req_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %req_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %req_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  tail call fastcc void @bnx2fc_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %resp_buf_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 9
  %call.i113 = tail call ptr @dma_alloc_attrs(ptr noundef %dev12, i32 noundef 4096, ptr noundef %resp_buf_dma, i32 noundef 2592, i32 noundef 0) #9
  %resp_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 8
  %19 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i113, ptr %resp_buf, align 4
  %tobool15.not = icmp eq ptr %call.i113, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  tail call fastcc void @bnx2fc_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req_buf, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 4096)
  %23 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resp_buf, align 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 4096)
  %26 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %mp_req_bd_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 5
  %call.i114 = tail call ptr @dma_alloc_attrs(ptr noundef %dev26, i32 noundef 16, ptr noundef %mp_req_bd_dma, i32 noundef 2592, i32 noundef 0) #9
  %mp_req_bd28 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 4
  %28 = ptrtoint ptr %mp_req_bd28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i114, ptr %mp_req_bd28, align 4
  %tobool30.not = icmp eq ptr %call.i114, null
  br i1 %tobool30.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  tail call fastcc void @bnx2fc_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end37:                                         ; preds = %if.end22
  %29 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcidev, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %mp_resp_bd_dma = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 11
  %call.i115 = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 16, ptr noundef %mp_resp_bd_dma, i32 noundef 2592, i32 noundef 0) #9
  %mp_resp_bd41 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 10
  %31 = ptrtoint ptr %mp_resp_bd41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i115, ptr %mp_resp_bd41, align 4
  %tobool43.not = icmp eq ptr %call.i115, null
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  tail call fastcc void @bnx2fc_free_mp_resc(ptr noundef %io_req)
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %req_buf_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %req_buf_dma, align 4
  %34 = ptrtoint ptr %mp_req_bd28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mp_req_bd28, align 4
  %buf_addr_lo = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %buf_addr_lo to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %buf_addr_lo, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %35, align 4
  %buf_len = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %buf_len to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 4096, ptr %buf_len, align 4
  %flags = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %35, i32 0, i32 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags, align 4
  %40 = ptrtoint ptr %mp_resp_bd41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mp_resp_bd41, align 4
  %42 = ptrtoint ptr %resp_buf_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resp_buf_dma, align 4
  %buf_addr_lo58 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %buf_addr_lo58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %buf_addr_lo58, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %41, align 4
  %buf_len63 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %buf_len63 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 4096, ptr %buf_len63, align 4
  %flags64 = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %41, i32 0, i32 4
  %47 = ptrtoint ptr %flags64 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags64, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end47, %do.end34, %do.end19, %do.end
  %retval.0 = phi i32 [ 8194, %if.end50 ], [ 8195, %do.end47 ], [ 8195, %do.end34 ], [ 8195, %do.end19 ], [ 8195, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_initiate_abts(ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  %rport2 = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rport2, align 4
  %rdata3 = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rdata3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdata3, align 4
  %r_a_tov4 = getelementptr inbounds %struct.fc_rport_priv, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %r_a_tov4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_a_tov4, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.46) #9
  %port5 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %8 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %lport6 = getelementptr inbounds %struct.fcoe_port, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %lport6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lport6, align 4
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  br label %abts_err

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %abts_err

if.end14:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 13
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp15.not = icmp eq i32 %18, 14
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end14.do.end20_crit_edge

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

lor.lhs.false:                                    ; preds = %if.end14
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 10
  %19 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %lor.lhs.false.do.end20_crit_edge, label %if.end23

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %if.end14.do.end20_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %abts_err

if.end23:                                         ; preds = %lor.lhs.false
  %call24 = tail call ptr @bnx2fc_elstm_alloc(ptr noundef %1, i32 noundef 3)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %abts_err

if.end32:                                         ; preds = %if.end23
  %sc_cmd = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 8
  %21 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sc_cmd, align 4
  %port33 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 6
  %22 = ptrtoint ptr %port33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %9, ptr %port33, align 4
  %tgt34 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 7
  %23 = ptrtoint ptr %tgt34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %tgt34, align 4
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 23
  %24 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %data_xfer_len, align 4
  %mp_req = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10
  %25 = call ptr @memset(ptr %mp_req, i32 0, i32 92)
  %req_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6
  %xid35 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %26 = ptrtoint ptr %xid35 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %xid35, align 4
  %fh_ox_id = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 9
  %28 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %fh_ox_id, align 4
  %task36 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 20
  %29 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task36, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %30, i32 0, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_id, align 2
  %fh_rx_id = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 10
  %33 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %fh_rx_id, align 2
  %sid37 = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %sid37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sid37, align 4
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_id, align 8
  %38 = ptrtoint ptr %req_fc_hdr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -127, ptr %req_fc_hdr, align 4
  %fh_d_id.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 1
  %shr.i.i = lshr i32 %37, 16
  %conv.i.i = trunc i32 %shr.i.i to i8
  %39 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i.i, ptr %fh_d_id.i, align 1
  %shr1.i.i = lshr i32 %37, 8
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %conv6.i.i = trunc i32 %37 to i8
  %arrayidx7.i.i = getelementptr %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %fh_s_id.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 3
  %shr.i1.i = lshr i32 %35, 16
  %conv.i2.i = trunc i32 %shr.i1.i to i8
  %42 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i2.i, ptr %fh_s_id.i, align 1
  %shr1.i3.i = lshr i32 %35, 8
  %conv3.i4.i = trunc i32 %shr1.i3.i to i8
  %arrayidx4.i5.i = getelementptr %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 3, i32 1
  %43 = ptrtoint ptr %arrayidx4.i5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv3.i4.i, ptr %arrayidx4.i5.i, align 1
  %conv6.i6.i = trunc i32 %35 to i8
  %arrayidx7.i7.i = getelementptr %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx7.i7.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv6.i6.i, ptr %arrayidx7.i7.i, align 1
  %fh_type.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 4
  %45 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %fh_type.i, align 4
  %fh_f_ctl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 5
  %46 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 41, ptr %fh_f_ctl.i, align 1
  %arrayidx4.i8.i = getelementptr %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 5, i32 1
  %47 = ptrtoint ptr %arrayidx4.i8.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx4.i8.i, align 1
  %arrayidx7.i9.i = getelementptr %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 5, i32 2
  %48 = ptrtoint ptr %arrayidx7.i9.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx7.i9.i, align 1
  %fh_cs_ctl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 2
  %49 = ptrtoint ptr %fh_cs_ctl.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %fh_cs_ctl.i, align 4
  %fh_df_ctl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 7
  %50 = ptrtoint ptr %fh_df_ctl.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %fh_df_ctl.i, align 1
  %fh_parm_offset.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 10, i32 6, i32 11
  %51 = ptrtoint ptr %fh_parm_offset.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %fh_parm_offset.i, align 4
  %xid38 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 18
  %52 = ptrtoint ptr %xid38 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %xid38, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %call24, ptr noundef nonnull @.str.58) #9
  %conv = zext i16 %53 to i32
  %div70 = lshr i32 %conv, 5
  %rem = and i32 %conv, 31
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %11, i32 0, i32 2
  %54 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hba, align 4
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %57, i32 %div70
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %arrayidx40 = getelementptr %struct.fcoe_task_ctx_entry, ptr %59, i32 %rem
  tail call void @bnx2fc_init_mp_task(ptr noundef nonnull %call24, ptr noundef %arrayidx40) #9
  %60 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port5, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %timer_work_queue.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %timer_work_queue.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %timer_work_queue.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %mul = shl i32 %7, 1
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %timeout_work.i, i32 noundef %call2.i.i) #9
  br i1 %call.i.i, label %if.then.i, label %if.end32.bnx2fc_cmd_timer_set.exit_crit_edge

if.end32.bnx2fc_cmd_timer_set.exit_crit_edge:     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_cmd_timer_set.exit

if.then.i:                                        ; preds = %if.end32
  %refcount.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !360
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !361

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %67 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i.i = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.bnx2fc_cmd_timer_set.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !362

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.bnx2fc_cmd_timer_set.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_cmd_timer_set.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %bnx2fc_cmd_timer_set.exit

bnx2fc_cmd_timer_set.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.bnx2fc_cmd_timer_set.exit_crit_edge, %if.end32.bnx2fc_cmd_timer_set.exit_crit_edge
  tail call void @bnx2fc_add_2_sq(ptr noundef %1, i16 noundef zeroext %53) #9
  tail call void @bnx2fc_ring_doorbell(ptr noundef %1) #9
  br label %abts_err

abts_err:                                         ; preds = %bnx2fc_cmd_timer_set.exit, %do.end29, %do.end20, %do.end11, %do.end
  %rc.0 = phi i32 [ 8195, %do.end11 ], [ 8195, %do.end20 ], [ 8194, %bnx2fc_cmd_timer_set.exit ], [ 8195, %do.end29 ], [ 8195, %do.end ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_IO_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_init_mp_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_add_2_sq(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_ring_doorbell(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_initiate_seq_cleanup(ptr noundef %orig_io_req, i32 noundef %offset, i32 noundef %r_ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  %xid2 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 18
  %2 = ptrtoint ptr %xid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xid2, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %orig_io_req, ptr noundef nonnull @.str.59, i32 noundef %conv) #9
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !360
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !361

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !362

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %port3 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 6
  %6 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %cleanup_err

if.end:                                           ; preds = %kref_get.exit
  %call5 = tail call ptr @bnx2fc_elstm_alloc(ptr noundef %1, i32 noundef 6)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup_err

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sc_cmd = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call5, i32 0, i32 8
  %11 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sc_cmd, align 4
  %port14 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call5, i32 0, i32 6
  %12 = ptrtoint ptr %port14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %port14, align 4
  %tgt15 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call5, i32 0, i32 7
  %13 = ptrtoint ptr %tgt15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %tgt15, align 4
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call5, i32 0, i32 23
  %14 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data_xfer_len, align 4
  %xid16 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call5, i32 0, i32 18
  %15 = ptrtoint ptr %xid16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %xid16, align 4
  %conv17 = zext i16 %16 to i32
  %div55 = lshr i32 %conv17, 5
  %rem = and i32 %conv17, 31
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hba, align 4
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %20, i32 %div55
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %arrayidx19 = getelementptr %struct.fcoe_task_ctx_entry, ptr %22, i32 %rem
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %orig_io_req, ptr %call7.i.i, align 8
  %io_req = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5, ptr %io_req, align 4
  %r_ctl20 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %r_ctl20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %r_ctl, ptr %r_ctl20, align 8
  %offset21 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %offset21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %offset, ptr %offset21, align 4
  %cb_arg22 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call5, i32 0, i32 12
  %27 = ptrtoint ptr %cb_arg22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %cb_arg22, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  tail call void @bnx2fc_init_seq_cleanup_task(ptr noundef nonnull %call5, ptr noundef %arrayidx19, ptr noundef %orig_io_req, i32 noundef %offset) #9
  tail call void @bnx2fc_add_2_sq(ptr noundef %1, i16 noundef zeroext %16) #9
  tail call void @bnx2fc_ring_doorbell(ptr noundef %1) #9
  br label %cleanup_err

cleanup_err:                                      ; preds = %if.end13, %do.end10, %do.end
  %rc.0 = phi i32 [ 0, %if.end13 ], [ -12, %do.end10 ], [ -12, %do.end ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_init_seq_cleanup_task(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_initiate_cleanup(ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.68) #9
  %port2 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr @bnx2fc_elstm_alloc(ptr noundef %1, i32 noundef 5)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %cleanup_err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sc_cmd = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sc_cmd, align 4
  %port4 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %port4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %port4, align 4
  %tgt5 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %tgt5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %tgt5, align 4
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call, i32 0, i32 23
  %9 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_xfer_len, align 4
  %xid6 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call, i32 0, i32 18
  %10 = ptrtoint ptr %xid6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %xid6, align 4
  %conv = zext i16 %11 to i32
  %div29 = lshr i32 %conv, 5
  %rem = and i32 %conv, 31
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hba, align 4
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %div29
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.fcoe_task_ctx_entry, ptr %17, i32 %rem
  %xid9 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %18 = ptrtoint ptr %xid9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %xid9, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.70, i32 noundef %conv) #9
  tail call void @bnx2fc_init_cleanup_task(ptr noundef nonnull %call, ptr noundef %arrayidx8, i16 noundef zeroext %19) #9
  tail call void @bnx2fc_add_2_sq(ptr noundef %1, i16 noundef zeroext %11) #9
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 14, ptr noundef %req_flags) #9
  tail call void @bnx2fc_ring_doorbell(ptr noundef %1) #9
  br label %cleanup_err

cleanup_err:                                      ; preds = %if.end, %do.end
  %rc.0 = phi i32 [ 0, %if.end ], [ -1, %do.end ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_init_cleanup_task(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_eh_target_reset(ptr noundef %sc_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bnx2fc_initiate_tmf(ptr noundef %sc_cmd, i8 noundef zeroext 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2fc_initiate_tmf(ptr noundef %sc_cmd, i8 noundef zeroext %tm_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %6, i32 136
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call4 = tail call i32 @scsi_is_fc_rport(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %cond.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cond.end:                                         ; preds = %entry
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %parent.i193 = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55, i32 1
  %11 = ptrtoint ptr %parent.i193 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i193, align 8
  %parent8 = getelementptr i8, ptr %12, i32 136
  %13 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent8, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 -240
  %add.ptr.i195 = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %add.ptr.i195 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i195, align 4
  %cmp = icmp eq ptr %add.ptr, null
  br i1 %cmp, label %cond.end.do.end_crit_edge, label %if.end

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %cond.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %dd_data = getelementptr i8, ptr %14, i32 -28
  %17 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data, align 4
  %call12 = tail call i32 @fc_block_scsi_eh(ptr noundef %sc_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp16.not = icmp eq i32 %20, 14
  br i1 %cmp16.not, label %lor.lhs.false, label %if.end15.do.end21_crit_edge

if.end15.do.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

lor.lhs.false:                                    ; preds = %if.end15
  %link_up = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 3
  %21 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp eq i8 %22, 0
  br i1 %tobool17.not, label %lor.lhs.false.do.end21_crit_edge, label %if.end24

lor.lhs.false.do.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end21:                                         ; preds = %lor.lhs.false.do.end21_crit_edge, %if.end15.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #12
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 1
  %flags = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 2, i32 4
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %do.end30, label %retry_tmf.preheader

retry_tmf.preheader:                              ; preds = %if.end24
  %call34208 = tail call ptr @bnx2fc_elstm_alloc(ptr noundef %arrayidx, i32 noundef 2)
  %tobool35.not209 = icmp eq ptr %call34208, null
  br i1 %tobool35.not209, label %if.then36.lr.ph, label %retry_tmf.preheader.if.end45_crit_edge

retry_tmf.preheader.if.end45_crit_edge:           ; preds = %retry_tmf.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then36.lr.ph:                                  ; preds = %retry_tmf.preheader
  %add = add i32 %4, 100
  br label %if.then36

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #12
  br label %cleanup

if.then36:                                        ; preds = %if.end44.if.then36_crit_edge, %if.then36.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp37 = icmp slt i32 %sub, 0
  br i1 %cmp37, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #12
  br label %cleanup

if.end44:                                         ; preds = %if.then36
  tail call void @msleep(i32 noundef 20) #9
  %call34 = tail call ptr @bnx2fc_elstm_alloc(ptr noundef %arrayidx, i32 noundef 2)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end44.if.then36_crit_edge, label %if.end44.if.end45_crit_edge

if.end44.if.end45_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end44.if.then36_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.end45:                                         ; preds = %if.end44.if.end45_crit_edge, %retry_tmf.preheader.if.end45_crit_edge
  %call34.lcssa = phi ptr [ %call34208, %retry_tmf.preheader.if.end45_crit_edge ], [ %call34, %if.end44.if.end45_crit_edge ]
  %sc_cmd46 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 8
  %27 = ptrtoint ptr %sc_cmd46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sc_cmd, ptr %sc_cmd46, align 4
  %port47 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 6
  %28 = ptrtoint ptr %port47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i195, ptr %port47, align 4
  %tgt48 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 7
  %29 = ptrtoint ptr %tgt48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %tgt48, align 4
  %call49 = tail call i32 @bnx2fc_init_mp_req(ptr noundef nonnull %call34.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8195, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 8195
  br i1 %cmp50, label %do.end54, label %if.end59

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  %tgt_lock = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 12, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 5
  tail call fastcc void @kref_put(ptr noundef %refcount)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end45
  %mp_req = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10
  %io_req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 4
  %30 = ptrtoint ptr %io_req_flags to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %io_req_flags, align 1
  %31 = ptrtoint ptr %mp_req to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %tm_flags, ptr %mp_req, align 4
  %req_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 2
  %32 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req_buf, align 4
  %34 = ptrtoint ptr %sc_cmd46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc_cmd46, align 4
  %36 = call ptr @memset(ptr %33, i32 0, i32 32)
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lun.i, align 8
  tail call void @int_to_scsilun(i64 noundef %40, ptr noundef %33) #9
  %data_xfer_len.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 23
  %41 = ptrtoint ptr %data_xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_xfer_len.i, align 4
  %fc_dl.i = getelementptr inbounds %struct.fcp_cmnd, ptr %33, i32 0, i32 6
  %43 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fc_dl.i, align 4
  %fc_cdb.i = getelementptr inbounds %struct.fcp_cmnd, ptr %33, i32 0, i32 5
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %35, i32 0, i32 16
  %44 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmnd.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %35, i32 0, i32 14
  %46 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %47 to i32
  %48 = call ptr @memcpy(ptr %fc_cdb.i, ptr %45, i32 %conv.i)
  %fc_cmdref.i = getelementptr inbounds %struct.fcp_cmnd, ptr %33, i32 0, i32 1
  %49 = ptrtoint ptr %fc_cmdref.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %fc_cmdref.i, align 4
  %fc_pri_ta.i = getelementptr inbounds %struct.fcp_cmnd, ptr %33, i32 0, i32 2
  %50 = ptrtoint ptr %fc_pri_ta.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %fc_pri_ta.i, align 1
  %51 = ptrtoint ptr %mp_req to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mp_req, align 4
  %fc_tm_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %33, i32 0, i32 3
  %53 = ptrtoint ptr %fc_tm_flags.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %fc_tm_flags.i, align 2
  %54 = ptrtoint ptr %io_req_flags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %io_req_flags, align 1
  %fc_flags.i = getelementptr inbounds %struct.fcp_cmnd, ptr %33, i32 0, i32 4
  %56 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %fc_flags.i, align 1
  store i8 0, ptr %fc_pri_ta.i, align 1
  %57 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %req_buf, align 4
  %fc_cdb = getelementptr inbounds %struct.fcp_cmnd, ptr %58, i32 0, i32 5
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 14
  %59 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %60 to i32
  %61 = call ptr @memset(ptr %fc_cdb, i32 0, i32 %conv)
  %fc_dl = getelementptr inbounds %struct.fcp_cmnd, ptr %58, i32 0, i32 6
  %62 = ptrtoint ptr %fc_dl to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %fc_dl, align 4
  %req_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6
  %sid62 = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 2, i32 2
  %63 = ptrtoint ptr %sid62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sid62, align 4
  %port_id = getelementptr i8, ptr %14, i32 -48
  %65 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port_id, align 8
  %67 = ptrtoint ptr %req_fc_hdr to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %req_fc_hdr, align 4
  %fh_d_id.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 1
  %shr.i.i = lshr i32 %66, 16
  %conv.i.i = trunc i32 %shr.i.i to i8
  %68 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i.i, ptr %fh_d_id.i, align 1
  %shr1.i.i = lshr i32 %66, 8
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 1, i32 1
  %69 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %conv6.i.i = trunc i32 %66 to i8
  %arrayidx7.i.i = getelementptr %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %fh_s_id.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 3
  %shr.i1.i = lshr i32 %64, 16
  %conv.i2.i = trunc i32 %shr.i1.i to i8
  %71 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i2.i, ptr %fh_s_id.i, align 1
  %shr1.i3.i = lshr i32 %64, 8
  %conv3.i4.i = trunc i32 %shr1.i3.i to i8
  %arrayidx4.i5.i = getelementptr %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 3, i32 1
  %72 = ptrtoint ptr %arrayidx4.i5.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv3.i4.i, ptr %arrayidx4.i5.i, align 1
  %conv6.i6.i = trunc i32 %64 to i8
  %arrayidx7.i7.i = getelementptr %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 3, i32 2
  %73 = ptrtoint ptr %arrayidx7.i7.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv6.i6.i, ptr %arrayidx7.i7.i, align 1
  %fh_type.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 4
  %74 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 8, ptr %fh_type.i, align 4
  %fh_f_ctl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 5
  %75 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 41, ptr %fh_f_ctl.i, align 1
  %arrayidx4.i8.i = getelementptr %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 5, i32 1
  %76 = ptrtoint ptr %arrayidx4.i8.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx4.i8.i, align 1
  %arrayidx7.i9.i = getelementptr %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 5, i32 2
  %77 = ptrtoint ptr %arrayidx7.i9.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx7.i9.i, align 1
  %fh_cs_ctl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 2
  %78 = ptrtoint ptr %fh_cs_ctl.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %fh_cs_ctl.i, align 4
  %fh_df_ctl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 7
  %79 = ptrtoint ptr %fh_df_ctl.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %fh_df_ctl.i, align 1
  %fh_parm_offset.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 10, i32 6, i32 11
  %80 = ptrtoint ptr %fh_parm_offset.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %fh_parm_offset.i, align 4
  %xid63 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 18
  %81 = ptrtoint ptr %xid63 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %xid63, align 4
  %conv64 = zext i16 %82 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.166, i32 noundef %conv64) #9
  %div190 = lshr i32 %conv64, 5
  %rem = and i32 %conv64, 31
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %16, i32 0, i32 2
  %83 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hba, align 4
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task_ctx, align 4
  %arrayidx67 = getelementptr ptr, ptr %86, i32 %div190
  %87 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx67, align 4
  %arrayidx68 = getelementptr %struct.fcoe_task_ctx_entry, ptr %88, i32 %rem
  tail call void @bnx2fc_init_mp_task(ptr noundef nonnull %call34.lcssa, ptr noundef %arrayidx68) #9
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 22
  %89 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call34.lcssa, ptr %SCp, align 4
  %tgt_lock69 = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 12, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock69) #9
  tail call void @bnx2fc_add_2_sq(ptr noundef %arrayidx, i16 noundef zeroext %82) #9
  %on_tmf_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 2
  %90 = ptrtoint ptr %on_tmf_queue to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %on_tmf_queue, align 1
  %active_tm_queue = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 71
  %prev.i = getelementptr %struct.fc_rport_libfc_priv, ptr %18, i32 71, i32 1
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call34.lcssa, ptr noundef %92, ptr noundef %active_tm_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end59.list_add_tail.exit_crit_edge

if.end59.list_add_tail.exit_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call34.lcssa, ptr %prev.i, align 4
  %94 = ptrtoint ptr %call34.lcssa to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %active_tm_queue, ptr %call34.lcssa, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call34.lcssa, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call34.lcssa, ptr %92, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end59.list_add_tail.exit_crit_edge
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 14
  %97 = ptrtoint ptr %abts_done to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %abts_done, align 4
  %wait.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.169, ptr noundef nonnull @init_completion.__key) #9
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 16
  %98 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %wait_for_abts_comp, align 4
  tail call void @bnx2fc_ring_doorbell(ptr noundef %arrayidx) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock69) #9
  %tm_timeout = getelementptr inbounds %struct.bnx2fc_interface, ptr %16, i32 0, i32 11
  %99 = ptrtoint ptr %tm_timeout to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tm_timeout, align 1
  %conv72 = zext i8 %100 to i32
  %mul = mul nuw nsw i32 %conv72, 100
  %call73 = tail call i32 @wait_for_completion_timeout(ptr noundef %abts_done, i32 noundef %mul) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock69) #9
  %101 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %wait_for_abts_comp, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 24
  %102 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %req_flags, align 4
  %104 = and i32 %103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool77.not = icmp eq i32 %104, 0
  br i1 %tobool77.not, label %if.then78, label %if.end97

if.then78:                                        ; preds = %list_add_tail.exit
  tail call void @_set_bit(i32 noundef 5, ptr noundef %req_flags) #9
  %105 = ptrtoint ptr %on_tmf_queue to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %on_tmf_queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool81.not = icmp eq i8 %106, 0
  br i1 %tobool81.not, label %if.then78.if.end85_crit_edge, label %if.then82

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %if.then78
  %call.i.i196 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call34.lcssa) #9
  br i1 %call.i.i196, label %if.end.i.i197, label %if.then82.list_del_init.exit_crit_edge

if.then82.list_del_init.exit_crit_edge:           ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i197:                                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call34.lcssa, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i, align 4
  %109 = ptrtoint ptr %call34.lcssa to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call34.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev1.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %108, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i197, %if.then82.list_del_init.exit_crit_edge
  %113 = ptrtoint ptr %call34.lcssa to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %call34.lcssa, ptr %call34.lcssa, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call34.lcssa, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call34.lcssa, ptr %prev.i3.i, align 4
  %115 = ptrtoint ptr %on_tmf_queue to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %on_tmf_queue, align 1
  br label %if.end85

if.end85:                                         ; preds = %list_del_init.exit, %if.then78.if.end85_crit_edge
  %wait_for_cleanup_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 17
  %116 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %wait_for_cleanup_comp, align 4
  %cleanup_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 15
  %117 = ptrtoint ptr %cleanup_done to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %cleanup_done, align 4
  %wait.i198 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i198, ptr noundef nonnull @.str.169, ptr noundef nonnull @init_completion.__key) #9
  %call86 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef nonnull %call34.lcssa)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock69) #9
  %call89 = tail call i32 @wait_for_completion_timeout(ptr noundef %cleanup_done, i32 noundef 300) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock69) #9
  %118 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %wait_for_cleanup_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool92.not = icmp eq i32 %call89, 0
  br i1 %tobool92.not, label %if.then93, label %if.end97.thread204

if.end97.thread204:                               ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock69) #9
  br label %if.else

if.then93:                                        ; preds = %if.end85
  %refcount94 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call34.lcssa, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount94, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount94, i32 1, i32 3, i32 1) #9
  %119 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount94, ptr %refcount94, i32 1, ptr elementtype(i32) %refcount94) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %119, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end97.thread_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.if.end97.thread_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.thread

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount94, i32 noundef 3) #9
  br label %if.end97.thread

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount94) #9
  br label %if.end97.thread

if.end97.thread:                                  ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end97.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock69) #9
  br label %if.then100

if.end97:                                         ; preds = %list_add_tail.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool99.not = icmp eq i32 %call73, 0
  br i1 %tobool99.not, label %if.end97.if.then100_crit_edge, label %if.end97.if.else_crit_edge

if.end97.if.else_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end97.if.then100_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then100

if.then100:                                       ; preds = %if.end97.if.then100_crit_edge, %if.end97.thread
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.167) #9
  br label %cleanup

if.else:                                          ; preds = %if.end97.if.else_crit_edge, %if.end97.thread204
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.168) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then100, %do.end54, %do.end41, %do.end30, %do.end21, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call12, %if.end.cleanup_crit_edge ], [ 8195, %do.end ], [ 8195, %do.end21 ], [ 8195, %do.end54 ], [ 8194, %if.else ], [ 8195, %if.then100 ], [ 8195, %do.end41 ], [ 8195, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_eh_device_reset(ptr noundef %sc_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bnx2fc_initiate_tmf(ptr noundef %sc_cmd, i8 noundef zeroext 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_eh_abort(ptr noundef %sc_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i202 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i202 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i202, align 8
  %parent5 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent5, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 11
  %12 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data, align 4
  %call6 = tail call i32 @fc_block_scsi_eh(ptr noundef %sc_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 1, i32 13, i32 13, i32 1, i32 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %19)
  %cmp.not = icmp eq i32 %19, 14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %link_up = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 1, i32 13, i32 13, i32 1, i32 3
  %20 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  br i1 %tobool10.not, label %lor.lhs.false.do.end_crit_edge, label %if.end14

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 1
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.73) #9
  %tgt_lock = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 12, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 22
  %22 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %SCp, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %24 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %refcount, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.77, i32 noundef %25) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !360
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !361

if.end23.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !362

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %tgt27 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 7
  %28 = ptrtoint ptr %tgt27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tgt27, align 4
  %cmp28.not = icmp eq ptr %arrayidx, %29
  br i1 %cmp28.not, label %do.end40, label %do.body32, !prof !362

do.body32:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1163, 0\0A.popsection", ""() #9, !srcloc !371
  unreachable

do.end40:                                         ; preds = %kref_get.exit
  %flush_in_prog = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 17, i32 2
  %30 = ptrtoint ptr %flush_in_prog to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flush_in_prog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool41.not = icmp eq i32 %31, 0
  br i1 %tobool41.not, label %if.end51, label %do.end45

do.end45:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 18
  %32 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %xid, align 4
  %conv = zext i16 %33 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %conv) #12
  tail call fastcc void @kref_put(ptr noundef %refcount)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.end51:                                         ; preds = %do.end40
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 1
  %34 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %on_active_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp53 = icmp eq i8 %35, 0
  br i1 %cmp53, label %do.end58, label %if.end64

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %xid60 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 18
  %36 = ptrtoint ptr %xid60 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %xid60, align 4
  %conv61 = zext i16 %37 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %conv61) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end51
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %23) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end64.list_del_init.exit_crit_edge

if.end64.list_del_init.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end64.list_del_init.exit_crit_edge
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %23, ptr %prev.i3.i, align 4
  %46 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %on_active_queue, align 4
  %io_retire_queue = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 70, i32 3
  %prev.i = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 70, i32 4
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %23, ptr noundef %48, ptr noundef %io_retire_queue) #9
  br i1 %call.i.i204, label %if.end.i.i205, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i205:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %23, ptr %prev.i, align 4
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %io_retire_queue, ptr %23, align 4
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev.i3.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %23, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i205, %list_del_init.exit.list_add_tail.exit_crit_edge
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 14
  %53 = ptrtoint ptr %abts_done to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %abts_done, align 4
  %wait.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.169, ptr noundef nonnull @init_completion.__key) #9
  %cleanup_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 15
  %54 = ptrtoint ptr %cleanup_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %cleanup_done, align 4
  %wait.i206 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i206, ptr noundef nonnull @.str.169, ptr noundef nonnull @init_completion.__key) #9
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 24
  %call67 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end84, label %do.end72

do.end72:                                         ; preds = %list_add_tail.exit
  %xid74 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 18
  %55 = ptrtoint ptr %xid74 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %xid74, align 4
  %conv75 = zext i16 %56 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %conv75) #12
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 13
  %call77 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #9
  br i1 %call77, label %if.then78, label %do.end72.if.end81_crit_edge

do.end72.if.end81_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then78:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %do.end72.if.end81_crit_edge
  tail call fastcc void @bnx2fc_abts_cleanup(ptr noundef nonnull %23)
  tail call void @_set_bit(i32 noundef 6, ptr noundef %req_flags) #9
  br label %done

if.end84:                                         ; preds = %list_add_tail.exit
  %timeout_work85 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 13
  %call86 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work85) #9
  br i1 %call86, label %if.then87, label %if.end84.if.end90_crit_edge

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then87:                                        ; preds = %if.end84
  %call.i.i.i.i.i.i207 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i209, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i208 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i208, label %if.end5.i.i.i.i.if.end90_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.if.end90_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end90

if.then.i209:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %if.end90

if.end90:                                         ; preds = %if.then.i209, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end90_crit_edge, %if.end84.if.end90_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %req_flags) #9
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 16
  %58 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %wait_for_abts_comp, align 4
  %call92 = tail call i32 @bnx2fc_initiate_abts(ptr noundef nonnull %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8195, i32 %call92)
  %cmp93 = icmp eq i32 %call92, 8195
  br i1 %cmp93, label %if.then95, label %if.end101

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %wait_for_cleanup_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 17
  %59 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %wait_for_cleanup_comp, align 4
  %call96 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef nonnull %23)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  tail call void @wait_for_completion(ptr noundef %cleanup_done) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %60 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %wait_for_cleanup_comp, align 4
  br label %done

if.end101:                                        ; preds = %if.end90
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  %r_a_tov = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %13, i32 0, i32 4
  %61 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %r_a_tov, align 4
  %mul = shl i32 %62, 1
  %add = or i32 %mul, 1
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add) #9
  %call105 = tail call i32 @wait_for_completion_timeout(ptr noundef %abts_done, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end101.if.end108_crit_edge, label %if.then107

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.87) #9
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end101.if.end108_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %63 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %wait_for_abts_comp, align 4
  %64 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %req_flags, align 4
  %66 = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool113.not = icmp eq i32 %66, 0
  br i1 %tobool113.not, label %if.else, label %if.then114

if.then114:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.88) #9
  br label %done

if.else:                                          ; preds = %if.end108
  %call116 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.end121, label %if.else127

do.end121:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %xid123 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %23, i32 0, i32 18
  %67 = ptrtoint ptr %xid123 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %xid123, align 4
  %conv124 = zext i16 %68 to i32
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv124) #12
  tail call fastcc void @bnx2fc_abts_cleanup(ptr noundef nonnull %23)
  br label %done

if.else127:                                       ; preds = %if.else
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.92) #9
  tail call fastcc void @bnx2fc_scsi_done(ptr noundef nonnull %23, i32 noundef 5)
  %call.i.i.i.i.i.i210 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i211 = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i211)
  %cmp.i.i.i.i212 = icmp eq i32 %asmresult.i.i.i.i.i.i.i211, 1
  br i1 %cmp.i.i.i.i212, label %if.then.i216, label %if.end5.i.i.i.i214

if.end5.i.i.i.i214:                               ; preds = %if.else127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i211)
  %.not.i.i.i.i213 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i211, 0
  br i1 %.not.i.i.i.i213, label %if.end5.i.i.i.i214.done_crit_edge, label %if.then10.i.i.i.i215, !prof !362

if.end5.i.i.i.i214.done_crit_edge:                ; preds = %if.end5.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then10.i.i.i.i215:                             ; preds = %if.end5.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %done

if.then.i216:                                     ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %done

done:                                             ; preds = %if.then.i216, %if.then10.i.i.i.i215, %if.end5.i.i.i.i214.done_crit_edge, %do.end121, %if.then114, %if.then95, %if.end81
  %rc.0 = phi i32 [ 8195, %if.end81 ], [ 8195, %if.then95 ], [ 8194, %if.then114 ], [ 8194, %do.end121 ], [ 8194, %if.end5.i.i.i.i214.done_crit_edge ], [ 8194, %if.then10.i.i.i.i215 ], [ 8194, %if.then.i216 ]
  %call.i.i.i.i.i.i218 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i219 = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i219)
  %cmp.i.i.i.i220 = icmp eq i32 %asmresult.i.i.i.i.i.i.i219, 1
  br i1 %cmp.i.i.i.i220, label %if.then.i224, label %if.end5.i.i.i.i222

if.end5.i.i.i.i222:                               ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i219)
  %.not.i.i.i.i221 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i219, 0
  br i1 %.not.i.i.i.i221, label %if.end5.i.i.i.i222.kref_put.exit225_crit_edge, label %if.then10.i.i.i.i223, !prof !362

if.end5.i.i.i.i222.kref_put.exit225_crit_edge:    ; preds = %if.end5.i.i.i.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit225

if.then10.i.i.i.i223:                             ; preds = %if.end5.i.i.i.i222
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit225

if.then.i224:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %kref_put.exit225

kref_put.exit225:                                 ; preds = %if.then.i224, %if.then10.i.i.i.i223, %if.end5.i.i.i.i222.kref_put.exit225_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit225, %do.end58, %do.end45, %do.end19, %do.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %do.end ], [ 8194, %do.end45 ], [ 8195, %do.end58 ], [ %rc.0, %kref_put.exit225 ], [ 8194, %do.end19 ], [ %call6, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_block_scsi_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !362

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %kref)
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_abts_cleanup(ptr noundef %io_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  %cleanup_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 15
  %2 = ptrtoint ptr %cleanup_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cleanup_done, align 4
  %wait.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.169, ptr noundef nonnull @init_completion.__key) #9
  %wait_for_cleanup_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 17
  %3 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %wait_for_cleanup_comp, align 4
  %call = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %io_req)
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 54
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %cleanup_done, i32 noundef 300) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.170, ptr noundef nonnull @__func__.bnx2fc_abts_cleanup) #9
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %5 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait_for_cleanup_comp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_scsi_done(ptr noundef %io_req, i32 noundef %err_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.171, i32 noundef %err_code) #9
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 24
  %4 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %req_flags, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_cmd1, align 4
  %port.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba1.i, align 4
  %bd_tbl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 21
  %15 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid.i = getelementptr inbounds %struct.io_bdt, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bd_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  %tobool2.not.i = icmp eq ptr %8, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.end4.bnx2fc_unmap_sg_list.exit_crit_edge, label %land.lhs.true3.i

if.end4.bnx2fc_unmap_sg_list.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_unmap_sg_list.exit

land.lhs.true3.i:                                 ; preds = %if.end4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 17, i32 0, i32 1
  %19 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.bnx2fc_unmap_sg_list.exit_crit_edge, label %if.then.i

land.lhs.true3.i.bnx2fc_unmap_sg_list.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_unmap_sg_list.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 17
  %23 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdb.i.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 15
  %25 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sc_data_direction.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %24, i32 noundef %20, i32 noundef %26, i32 noundef 0) #9
  %27 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid8.i = getelementptr inbounds %struct.io_bdt, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bd_valid8.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %bd_valid8.i, align 4
  br label %bnx2fc_unmap_sg_list.exit

bnx2fc_unmap_sg_list.exit:                        ; preds = %if.then.i, %land.lhs.true3.i.bnx2fc_unmap_sg_list.exit_crit_edge, %if.end4.bnx2fc_unmap_sg_list.exit_crit_edge
  %30 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %sc_cmd1, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end, label %if.end10

do.end:                                           ; preds = %bnx2fc_unmap_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %31 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %xid, align 4
  %conv8 = zext i16 %32 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %conv8) #12
  br label %cleanup

if.end10:                                         ; preds = %bnx2fc_unmap_sg_list.exit
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %tobool11.not = icmp eq ptr %34, null
  br i1 %tobool11.not, label %do.end15, label %if.end20

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %xid17 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %35 = ptrtoint ptr %xid17 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %xid17, align 4
  %conv18 = zext i16 %36 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %conv18) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %tobool22.not = icmp eq ptr %38, null
  br i1 %tobool22.not, label %do.end26, label %if.end31

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %xid28 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %39 = ptrtoint ptr %xid28 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %xid28, align 4
  %conv29 = zext i16 %40 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %conv29) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %err_code, 16
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %41 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl, ptr %result, align 4
  %and = and i32 %err_code, 255
  %retries = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retries, align 4
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 9
  %44 = ptrtoint ptr %allowed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %allowed, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.180, ptr noundef nonnull %1, i32 noundef %and, i32 noundef %43, i32 noundef %45) #9
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %resid_len.i, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %49 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %SCp, align 4
  tail call void @scsi_done(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end26, %do.end15, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_seq_cleanup_compl(ptr nocapture noundef %seq_clnp_req, ptr nocapture noundef readnone %task, i8 noundef zeroext %rx_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_arg1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %seq_clnp_req, i32 0, i32 12
  %0 = ptrtoint ptr %cb_arg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_arg1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %offset2 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset2, align 4
  %r_ctl3 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %r_ctl3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_ctl3, align 4
  %tgt4 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %tgt4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tgt4, align 4
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %seq_clnp_req, i32 0, i32 18
  %10 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %xid, align 4
  %conv = zext i16 %11 to i32
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %seq_clnp_req, i32 0, i32 3
  %12 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_type, align 2
  %conv5 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.93, i32 noundef %conv, i32 noundef %conv5) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %rx_state)
  %cmp = icmp eq i8 %rx_state, 11
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %xid, align 4
  %conv9 = zext i16 %15 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv9) #12
  br label %free_cb_arg

if.end:                                           ; preds = %entry
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %9, i32 0, i32 54
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  %conv10 = trunc i32 %7 to i8
  %call11 = tail call i32 @bnx2fc_send_srr(ptr noundef %3, i32 noundef %5, i8 noundef zeroext %conv10) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %do.end16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end.if.end19_crit_edge
  %16 = ptrtoint ptr %cb_arg1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cb_arg1, align 4
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.free_cb_arg_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.free_cb_arg_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cb_arg

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %free_cb_arg

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %free_cb_arg

free_cb_arg:                                      ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.free_cb_arg_crit_edge, %do.end
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_srr(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_cleanup_compl(ptr noundef %io_req, ptr nocapture readnone %task, i8 zeroext %num_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_type, align 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.99, i32 noundef %1, i32 noundef %conv) #9
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 24
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 14, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.end

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %req_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %req_flags, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  tail call void @_set_bit(i32 noundef 3, ptr noundef %req_flags) #9
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 16
  %10 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wait_for_abts_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call fastcc void @bnx2fc_scsi_done(ptr noundef %io_req, i32 noundef 7)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %wait_for_cleanup_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 17
  %13 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wait_for_cleanup_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %kref_put.exit.if.end18_crit_edge, label %if.then17

kref_put.exit.if.end18_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cleanup_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 15
  tail call void @complete(ptr noundef %cleanup_done) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %kref_put.exit.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_abts_compl(ptr noundef %io_req, ptr nocapture noundef readonly %task, i8 noundef zeroext %num_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xid, align 4
  %conv = zext i16 %3 to i32
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount, align 4
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_type, align 2
  %conv2 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.100, i32 noundef %conv, i32 noundef %5, i32 noundef %conv2) #9
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 24
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.101) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %req_flags, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %req_flags) #9
  %wait_for_cleanup_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 17
  %11 = ptrtoint ptr %wait_for_cleanup_comp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wait_for_cleanup_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %cleanup_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 15
  tail call void @complete(ptr noundef %cleanup_done) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call14 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.io_compl_crit_edge

if.end12.io_compl_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_compl

if.end17:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %req_flags, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %if.then21

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %call22 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #9
  br i1 %call22, label %if.then23, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.then21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end27_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.if.end27_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end27

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end27_crit_edge, %if.then21.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %union_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %union_ctx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %union_ctx, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %18, label %do.end [
    i8 -124, label %sw.bb
    i8 -123, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.102) #9
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.106) #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %req_flags) #9
  br label %if.end35

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.103) #9
  br label %if.end35

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end, %sw.bb30, %sw.bb
  tail call void @_set_bit(i32 noundef 7, ptr noundef %req_flags) #9
  %port.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %timer_work_queue.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %timer_work_queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %timer_work_queue.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %timeout_work.i, i32 noundef 1000) #9
  br i1 %call.i.i, label %if.then.i88, label %if.end35.io_compl_crit_edge

if.end35.io_compl_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_compl

if.then.i88:                                      ; preds = %if.end35
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !360
  %asmresult.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i87)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i87, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !361

if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i88
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i87, 1
  %27 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.io_compl_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !362

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.io_compl_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_compl

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i.i) #9
  br label %io_compl

io_compl:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.io_compl_crit_edge, %if.end35.io_compl_crit_edge, %if.end12.io_compl_crit_edge
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 16
  %28 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wait_for_abts_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %io_compl
  %call40 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then38.cleanup_crit_edge, label %if.then42

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done) #9
  br label %cleanup

if.else:                                          ; preds = %io_compl
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 1
  %30 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %on_active_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool44.not = icmp eq i8 %31, 0
  br i1 %tobool44.not, label %if.else.if.end48_crit_edge, label %if.then45

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %if.else
  %call.i.i89 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req) #9
  br i1 %call.i.i89, label %if.end.i.i, label %if.then45.list_del_init.exit_crit_edge

if.then45.list_del_init.exit_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then45.list_del_init.exit_crit_edge
  %38 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %io_req, ptr %io_req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %io_req, ptr %prev.i3.i, align 4
  %40 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %on_active_queue, align 4
  %io_retire_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 64
  %prev.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 64, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i90 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_req, ptr noundef %42, ptr noundef %io_retire_queue) #9
  br i1 %call.i.i90, label %if.end.i.i91, label %list_del_init.exit.if.end48_crit_edge

list_del_init.exit.if.end48_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end.i.i91:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %io_req, ptr %prev.i, align 4
  %44 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %io_retire_queue, ptr %io_req, align 4
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i3.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %io_req, ptr %42, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end.i.i91, %list_del_init.exit.if.end48_crit_edge, %if.else.if.end48_crit_edge
  tail call fastcc void @bnx2fc_scsi_done(ptr noundef %io_req, i32 noundef 7)
  %call.i.i.i.i.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i93 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i93)
  %cmp.i.i.i.i94 = icmp eq i32 %asmresult.i.i.i.i.i.i.i93, 1
  br i1 %cmp.i.i.i.i94, label %if.then.i98, label %if.end5.i.i.i.i96

if.end5.i.i.i.i96:                                ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i93)
  %.not.i.i.i.i95 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i93, 0
  br i1 %.not.i.i.i.i95, label %if.end5.i.i.i.i96.cleanup_crit_edge, label %if.then10.i.i.i.i97, !prof !362

if.end5.i.i.i.i96.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i97:                              ; preds = %if.end5.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i98:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i98, %if.then10.i.i.i.i97, %if.end5.i.i.i.i96.cleanup_crit_edge, %if.then42, %if.then38.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_tm_compl(ptr noundef %io_req, ptr nocapture noundef readonly %task, i8 noundef zeroext %num_rq, ptr nocapture noundef readonly %rq_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.107) #9
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 24
  %2 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %req_flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 4, ptr noundef %req_flags) #9
  %mp_req = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10
  %resp_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 12
  %union_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %union_ctx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %union_ctx, align 8
  %7 = ptrtoint ptr %resp_fc_hdr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %resp_fc_hdr, align 8
  %arrayidx5 = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 12, i32 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 12, i32 9
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx8, align 8
  %mp_payload_len = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %mp_payload_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mp_payload_len, align 4
  %resp_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 7
  %16 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %resp_len, align 4
  %17 = lshr i64 %6, 56
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %17)
  %cmp = icmp eq i64 %17, 7
  br i1 %cmp, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.then
  %resp_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10, i32 8
  %18 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resp_buf, align 4
  tail call fastcc void @bnx2fc_parse_fcp_rsp(ptr noundef %io_req, ptr noundef %19, i8 noundef zeroext %num_rq, ptr noundef %rq_data)
  %fcp_rsp_code = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 34
  %20 = ptrtoint ptr %fcp_rsp_code to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fcp_rsp_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp14 = icmp eq i8 %21, 0
  br i1 %cmp14, label %if.then16, label %if.then12.if.end33_crit_edge

if.then12.if.end33_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then16:                                        ; preds = %if.then12
  %22 = ptrtoint ptr %mp_req to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mp_req, align 4
  %conv17 = zext i8 %23 to i32
  %and = and i32 %conv17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.then16
  %24 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_cmd1, align 4
  %tgt2.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %26 = ptrtoint ptr %tgt2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tgt2.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun.i, align 8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.181) #9
  %active_cmd_queue.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %27, i32 0, i32 62
  %32 = ptrtoint ptr %active_cmd_queue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %active_cmd_queue.i, align 4
  %cmp.not70.i = icmp eq ptr %33, %active_cmd_queue.i
  br i1 %cmp.not70.i, label %if.then19.if.end33_crit_edge, label %for.body.lr.ph.i

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.body.lr.ph.i:                                 ; preds = %if.then19
  %timeout_work.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %refcount.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmd.071.i = phi ptr [ %33, %for.body.lr.ph.i ], [ %tmp.072.i, %for.inc.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %cmd.071.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp.072.i = load ptr, ptr %cmd.071.i, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %27, ptr noundef nonnull @.str.182) #9
  %sc_cmd11.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %cmd.071.i, i32 0, i32 8
  %35 = ptrtoint ptr %sc_cmd11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc_cmd11.i, align 4
  %device12.i = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %device12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device12.i, align 4
  %lun13.i = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %lun13.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lun13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %31)
  %cmp14.i = icmp eq i64 %40, %31
  br i1 %cmp14.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %req_flags.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %cmd.071.i, i32 0, i32 24
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %req_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then15.i, label %do.end46.i

if.then15.i:                                      ; preds = %if.then.i
  %call16.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #9
  br i1 %call16.i, label %if.then17.i, label %if.then15.i.if.end.i_crit_edge

if.then15.i.if.end.i_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then17.i:                                      ; preds = %if.then15.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !362

if.end5.i.i.i.i.i.if.end.i_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i_crit_edge, %if.then15.i.if.end.i_crit_edge
  %call19.i = tail call i32 @bnx2fc_initiate_abts(ptr noundef %cmd.071.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 8194
  br i1 %cmp20.not.i, label %if.end.i.for.inc.i_crit_edge, label %do.end.i, !prof !362

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1482, i32 noundef 9, ptr noundef null) #9
  br label %for.inc.i

do.end46.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %xid.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %cmd.071.i, i32 0, i32 18
  %42 = ptrtoint ptr %xid.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %xid.i, align 4
  %conv.i = zext i16 %43 to i32
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end46.i, %do.end.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.072.i, %active_cmd_queue.i
  br i1 %cmp.not.i, label %for.inc.i.if.end33_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end33_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.else20:                                        ; preds = %if.then16
  %and23 = and i32 %conv17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else20.if.end33_crit_edge, label %if.then25

if.else20.if.end33_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then25:                                        ; preds = %if.else20
  %tgt1.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %44 = ptrtoint ptr %tgt1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tgt1.i, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.185) #9
  %active_cmd_queue.i121 = getelementptr inbounds %struct.bnx2fc_rport, ptr %45, i32 0, i32 62
  %46 = ptrtoint ptr %active_cmd_queue.i121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %active_cmd_queue.i121, align 4
  %cmp.not60.i = icmp eq ptr %47, %active_cmd_queue.i121
  br i1 %cmp.not60.i, label %if.then25.if.end33_crit_edge, label %for.body.lr.ph.i124

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.body.lr.ph.i124:                              ; preds = %if.then25
  %timeout_work.i122 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %refcount.i123 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.inc.i142.for.body.i128_crit_edge, %for.body.lr.ph.i124
  %cmd.061.i = phi ptr [ %47, %for.body.lr.ph.i124 ], [ %tmp.062.i, %for.inc.i142.for.body.i128_crit_edge ]
  %48 = ptrtoint ptr %cmd.061.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %tmp.062.i = load ptr, ptr %cmd.061.i, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %45, ptr noundef nonnull @.str.186) #9
  %req_flags.i125 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %cmd.061.i, i32 0, i32 24
  %call.i126 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %req_flags.i125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %if.then.i129, label %do.end39.i

if.then.i129:                                     ; preds = %for.body.i128
  %call9.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i122) #9
  br i1 %call9.i, label %if.then10.i, label %if.then.i129.if.end.i137_crit_edge

if.then.i129.if.end.i137_crit_edge:               ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i137

if.then10.i:                                      ; preds = %if.then.i129
  %call.i.i.i.i.i.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i123, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount.i123, i32 1, i32 3, i32 1) #9
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i123, ptr %refcount.i123, i32 1, ptr elementtype(i32) %refcount.i123) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i.i131 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i131)
  %cmp.i.i.i.i.i132 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i131, 1
  br i1 %cmp.i.i.i.i.i132, label %if.then.i.i136, label %if.end5.i.i.i.i.i134

if.end5.i.i.i.i.i134:                             ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i131)
  %.not.i.i.i.i.i133 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i131, 0
  br i1 %.not.i.i.i.i.i133, label %if.end5.i.i.i.i.i134.if.end.i137_crit_edge, label %if.then10.i.i.i.i.i135, !prof !362

if.end5.i.i.i.i.i134.if.end.i137_crit_edge:       ; preds = %if.end5.i.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i137

if.then10.i.i.i.i.i135:                           ; preds = %if.end5.i.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i123, i32 noundef 3) #9
  br label %if.end.i137

if.then.i.i136:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount.i123) #9
  br label %if.end.i137

if.end.i137:                                      ; preds = %if.then.i.i136, %if.then10.i.i.i.i.i135, %if.end5.i.i.i.i.i134.if.end.i137_crit_edge, %if.then.i129.if.end.i137_crit_edge
  %call12.i = tail call i32 @bnx2fc_initiate_abts(ptr noundef %cmd.061.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 8194
  br i1 %cmp13.not.i, label %if.end.i137.for.inc.i142_crit_edge, label %do.end.i138, !prof !362

if.end.i137.for.inc.i142_crit_edge:               ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i142

do.end.i138:                                      ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1514, i32 noundef 9, ptr noundef null) #9
  br label %for.inc.i142

do.end39.i:                                       ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  %xid.i139 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %cmd.061.i, i32 0, i32 18
  %50 = ptrtoint ptr %xid.i139 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %xid.i139, align 4
  %conv.i140 = zext i16 %51 to i32
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %conv.i140) #12
  br label %for.inc.i142

for.inc.i142:                                     ; preds = %do.end39.i, %do.end.i138, %if.end.i137.for.inc.i142_crit_edge
  %cmp.not.i141 = icmp eq ptr %tmp.062.i, %active_cmd_queue.i121
  br i1 %cmp.not.i141, label %for.inc.i142.if.end33_crit_edge, label %for.inc.i142.for.body.i128_crit_edge

for.inc.i142.for.body.i128_crit_edge:             ; preds = %for.inc.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i128

for.inc.i142.if.end33_crit_edge:                  ; preds = %for.inc.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %52 = trunc i64 %17 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %52) #12
  br label %if.end33

if.end33:                                         ; preds = %do.end, %for.inc.i142.if.end33_crit_edge, %if.then25.if.end33_crit_edge, %if.else20.if.end33_crit_edge, %for.inc.i.if.end33_crit_edge, %if.then19.if.end33_crit_edge, %if.then12.if.end33_crit_edge
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %53 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %SCp, align 4
  %tobool34.not = icmp eq ptr %54, null
  br i1 %tobool34.not, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %fcp_status = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 33
  %55 = ptrtoint ptr %fcp_status to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fcp_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cond = icmp eq i8 %56, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end41
  %cdb_status = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 32
  %57 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cdb_status, align 4
  %conv43 = zext i8 %58 to i32
  %59 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv43, ptr %59, align 4
  %fcp_resid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 29
  %61 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fcp_resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool52.not = icmp eq i32 %62, 0
  br i1 %tobool52.not, label %sw.bb.sw.epilog_crit_edge, label %if.then53

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then53:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %resid_len.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %conv42 = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.113, i32 noundef %conv42) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then53, %sw.bb.sw.epilog_crit_edge
  %64 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc_cmd1, align 4
  store ptr null, ptr %sc_cmd1, align 4
  %on_tmf_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 2
  %66 = ptrtoint ptr %on_tmf_queue to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %on_tmf_queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool60.not = icmp eq i8 %67, 0
  br i1 %tobool60.not, label %do.end66, label %if.then61

if.then61:                                        ; preds = %sw.epilog
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then61.list_del_init.exit_crit_edge

if.then61.list_del_init.exit_crit_edge:           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then61.list_del_init.exit_crit_edge
  %74 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %io_req, ptr %io_req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %io_req, ptr %prev.i3.i, align 4
  %76 = ptrtoint ptr %on_tmf_queue to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %on_tmf_queue, align 1
  %SCp70 = getelementptr inbounds %struct.scsi_cmnd, ptr %65, i32 0, i32 22
  %77 = ptrtoint ptr %SCp70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %SCp70, align 4
  tail call void @scsi_done(ptr noundef %65) #9
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i143, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i143:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i143, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 16
  %79 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wait_for_abts_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool73.not = icmp eq i32 %80, 0
  br i1 %tobool73.not, label %kref_put.exit.cleanup_crit_edge, label %if.then74

kref_put.exit.cleanup_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end66:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #12
  br label %cleanup

if.then74:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.117) #9
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %do.end66, %kref_put.exit.cleanup_crit_edge, %do.end38, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_parse_fcp_rsp(ptr noundef %io_req, ptr nocapture noundef readonly %fcp_rsp, i8 noundef zeroext %num_rq, ptr nocapture noundef readonly %rq_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %fcp_flags = getelementptr inbounds %struct.fcoe_fcp_rsp_payload, ptr %fcp_rsp, i32 0, i32 3
  %2 = ptrtoint ptr %fcp_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fcp_flags, align 1
  %fcp_status = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 33
  %4 = ptrtoint ptr %fcp_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fcp_status, align 1
  %fcp_resid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 29
  %5 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fcp_resid, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fcp_resid2 = getelementptr inbounds %struct.fcoe_fcp_rsp_payload, ptr %fcp_rsp, i32 0, i32 1
  %6 = ptrtoint ptr %fcp_resid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcp_resid2, align 4
  %8 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fcp_resid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scsi_comp_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 35
  %9 = ptrtoint ptr %scsi_comp_flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %scsi_comp_flags, align 1
  %scsi_status_code = getelementptr inbounds %struct.fcoe_fcp_rsp_payload, ptr %fcp_rsp, i32 0, i32 2
  %10 = ptrtoint ptr %scsi_status_code to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scsi_status_code, align 4
  %cdb_status = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 32
  %12 = ptrtoint ptr %cdb_status to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %cdb_status, align 4
  %conv4 = zext i8 %11 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 5
  %13 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %conv4, ptr %Status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_rq)
  %tobool5.not = icmp eq i8 %num_rq, 0
  br i1 %tobool5.not, label %if.end.if.end49_crit_edge, label %if.then6

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then6:                                         ; preds = %if.end
  %and8 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then10

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %fcp_rsp_len11 = getelementptr inbounds %struct.fcoe_fcp_rsp_payload, ptr %fcp_rsp, i32 0, i32 5
  %14 = ptrtoint ptr %fcp_rsp_len11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fcp_rsp_len11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then6.if.end12_crit_edge
  %fcp_rsp_len.0 = phi i32 [ %15, %if.then10 ], [ 0, %if.then6.if.end12_crit_edge ]
  %and14 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end19_crit_edge, label %if.then16

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %fcp_sns_len17 = getelementptr inbounds %struct.fcoe_fcp_rsp_payload, ptr %fcp_rsp, i32 0, i32 6
  %16 = ptrtoint ptr %fcp_sns_len17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fcp_sns_len17, align 4
  %add = add i32 %17, %fcp_rsp_len.0
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %rq_buff_len.1 = phi i32 [ %add, %if.then16 ], [ %fcp_rsp_len.0, %if.end12.if.end19_crit_edge ]
  %fcp_sns_len.0 = phi i32 [ %17, %if.then16 ], [ 0, %if.end12.if.end19_crit_edge ]
  %fcp_rsp_len20 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 30
  %18 = ptrtoint ptr %fcp_rsp_len20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fcp_rsp_len.0, ptr %fcp_rsp_len20, align 4
  %fcp_sns_len21 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 31
  %19 = ptrtoint ptr %fcp_sns_len21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fcp_sns_len.0, ptr %fcp_sns_len21, align 4
  %conv22 = zext i8 %num_rq to i32
  %mul = shl nuw nsw i32 %conv22, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rq_buff_len.1, i32 %mul)
  %cmp = icmp ugt i32 %rq_buff_len.1, %mul
  br i1 %cmp, label %do.end, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %rq_buff_len.1) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end19.if.end27_crit_edge
  %20 = zext i32 %fcp_rsp_len.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %fcp_rsp_len.0, label %if.end27.if.end35_crit_edge [
    i32 4, label %if.end27.if.then32_crit_edge
    i32 8, label %if.end27.if.then32_crit_edge87
  ]

if.end27.if.then32_crit_edge87:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end27.if.then32_crit_edge, %if.end27.if.then32_crit_edge87
  %arrayidx = getelementptr i8, ptr %rq_data, i32 3
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %fcp_rsp_code = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 34
  %23 = ptrtoint ptr %fcp_rsp_code to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %fcp_rsp_code, align 2
  %conv34 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.191, i32 noundef %conv34) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27.if.end35_crit_edge
  %add.ptr = getelementptr i8, ptr %rq_data, i32 %fcp_rsp_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %fcp_sns_len.0)
  %cmp36 = icmp sgt i32 %fcp_sns_len.0, 96
  br i1 %cmp36, label %if.end44.thread, label %if.end44

if.end44.thread:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #12
  %sense_buffer83 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %24 = ptrtoint ptr %sense_buffer83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sense_buffer83, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 96)
  br label %if.then46

if.end44:                                         ; preds = %if.end35
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %27 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sense_buffer, align 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fcp_sns_len.0)
  %tobool45.not = icmp eq i32 %fcp_sns_len.0, 0
  br i1 %tobool45.not, label %if.end44.if.end49_crit_edge, label %if.end44.if.then46_crit_edge

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.end44.thread
  %sense_buffer86 = phi ptr [ %sense_buffer83, %if.end44.thread ], [ %sense_buffer, %if.end44.if.then46_crit_edge ]
  %fcp_sns_len.185 = phi i32 [ 96, %if.end44.thread ], [ %fcp_sns_len.0, %if.end44.if.then46_crit_edge ]
  %30 = ptrtoint ptr %sense_buffer86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sense_buffer86, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %add.ptr, i32 %fcp_sns_len.185)
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end44.if.end49_crit_edge, %if.end.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_build_fcp_cmnd(ptr nocapture noundef readonly %io_req, ptr noundef %fcp_cmnd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
  %2 = call ptr @memset(ptr %fcp_cmnd, i32 0, i32 32)
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lun, align 8
  tail call void @int_to_scsilun(i64 noundef %6, ptr noundef %fcp_cmnd) #9
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 23
  %7 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_xfer_len, align 4
  %fc_dl = getelementptr inbounds %struct.fcp_cmnd, ptr %fcp_cmnd, i32 0, i32 6
  %9 = ptrtoint ptr %fc_dl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fc_dl, align 4
  %fc_cdb = getelementptr inbounds %struct.fcp_cmnd, ptr %fcp_cmnd, i32 0, i32 5
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %13 to i32
  %14 = call ptr @memcpy(ptr %fc_cdb, ptr %11, i32 %conv)
  %fc_cmdref = getelementptr inbounds %struct.fcp_cmnd, ptr %fcp_cmnd, i32 0, i32 1
  %15 = ptrtoint ptr %fc_cmdref to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fc_cmdref, align 4
  %fc_pri_ta = getelementptr inbounds %struct.fcp_cmnd, ptr %fcp_cmnd, i32 0, i32 2
  %16 = ptrtoint ptr %fc_pri_ta to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fc_pri_ta, align 1
  %mp_req = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 10
  %17 = ptrtoint ptr %mp_req to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mp_req, align 4
  %fc_tm_flags = getelementptr inbounds %struct.fcp_cmnd, ptr %fcp_cmnd, i32 0, i32 3
  %19 = ptrtoint ptr %fc_tm_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %fc_tm_flags, align 2
  %io_req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 4
  %20 = ptrtoint ptr %io_req_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %io_req_flags, align 1
  %fc_flags = getelementptr inbounds %struct.fcp_cmnd, ptr %fcp_cmnd, i32 0, i32 4
  %22 = ptrtoint ptr %fc_flags to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %fc_flags, align 1
  store i8 0, ptr %fc_pri_ta, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_queuecommand(ptr nocapture noundef readonly %host, ptr noundef %sc_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call2 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i58 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i58 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i58, align 8
  %parent6 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent6, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 11
  %12 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data, align 4
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %14 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_state.i, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %15, label %cond.end.if.then_crit_edge [
    i32 2, label %cond.end.sw.bb.i_crit_edge
    i32 11, label %cond.end.sw.bb.i_crit_edge63
    i32 4, label %sw.bb6.i
  ]

cond.end.sw.bb.i_crit_edge63:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb.i:                                          ; preds = %cond.end.sw.bb.i_crit_edge, %cond.end.sw.bb.i_crit_edge63
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %17 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 8
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i = icmp eq i8 %21, 0
  %..i = select i1 %tobool2.not.i, i32 65536, i32 786432
  br label %if.then

sw.bb6.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags7.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %22 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags7.i, align 8
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i = icmp eq i8 %24, 0
  %.17.i = select i1 %tobool10.not.i, i32 786432, i32 983040
  br label %if.then

if.then:                                          ; preds = %sw.bb6.i, %if.else.i, %cond.end.if.then_crit_edge
  %result.0.i.ph = phi i32 [ 65536, %cond.end.if.then_crit_edge ], [ %.17.i, %sw.bb6.i ], [ %..i, %if.else.i ]
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %25 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %result.0.i.ph, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 13, i32 13, i32 1, i32 4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %27)
  %cmp.not = icmp eq i32 %27, 14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %link_up = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 13, i32 13, i32 1, i32 3
  %28 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool9.not = icmp eq i8 %29, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 1
  %flags = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 2, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not = icmp eq i32 %32, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %retry_delay_timestamp = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 17, i32 4
  %33 = ptrtoint ptr %retry_delay_timestamp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retry_delay_timestamp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool16.not = icmp eq i32 %34, 0
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %if.then17

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp19 = icmp slt i32 %sub, 0
  br i1 %cmp19, label %if.then20, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %retry_delay_timestamp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %retry_delay_timestamp, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end15.if.end23_crit_edge
  %tgt_lock = getelementptr %struct.fc_rport_libfc_priv, ptr %13, i32 12, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #9
  %call24 = tail call ptr @bnx2fc_cmd_alloc(ptr noundef %arrayidx)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.exit_qcmd_tgtlock_crit_edge, label %if.end27

if.end23.exit_qcmd_tgtlock_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_qcmd_tgtlock

if.end27:                                         ; preds = %if.end23
  %sc_cmd28 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call24, i32 0, i32 8
  %37 = ptrtoint ptr %sc_cmd28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sc_cmd, ptr %sc_cmd28, align 4
  %call29 = tail call i32 @bnx2fc_post_io_req(ptr noundef %arrayidx, ptr noundef nonnull %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.exit_qcmd_tgtlock_crit_edge, label %do.end

if.end27.exit_qcmd_tgtlock_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_qcmd_tgtlock

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #12
  br label %exit_qcmd_tgtlock

exit_qcmd_tgtlock:                                ; preds = %do.end, %if.end27.exit_qcmd_tgtlock_crit_edge, %if.end23.exit_qcmd_tgtlock_crit_edge
  %rc.0 = phi i32 [ 4181, %do.end ], [ 0, %if.end27.exit_qcmd_tgtlock_crit_edge ], [ 4181, %if.end23.exit_qcmd_tgtlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_qcmd_tgtlock, %if.then17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rc.0, %exit_qcmd_tgtlock ], [ 4181, %lor.lhs.false.cleanup_crit_edge ], [ 4181, %if.end.cleanup_crit_edge ], [ 4184, %if.end11.cleanup_crit_edge ], [ 4184, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_post_io_req(ptr noundef %tgt, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cmd1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %0 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cmd1, align 4
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
  %lport4 = getelementptr inbounds %struct.fcoe_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %lport4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lport4, align 4
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cmd_type, align 2
  %port5 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %11 = ptrtoint ptr %port5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %port5, align 4
  %tgt6 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %12 = ptrtoint ptr %tgt6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tgt, ptr %tgt6, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 23
  %15 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %data_xfer_len, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %io_req, ptr %SCp, align 4
  %stats7 = getelementptr inbounds %struct.fc_lport, ptr %9, i32 0, i32 16
  %17 = ptrtoint ptr %stats7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats7, align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %23, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !372
  %24 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %add = add i32 %29, %19
  %30 = inttoptr i32 %add to ptr
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sc_data_direction, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %32, label %if.else25 [
    i32 2, label %if.then
    i32 1, label %if.then19
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io_req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 4
  %34 = ptrtoint ptr %io_req_flags to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %io_req_flags, align 1
  %InputRequests = getelementptr inbounds %struct.fc_stats, ptr %30, i32 0, i32 14
  %35 = ptrtoint ptr %InputRequests to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %InputRequests, align 8
  %inc = add i64 %36, 1
  store i64 %inc, ptr %InputRequests, align 8
  %37 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_xfer_len, align 4
  %InputBytes = getelementptr inbounds %struct.fc_stats, ptr %30, i32 0, i32 17
  br label %do.body29

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io_req_flags20 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 4
  %39 = ptrtoint ptr %io_req_flags20 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %io_req_flags20, align 1
  %OutputRequests = getelementptr inbounds %struct.fc_stats, ptr %30, i32 0, i32 15
  %40 = ptrtoint ptr %OutputRequests to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %OutputRequests, align 8
  %inc21 = add i64 %41, 1
  store i64 %inc21, ptr %OutputRequests, align 8
  %42 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_xfer_len, align 4
  %OutputBytes = getelementptr inbounds %struct.fc_stats, ptr %30, i32 0, i32 18
  br label %do.body29

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io_req_flags26 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 4
  %44 = ptrtoint ptr %io_req_flags26 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %io_req_flags26, align 1
  %ControlRequests = getelementptr inbounds %struct.fc_stats, ptr %30, i32 0, i32 16
  br label %do.body29

do.body29:                                        ; preds = %if.else25, %if.then19, %if.then
  %InputBytes.sink144 = phi ptr [ %InputBytes, %if.then ], [ %ControlRequests, %if.else25 ], [ %OutputBytes, %if.then19 ]
  %conv.sink.shrunk = phi i32 [ %38, %if.then ], [ 1, %if.else25 ], [ %43, %if.then19 ]
  %conv.sink = zext i32 %conv.sink.shrunk to i64
  %45 = ptrtoint ptr %InputBytes.sink144 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %InputBytes.sink144, align 8
  %add15 = add i64 %46, %conv.sink
  store i64 %add15, ptr %InputBytes.sink144, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !373
  %47 = tail call i32 @llvm.read_register.i32(metadata !350) #9
  %and.i.i.i118 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i118 to ptr
  %preempt_count.i.i119 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i119, align 4
  %sub.i = add i32 %50, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i119, align 4
  %xid32 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 18
  %51 = ptrtoint ptr %xid32 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %xid32, align 4
  %53 = ptrtoint ptr %sc_cmd1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sc_cmd1, align 4
  %bd_tbl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 21
  %55 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bd_tbl.i, align 4
  %bd_tbl1.i = getelementptr inbounds %struct.io_bdt, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %bd_tbl1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bd_tbl1.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %54, i32 0, i32 17, i32 0, i32 1
  %59 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %if.end7.thread.i, label %if.then.i

if.then.i:                                        ; preds = %do.body29
  %61 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port5, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %hba1.i.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %hba1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hba1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %60)
  %cmp.i.i = icmp ugt i32 %60, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.if.end.i.i_crit_edge, !prof !361

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1662, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.if.end.i.i_crit_edge
  %pcidev.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcidev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %54, i32 0, i32 17
  %69 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sdb.i.i.i, align 4
  %71 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nents.i.i, align 4
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %54, i32 0, i32 15
  %73 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sc_data_direction.i.i, align 4
  %call23.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i.i, ptr noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp2584.i.i = icmp sgt i32 %call23.i.i, 0
  br i1 %cmp2584.i.i, label %for.body.preheader.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %75 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end36.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.089.i.i = phi i32 [ %inc.i.i, %if.end36.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %bd_count.087.i.i = phi i32 [ %add.i.i, %if.end36.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %byte_count.086.i.i = phi i32 [ %add37.i.i, %if.end36.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sg.085.i.i = phi ptr [ %call38.i.i, %if.end36.i.i.for.body.i.i_crit_edge ], [ %76, %for.body.preheader.i.i ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.085.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_length.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.085.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_address.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %78)
  %cmp26.i.i = icmp ugt i32 %78, 65535
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.else.i.i

if.then28.i.i:                                    ; preds = %for.body.i.i
  %conv.i.i = zext i32 %80 to i64
  %81 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bd_tbl.i, align 4
  %bd_tbl1.i.i.i = getelementptr inbounds %struct.io_bdt, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %bd_tbl1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bd_tbl1.i.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then28.i.i
  %sg_frags.033.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.then28.i.i ]
  %addr.addr.032.i.i.i = phi i64 [ %add11.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %conv.i.i, %if.then28.i.i ]
  %sg_len.addr.031.i.i.i = phi i32 [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %78, %if.then28.i.i ]
  %85 = tail call i32 @llvm.smin.i32(i32 %sg_len.addr.031.i.i.i, i32 65535) #9
  %conv.i.i.i = trunc i64 %addr.addr.032.i.i.i to i32
  %add.i.i.i = add i32 %sg_frags.033.i.i.i, %bd_count.087.i.i
  %arrayidx.i.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %84, i32 %add.i.i.i
  %buf_addr_lo.i.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %84, i32 %add.i.i.i, i32 1
  %86 = ptrtoint ptr %buf_addr_lo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv.i.i.i, ptr %buf_addr_lo.i.i.i, align 4
  %shr.i.i.i = lshr i64 %addr.addr.032.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %87 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv2.i.i.i, ptr %arrayidx.i.i.i, align 4
  %conv5.i.i.i = trunc i32 %85 to i16
  %buf_len.i.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %84, i32 %add.i.i.i, i32 2
  %88 = ptrtoint ptr %buf_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv5.i.i.i, ptr %buf_len.i.i.i, align 4
  %flags.i.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %84, i32 %add.i.i.i, i32 4
  %89 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i.i.i, align 4
  %conv10.i.i.i = sext i32 %85 to i64
  %add11.i.i.i = add i64 %addr.addr.032.i.i.i, %conv10.i.i.i
  %inc.i.i.i = add i32 %sg_frags.033.i.i.i, 1
  %sub.i.i.i = sub i32 %sg_len.addr.031.i.i.i, %85
  %tobool.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.if.end36.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.body.i.i.i.if.end36.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %58, i32 %bd_count.087.i.i
  %buf_addr_lo.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %58, i32 %bd_count.087.i.i, i32 1
  %90 = ptrtoint ptr %buf_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %80, ptr %buf_addr_lo.i.i, align 4
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx.i.i, align 4
  %conv33.i.i = trunc i32 %78 to i16
  %buf_len.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %58, i32 %bd_count.087.i.i, i32 2
  %92 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv33.i.i, ptr %buf_len.i.i, align 4
  %flags.i.i = getelementptr %struct.fcoe_bd_ctx, ptr %58, i32 %bd_count.087.i.i, i32 4
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.else.i.i, %while.body.i.i.i.if.end36.i.i_crit_edge
  %sg_frags.0.i.i = phi i32 [ 1, %if.else.i.i ], [ %inc.i.i.i, %while.body.i.i.i.if.end36.i.i_crit_edge ]
  %add.i.i = add i32 %sg_frags.0.i.i, %bd_count.087.i.i
  %add37.i.i = add i32 %78, %byte_count.086.i.i
  %inc.i.i = add nuw nsw i32 %i.089.i.i, 1
  %call38.i.i = tail call ptr @sg_next(ptr noundef %sg.085.i.i) #9
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call23.i.i
  br i1 %exitcond.not.i.i, label %if.end36.i.i.for.end.i.i_crit_edge, label %if.end36.i.i.for.body.i.i_crit_edge

if.end36.i.i.for.body.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end36.i.i.for.end.i.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end36.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %byte_count.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %add37.i.i, %if.end36.i.i.for.end.i.i_crit_edge ]
  %bd_count.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %add.i.i, %if.end36.i.i.for.end.i.i_crit_edge ]
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %54, i32 0, i32 17, i32 1
  %94 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.0.lcssa.i.i, i32 %95)
  %cmp40.not.i.i = icmp eq i32 %byte_count.0.lcssa.i.i, %95
  br i1 %cmp40.not.i.i, label %for.end.i.i.bnx2fc_map_sg.exit.i_crit_edge, label %do.end45.i.i

for.end.i.i.bnx2fc_map_sg.exit.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_map_sg.exit.i

do.end45.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %xid32 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %xid32, align 4
  %conv48.i.i = zext i16 %97 to i32
  %call49.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %byte_count.0.lcssa.i.i, i32 noundef %95, i32 noundef %conv48.i.i) #12
  br label %bnx2fc_map_sg.exit.i

bnx2fc_map_sg.exit.i:                             ; preds = %do.end45.i.i, %for.end.i.i.bnx2fc_map_sg.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bd_count.0.lcssa.i.i)
  %cmp.i = icmp eq i32 %bd_count.0.lcssa.i.i, 0
  br i1 %cmp.i, label %bnx2fc_map_sg.exit.i.do.end37_crit_edge, label %if.end7.i

bnx2fc_map_sg.exit.i.do.end37_crit_edge:          ; preds = %bnx2fc_map_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

if.end7.thread.i:                                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %58, align 4
  %buf_addr_lo.i = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %58, i32 0, i32 1
  %99 = ptrtoint ptr %buf_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %buf_addr_lo.i, align 4
  %flags.i = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %58, i32 0, i32 4
  %100 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i, align 4
  %buf_len.i = getelementptr inbounds %struct.fcoe_bd_ctx, ptr %58, i32 0, i32 2
  %101 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %buf_len.i, align 4
  %102 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid29.i = getelementptr inbounds %struct.io_bdt, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %bd_valid29.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %bd_valid29.i, align 4
  br label %if.end41

if.end7.i:                                        ; preds = %bnx2fc_map_sg.exit.i
  %conv.i = trunc i32 %bd_count.0.lcssa.i.i to i16
  %105 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid.i = getelementptr inbounds %struct.io_bdt, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv.i, ptr %bd_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %bd_count.0.lcssa.i.i)
  %cmp9.i = icmp sgt i32 %bd_count.0.lcssa.i.i, 255
  br i1 %cmp9.i, label %do.end.i, label %if.end7.i.if.end41_crit_edge

if.end7.i.if.end41_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %xid32 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %xid32, align 4
  %conv12.i = zext i16 %109 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %bd_count.0.lcssa.i.i, i32 noundef %conv12.i) #12
  br label %do.end37

do.end37:                                         ; preds = %do.end.i, %bnx2fc_map_sg.exit.i.do.end37_crit_edge
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #12
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i120, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i120:                                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end7.i.if.end41_crit_edge, %if.end7.thread.i
  %conv42 = zext i16 %52 to i32
  %div117 = lshr i32 %conv42, 5
  %rem = and i32 %conv42, 31
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %7, i32 0, i32 16
  %111 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task_ctx, align 4
  %arrayidx44 = getelementptr ptr, ptr %112, i32 %div117
  %113 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr %struct.fcoe_task_ctx_entry, ptr %114, i32 %rem
  tail call void @bnx2fc_init_task(ptr noundef %io_req, ptr noundef %arrayidx45) #9
  %flush_in_prog = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 57
  %115 = ptrtoint ptr %flush_in_prog to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flush_in_prog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool46.not = icmp eq i32 %116, 0
  br i1 %tobool46.not, label %if.end55, label %do.end50

do.end50:                                         ; preds = %if.end41
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #12
  %refcount53 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount53, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount53, i32 1, i32 3, i32 1) #9
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount53, ptr %refcount53, i32 1, ptr elementtype(i32) %refcount53) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i122 = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i122)
  %cmp.i.i.i.i123 = icmp eq i32 %asmresult.i.i.i.i.i.i.i122, 1
  br i1 %cmp.i.i.i.i123, label %if.then.i127, label %if.end5.i.i.i.i125

if.end5.i.i.i.i125:                               ; preds = %do.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i122)
  %.not.i.i.i.i124 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i122, 0
  br i1 %.not.i.i.i.i124, label %if.end5.i.i.i.i125.cleanup_crit_edge, label %if.then10.i.i.i.i126, !prof !362

if.end5.i.i.i.i125.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i126:                             ; preds = %if.end5.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount53, i32 noundef 3) #9
  br label %cleanup

if.then.i127:                                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount53) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end41
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 9
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %flags, align 4
  %120 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool57.not = icmp eq i32 %120, 0
  br i1 %tobool57.not, label %do.end61, label %if.end66

do.end61:                                         ; preds = %if.end55
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #12
  %refcount64 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount64, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount64, i32 1, i32 3, i32 1) #9
  %121 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount64, ptr %refcount64, i32 1, ptr elementtype(i32) %refcount64) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i130 = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i130)
  %cmp.i.i.i.i131 = icmp eq i32 %asmresult.i.i.i.i.i.i.i130, 1
  br i1 %cmp.i.i.i.i131, label %if.then.i135, label %if.end5.i.i.i.i133

if.end5.i.i.i.i133:                               ; preds = %do.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i130)
  %.not.i.i.i.i132 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i130, 0
  br i1 %.not.i.i.i.i132, label %if.end5.i.i.i.i133.cleanup_crit_edge, label %if.then10.i.i.i.i134, !prof !362

if.end5.i.i.i.i133.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i134:                             ; preds = %if.end5.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount64, i32 noundef 3) #9
  br label %cleanup

if.then.i135:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount64) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end55
  %io_timeout = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 4
  %122 = ptrtoint ptr %io_timeout to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool67.not = icmp eq i32 %123, 0
  br i1 %tobool67.not, label %if.end66.if.end69_crit_edge, label %if.then68

if.end66.if.end69_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then68:                                        ; preds = %if.end66
  %124 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %port5, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %timer_work_queue.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %timer_work_queue.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %timer_work_queue.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %129, ptr noundef %timeout_work.i, i32 noundef 2000) #9
  br i1 %call.i.i, label %if.then.i139, label %if.then68.if.end69_crit_edge

if.then68.if.end69_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then.i139:                                     ; preds = %if.then68
  %refcount.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %130 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !360
  %asmresult.i.i.i.i.i.i.i138 = extractvalue { i32, i32, i32 } %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i138)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i138, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i139.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !361

if.then.i139.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i139
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i138, 1
  %131 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %.not.i.i.i.i.i = icmp sgt i32 %131, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end69_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !362

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end69_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i139.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i139.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.end69

if.end69:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end69_crit_edge, %if.then68.if.end69_crit_edge, %if.end66.if.end69_crit_edge
  tail call void @bnx2fc_add_2_sq(ptr noundef %tgt, i16 noundef zeroext %52) #9
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 1
  %132 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %on_active_queue, align 4
  %active_cmd_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 62
  %prev.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 62, i32 1
  %133 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i, align 4
  %call.i.i140 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_req, ptr noundef %134, ptr noundef %active_cmd_queue) #9
  br i1 %call.i.i140, label %if.end.i.i141, label %if.end69.list_add_tail.exit_crit_edge

if.end69.list_add_tail.exit_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i141:                                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %io_req, ptr %prev.i, align 4
  %136 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %active_cmd_queue, ptr %io_req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %137 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev3.i.i, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %io_req, ptr %134, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i141, %if.end69.list_add_tail.exit_crit_edge
  tail call void @bnx2fc_ring_doorbell(ptr noundef %tgt) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then.i135, %if.then10.i.i.i.i134, %if.end5.i.i.i.i133.cleanup_crit_edge, %if.then.i127, %if.then10.i.i.i.i126, %if.end5.i.i.i.i125.cleanup_crit_edge, %if.then.i120, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -11, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -11, %if.then10.i.i.i.i ], [ -11, %if.then.i120 ], [ -11, %if.end5.i.i.i.i125.cleanup_crit_edge ], [ -11, %if.then10.i.i.i.i126 ], [ -11, %if.then.i127 ], [ -11, %if.end5.i.i.i.i133.cleanup_crit_edge ], [ -11, %if.then10.i.i.i.i134 ], [ -11, %if.then.i135 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_scsi_cmd_compl(ptr noundef %io_req, ptr nocapture noundef readonly %task, i8 noundef zeroext %num_rq, ptr nocapture noundef readonly %rq_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 7
  %0 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt1, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 24
  %call = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.120) #9
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.121) #9
  tail call void @bnx2fc_process_cleanup_compl(ptr noundef %io_req, ptr undef, i8 zeroext undef)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 13
  %call7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #9
  br i1 %call7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i.i, !prof !362

if.end5.i.i.i.i.if.end10_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end10

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %sc_cmd11 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 8
  %3 = ptrtoint ptr %sc_cmd11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_cmd11, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %union_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  tail call fastcc void @bnx2fc_parse_fcp_rsp(ptr noundef %io_req, ptr noundef %union_ctx, i8 noundef zeroext %num_rq, ptr noundef %rq_data)
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %SCp, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 1
  %7 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %on_active_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool23.not = icmp eq i8 %8, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end22
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then24.list_del_init.exit_crit_edge

if.then24.list_del_init.exit_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then24.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %io_req, ptr %io_req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %io_req, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %io_req, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %on_active_queue, align 4
  %io_retire_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 64
  %prev.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 64, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i149 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_req, ptr noundef %19, ptr noundef %io_retire_queue) #9
  br i1 %call.i.i149, label %if.end.i.i150, label %list_del_init.exit.if.end35_crit_edge

list_del_init.exit.if.end35_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.i.i150:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %io_req, ptr %prev.i, align 4
  %21 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %io_retire_queue, ptr %io_req, align 4
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %io_req, ptr %19, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end22
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.127) #9
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 16
  %24 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wait_for_abts_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp eq i32 %25, 0
  br i1 %tobool27.not, label %if.else.if.end35_crit_edge, label %if.then28

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then28:                                        ; preds = %if.else
  %call30 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %req_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.if.end35_crit_edge, label %if.then32

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.end.i.i150, %list_del_init.exit.if.end35_crit_edge
  %26 = ptrtoint ptr %sc_cmd11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc_cmd11, align 4
  %port.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 6
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hba1.i, align 4
  %bd_tbl.i = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 21
  %34 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid.i = getelementptr inbounds %struct.io_bdt, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bd_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i = icmp eq i16 %37, 0
  %tobool2.not.i = icmp eq ptr %27, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.end35.bnx2fc_unmap_sg_list.exit_crit_edge, label %land.lhs.true3.i

if.end35.bnx2fc_unmap_sg_list.exit_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_unmap_sg_list.exit

land.lhs.true3.i:                                 ; preds = %if.end35
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 17, i32 0, i32 1
  %38 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.bnx2fc_unmap_sg_list.exit_crit_edge, label %if.then.i151

land.lhs.true3.i.bnx2fc_unmap_sg_list.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2fc_unmap_sg_list.exit

if.then.i151:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %33, i32 0, i32 2
  %40 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 17
  %42 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdb.i.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 15
  %44 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sc_data_direction.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %43, i32 noundef %39, i32 noundef %45, i32 noundef 0) #9
  %46 = ptrtoint ptr %bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_tbl.i, align 4
  %bd_valid8.i = getelementptr inbounds %struct.io_bdt, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %bd_valid8.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %bd_valid8.i, align 4
  br label %bnx2fc_unmap_sg_list.exit

bnx2fc_unmap_sg_list.exit:                        ; preds = %if.then.i151, %land.lhs.true3.i.bnx2fc_unmap_sg_list.exit_crit_edge, %if.end35.bnx2fc_unmap_sg_list.exit_crit_edge
  %49 = ptrtoint ptr %sc_cmd11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %sc_cmd11, align 4
  %fcp_status = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 33
  %50 = ptrtoint ptr %fcp_status to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fcp_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cond = icmp eq i8 %51, 0
  br i1 %cond, label %sw.bb, label %do.end88

sw.bb:                                            ; preds = %bnx2fc_unmap_sg_list.exit
  %cdb_status = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 32
  %52 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cdb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp38 = icmp eq i8 %53, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  %54 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %result, align 4
  br label %if.end80

if.else41:                                        ; preds = %sw.bb
  %conv37 = zext i8 %53 to i32
  %fcp_resid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 29
  %55 = ptrtoint ptr %fcp_resid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fcp_resid, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req, ptr noundef nonnull @.str.128, i32 noundef %conv37, i32 noundef %56) #9
  %57 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cdb_status, align 4
  %conv45 = zext i8 %58 to i32
  %result46 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  %59 = ptrtoint ptr %result46 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv45, ptr %result46, align 4
  %60 = load i8, ptr %cdb_status, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.205)
  switch i8 %60, label %if.else41.if.end80_crit_edge [
    i8 40, label %if.else41.if.then55_crit_edge
    i8 8, label %if.else41.if.then55_crit_edge160
  ]

if.else41.if.then55_crit_edge160:                 ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.else41.if.then55_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.else41.if.end80_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then55:                                        ; preds = %if.else41.if.then55_crit_edge, %if.else41.if.then55_crit_edge160
  %retry_delay_timer = getelementptr inbounds %struct.fcoe_fcp_rsp_payload, ptr %union_ctx, i32 0, i32 4
  %62 = ptrtoint ptr %retry_delay_timer to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %retry_delay_timer, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool56.not = icmp eq i16 %63, 0
  %conv59 = zext i16 %63 to i32
  %and = and i32 %conv59, 49152
  %and63 = and i32 %conv59, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp ne i32 %and, 0
  %not.tobool56.not = xor i1 %tobool56.not, true
  %scope.0 = select i1 %not.tobool56.not, i1 %phi.cmp, i1 false
  %qualifier.0 = select i1 %tobool56.not, i32 0, i32 %and63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qualifier.0)
  %cmp70.not = icmp ne i32 %qualifier.0, 0
  %or.cond = select i1 %scope.0, i1 %cmp70.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16368, i32 %qualifier.0)
  %cmp74 = icmp ult i32 %qualifier.0, 16368
  %or.cond148 = select i1 %or.cond, i1 %cmp74, i1 false
  br i1 %or.cond148, label %if.then76, label %if.then55.if.end80_crit_edge

if.then55.if.end80_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then76:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %div = mul nuw nsw i32 %qualifier.0, 10
  %add = add i32 %64, %div
  %retry_delay_timestamp = getelementptr inbounds %struct.bnx2fc_rport, ptr %1, i32 0, i32 59
  %65 = ptrtoint ptr %retry_delay_timestamp to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %retry_delay_timestamp, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.then55.if.end80_crit_edge, %if.else41.if.end80_crit_edge, %if.then40
  %fcp_resid81 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 29
  %66 = ptrtoint ptr %fcp_resid81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fcp_resid81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool82.not = icmp eq i32 %67, 0
  br i1 %tobool82.not, label %if.end80.sw.epilog_crit_edge, label %if.then83

if.end80.sw.epilog_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %4, i32 0, i32 5
  %68 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %resid_len.i, align 4
  br label %sw.epilog

do.end88:                                         ; preds = %bnx2fc_unmap_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %51 to i32
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end88, %if.then83, %if.end80.sw.epilog_crit_edge
  %69 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %SCp, align 4
  tail call void @scsi_done(ptr noundef nonnull %4) #9
  %refcount95 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req, i32 0, i32 5
  %call.i.i.i.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount95, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %refcount95, i32 1, i32 3, i32 1) #9
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount95, ptr %refcount95, i32 1, ptr elementtype(i32) %refcount95) #9, !srcloc !364
  %asmresult.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i153)
  %cmp.i.i.i.i154 = icmp eq i32 %asmresult.i.i.i.i.i.i.i153, 1
  br i1 %cmp.i.i.i.i154, label %if.then.i158, label %if.end5.i.i.i.i156

if.end5.i.i.i.i156:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i153)
  %.not.i.i.i.i155 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i153, 0
  br i1 %.not.i.i.i.i155, label %if.end5.i.i.i.i156.cleanup_crit_edge, label %if.then10.i.i.i.i157, !prof !362

if.end5.i.i.i.i156.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i157:                             ; preds = %if.end5.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount95, i32 noundef 3) #9
  br label %cleanup

if.then.i158:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount95) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i158, %if.then10.i.i.i.i157, %if.end5.i.i.i.i156.cleanup_crit_edge, %do.end19, %do.end, %if.then5, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_init_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_rrq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !123, !124, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !145, !146, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !179, !181, !182, !183, !184, !186, !187, !188, !190, !192, !193, !194, !196, !198, !199, !200, !201, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !257, !258, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !285, !287, !289, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !313, !315, !317, !318, !319, !320, !322, !324, !326, !327, !328, !329, !331, !332, !333, !334, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349}
!llvm.named.register.sp = !{!350}
!llvm.module.flags = !{!351, !352, !353, !354, !355, !356, !357, !358}
!llvm.ident = !{!359}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 227, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2fc_cmd_mgr_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 231, i32 2}
!8 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 239, i32 3}
!12 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 247, i32 3}
!16 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 254, i32 3}
!20 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @bnx2fc_cmd_mgr_alloc.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 264, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 278, i32 4}
!27 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bnx2fc_cmd_mgr_alloc.__key.19, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 283, i32 3}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bnx2fc_cmd_mgr_alloc.__key.21, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 300, i32 3}
!36 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 308, i32 4}
!40 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 323, i32 4}
!44 = !{ptr @bnx2fc_cmd_mgr_alloc._entry.29, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @bnx2fc_cmd_mgr_alloc._entry_ptr.31, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 428, i32 23}
!48 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 432, i32 4}
!50 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bnx2fc_elstm_alloc._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @bnx2fc_elstm_alloc._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 604, i32 3}
!55 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bnx2fc_init_mp_req._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bnx2fc_init_mp_req._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 613, i32 3}
!60 = !{ptr @bnx2fc_init_mp_req._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bnx2fc_init_mp_req._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.41, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 626, i32 3}
!64 = !{ptr @bnx2fc_init_mp_req._entry.40, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @bnx2fc_init_mp_req._entry_ptr.42, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 634, i32 3}
!68 = !{ptr @bnx2fc_init_mp_req._entry.43, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bnx2fc_init_mp_req._entry_ptr.45, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 841, i32 24}
!72 = !{ptr @.str.47, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 848, i32 3}
!74 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bnx2fc_initiate_abts._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @bnx2fc_initiate_abts._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 854, i32 3}
!79 = !{ptr @bnx2fc_initiate_abts._entry.49, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @bnx2fc_initiate_abts._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 860, i32 3}
!83 = !{ptr @bnx2fc_initiate_abts._entry.52, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bnx2fc_initiate_abts._entry_ptr.54, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 867, i32 3}
!87 = !{ptr @bnx2fc_initiate_abts._entry.55, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @bnx2fc_initiate_abts._entry_ptr.57, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 896, i32 29}
!91 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 944, i32 29}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 953, i32 3}
!95 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @bnx2fc_initiate_seq_cleanup._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @bnx2fc_initiate_seq_cleanup._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 960, i32 3}
!100 = !{ptr @bnx2fc_initiate_seq_cleanup._entry.62, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @bnx2fc_initiate_seq_cleanup._entry_ptr.64, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.66, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 986, i32 2}
!104 = !{ptr @bnx2fc_initiate_seq_cleanup._entry.65, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @bnx2fc_initiate_seq_cleanup._entry_ptr.67, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.68, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1011, i32 24}
!108 = !{ptr @.str.69, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1018, i32 3}
!110 = !{ptr @bnx2fc_initiate_cleanup._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @bnx2fc_initiate_cleanup._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1040, i32 24}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1141, i32 3}
!116 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bnx2fc_eh_abort._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @bnx2fc_eh_abort._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1147, i32 22}
!121 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1153, i32 3}
!123 = !{ptr @bnx2fc_eh_abort._entry.74, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @bnx2fc_eh_abort._entry_ptr.76, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.77, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1157, i32 24}
!127 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1172, i32 3}
!129 = !{ptr @bnx2fc_eh_abort._entry.78, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @bnx2fc_eh_abort._entry_ptr.80, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1180, i32 3}
!133 = !{ptr @bnx2fc_eh_abort._entry.81, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @bnx2fc_eh_abort._entry_ptr.83, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.85, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1206, i32 3}
!137 = !{ptr @bnx2fc_eh_abort._entry.84, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @bnx2fc_eh_abort._entry_ptr.86, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.87, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1250, i32 10}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1255, i32 25}
!143 = !{ptr @.str.90, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1260, i32 3}
!145 = !{ptr @bnx2fc_eh_abort._entry.89, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @bnx2fc_eh_abort._entry_ptr.91, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.92, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1274, i32 25}
!149 = !{ptr @.str.93, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1297, i32 29}
!151 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1302, i32 3}
!153 = !{ptr @.str.95, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @bnx2fc_process_seq_cleanup_compl._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @bnx2fc_process_seq_cleanup_compl._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1312, i32 3}
!158 = !{ptr @bnx2fc_process_seq_cleanup_compl._entry.96, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @bnx2fc_process_seq_cleanup_compl._entry_ptr.98, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.99, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1325, i32 24}
!162 = !{ptr @.str.100, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1362, i32 24}
!164 = !{ptr @.str.101, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1369, i32 25}
!166 = !{ptr @.str.102, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1408, i32 25}
!168 = !{ptr @.str.103, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1413, i32 25}
!170 = !{ptr @.str.104, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1416, i32 3}
!172 = !{ptr @.str.105, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @bnx2fc_process_abts_compl._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @bnx2fc_process_abts_compl._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1421, i32 25}
!177 = !{ptr @.str.107, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1534, i32 24}
!179 = !{ptr @.str.108, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1572, i32 3}
!181 = !{ptr @.str.109, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @bnx2fc_process_tm_compl._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @bnx2fc_process_tm_compl._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.111, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1576, i32 3}
!186 = !{ptr @bnx2fc_process_tm_compl._entry.110, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @bnx2fc_process_tm_compl._entry_ptr.112, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1593, i32 25}
!190 = !{ptr @.str.115, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1608, i32 3}
!192 = !{ptr @bnx2fc_process_tm_compl._entry.114, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @bnx2fc_process_tm_compl._entry_ptr.116, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.117, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1617, i32 25}
!196 = !{ptr @.str.118, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1896, i32 3}
!198 = !{ptr @.str.119, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @bnx2fc_queuecommand._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @bnx2fc_queuecommand._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.120, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1920, i32 25}
!203 = !{ptr @.str.121, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1925, i32 11}
!205 = !{ptr @.str.122, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1938, i32 3}
!207 = !{ptr @.str.123, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @bnx2fc_process_scsi_cmd_compl._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @bnx2fc_process_scsi_cmd_compl._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.125, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1950, i32 3}
!212 = !{ptr @bnx2fc_process_scsi_cmd_compl._entry.124, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @bnx2fc_process_scsi_cmd_compl._entry_ptr.126, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.127, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1964, i32 25}
!216 = !{ptr @.str.128, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1981, i32 26}
!218 = !{ptr @.str.130, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 2017, i32 3}
!220 = !{ptr @bnx2fc_process_scsi_cmd_compl._entry.129, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @bnx2fc_process_scsi_cmd_compl._entry_ptr.131, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.132, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 2068, i32 3}
!224 = !{ptr @.str.133, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @bnx2fc_post_io_req._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @bnx2fc_post_io_req._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.135, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 2082, i32 3}
!229 = !{ptr @bnx2fc_post_io_req._entry.134, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @bnx2fc_post_io_req._entry_ptr.136, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.138, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 2088, i32 3}
!233 = !{ptr @bnx2fc_post_io_req._entry.137, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @bnx2fc_post_io_req._entry_ptr.139, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.140, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 48, i32 24}
!237 = !{ptr @.str.141, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 63, i32 25}
!239 = !{ptr @.str.142, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 72, i32 26}
!241 = !{ptr @.str.143, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 77, i32 26}
!243 = !{ptr @.str.144, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 93, i32 26}
!245 = !{ptr @.str.145, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 96, i32 27}
!247 = !{ptr @.str.146, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 112, i32 27}
!249 = !{ptr @.str.147, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 120, i32 26}
!251 = !{ptr @.str.148, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 136, i32 26}
!253 = !{ptr @.str.149, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 151, i32 3}
!255 = !{ptr @.str.150, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @bnx2fc_cmd_timeout._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @bnx2fc_cmd_timeout._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = distinct !{null, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../include/scsi/fc_frame.h", i32 254, i32 2}
!260 = !{ptr @.str.152, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 688, i32 3}
!262 = !{ptr @.str.153, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @bnx2fc_initiate_tmf._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @bnx2fc_initiate_tmf._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.155, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 699, i32 3}
!267 = !{ptr @bnx2fc_initiate_tmf._entry.154, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @bnx2fc_initiate_tmf._entry_ptr.156, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.158, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 707, i32 3}
!271 = !{ptr @bnx2fc_initiate_tmf._entry.157, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @bnx2fc_initiate_tmf._entry_ptr.159, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.161, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 715, i32 4}
!275 = !{ptr @bnx2fc_initiate_tmf._entry.160, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @bnx2fc_initiate_tmf._entry_ptr.162, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.164, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 731, i32 3}
!279 = !{ptr @bnx2fc_initiate_tmf._entry.163, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @bnx2fc_initiate_tmf._entry_ptr.165, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.166, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 758, i32 22}
!283 = !{ptr @.str.167, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 811, i32 23}
!285 = !{ptr @.str.168, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 814, i32 23}
!287 = !{ptr @init_completion.__key, !288, !"__key", i1 false, i1 false}
!288 = !{!"../include/linux/completion.h", i32 87, i32 2}
!289 = !{ptr @.str.169, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.170, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1102, i32 25}
!292 = !{ptr @__func__.bnx2fc_abts_cleanup, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1103, i32 10}
!294 = !{ptr @.str.171, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 175, i32 24}
!296 = !{ptr @.str.172, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 186, i32 3}
!298 = !{ptr @.str.173, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @bnx2fc_scsi_done._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @bnx2fc_scsi_done._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.175, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 192, i32 3}
!303 = !{ptr @bnx2fc_scsi_done._entry.174, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @bnx2fc_scsi_done._entry_ptr.176, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.178, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 196, i32 3}
!307 = !{ptr @bnx2fc_scsi_done._entry.177, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @bnx2fc_scsi_done._entry_ptr.179, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.180, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 203, i32 24}
!311 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1463, i32 24}
!313 = !{ptr @.str.182, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1469, i32 23}
!315 = !{ptr @.str.183, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1484, i32 5}
!317 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @bnx2fc_lun_reset_cmpl._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @bnx2fc_lun_reset_cmpl._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.185, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1498, i32 24}
!322 = !{ptr @.str.186, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1504, i32 23}
!324 = !{ptr @.str.187, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1517, i32 4}
!326 = !{ptr @.str.188, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @bnx2fc_tgt_reset_cmpl._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @bnx2fc_tgt_reset_cmpl._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.189, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1805, i32 4}
!331 = !{ptr @.str.190, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @bnx2fc_parse_fcp_rsp._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @bnx2fc_parse_fcp_rsp._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.191, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1815, i32 26}
!336 = !{ptr @.str.193, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1823, i32 4}
!338 = !{ptr @bnx2fc_parse_fcp_rsp._entry.192, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @bnx2fc_parse_fcp_rsp._entry_ptr.194, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.195, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1715, i32 3}
!342 = !{ptr @.str.196, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @bnx2fc_build_bd_list_from_sg._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @bnx2fc_build_bd_list_from_sg._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.197, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/bnx2fc/bnx2fc_io.c", i32 1687, i32 3}
!347 = !{ptr @.str.198, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @bnx2fc_map_sg._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @bnx2fc_map_sg._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{!"sp"}
!351 = !{i32 1, !"wchar_size", i32 2}
!352 = !{i32 1, !"min_enum_size", i32 4}
!353 = !{i32 8, !"branch-target-enforcement", i32 0}
!354 = !{i32 8, !"sign-return-address", i32 0}
!355 = !{i32 8, !"sign-return-address-all", i32 0}
!356 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!357 = !{i32 7, !"uwtable", i32 1}
!358 = !{i32 7, !"frame-pointer", i32 2}
!359 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!360 = !{i64 2148414565, i64 2148414597, i64 2148414626, i64 2148414660, i64 2148414691, i64 2148414714}
!361 = !{!"branch_weights", i32 1, i32 2000}
!362 = !{!"branch_weights", i32 2000, i32 1}
!363 = !{i64 2148502590}
!364 = !{i64 2148417030, i64 2148417062, i64 2148417091, i64 2148417125, i64 2148417156, i64 2148417179}
!365 = !{i64 2149378704}
!366 = !{i64 2148413035, i64 2148413061, i64 2148413090, i64 2148413124, i64 2148413155, i64 2148413178}
!367 = !{i64 2148415500, i64 2148415526, i64 2148415555, i64 2148415589, i64 2148415620, i64 2148415643}
!368 = !{i64 2157187823}
!369 = !{i64 2157188029}
!370 = !{i64 2157188203}
!371 = !{i64 2157225549, i64 2157226046, i64 2157225586, i64 2157225642, i64 2157225676, i64 2157225700, i64 2157225741, i64 2157225762, i64 2157225790, i64 2157225824}
!372 = !{i64 2157277477}
!373 = !{i64 2157277668}
