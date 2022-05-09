; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2fc/bnx2fc_els.c_pt.bc'
source_filename = "../drivers/scsi/bnx2fc/bnx2fc_els.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fc_els_rrq = type { i8, [3 x i8], i8, [3 x i8], i16, i16 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fcoe_err_report_entry = type { %struct.fcoe_partial_err_report_entry, %struct.fcoe_fc_hdr }
%struct.fcoe_partial_err_report_entry = type { i32, i32, i32, i32 }
%struct.fcoe_fc_hdr = type { [3 x i8], i8, [3 x i8], i8, i16, i8, i8, [3 x i8], i8, i32, i16, i16 }
%struct.bnx2fc_rport = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, %struct.atomic_t, %struct.b577xx_doorbell_set_prod, %struct.b577xx_fcoe_rx_doorbell, ptr, i32, i16, i8, i32, ptr, i32, i16, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [4 x ptr], [4 x i32], ptr, i32, %struct.spinlock, %struct.spinlock, %struct.atomic_t, i32, i32, i32, %struct.list_head, [257 x ptr], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, %struct.wait_queue_head }
%struct.b577xx_doorbell_set_prod = type { i16, i8, %struct.b577xx_doorbell_hdr }
%struct.b577xx_doorbell_hdr = type { i8 }
%struct.b577xx_fcoe_rx_doorbell = type { %struct.b577xx_doorbell_hdr, i8, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.fcoe_port = type { ptr, ptr, %struct.sk_buff_head, i8, i32, i32, %struct.timer_list, %struct.work_struct, [6 x i8], ptr }
%struct.sk_buff_head = type { %union.anon.103, i32, %struct.spinlock }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, ptr }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.bnx2fc_els_cb_arg = type { ptr, ptr, i16, i32, i32 }
%struct.bnx2fc_interface = type { %struct.list_head, i32, ptr, ptr, %struct.packet_type, %struct.packet_type, ptr, %struct.kref, i8, i32, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.bnx2fc_hba = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, i32, i32, i32, i16, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, %struct.bnx2fc_fw_stats, %struct.fcoe_statistics_params, ptr, i32, %struct.completion, %struct.fcoe_capabilities, %struct.timer_list, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, %struct.list_head, [16 x i8] }
%struct.bnx2fc_fw_stats = type { i64, i64, i64, i64, i64 }
%struct.fcoe_statistics_params = type { %struct.fcoe_tx_stat_params, %struct.fcoe_rx_stat_params_section0, %struct.fcoe_rx_stat_params_section1, %struct.fcoe_rx_stat_params_section2 }
%struct.fcoe_tx_stat_params = type { i32, i32, i32, i32 }
%struct.fcoe_rx_stat_params_section0 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section1 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_capabilities = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.66, %union.anon.69, %union.anon.70, [48 x i8], %union.anon.71, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.73, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr, %union.anon.68 }
%union.anon.68 = type { ptr }
%union.anon.69 = type { ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.75, i32, i32, i32, i16, i16, %union.anon.77, i32, %union.anon.78, %union.anon.79, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.75 = type { i32 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i16 }
%struct.fc_els_rec = type { i8, [3 x i8], i8, [3 x i8], i16, i16 }
%struct.fc_els_ls_rjt = type { i8, [4 x i8], i8, i8, i8 }
%struct.fc_els_rec_acc = type { i8, [3 x i8], i16, i16, i8, [3 x i8], i8, [3 x i8], i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcp_srr = type { i8, [3 x i8], i16, i16, i32, i8, [3 x i8] }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.fcoe_fcf = type { %struct.list_head, %struct.work_struct, ptr, ptr, i32, i64, i64, i32, i16, [6 x i8], [6 x i8], i8, i8, i16, i32, i8 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnx2fc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@bnx2fc_send_rrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016bnx2fc: Sending RRQ orig_xid = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_send_rrq\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/bnx2fc/bnx2fc_els.c\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_send_rrq._entry_ptr = internal global ptr @bnx2fc_send_rrq._entry, section ".printk_index", align 4
@bnx2fc_send_rrq._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bnx2fc: Unable to allocate cb_arg for RRQ\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2fc_send_rrq._entry_ptr.5 = internal global ptr @bnx2fc_send_rrq._entry.3, section ".printk_index", align 4
@bnx2fc_send_rrq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016bnx2fc: rrq Failed\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_send_rrq._entry_ptr.8 = internal global ptr @bnx2fc_send_rrq._entry.6, section ".printk_index", align 4
@bnx2fc_send_rrq._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bnx2fc: RRQ failed - release orig io req 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_send_rrq._entry_ptr.11 = internal global ptr @bnx2fc_send_rrq._entry.9, section ".printk_index", align 4
@bnx2fc_send_adisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bnx2fc: Unable to allocate cb_arg for ADISC\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2fc_send_adisc\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_send_adisc._entry_ptr = internal global ptr @bnx2fc_send_adisc._entry, section ".printk_index", align 4
@bnx2fc_send_adisc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bnx2fc: send ADISC: l2_oxid = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_send_adisc._entry_ptr.16 = internal global ptr @bnx2fc_send_adisc._entry.14, section ".printk_index", align 4
@bnx2fc_send_logo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: Unable to allocate cb_arg for LOGO\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_send_logo\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_send_logo._entry_ptr = internal global ptr @bnx2fc_send_logo._entry, section ".printk_index", align 4
@bnx2fc_send_logo._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016bnx2fc: Send LOGO: l2_oxid = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_send_logo._entry_ptr.21 = internal global ptr @bnx2fc_send_logo._entry.19, section ".printk_index", align 4
@bnx2fc_send_rls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.22, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_send_rls\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_send_rls._entry_ptr = internal global ptr @bnx2fc_send_rls._entry, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sending REC\0A\00", [19 x i8] zeroinitializer }, align 32
@bnx2fc_send_rec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bnx2fc: Unable to allocate cb_arg for REC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_send_rec\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_send_rec._entry_ptr = internal global ptr @bnx2fc_send_rec._entry, section ".printk_index", align 4
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REC failed - release\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sending SRR\0A\00", [19 x i8] zeroinitializer }, align 32
@bnx2fc_send_srr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bnx2fc: Unable to allocate cb_arg for SRR\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_send_srr\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_send_srr._entry_ptr = internal global ptr @bnx2fc_send_srr._entry, section ".printk_index", align 4
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SRR failed - release\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_process_els_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016bnx2fc: Entered process_els_compl xid = 0x%xcmd_type = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2fc_process_els_compl\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_process_els_compl._entry_ptr = internal global ptr @bnx2fc_process_els_compl._entry, section ".printk_index", align 4
@bnx2fc_process_els_compl._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016bnx2fc: Timer context finished processing this els - 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2fc_process_els_compl._entry_ptr.35 = internal global ptr @bnx2fc_process_els_compl._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnx2fc_rrq_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016bnx2fc: rrq_compl: orig xid = 0x%x, rrq_xid = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_rrq_compl\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_rrq_compl._entry_ptr = internal global ptr @bnx2fc_rrq_compl._entry, section ".printk_index", align 4
@bnx2fc_rrq_compl._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bnx2fc: rrq xid - 0x%x timed out, clean it up\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_rrq_compl._entry_ptr.40 = internal global ptr @bnx2fc_rrq_compl._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_l2_els_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bnx2fc: ELS COMPL - l2_oxid = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_l2_els_compl\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_l2_els_compl._entry_ptr = internal global ptr @bnx2fc_l2_els_compl._entry, section ".printk_index", align 4
@bnx2fc_l2_els_compl._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: Unable to alloc mp buf\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_l2_els_compl._entry_ptr.46 = internal global ptr @bnx2fc_l2_els_compl._entry.44, section ".printk_index", align 4
@bnx2fc_l2_els_compl._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bnx2fc: l2_els_compl: resp len is beyond page size\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_l2_els_compl._entry_ptr.49 = internal global ptr @bnx2fc_l2_els_compl._entry.47, section ".printk_index", align 4
@bnx2fc_rec_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bnx2fc: Entered rec_compl callback\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_rec_compl\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_rec_compl._entry_ptr = internal global ptr @bnx2fc_rec_compl._entry, section ".printk_index", align 4
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rec_compl: orig xid = 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out, abort orig_io - 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rec_compl: initiate_abts failed. issue cleanup\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"rec_compl: initiate_abts failed xid = 0x%x. issue cleanup\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"completedorig_io - 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"abts in prog orig_io - 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2fc_rec_compl._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2fc: rec buf: mem alloc failure\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_rec_compl._entry_ptr.60 = internal global ptr @bnx2fc_rec_compl._entry.58, section ".printk_index", align 4
@bnx2fc_rec_compl._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: fc_frame_alloc failure\0A\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_rec_compl._entry_ptr.63 = internal global ptr @bnx2fc_rec_compl._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"opcode is RJT\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle CMD LOST case\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Post IO request again\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REC: io post err\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"target has the seq init\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e_stat = 0x%x, offset = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WRITE - resp lost\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"XFER_RDY/DATA lost\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"READ - resp lost\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RD DATA lost\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rec_compl:initiate_abts failed. issue cleanup\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Send SRR - FCP_RSP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to send SRR IO will abort\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"srr timed out, abort orig_io - 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"srr_compl: initiate_abts failed. issue cleanup\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"srr_compl:xid 0x%x flags = %lx\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"srr_compl: initiate_abts failed xid = 0x%x. issue cleanup\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"srr_compl:xid - 0x%x flags = %lx\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_srr_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2fc: srr buf: mem alloc failure\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_srr_compl\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_srr_compl._entry_ptr = internal global ptr @bnx2fc_srr_compl._entry, section ".printk_index", align 4
@bnx2fc_srr_compl._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.83, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2fc_srr_compl._entry_ptr.85 = internal global ptr @bnx2fc_srr_compl._entry.84, section ".printk_index", align 4
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SRR success\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SRR rejected\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"srr compl - invalid opcode = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: els 0x%x: rport not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_initiate_els\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry_ptr = internal global ptr @bnx2fc_initiate_els._entry, section ".printk_index", align 4
@bnx2fc_initiate_els._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: els 0x%x: link is not ready\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry_ptr.93 = internal global ptr @bnx2fc_initiate_els._entry.91, section ".printk_index", align 4
@bnx2fc_initiate_els._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2fc: els 0x%x: tgt not ready\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry_ptr.96 = internal global ptr @bnx2fc_initiate_els._entry.94, section ".printk_index", align 4
@bnx2fc_initiate_els._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2fc: ELS MP request init failed\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry_ptr.99 = internal global ptr @bnx2fc_initiate_els._entry.97, section ".printk_index", align 4
@bnx2fc_initiate_els._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013bnx2fc: Invalid ELS op 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry_ptr.102 = internal global ptr @bnx2fc_initiate_els._entry.100, section ".printk_index", align 4
@bnx2fc_initiate_els._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.90, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: initiate_els.. session not ready\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_initiate_els._entry_ptr.105 = internal global ptr @bnx2fc_initiate_els._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fcoe_mac=%pM method=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_logo_resp.zero_mac = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 81]
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 79, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 85, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 103, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 112, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 194, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 200, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 222, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 228, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 250, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 592, i32 29 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 597, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 614, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 633, i32 29 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 638, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 658, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 813, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 818, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 38, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 48, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 161, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 136, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 161, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 166, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 398, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 401, i32 25 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 406, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 412, i32 27 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 427, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 436, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 442, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 457, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 465, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 475, i32 26 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 480, i32 27 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 490, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 494, i32 27 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 508, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 511, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 520, i32 28 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 526, i32 28 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 539, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 546, i32 28 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 557, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 562, i32 27 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 568, i32 28 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 282, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 287, i32 27 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 293, i32 27 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 311, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 320, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 332, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 340, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 351, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 354, i32 26 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 364, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 691, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 696, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 701, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 722, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 741, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 782, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 906, i32 24 }
@___asan_gen_.418 = private unnamed_addr constant [9 x i8] c"zero_mac\00", align 1
@___asan_gen_.419 = private constant [36 x i8] c"../drivers/scsi/bnx2fc/bnx2fc_els.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 918, i32 12 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @bnx2fc_initiate_els._entry, ptr @bnx2fc_initiate_els._entry.100, ptr @bnx2fc_initiate_els._entry.103, ptr @bnx2fc_initiate_els._entry.91, ptr @bnx2fc_initiate_els._entry.94, ptr @bnx2fc_initiate_els._entry.97, ptr @bnx2fc_initiate_els._entry_ptr, ptr @bnx2fc_initiate_els._entry_ptr.102, ptr @bnx2fc_initiate_els._entry_ptr.105, ptr @bnx2fc_initiate_els._entry_ptr.93, ptr @bnx2fc_initiate_els._entry_ptr.96, ptr @bnx2fc_initiate_els._entry_ptr.99, ptr @bnx2fc_l2_els_compl._entry, ptr @bnx2fc_l2_els_compl._entry.44, ptr @bnx2fc_l2_els_compl._entry.47, ptr @bnx2fc_l2_els_compl._entry_ptr, ptr @bnx2fc_l2_els_compl._entry_ptr.46, ptr @bnx2fc_l2_els_compl._entry_ptr.49, ptr @bnx2fc_process_els_compl._entry, ptr @bnx2fc_process_els_compl._entry.33, ptr @bnx2fc_process_els_compl._entry_ptr, ptr @bnx2fc_process_els_compl._entry_ptr.35, ptr @bnx2fc_rec_compl._entry, ptr @bnx2fc_rec_compl._entry.58, ptr @bnx2fc_rec_compl._entry.61, ptr @bnx2fc_rec_compl._entry_ptr, ptr @bnx2fc_rec_compl._entry_ptr.60, ptr @bnx2fc_rec_compl._entry_ptr.63, ptr @bnx2fc_rrq_compl._entry, ptr @bnx2fc_rrq_compl._entry.38, ptr @bnx2fc_rrq_compl._entry_ptr, ptr @bnx2fc_rrq_compl._entry_ptr.40, ptr @bnx2fc_send_adisc._entry, ptr @bnx2fc_send_adisc._entry.14, ptr @bnx2fc_send_adisc._entry_ptr, ptr @bnx2fc_send_adisc._entry_ptr.16, ptr @bnx2fc_send_logo._entry, ptr @bnx2fc_send_logo._entry.19, ptr @bnx2fc_send_logo._entry_ptr, ptr @bnx2fc_send_logo._entry_ptr.21, ptr @bnx2fc_send_rec._entry, ptr @bnx2fc_send_rec._entry_ptr, ptr @bnx2fc_send_rls._entry, ptr @bnx2fc_send_rls._entry_ptr, ptr @bnx2fc_send_rrq._entry, ptr @bnx2fc_send_rrq._entry.3, ptr @bnx2fc_send_rrq._entry.6, ptr @bnx2fc_send_rrq._entry.9, ptr @bnx2fc_send_rrq._entry_ptr, ptr @bnx2fc_send_rrq._entry_ptr.11, ptr @bnx2fc_send_rrq._entry_ptr.5, ptr @bnx2fc_send_rrq._entry_ptr.8, ptr @bnx2fc_send_srr._entry, ptr @bnx2fc_send_srr._entry_ptr, ptr @bnx2fc_srr_compl._entry, ptr @bnx2fc_srr_compl._entry.84, ptr @bnx2fc_srr_compl._entry_ptr, ptr @bnx2fc_srr_compl._entry_ptr.85, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @bnx2fc_logo_resp.zero_mac], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_rrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_rrq._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_rrq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_rrq._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_adisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_adisc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_logo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_logo._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_rls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_rec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_send_srr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_els_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_process_els_compl._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rrq_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rrq_compl._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_l2_els_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_l2_els_compl._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_l2_els_compl._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rec_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rec_compl._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rec_compl._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_srr_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_srr_compl._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_els._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_els._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_els._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_els._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_els._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_initiate_els._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_logo_resp.zero_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_rrq(ptr noundef %aborted_io_req) local_unnamed_addr #0 align 64 {
entry:
  %rrq = alloca %struct.fc_els_rrq, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rrq) #6
  %0 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 3
  %1 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 3, i32 1
  %2 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 3, i32 2
  %3 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 5
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %aborted_io_req, i32 0, i32 7
  %5 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tgt1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdata, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %sid2 = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 7
  %15 = ptrtoint ptr %sid2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sid2, align 4
  %r_a_tov3 = getelementptr inbounds %struct.fc_lport, ptr %14, i32 0, i32 23
  %17 = ptrtoint ptr %r_a_tov3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r_a_tov3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %19 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.end12_crit_edge, label %do.end, !prof !204

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %aborted_io_req, i32 0, i32 18
  %20 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %xid, align 4
  %conv = zext i16 %21 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.end.do.end12_crit_edge
  %22 = call ptr @memset(ptr %rrq, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3328, i32 noundef 20) #10
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %do.end12.do.body52.sink.split_crit_edge, label %if.end21

do.end12.do.body52.sink.split_crit_edge:          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52.sink.split

if.end21:                                         ; preds = %do.end12
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %aborted_io_req, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %rrq to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 18, ptr %rrq, align 2
  %shr.i98 = lshr i32 %16, 16
  %conv.i = trunc i32 %shr.i98 to i8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %0, align 1
  %shr1.i = lshr i32 %16, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.i, ptr %1, align 2
  %conv6.i = trunc i32 %16 to i8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv6.i, ptr %2, align 1
  %xid23 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %aborted_io_req, i32 0, i32 18
  %29 = ptrtoint ptr %xid23 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %xid23, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %3, align 2
  %task = getelementptr inbounds %struct.bnx2fc_cmd, ptr %aborted_io_req, i32 0, i32 20
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %33, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_id, align 2
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %4, align 2
  %add = add i32 %7, 1000
  br label %retry_rrq

retry_rrq:                                        ; preds = %if.end48, %if.end21
  %call24 = call fastcc i32 @bnx2fc_initiate_els(ptr noundef %6, i32 noundef 18, ptr noundef nonnull %rrq, i32 noundef 12, ptr noundef nonnull @bnx2fc_rrq_compl, ptr noundef nonnull %call7.i.i, i32 noundef %18)
  %37 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call24, label %retry_rrq.do.body52_crit_edge [
    i32 -12, label %if.then26
    i32 0, label %retry_rrq.cleanup_crit_edge
  ]

retry_rrq.cleanup_crit_edge:                      ; preds = %retry_rrq
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

retry_rrq.do.body52_crit_edge:                    ; preds = %retry_rrq
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

if.then26:                                        ; preds = %retry_rrq
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %38
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %do.body30, label %if.end48

do.body30:                                        ; preds = %if.then26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %39 = load i32, ptr @bnx2fc_debug_level, align 4
  %and31 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.body52_crit_edge, label %do.body30.do.body52.sink.split_crit_edge, !prof !204

do.body30.do.body52.sink.split_crit_edge:         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52.sink.split

do.body30.do.body52_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

if.end48:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %retry_rrq

do.body52.sink.split:                             ; preds = %do.body30.do.body52.sink.split_crit_edge, %do.end12.do.body52.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %do.end12.do.body52.sink.split_crit_edge ], [ @.str.7, %do.body30.do.body52.sink.split_crit_edge ]
  %rc.0101.ph = phi i32 [ -12, %do.end12.do.body52.sink.split_crit_edge ], [ 8195, %do.body30.do.body52.sink.split_crit_edge ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #9
  br label %do.body52

do.body52:                                        ; preds = %do.body52.sink.split, %do.body30.do.body52_crit_edge, %retry_rrq.do.body52_crit_edge
  %rc.0101 = phi i32 [ 8195, %do.body30.do.body52_crit_edge ], [ %rc.0101.ph, %do.body52.sink.split ], [ %call24, %retry_rrq.do.body52_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %40 = load i32, ptr @bnx2fc_debug_level, align 4
  %and53 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.do.end71_crit_edge, label %do.end64, !prof !204

do.body52.do.end71_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %xid66 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %aborted_io_req, i32 0, i32 18
  %41 = ptrtoint ptr %xid66 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %xid66, align 4
  %conv67 = zext i16 %42 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv67) #9
  br label %do.end71

do.end71:                                         ; preds = %do.end64, %do.body52.do.end71_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #6
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %aborted_io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %retry_rrq.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %rc.0101, %kref_put.exit ], [ %call24, %retry_rrq.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rrq) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2fc_initiate_els(ptr noundef %tgt, i32 noundef %op, ptr nocapture noundef readonly %data, i32 noundef %data_len, ptr noundef %cb_func, ptr noundef %cb_arg, i32 noundef %timer_msec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rport2 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 1
  %4 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport2, align 4
  %lport3 = getelementptr inbounds %struct.fcoe_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %lport3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport3, align 4
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_state.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %9, label %entry.do.end_crit_edge [
    i32 2, label %entry.sw.bb.i_crit_edge
    i32 11, label %entry.sw.bb.i_crit_edge207
  ]

entry.sw.bb.i_crit_edge207:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge207
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.do.end_crit_edge, label %if.end

sw.bb.i.do.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sw.bb.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %op) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  %state = getelementptr inbounds %struct.fc_lport, ptr %7, i32 0, i32 13
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %14)
  %cmp.not = icmp eq i32 %14, 14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

lor.lhs.false:                                    ; preds = %if.end
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %7, i32 0, i32 10
  %15 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %lor.lhs.false.do.end9_crit_edge, label %if.end12

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %op) #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 9
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %op) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call22 = tail call ptr @bnx2fc_elstm_alloc(ptr noundef %tgt, i32 noundef 4) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %sc_cmd = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 8
  %20 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sc_cmd, align 4
  %port26 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 6
  %21 = ptrtoint ptr %port26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %port26, align 4
  %tgt27 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 7
  %22 = ptrtoint ptr %tgt27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tgt, ptr %tgt27, align 4
  %cb_func28 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 11
  %23 = ptrtoint ptr %cb_func28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cb_func, ptr %cb_func28, align 4
  %io_req = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %24 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call22, ptr %io_req, align 4
  %cb_arg29 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 12
  %25 = ptrtoint ptr %cb_arg29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cb_arg, ptr %cb_arg29, align 4
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 23
  %26 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %data_len, ptr %data_xfer_len, align 4
  %call31 = tail call i32 @bnx2fc_init_mp_req(ptr noundef nonnull %call22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8195, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 8195
  br i1 %cmp32, label %do.end36, label %if.else

do.end36:                                         ; preds = %if.end25
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #9
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %req_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %data_len, ptr %req_len, align 4
  %29 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %data_len, ptr %data_xfer_len, align 4
  %req_buf = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 2
  %30 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req_buf, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %data, i32 %data_len)
  %req_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6
  %33 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rport2, align 4
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_id, align 8
  %sid64 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 7
  %37 = ptrtoint ptr %sid64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sid64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %op)
  %cmp65 = icmp eq i32 %op, 20
  %. = select i1 %cmp65, i8 50, i8 34
  %.206 = select i1 %cmp65, i8 8, i8 1
  %39 = ptrtoint ptr %req_fc_hdr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %., ptr %req_fc_hdr, align 4
  %fh_d_id.i172 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 1
  %shr.i.i173 = lshr i32 %36, 16
  %conv.i.i174 = trunc i32 %shr.i.i173 to i8
  %40 = ptrtoint ptr %fh_d_id.i172 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i.i174, ptr %fh_d_id.i172, align 1
  %shr1.i.i175 = lshr i32 %36, 8
  %conv3.i.i176 = trunc i32 %shr1.i.i175 to i8
  %arrayidx4.i.i177 = getelementptr %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx4.i.i177 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv3.i.i176, ptr %arrayidx4.i.i177, align 1
  %conv6.i.i178 = trunc i32 %36 to i8
  %arrayidx7.i.i179 = getelementptr %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx7.i.i179 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv6.i.i178, ptr %arrayidx7.i.i179, align 1
  %fh_s_id.i180 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 3
  %shr.i1.i181 = lshr i32 %38, 16
  %conv.i2.i182 = trunc i32 %shr.i1.i181 to i8
  %43 = ptrtoint ptr %fh_s_id.i180 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i2.i182, ptr %fh_s_id.i180, align 1
  %shr1.i3.i183 = lshr i32 %38, 8
  %conv3.i4.i184 = trunc i32 %shr1.i3.i183 to i8
  %arrayidx4.i5.i185 = getelementptr %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx4.i5.i185 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv3.i4.i184, ptr %arrayidx4.i5.i185, align 1
  %conv6.i6.i186 = trunc i32 %38 to i8
  %arrayidx7.i7.i187 = getelementptr %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 3, i32 2
  %45 = ptrtoint ptr %arrayidx7.i7.i187 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv6.i6.i186, ptr %arrayidx7.i7.i187, align 1
  %fh_type.i188 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 4
  %46 = ptrtoint ptr %fh_type.i188 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.206, ptr %fh_type.i188, align 4
  %47 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 41, ptr %47, align 1
  %49 = getelementptr %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 5, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %49, align 1
  %51 = getelementptr %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 5, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %51, align 1
  %53 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 7
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %55, align 1
  %57 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 10, i32 6, i32 11
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %57, align 4
  %xid69 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 18
  %59 = ptrtoint ptr %xid69 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %xid69, align 4
  %conv = zext i16 %60 to i32
  %div169 = lshr i32 %conv, 5
  %rem = and i32 %conv, 31
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %61 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hba, align 4
  %task_ctx = getelementptr inbounds %struct.bnx2fc_hba, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %task_ctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %64, i32 %div169
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %arrayidx71 = getelementptr %struct.fcoe_task_ctx_entry, ptr %66, i32 %rem
  tail call void @bnx2fc_init_mp_task(ptr noundef nonnull %call22, ptr noundef %arrayidx71) #6
  %tgt_lock72 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock72) #6
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool75.not = icmp eq i32 %69, 0
  br i1 %tobool75.not, label %do.end79, label %if.end87

do.end79:                                         ; preds = %if.else
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #9
  %70 = ptrtoint ptr %cb_func28 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %cb_func28, align 4
  %71 = ptrtoint ptr %cb_arg29 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %cb_arg29, align 4
  %refcount84 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 5
  %call.i.i.i.i.i.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount84, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount84, i32 1, i32 3, i32 1) #6
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount84, ptr %refcount84, i32 1, ptr elementtype(i32) %refcount84) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i196 = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i196)
  %cmp.i.i.i.i197 = icmp eq i32 %asmresult.i.i.i.i.i.i.i196, 1
  br i1 %cmp.i.i.i.i197, label %if.then.i201, label %if.end5.i.i.i.i199

if.end5.i.i.i.i199:                               ; preds = %do.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i196)
  %.not.i.i.i.i198 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i196, 0
  br i1 %.not.i.i.i.i198, label %if.end5.i.i.i.i199.kref_put.exit202_crit_edge, label %if.then10.i.i.i.i200, !prof !204

if.end5.i.i.i.i199.kref_put.exit202_crit_edge:    ; preds = %if.end5.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit202

if.then10.i.i.i.i200:                             ; preds = %if.end5.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount84, i32 noundef 3) #6
  br label %kref_put.exit202

if.then.i201:                                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount84) #6
  br label %kref_put.exit202

kref_put.exit202:                                 ; preds = %if.then.i201, %if.then10.i.i.i.i200, %if.end5.i.i.i.i199.kref_put.exit202_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock72) #6
  br label %cleanup

if.end87:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer_msec)
  %tobool88.not = icmp eq i32 %timer_msec, 0
  br i1 %tobool88.not, label %if.end87.if.end90_crit_edge, label %if.then89

if.end87.if.end90_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bnx2fc_cmd_timer_set(ptr noundef nonnull %call22, i32 noundef %timer_msec) #6
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end87.if.end90_crit_edge
  tail call void @bnx2fc_add_2_sq(ptr noundef %tgt, i16 noundef zeroext %60) #6
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call22, i32 0, i32 1
  %73 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %on_active_queue, align 4
  %els_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 63
  %prev.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 63, i32 1
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call22, ptr noundef %75, ptr noundef %els_queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end90.list_add_tail.exit_crit_edge

if.end90.list_add_tail.exit_crit_edge:            ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call22, ptr %prev.i, align 4
  %77 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %els_queue, ptr %call22, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call22, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call22, ptr %75, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end90.list_add_tail.exit_crit_edge
  tail call void @bnx2fc_ring_doorbell(ptr noundef %tgt) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock72) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %kref_put.exit202, %kref_put.exit, %if.end21.cleanup_crit_edge, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %kref_put.exit202 ], [ -22, %do.end ], [ -22, %do.end9 ], [ -12, %kref_put.exit ], [ 0, %list_add_tail.exit ], [ -22, %do.end18 ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_rrq_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cb_arg, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !208

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_els.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #6, !srcloc !209
  unreachable

do.end9:                                          ; preds = %entry
  %io_req = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %0 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_req, align 4
  %2 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_arg, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !208

do.body21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_els.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 37, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

do.body30:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %4 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body30.do.end46_crit_edge, label %do.end41, !prof !204

do.body30.do.end46_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end41:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %xid, align 4
  %conv = zext i16 %6 to i32
  %xid42 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %xid42 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %xid42, align 4
  %conv43 = zext i16 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv43) #9
  br label %do.end46

do.end46:                                         ; preds = %do.end41, %do.body30.do.end46_crit_edge
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 24
  %call48 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %req_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %kref_put.exit.if.end94_crit_edge, label %do.body51

kref_put.exit.if.end94_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.body51:                                        ; preds = %kref_put.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %10 = load i32, ptr @bnx2fc_debug_level, align 4
  %and52 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.end70_crit_edge, label %do.end63, !prof !204

do.body51.do.end70_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

do.end63:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %xid65 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %xid65 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %xid65, align 4
  %conv66 = zext i16 %12 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv66) #9
  br label %do.end70

do.end70:                                         ; preds = %do.end63, %do.body51.do.end70_crit_edge
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %on_active_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool71.not = icmp eq i8 %14, 0
  br i1 %tobool71.not, label %do.end70.if.end94_crit_edge, label %if.then72

do.end70.if.end94_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then72:                                        ; preds = %do.end70
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then72.list_del_init.exit_crit_edge

if.then72.list_del_init.exit_crit_edge:           ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then72.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %on_active_queue, align 4
  %call74 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool76.not = icmp eq i32 %call74, 0
  br i1 %tobool76.not, label %list_del_init.exit.if.end94_crit_edge, label %do.body84, !prof !204

list_del_init.exit.if.end94_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.body84:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_els.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #6, !srcloc !211
  unreachable

if.end94:                                         ; preds = %list_del_init.exit.if.end94_crit_edge, %do.end70.if.end94_crit_edge, %kref_put.exit.if.end94_crit_edge
  tail call void @kfree(ptr noundef nonnull %cb_arg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_cmd_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_adisc(ptr noundef %tgt, ptr nocapture noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 2
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %r_a_tov1 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %r_a_tov1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_a_tov1, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i = icmp ult i32 %7, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !208

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %fc_frame_header_get.exit
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fh_ox_id, align 4
  %l2_oxid = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %l2_oxid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %l2_oxid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %14 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.do.end17_crit_edge, label %do.end11, !prof !204

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %12 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %if.end.do.end17_crit_edge
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 52
  br i1 %cmp.not.i, label %do.end17.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

do.end17.fc_frame_payload_get.exit_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %18, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %do.end17.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %do.end17.fc_frame_payload_get.exit_crit_edge ]
  %mul = shl i32 %5, 1
  %call19 = tail call fastcc i32 @bnx2fc_initiate_els(ptr noundef %tgt, i32 noundef 82, ptr noundef %pp.0.i, i32 noundef 28, ptr noundef nonnull @bnx2fc_l2_els_compl, ptr noundef nonnull %call7.i.i, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %fc_frame_payload_get.exit.cleanup_crit_edge, label %if.then21

fc_frame_payload_get.exit.cleanup_crit_edge:      ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %fc_frame_payload_get.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call19, %if.then21 ], [ 0, %fc_frame_payload_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_l2_els_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %l2_oxid1 = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %cb_arg, i32 0, i32 2
  %0 = ptrtoint ptr %l2_oxid1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %l2_oxid1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %2 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !204

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %io_req = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %3 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_req, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 24
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %req_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end33, label %if.then9

if.then9:                                         ; preds = %do.end6
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %on_active_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.then9.free_arg_crit_edge, label %if.then11

if.then9.free_arg_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_arg

if.then11:                                        ; preds = %if.then9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %on_active_queue, align 4
  %call13 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %list_del_init.exit.free_arg_crit_edge, label %do.body23, !prof !204

list_del_init.exit.free_arg_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_arg

do.body23:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_els.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !212
  unreachable

if.end33:                                         ; preds = %do.end6
  %tgt34 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 7
  %16 = ptrtoint ptr %tgt34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tgt34, align 4
  %resp_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 10, i32 12
  %resp_len36 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 10, i32 7
  %18 = ptrtoint ptr %resp_len36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resp_len36, align 4
  %resp_buf37 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 10, i32 8
  %20 = ptrtoint ptr %resp_buf37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resp_buf37, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2848, i32 noundef 4096) #10
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %free_arg

if.end46:                                         ; preds = %if.end33
  %add = add i32 %19, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  br i1 %cmp, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %free_buf

if.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %call7.i.i, ptr %resp_fc_hdr, i32 24)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 24
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %21, i32 %19)
  tail call void @bnx2fc_process_l2_frame_compl(ptr noundef %17, ptr noundef nonnull %call7.i.i, i32 noundef %add, i16 noundef zeroext %1) #6
  br label %free_buf

free_buf:                                         ; preds = %if.end54, %do.end51
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %free_arg

free_arg:                                         ; preds = %free_buf, %do.end43, %list_del_init.exit.free_arg_crit_edge, %if.then9.free_arg_crit_edge
  tail call void @kfree(ptr noundef %cb_arg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_logo(ptr noundef %tgt, ptr nocapture noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 2
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %r_a_tov1 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %r_a_tov1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_a_tov1, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i = icmp ult i32 %7, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !208

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end:                                           ; preds = %fc_frame_header_get.exit
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fh_ox_id, align 4
  %l2_oxid = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %l2_oxid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %l2_oxid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %14 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.do.end17_crit_edge, label %do.end11, !prof !204

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %12 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %if.end.do.end17_crit_edge
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 40
  br i1 %cmp.not.i, label %do.end17.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

do.end17.fc_frame_payload_get.exit_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %18, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %do.end17.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %do.end17.fc_frame_payload_get.exit_crit_edge ]
  %mul = shl i32 %5, 1
  %call19 = tail call fastcc i32 @bnx2fc_initiate_els(ptr noundef %tgt, i32 noundef 5, ptr noundef %pp.0.i, i32 noundef 16, ptr noundef nonnull @bnx2fc_l2_els_compl, ptr noundef nonnull %call7.i.i, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %fc_frame_payload_get.exit.cleanup_crit_edge, label %if.then21

fc_frame_payload_get.exit.cleanup_crit_edge:      ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %fc_frame_payload_get.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call19, %if.then21 ], [ 0, %fc_frame_payload_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_rls(ptr noundef %tgt, ptr nocapture noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 2
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %r_a_tov1 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %r_a_tov1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_a_tov1, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i = icmp ult i32 %7, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !208

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end:                                           ; preds = %fc_frame_header_get.exit
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fh_ox_id, align 4
  %l2_oxid = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %l2_oxid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %l2_oxid, align 8
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp.not.i = icmp ult i32 %15, 32
  br i1 %cmp.not.i, label %if.end.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.end.fc_frame_payload_get.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %17, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end.fc_frame_payload_get.exit_crit_edge ]
  %mul = shl i32 %5, 1
  %call5 = tail call fastcc i32 @bnx2fc_initiate_els(ptr noundef %tgt, i32 noundef 15, ptr noundef %pp.0.i, i32 noundef 8, ptr noundef nonnull @bnx2fc_l2_els_compl, ptr noundef nonnull %call7.i.i, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %fc_frame_payload_get.exit.cleanup_crit_edge, label %if.then7

fc_frame_payload_get.exit.cleanup_crit_edge:      ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %fc_frame_payload_get.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call5, %if.then7 ], [ 0, %fc_frame_payload_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_rec(ptr noundef %orig_io_req) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca %struct.fc_els_rec, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rec) #6
  %0 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 3
  %1 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 3, i32 1
  %2 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 3, i32 2
  %3 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 5
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 7
  %5 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tgt1, align 4
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdata, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %sid2 = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %sid2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sid2, align 4
  %r_a_tov3 = getelementptr inbounds %struct.fc_lport, ptr %10, i32 0, i32 23
  %13 = ptrtoint ptr %r_a_tov3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r_a_tov3, align 8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %orig_io_req, ptr noundef nonnull @.str.23) #6
  %15 = call ptr @memset(ptr %rec, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %rec_err

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !213
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !204

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %orig_io_req, ptr %call7.i.i, align 8
  %20 = ptrtoint ptr %rec to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 19, ptr %rec, align 2
  %shr.i = lshr i32 %12, 16
  %conv.i = trunc i32 %shr.i to i8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %0, align 1
  %shr1.i = lshr i32 %12, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv3.i, ptr %1, align 2
  %conv6.i = trunc i32 %12 to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv6.i, ptr %2, align 1
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 18
  %24 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %xid, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %3, align 2
  %task = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 20
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %28, i32 0, i32 2, i32 1, i32 1
  %29 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_id, align 2
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %4, align 2
  %call5 = call fastcc i32 @bnx2fc_initiate_els(ptr noundef %6, i32 noundef 19, ptr noundef nonnull %rec, i32 noundef 12, ptr noundef nonnull @bnx2fc_rec_compl, ptr noundef nonnull %call7.i.i, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %kref_get.exit.rec_err_crit_edge, label %if.then7

kref_get.exit.rec_err_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rec_err

if.then7:                                         ; preds = %kref_get.exit
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %orig_io_req, ptr noundef nonnull @.str.26) #6
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %6, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  %call.i.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i28 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i28, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %rec_err

rec_err:                                          ; preds = %kref_put.exit, %kref_get.exit.rec_err_crit_edge, %do.end
  %rc.0 = phi i32 [ %call5, %kref_put.exit ], [ 0, %kref_get.exit.rec_err_crit_edge ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rec) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_IO_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_rec_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %0 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !204

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %io_req = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %1 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_req, align 4
  %3 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_arg, align 4
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %xid, align 4
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.52, i32 noundef %conv) #6
  %tgt6 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %tgt6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tgt6, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %2, i32 0, i32 24
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %req_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end36, label %if.then9

if.then9:                                         ; preds = %do.end5
  %9 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %xid, align 4
  %conv11 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef %conv11) #6
  %call12 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 8194
  br i1 %cmp.not, label %if.then9.if.end16_crit_edge, label %if.then14

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.54) #6
  %call15 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %2) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then9.if.end16_crit_edge
  %rec_retry = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 25
  %11 = ptrtoint ptr %rec_retry to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rec_retry, align 4
  %inc = add i8 %12, 1
  store i8 %inc, ptr %rec_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp19 = icmp ult i8 %inc, 2
  br i1 %cmp19, label %if.then21, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.end16
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %8, i32 0, i32 54
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  %call22 = tail call i32 @bnx2fc_send_rec(ptr noundef %4)
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.then21.rec_compl_done_crit_edge, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21.rec_compl_done_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %rec_compl_done

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %call28 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 8194
  br i1 %cmp29.not, label %if.end27.rec_compl_done_crit_edge, label %if.then31

if.end27.rec_compl_done_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rec_compl_done

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %xid, align 4
  %conv33 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %conv33) #6
  %call34 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %4) #6
  br label %rec_compl_done

if.end36:                                         ; preds = %do.end5
  %req_flags37 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 24
  %15 = ptrtoint ptr %req_flags37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %req_flags37, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not = icmp eq i32 %17, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %xid, align 4
  %conv42 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef %conv42) #6
  br label %rec_compl_done

if.end43:                                         ; preds = %if.end36
  %20 = ptrtoint ptr %req_flags37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %req_flags37, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool46.not = icmp eq i32 %22, 0
  br i1 %tobool46.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %xid, align 4
  %conv49 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef %conv49) #6
  br label %rec_compl_done

if.end50:                                         ; preds = %if.end43
  %resp_len52 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %2, i32 0, i32 10, i32 7
  %25 = ptrtoint ptr %resp_len52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp_len52, align 4
  %resp_buf53 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %2, i32 0, i32 10, i32 8
  %27 = ptrtoint ptr %resp_buf53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resp_buf53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 4096) #10
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #9
  br label %rec_compl_done

if.end62:                                         ; preds = %if.end50
  %resp_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %2, i32 0, i32 10, i32 12
  %30 = call ptr @memcpy(ptr %call7.i.i, ptr %resp_fc_hdr, i32 24)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 24
  %31 = call ptr @memcpy(ptr %add.ptr, ptr %28, i32 %26)
  %rem.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef null, i32 noundef %26) #6
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %26) #6
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool64.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool64.not, label %do.end68, label %if.end71

do.end68:                                         ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #9
  br label %free_buf

if.end71:                                         ; preds = %fc_frame_alloc.exit
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %cmp.i = icmp ult i32 %33, 24
  br i1 %cmp.i, label %do.end.i, label %if.end71.fc_frame_header_get.exit_crit_edge, !prof !208

if.end71.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end71.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %add = add i32 %26, 24
  %36 = call ptr @memcpy(ptr %35, ptr %call7.i.i, i32 %add)
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %38)
  %cmp.not.i.i = icmp ult i32 %38, 25
  br i1 %cmp.not.i.i, label %fc_frame_header_get.exit.free_frame_crit_edge, label %fc_frame_payload_get.exit.i

fc_frame_header_get.exit.free_frame_crit_edge:    ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

fc_frame_payload_get.exit.i:                      ; preds = %fc_frame_header_get.exit
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %40, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.free_frame_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.free_frame_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %42, label %fc_frame_payload_op.exit.free_frame_crit_edge [
    i8 1, label %if.then77
    i8 2, label %if.then113
  ]

fc_frame_payload_op.exit.free_frame_crit_edge:    ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.then77:                                        ; preds = %fc_frame_payload_op.exit
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.64) #6
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %cmp.not.i = icmp ult i32 %45, 32
  br i1 %cmp.not.i, label %if.then77.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.then77.fc_frame_payload_get.exit_crit_edge:    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %47, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.then77.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.then77.fc_frame_payload_get.exit_crit_edge ]
  %er_reason = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 2
  %48 = ptrtoint ptr %er_reason to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %er_reason, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %49, label %fc_frame_payload_get.exit.abort_io103_crit_edge [
    i8 3, label %fc_frame_payload_get.exit.land.lhs.true_crit_edge
    i8 9, label %fc_frame_payload_get.exit.land.lhs.true_crit_edge278
  ]

fc_frame_payload_get.exit.land.lhs.true_crit_edge278: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

fc_frame_payload_get.exit.land.lhs.true_crit_edge: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

fc_frame_payload_get.exit.abort_io103_crit_edge:  ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort_io103

land.lhs.true:                                    ; preds = %fc_frame_payload_get.exit.land.lhs.true_crit_edge, %fc_frame_payload_get.exit.land.lhs.true_crit_edge278
  %er_explan = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 3
  %51 = ptrtoint ptr %er_explan to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %er_explan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %52)
  %cmp87 = icmp eq i8 %52, 23
  br i1 %cmp87, label %if.then89, label %land.lhs.true.abort_io103_crit_edge

land.lhs.true.abort_io103_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort_io103

if.then89:                                        ; preds = %land.lhs.true
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.65) #6
  %call90 = tail call ptr @bnx2fc_cmd_alloc(ptr noundef %8) #6
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.then89.abort_io103_crit_edge, label %if.end93

if.then89.abort_io103_crit_edge:                  ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort_io103

if.end93:                                         ; preds = %if.then89
  %sc_cmd94 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 8
  %53 = ptrtoint ptr %sc_cmd94 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sc_cmd94, align 4
  %sc_cmd95 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %call90, i32 0, i32 8
  %55 = ptrtoint ptr %sc_cmd95 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %sc_cmd95, align 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef %req_flags37) #6
  %call97 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %4) #6
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.66) #6
  %call98 = tail call i32 @bnx2fc_post_io_req(ptr noundef %8, ptr noundef nonnull %call90) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end93.free_frame_crit_edge, label %if.end101

if.end93.free_frame_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.67) #6
  br label %abort_io103

abort_io103:                                      ; preds = %if.end101, %if.then89.abort_io103_crit_edge, %land.lhs.true.abort_io103_crit_edge, %fc_frame_payload_get.exit.abort_io103_crit_edge
  %call104 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call104)
  %cmp105.not = icmp eq i32 %call104, 8194
  br i1 %cmp105.not, label %abort_io103.free_frame_crit_edge, label %if.then107

abort_io103.free_frame_crit_edge:                 ; preds = %abort_io103
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.then107:                                       ; preds = %abort_io103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.54) #6
  %call108 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %4) #6
  br label %free_frame

if.then113:                                       ; preds = %fc_frame_payload_op.exit
  %reca_fc4value = getelementptr inbounds %struct.fc_els_rec_acc, ptr %28, i32 0, i32 8
  %56 = ptrtoint ptr %reca_fc4value to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reca_fc4value, align 4
  %reca_e_stat = getelementptr inbounds %struct.fc_els_rec_acc, ptr %28, i32 0, i32 9
  %58 = ptrtoint ptr %reca_e_stat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reca_e_stat, align 4
  %and114 = and i32 %59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.68) #6
  br label %free_frame

if.end117:                                        ; preds = %if.then113
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.69, i32 noundef %59, i32 noundef %57) #6
  %sc_cmd119 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 8
  %60 = ptrtoint ptr %sc_cmd119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sc_cmd119, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp120 = icmp eq i32 %63, 1
  br i1 %cmp120, label %if.then122, label %if.else132

if.then122:                                       ; preds = %if.end117
  %data_xfer_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 23
  %64 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %65)
  %cmp123 = icmp eq i32 %57, %65
  br i1 %cmp123, label %if.then122.if.then156_crit_edge, label %if.else126

if.then122.if.then156_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then156

if.else126:                                       ; preds = %if.then122
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.71) #6
  %call127 = tail call i32 @bnx2fc_initiate_seq_cleanup(ptr noundef %4, i32 noundef %57, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not.not, label %if.else126.free_frame_crit_edge, label %if.else126.if.then147_crit_edge

if.else126.if.then147_crit_edge:                  ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then147

if.else126.free_frame_crit_edge:                  ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.else132:                                       ; preds = %if.end117
  %rx_buf_off = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 19, i32 0, i32 3
  %66 = ptrtoint ptr %rx_buf_off to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_buf_off, align 4
  %data_xfer_len133 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 23
  %68 = ptrtoint ptr %data_xfer_len133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_xfer_len133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp134 = icmp eq i32 %67, %69
  br i1 %cmp134, label %if.else132.if.then156_crit_edge, label %if.end145

if.else132.if.then156_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then156

if.end145:                                        ; preds = %if.else132
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.73) #6
  %call140 = tail call i32 @bnx2fc_initiate_seq_cleanup(ptr noundef %4, i32 noundef %67, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not.not, label %if.end145.free_frame_crit_edge, label %if.end145.if.then147_crit_edge

if.end145.if.then147_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then147

if.end145.free_frame_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.then147:                                       ; preds = %if.end145.if.then147_crit_edge, %if.else126.if.then147_crit_edge
  %call148 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call148)
  %cmp149.not = icmp eq i32 %call148, 8194
  br i1 %cmp149.not, label %if.then147.free_frame_crit_edge, label %if.then151

if.then147.free_frame_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.then151:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.74) #6
  %call152 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %4) #6
  br label %free_frame

if.then156:                                       ; preds = %if.else132.if.then156_crit_edge, %if.then122.if.then156_crit_edge
  %.str.72.sink = phi ptr [ @.str.70, %if.then122.if.then156_crit_edge ], [ @.str.72, %if.else132.if.then156_crit_edge ]
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull %.str.72.sink) #6
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.75) #6
  %tgt_lock157 = getelementptr inbounds %struct.bnx2fc_rport, ptr %8, i32 0, i32 54
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock157) #6
  %call159 = tail call i32 @bnx2fc_send_srr(ptr noundef %4, i32 noundef 0, i8 noundef zeroext 7)
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock157) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool161.not = icmp eq i32 %call159, 0
  br i1 %tobool161.not, label %if.then156.free_frame_crit_edge, label %if.then162

if.then156.free_frame_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_frame

if.then162:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %2, ptr noundef nonnull @.str.76) #6
  br label %free_frame

free_frame:                                       ; preds = %if.then162, %if.then156.free_frame_crit_edge, %if.then151, %if.then147.free_frame_crit_edge, %if.end145.free_frame_crit_edge, %if.else126.free_frame_crit_edge, %if.then116, %if.then107, %abort_io103.free_frame_crit_edge, %if.end93.free_frame_crit_edge, %fc_frame_payload_op.exit.free_frame_crit_edge, %fc_frame_payload_get.exit.i.free_frame_crit_edge, %fc_frame_header_get.exit.free_frame_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #6
  br label %free_buf

free_buf:                                         ; preds = %free_frame, %do.end68
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %rec_compl_done

rec_compl_done:                                   ; preds = %free_buf, %do.end59, %if.then47, %if.then40, %if.then31, %if.end27.rec_compl_done_crit_edge, %if.then21.rec_compl_done_crit_edge
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %4, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i266, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rec_compl_done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i266:                                     ; preds = %rec_compl_done
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i266, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @kfree(ptr noundef %cb_arg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_send_srr(ptr noundef %orig_io_req, i32 noundef %offset, i8 noundef zeroext %r_ctl) local_unnamed_addr #0 align 64 {
entry:
  %srr = alloca %struct.fcp_srr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %srr) #6
  %0 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 2
  %1 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 3
  %2 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 4
  %3 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 5
  %tgt1 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 7
  %4 = ptrtoint ptr %tgt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt1, align 4
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdata, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %r_a_tov2 = getelementptr inbounds %struct.fc_lport, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %r_a_tov2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r_a_tov2, align 8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %orig_io_req, ptr noundef nonnull @.str.27) #6
  %12 = call ptr @memset(ptr %srr, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2848, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %srr_err

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !213
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !204

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %orig_io_req, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %srr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 20, ptr %srr, align 4
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 18
  %18 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %xid, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %0, align 4
  %task = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 20
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %22, i32 0, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_id, align 2
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %1, align 2
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %offset, ptr %2, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %r_ctl, ptr %3, align 4
  %srr_offset = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 27
  %28 = ptrtoint ptr %srr_offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %offset, ptr %srr_offset, align 4
  %srr_rctl = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 28
  %29 = ptrtoint ptr %srr_rctl to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %r_ctl, ptr %srr_rctl, align 4
  %call4 = call fastcc i32 @bnx2fc_initiate_els(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %srr, i32 noundef 16, ptr noundef nonnull @bnx2fc_srr_compl, ptr noundef nonnull %call7.i.i, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %kref_get.exit
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %orig_io_req, ptr noundef nonnull @.str.30) #6
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %5, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  %call.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i31, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %srr_err

if.else:                                          ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %orig_io_req, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 13, ptr noundef %req_flags) #6
  br label %srr_err

srr_err:                                          ; preds = %if.else, %kref_put.exit, %do.end
  %rc.0 = phi i32 [ %call4, %kref_put.exit ], [ 0, %if.else ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %srr) #6
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_srr_compl(ptr nocapture noundef readonly %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_arg, align 4
  %io_req = getelementptr inbounds %struct.bnx2fc_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %2 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_req, align 4
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 24
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %req_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end36, label %if.then

if.then:                                          ; preds = %entry
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xid, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.77, i32 noundef %conv) #6
  %call1 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 8194
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.78) #6
  %call4 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %req_flags5 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %req_flags5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %req_flags5, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %req_flags5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %req_flags5, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end15, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %12 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %xid, align 4
  %conv13 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %conv13, i32 noundef %7) #6
  br label %srr_compl_done

if.end15:                                         ; preds = %lor.lhs.false
  %srr_retry = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %srr_retry to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %srr_retry, align 1
  %inc = add i8 %15, 1
  store i8 %inc, ptr %srr_retry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc)
  %cmp18 = icmp ult i8 %inc, 6
  br i1 %cmp18, label %if.then20, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.end15
  %tgt21 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %tgt21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tgt21, align 4
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %17, i32 0, i32 54
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  %srr_offset = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %srr_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srr_offset, align 4
  %srr_rctl = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 28
  %20 = ptrtoint ptr %srr_rctl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %srr_rctl, align 4
  %call22 = tail call i32 @bnx2fc_send_srr(ptr noundef %1, i32 noundef %19, i8 noundef zeroext %21)
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.then20.srr_compl_done_crit_edge, label %if.then20.if.end27_crit_edge

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20.srr_compl_done_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %srr_compl_done

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %call28 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 8194
  br i1 %cmp29.not, label %if.end27.srr_compl_done_crit_edge, label %if.then31

if.end27.srr_compl_done_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %srr_compl_done

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %xid, align 4
  %conv33 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.80, i32 noundef %conv33) #6
  %call34 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %1) #6
  br label %srr_compl_done

if.end36:                                         ; preds = %entry
  %req_flags37 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %req_flags37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %req_flags37, align 4
  %26 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not = icmp eq i32 %26, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end36.if.then44_crit_edge

if.end36.if.then44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

lor.lhs.false40:                                  ; preds = %if.end36
  %27 = ptrtoint ptr %req_flags37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %req_flags37, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %if.end48, label %lor.lhs.false40.if.then44_crit_edge

lor.lhs.false40.if.then44_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false40.if.then44_crit_edge, %if.end36.if.then44_crit_edge
  %xid45 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %xid45 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %xid45, align 4
  %conv46 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.81, i32 noundef %conv46, i32 noundef %25) #6
  br label %srr_compl_done

if.end48:                                         ; preds = %lor.lhs.false40
  %resp_len50 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 10, i32 7
  %32 = ptrtoint ptr %resp_len50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resp_len50, align 4
  %resp_buf51 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 10, i32 8
  %34 = ptrtoint ptr %resp_buf51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resp_buf51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 2848, i32 noundef 4096) #10
  %tobool53.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool53.not, label %do.end, label %if.end56

do.end:                                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #9
  br label %srr_compl_done

if.end56:                                         ; preds = %if.end48
  %resp_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %3, i32 0, i32 10, i32 12
  %37 = call ptr @memcpy(ptr %call7.i.i, ptr %resp_fc_hdr, i32 24)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 24
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %35, i32 %33)
  %rem.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef null, i32 noundef %33) #6
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %33) #6
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool58.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool58.not, label %do.end62, label %if.end65

do.end62:                                         ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #9
  br label %free_buf

if.end65:                                         ; preds = %fc_frame_alloc.exit
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %40)
  %cmp.i = icmp ult i32 %40, 24
  br i1 %cmp.i, label %do.end.i, label %if.end65.fc_frame_header_get.exit_crit_edge, !prof !208

if.end65.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end65.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %add = add i32 %33, 24
  %43 = call ptr @memcpy(ptr %42, ptr %call7.i.i, i32 %add)
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %45)
  %cmp.not.i.i = icmp ult i32 %45, 25
  br i1 %cmp.not.i.i, label %fc_frame_header_get.exit.sw.default_crit_edge, label %fc_frame_payload_get.exit.i

fc_frame_header_get.exit.sw.default_crit_edge:    ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

fc_frame_payload_get.exit.i:                      ; preds = %fc_frame_header_get.exit
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %47, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.sw.default_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.sw.default_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.i.i, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %49, label %fc_frame_payload_op.exit.sw.default_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb69
  ]

fc_frame_payload_op.exit.sw.default_crit_edge:    ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.86) #6
  br label %sw.epilog

sw.bb69:                                          ; preds = %fc_frame_payload_op.exit
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.87) #6
  %call70 = tail call i32 @bnx2fc_initiate_abts(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 8194
  br i1 %cmp71.not, label %sw.bb69.sw.epilog_crit_edge, label %if.then73

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then73:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #8
  %xid74 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 18
  %51 = ptrtoint ptr %xid74 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %xid74, align 4
  %conv75 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.80, i32 noundef %conv75) #6
  %call76 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %1) #6
  br label %sw.epilog

sw.default:                                       ; preds = %fc_frame_payload_op.exit.sw.default_crit_edge, %fc_frame_payload_get.exit.i.sw.default_crit_edge, %fc_frame_header_get.exit.sw.default_crit_edge
  %retval.0.i140 = phi i8 [ %49, %fc_frame_payload_op.exit.sw.default_crit_edge ], [ 0, %fc_frame_payload_get.exit.i.sw.default_crit_edge ], [ 0, %fc_frame_header_get.exit.sw.default_crit_edge ]
  %conv68 = zext i8 %retval.0.i140 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef %conv68) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then73, %sw.bb69.sw.epilog_crit_edge, %sw.bb
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #6
  br label %free_buf

free_buf:                                         ; preds = %sw.epilog, %do.end62
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %srr_compl_done

srr_compl_done:                                   ; preds = %free_buf, %do.end, %if.then44, %if.then31, %if.end27.srr_compl_done_crit_edge, %if.then20.srr_compl_done_crit_edge, %if.then11
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i138, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %srr_compl_done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i138:                                     ; preds = %srr_compl_done
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i138, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_process_els_compl(ptr noundef %els_req, ptr nocapture noundef readonly %task, i8 noundef zeroext %num_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %0 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !204

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xid = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 18
  %1 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %xid, align 4
  %conv = zext i16 %2 to i32
  %cmd_type = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 3
  %3 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_type, align 2
  %conv4 = zext i8 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %conv4) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 24
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %req_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end31, label %do.body10

do.body10:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2fc_debug_level to i32))
  %5 = load i32, ptr @bnx2fc_debug_level, align 4
  %and11 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end29_crit_edge, label %do.end22, !prof !204

do.body10.do.end29_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %xid24 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 18
  %6 = ptrtoint ptr %xid24 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xid24, align 4
  %conv25 = zext i16 %7 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv25) #9
  br label %do.end29

do.end29:                                         ; preds = %do.end22, %do.body10.do.end29_crit_edge
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %cleanup

if.end31:                                         ; preds = %do.end6
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 13
  %call32 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #6
  br i1 %call32, label %if.then33, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  %refcount34 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 5
  %call.i.i.i.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount34, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount34, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount34, ptr %refcount34, i32 1, ptr elementtype(i32) %refcount34) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i86 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i86)
  %cmp.i.i.i.i87 = icmp eq i32 %asmresult.i.i.i.i.i.i.i86, 1
  br i1 %cmp.i.i.i.i87, label %if.then.i91, label %if.end5.i.i.i.i89

if.end5.i.i.i.i89:                                ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i86)
  %.not.i.i.i.i88 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i86, 0
  br i1 %.not.i.i.i.i88, label %if.end5.i.i.i.i89.if.end36_crit_edge, label %if.then10.i.i.i.i90, !prof !204

if.end5.i.i.i.i89.if.end36_crit_edge:             ; preds = %if.end5.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then10.i.i.i.i90:                              ; preds = %if.end5.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount34, i32 noundef 3) #6
  br label %if.end36

if.then.i91:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount34) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then.i91, %if.then10.i.i.i.i90, %if.end5.i.i.i.i89.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 1
  %10 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %on_active_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool37.not = icmp eq i8 %11, 0
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %els_req) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then38.list_del_init.exit_crit_edge

if.then38.list_del_init.exit_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %els_req, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %els_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %els_req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then38.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %els_req to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %els_req, ptr %els_req, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %els_req, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %els_req, ptr %prev.i3.i, align 4
  %20 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %on_active_queue, align 4
  br label %if.end40

if.end40:                                         ; preds = %list_del_init.exit, %if.end36.if.end40_crit_edge
  %resp_fc_hdr = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 10, i32 12
  %union_ctx = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %union_ctx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %union_ctx, align 8
  %23 = ptrtoint ptr %resp_fc_hdr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %resp_fc_hdr, align 8
  %arrayidx44 = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 10, i32 12, i32 4
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx45, align 8
  %arrayidx46 = getelementptr %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx46, align 8
  %arrayidx47 = getelementptr %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 10, i32 12, i32 9
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx47, align 8
  %mp_payload_len = getelementptr inbounds %struct.fcoe_task_ctx_entry, ptr %task, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %mp_payload_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mp_payload_len, align 4
  %resp_len = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 10, i32 7
  %32 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %resp_len, align 4
  %cb_func = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 11
  %33 = ptrtoint ptr %cb_func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb_func, align 4
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %if.end40.if.end56_crit_edge, label %land.lhs.true

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end40
  %cb_arg = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 12
  %35 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb_arg, align 4
  %tobool51.not = icmp eq ptr %36, null
  br i1 %tobool51.not, label %land.lhs.true.if.end56_crit_edge, label %if.then52

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %34(ptr noundef nonnull %36) #6
  %37 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %cb_arg, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true.if.end56_crit_edge, %if.end40.if.end56_crit_edge
  %refcount57 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %els_req, i32 0, i32 5
  %call.i.i.i.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount57, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %refcount57, i32 1, i32 3, i32 1) #6
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount57, ptr %refcount57, i32 1, ptr elementtype(i32) %refcount57) #6, !srcloc !206
  %asmresult.i.i.i.i.i.i.i94 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i94)
  %cmp.i.i.i.i95 = icmp eq i32 %asmresult.i.i.i.i.i.i.i94, 1
  br i1 %cmp.i.i.i.i95, label %if.then.i99, label %if.end5.i.i.i.i97

if.end5.i.i.i.i97:                                ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i94)
  %.not.i.i.i.i96 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i94, 0
  br i1 %.not.i.i.i.i96, label %if.end5.i.i.i.i97.cleanup_crit_edge, label %if.then10.i.i.i.i98, !prof !204

if.end5.i.i.i.i97.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i98:                              ; preds = %if.end5.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount57, i32 noundef 3) #6
  br label %cleanup

if.then.i99:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount57) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i99, %if.then10.i.i.i.i98, %if.end5.i.i.i.i97.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i = icmp ult i32 %3, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !208

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %4 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %op, label %fc_frame_header_get.exit.sw.epilog_crit_edge [
    i32 4, label %fc_frame_header_get.exit.sw.bb_crit_edge
    i32 81, label %fc_frame_header_get.exit.sw.bb_crit_edge24
    i32 5, label %sw.bb3
  ]

fc_frame_header_get.exit.sw.bb_crit_edge24:       ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

fc_frame_header_get.exit.sw.bb_crit_edge:         ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

fc_frame_header_get.exit.sw.epilog_crit_edge:     ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %fc_frame_header_get.exit.sw.bb_crit_edge, %fc_frame_header_get.exit.sw.bb_crit_edge24
  %call2 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef nonnull @bnx2fc_flogi_resp, ptr noundef %add.ptr, i32 noundef %timeout) #6
  br label %cleanup

sw.bb3:                                           ; preds = %fc_frame_header_get.exit
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_d_id, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %6, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %12 to i32
  %or6.i = or i32 %or.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %or6.i)
  %cmp.not = icmp eq i32 %or6.i, 16777214
  br i1 %cmp.not, label %if.end, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef 5, ptr noundef nonnull @bnx2fc_logo_resp, ptr noundef %add.ptr, i32 noundef %timeout) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %fc_frame_header_get.exit.sw.epilog_crit_edge
  %call6 = tail call ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timeout) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end, %sw.bb
  %retval.0 = phi ptr [ %call6, %sw.epilog ], [ %call5, %if.end ], [ %call2, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_elsct_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_flogi_resp(ptr noundef %seq, ptr noundef %fp, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %fcoe_mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %seq, i32 -40
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %fcoe_mac) #6
  %2 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 5
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  %7 = call ptr @memset(ptr %fcoe_mac, i32 255, i32 6)
  br i1 %cmp.i, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp.i48 = icmp ult i32 %9, 24
  br i1 %cmp.i48, label %do.end.i, label %if.end.fc_frame_header_get.exit_crit_edge, !prof !208

if.end.fc_frame_header_get.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %granted_mac2 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 22
  %12 = ptrtoint ptr %granted_mac2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %granted_mac2, align 4
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 26
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %15 to i32
  %or.i = or i32 %13, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i49 = icmp eq i32 %or.i, 0
  br i1 %cmp.i49, label %if.else, label %if.then4

if.then4:                                         ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %fcoe_mac to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %fcoe_mac, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %15, ptr %5, align 4
  br label %if.end31

if.else:                                          ; preds = %fc_frame_header_get.exit
  %sel_fcf = getelementptr inbounds %struct.fcoe_ctlr, ptr %arg, i32 0, i32 3
  %18 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sel_fcf, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.else.if.else26_crit_edge, label %land.lhs.true

if.else.if.else26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

land.lhs.true:                                    ; preds = %if.else
  %fc_map7 = getelementptr inbounds %struct.fcoe_fcf, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %fc_map7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_map7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %land.lhs.true.if.else26_crit_edge, label %if.then8

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %21, 16
  %conv.i51 = trunc i32 %shr.i to i8
  %shr1.i = lshr i32 %21, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %conv6.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %fcoe_mac to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i51, ptr %fcoe_mac, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv3.i, ptr %2, align 1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6.i, ptr %3, align 2
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %11, i32 0, i32 1
  %25 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fh_d_id, align 1
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %4, align 1
  %arrayidx21 = getelementptr %struct.fc_frame_header, ptr %11, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx21, align 1
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %5, align 4
  %arrayidx24 = getelementptr %struct.fc_frame_header, ptr %11, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx24, align 1
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %6, align 1
  br label %if.end31

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %if.else.if.else26_crit_edge
  %fh_d_id28 = getelementptr inbounds %struct.fc_frame_header, ptr %11, i32 0, i32 1
  %34 = ptrtoint ptr %fcoe_mac to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 14, ptr %fcoe_mac, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -4, ptr %2, align 1
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %3, align 2
  %37 = ptrtoint ptr %fh_d_id28 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fh_d_id28, align 1
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %4, align 1
  %arrayidx5.i = getelementptr %struct.fc_frame_header, ptr %11, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx5.i, align 1
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %5, align 4
  %arrayidx7.i53 = getelementptr %struct.fc_frame_header, ptr %11, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx7.i53 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx7.i53, align 1
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %6, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %if.then8, %if.then4
  %method.0 = phi i32 [ 2, %if.then8 ], [ 3, %if.else26 ], [ 1, %if.then4 ]
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef nonnull %fcoe_mac, i32 noundef %method.0) #6
  %update_mac = getelementptr inbounds %struct.fcoe_ctlr, ptr %arg, i32 0, i32 30
  %46 = ptrtoint ptr %update_mac to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %update_mac, align 4
  call void %47(ptr noundef %1, ptr noundef nonnull %fcoe_mac) #6
  br label %done

done:                                             ; preds = %if.end31, %entry.done_crit_edge
  call void @fc_lport_flogi_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fcoe_mac) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_logo_resp(ptr noundef %seq, ptr noundef %fp, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %seq, i32 -40
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %update_mac = getelementptr inbounds %struct.fcoe_ctlr, ptr %arg, i32 0, i32 30
  %2 = ptrtoint ptr %update_mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_mac, align 4
  tail call void %3(ptr noundef %1, ptr noundef nonnull @bnx2fc_logo_resp.zero_mac) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @fc_lport_logo_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_initiate_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_l2_frame_compl(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_initiate_abts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2fc_cmd_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_post_io_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_initiate_seq_cleanup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2fc_elstm_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_init_mp_req(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_init_mp_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_cmd_timer_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_add_2_sq(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_ring_doorbell(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_HBA_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_lport_flogi_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_lport_logo_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !160, !162, !164, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 79, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2fc_send_rrq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2fc_send_rrq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 85, i32 3}
!8 = !{ptr @bnx2fc_send_rrq._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bnx2fc_send_rrq._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 103, i32 4}
!12 = !{ptr @bnx2fc_send_rrq._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bnx2fc_send_rrq._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 112, i32 3}
!16 = !{ptr @bnx2fc_send_rrq._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bnx2fc_send_rrq._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 194, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bnx2fc_send_adisc._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @bnx2fc_send_adisc._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 200, i32 2}
!25 = !{ptr @bnx2fc_send_adisc._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bnx2fc_send_adisc._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 222, i32 3}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bnx2fc_send_logo._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @bnx2fc_send_logo._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 228, i32 2}
!34 = !{ptr @bnx2fc_send_logo._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bnx2fc_send_logo._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 250, i32 3}
!38 = !{ptr @bnx2fc_send_rls._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bnx2fc_send_rls._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 592, i32 29}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 597, i32 3}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bnx2fc_send_rec._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @bnx2fc_send_rec._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 614, i32 30}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 633, i32 29}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 638, i32 3}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bnx2fc_send_srr._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bnx2fc_send_srr._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 658, i32 30}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 813, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bnx2fc_process_els_compl._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bnx2fc_process_els_compl._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 818, i32 3}
!65 = !{ptr @bnx2fc_process_els_compl._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bnx2fc_process_els_compl._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 38, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bnx2fc_rrq_compl._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bnx2fc_rrq_compl._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 48, i32 3}
!74 = !{ptr @bnx2fc_rrq_compl._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bnx2fc_rrq_compl._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 136, i32 2}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @bnx2fc_l2_els_compl._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @bnx2fc_l2_els_compl._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 161, i32 3}
!85 = !{ptr @bnx2fc_l2_els_compl._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @bnx2fc_l2_els_compl._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 166, i32 3}
!89 = !{ptr @bnx2fc_l2_els_compl._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bnx2fc_l2_els_compl._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 398, i32 2}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @bnx2fc_rec_compl._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @bnx2fc_rec_compl._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 401, i32 25}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 406, i32 26}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 412, i32 27}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 427, i32 27}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 436, i32 26}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 442, i32 26}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 457, i32 3}
!110 = !{ptr @bnx2fc_rec_compl._entry.58, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @bnx2fc_rec_compl._entry_ptr.60, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 465, i32 3}
!114 = !{ptr @bnx2fc_rec_compl._entry.61, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @bnx2fc_rec_compl._entry_ptr.63, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 475, i32 26}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 480, i32 27}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 490, i32 27}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 494, i32 27}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 508, i32 27}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 511, i32 26}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 520, i32 28}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 526, i32 28}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 539, i32 28}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 546, i32 28}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 557, i32 28}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 562, i32 27}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 568, i32 28}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 282, i32 26}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 287, i32 27}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 293, i32 27}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 311, i32 27}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 320, i32 26}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 332, i32 3}
!154 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @bnx2fc_srr_compl._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @bnx2fc_srr_compl._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @bnx2fc_srr_compl._entry.84, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 340, i32 3}
!159 = !{ptr @bnx2fc_srr_compl._entry_ptr.85, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 351, i32 26}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 354, i32 26}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 364, i32 26}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 691, i32 3}
!168 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bnx2fc_initiate_els._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @bnx2fc_initiate_els._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.92, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 696, i32 3}
!173 = !{ptr @bnx2fc_initiate_els._entry.91, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @bnx2fc_initiate_els._entry_ptr.93, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 701, i32 3}
!177 = !{ptr @bnx2fc_initiate_els._entry.94, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @bnx2fc_initiate_els._entry_ptr.96, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 722, i32 3}
!181 = !{ptr @bnx2fc_initiate_els._entry.97, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @bnx2fc_initiate_els._entry_ptr.99, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 741, i32 3}
!185 = !{ptr @bnx2fc_initiate_els._entry.100, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @bnx2fc_initiate_els._entry_ptr.102, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 782, i32 3}
!189 = !{ptr @bnx2fc_initiate_els._entry.103, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @bnx2fc_initiate_els._entry_ptr.105, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 906, i32 24}
!193 = !{ptr @bnx2fc_logo_resp.zero_mac, !194, !"zero_mac", i1 false, i1 false}
!194 = !{!"../drivers/scsi/bnx2fc/bnx2fc_els.c", i32 918, i32 12}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2148471007}
!206 = !{i64 2148385447, i64 2148385479, i64 2148385508, i64 2148385542, i64 2148385573, i64 2148385596}
!207 = !{i64 2149347121}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{i64 2157118192, i64 2157118688, i64 2157118229, i64 2157118285, i64 2157118319, i64 2157118343, i64 2157118384, i64 2157118405, i64 2157118433, i64 2157118467}
!210 = !{i64 2157119808, i64 2157120304, i64 2157119845, i64 2157119901, i64 2157119935, i64 2157119959, i64 2157120000, i64 2157120021, i64 2157120049, i64 2157120083}
!211 = !{i64 2157125694, i64 2157126190, i64 2157125731, i64 2157125787, i64 2157125821, i64 2157125845, i64 2157125886, i64 2157125907, i64 2157125935, i64 2157125969}
!212 = !{i64 2157137463, i64 2157137960, i64 2157137500, i64 2157137556, i64 2157137590, i64 2157137614, i64 2157137655, i64 2157137676, i64 2157137704, i64 2157137738}
!213 = !{i64 2148382982, i64 2148383014, i64 2148383043, i64 2148383077, i64 2148383108, i64 2148383131}
