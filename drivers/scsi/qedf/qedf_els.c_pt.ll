; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_els.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_els.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qedf_ioreq = type { %struct.list_head, i16, ptr, i8, i8, i8, ptr, %struct.atomic_t, i32, i32, i32, %struct.kref, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, %struct.qedf_mp_req, ptr, ptr, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qedf_mp_req = type { i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qedf_rport = type { %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i16, i16, i16, i32, ptr, i32, i32, i32, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fcoe_cqe = type { i32, i16, i16, %union.fcoe_cqe_info }
%union.fcoe_cqe_info = type { %struct.fcoe_cqe_rsp_info }
%struct.fcoe_cqe_rsp_info = type { %struct.fcoe_fcp_rsp_flags, i8, i16, i32, i32, i32, i16, i8, i8, i32 }
%struct.fcoe_fcp_rsp_flags = type { i8 }
%struct.fc_els_rrq = type { i8, [3 x i8], i8, [3 x i8], i16, i16 }
%struct.qedf_ctx = type { %struct.qedf_dbg_ctx, %struct.fcoe_ctlr, ptr, [6 x i8], %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, %struct.qed_dev_fcoe_info, %struct.qed_int_info, i16, %struct.spinlock, ptr, i64, i64, [6 x i8], %struct.list_head, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.completion, %struct.completion, %struct.atomic_t, %struct.timer_list, i32, i32, i8, ptr, ptr, i32, [256 x %struct.qedf_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, ptr, i16, ptr, %struct.qed_fcoe_tid, ptr, %struct.qed_pf_params, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, ptr, i32, [2048 x %struct.qedf_io_log], %struct.spinlock, i16, i8, i32, i32, i32, %struct.mutex, i64, i64, i64, i64, i64, i8, i8, i8, i8, %struct.mutex, [8 x i8] }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.qedf_bdq_buf = type { ptr, i32 }
%struct.qed_fcoe_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qedf_io_log = type { i8, i16, i32, i32, i8, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.fcoe_task_context = type { %struct.ystorm_fcoe_task_st_ctx, [2 x %struct.regpair], %struct.tdif_task_context, %struct.ystorm_fcoe_task_ag_ctx, %struct.tstorm_fcoe_task_ag_ctx, %struct.timers_context, %struct.tstorm_fcoe_task_st_ctx, [2 x %struct.regpair], %struct.mstorm_fcoe_task_ag_ctx, %struct.mstorm_fcoe_task_st_ctx, %struct.ustorm_fcoe_task_ag_ctx, %struct.rdif_task_context }
%struct.ystorm_fcoe_task_st_ctx = type { i8, i8, i8, i8, i32, %union.protection_info_union_ctx, i32, %struct.scsi_sgl_params, [12 x i8], %union.fcoe_tx_info_union_ctx, %union.fcoe_dix_desc_ctx, %struct.scsi_cached_sges, i16, i16, i32, [8 x i8] }
%union.protection_info_union_ctx = type { i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%struct.regpair = type { i32, i32 }
%union.fcoe_tx_info_union_ctx = type { %struct.fcoe_fcp_cmd_payload }
%struct.fcoe_fcp_cmd_payload = type { [8 x i32] }
%union.fcoe_dix_desc_ctx = type { %struct.fcoe_slow_sgl_ctx }
%struct.fcoe_slow_sgl_ctx = type { %struct.regpair, i16, i16, i16, i16 }
%struct.scsi_cached_sges = type { [4 x %struct.scsi_sge] }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.ystorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.tstorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i16, i16, i16, i32, i32 }
%struct.timers_context = type { i32, i32, i32, i32 }
%struct.tstorm_fcoe_task_st_ctx = type { %struct.fcoe_tstorm_fcoe_task_st_ctx_read_write, %struct.fcoe_tstorm_fcoe_task_st_ctx_read_only }
%struct.fcoe_tstorm_fcoe_task_st_ctx_read_write = type { %union.fcoe_cleanup_addr_exp_ro_union, i16, i16, i8, i8, i16, %struct.fcoe_abts_pkt, i32, i16, i16 }
%union.fcoe_cleanup_addr_exp_ro_union = type { %struct.regpair }
%struct.fcoe_abts_pkt = type { i32, i16, i8, i8 }
%struct.fcoe_tstorm_fcoe_task_st_ctx_read_only = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.mstorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.mstorm_fcoe_task_st_ctx = type { %struct.regpair, [2 x i32], %struct.scsi_sgl_params, i32, i32, i16, i16, %struct.scsi_cached_sges }
%struct.ustorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.qedf_els_cb_arg = type { ptr, ptr, i8, i16, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.fcoe_wqe = type { i16, i16, %union.fcoe_additional_info_union }
%union.fcoe_additional_info_union = type { i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.fcp_srr = type { i8, [3 x i8], i16, i16, i32, i8, [3 x i8] }
%struct.fc_els_rec = type { i8, [3 x i8], i8, [3 x i8], i16, i16 }
%struct.fc_els_rec_acc = type { i8, [3 x i8], i16, i16, i8, [3 x i8], i8, [3 x i8], i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_task_params = type { ptr, ptr, i32, i32, i32, i32, i16, i8, i8 }

@__func__.qedf_process_els_compl = private unnamed_addr constant [23 x i8] c"qedf_process_els_compl\00", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Entered with xid = 0x%x cmd_type = %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ELS completion xid=0x%x after flush event=0x%x\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Dropping ELS completion xid=0x%x as fcport is flushing\00", [41 x i8] zeroinitializer }, align 32
@__func__.qedf_send_rrq = private unnamed_addr constant [14 x i8] c"qedf_send_rrq\00", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"abort_io_req is NULL.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"RRQ work was queued prior to a flush xid=0x%x, refcount=%d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fcport is no longer offloaded.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fcport->qedf is NULL.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"refcount for xid=%x io_req=%p refcount=%d is not 1.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Sending RRQ orig io = %p, orig_xid = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to allocate cb_arg for RRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RRQ failed - release orig io req 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedf_restart_rport = private unnamed_addr constant [19 x i8] c"qedf_restart_rport\00", align 1
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fcport is NULL.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fcport %p already in reset or not offloaded.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LOGO port_id=%x.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qedf_send_adisc = private unnamed_addr constant [16 x i8] c"qedf_send_adisc\00", align 1
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate cb_arg for ADISC\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sending ADISC ox_id=0x%x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADISC failed.\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.qedf_process_seq_cleanup_compl = private unnamed_addr constant [31 x i8] c"qedf_process_seq_cleanup_compl\00", align 1
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cqe is NULL or timeout event (0x%x)\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to send SRR, I/O will abort, xid=0x%x.\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.qedf_send_rec = private unnamed_addr constant [14 x i8] c"qedf_send_rec\00", align 1
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orig_io_req is NULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to allocate cb_arg for REC\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Sending REC orig_io=%p, orig_xid=0x%x rx_id=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"REC failed - release orig_io_req=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.qedf_initiate_els = private unnamed_addr constant [18 x i8] c"qedf_initiate_els\00", align 1
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fcport is NULL\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sending ELS\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"els 0x%x: rport not ready\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"els 0x%x: link is not ready\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"els 0x%x: fcport not ready\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to alloc ELS request 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"initiate_els els_req = 0x%p cb_arg = %p xid = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ELS MP request init failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ringing doorbell for ELS req\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.qedf_rrq_compl = private unnamed_addr constant [15 x i8] c"qedf_rrq_compl\00", align 1
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entered.\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Original io_req is NULL, rrq_req = %p.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"rrq_compl: orig io = %p, orig xid = 0x%x, rrq_xid = 0x%x, refcount=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedf_l2_els_compl = private unnamed_addr constant [18 x i8] c"qedf_l2_els_compl\00", align 1
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"els_req is NULL.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"els_req xid=0x%x event is flush.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"resp_len is beyond page size.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fc_frame_alloc failure.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Completing OX_ID 0x%x back to libfc.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qedf_send_srr = private unnamed_addr constant [14 x i8] c"qedf_send_srr\00", align 1
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Sending SRR orig_io=%p, orig_xid=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to allocate cb_arg for SRR\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SRR failed - release orig_io_req=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qedf_srr_compl = private unnamed_addr constant [15 x i8] c"qedf_srr_compl\00", align 1
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Entered: orig_io=%p, orig_io_xid=0x%x, rec_xid=0x%x, refcount=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ELS timeout rec_xid=0x%x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SRR success.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRR rejected.\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.qedf_rec_compl = private unnamed_addr constant [15 x i8] c"qedf_rec_compl\00", align 1
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Got TMO event, orig_io_req %p orig_io_xid=0x%x.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"payload get failed\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Received LS_RJT for REC: er_reason=0x%x, er_explan=0x%x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Handle CMD LOST case.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Received LS_ACC for REC: offset=0x%x, e_stat=0x%x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Target has the seq init\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sc_cmd is NULL for xid=0x%x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WRITE - response lost.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WRITE - XFER_RDY/DATA lost.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"READ - response lost.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"READ - DATA lost.\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qedf_requeue_io_req = private unnamed_addr constant [20 x i8] c"qedf_requeue_io_req\00", align 1
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate new io_req.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to post io_req\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Reissued SCSI command from  orig_xid=0x%x on new_xid=0x%x.\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qedf_initiate_seq_cleanup = private unnamed_addr constant [26 x i8] c"qedf_initiate_seq_cleanup\00", align 1
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Doing sequence cleanup for xid=0x%x offset=%u.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to allocate cb_arg for sequence cleanup\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 148, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 154, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 167, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 251, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 259, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 268, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 273, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 285, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 295, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 302, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 321, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 376, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 384, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 403, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 515, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 522, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 532, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 753, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 763, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1009, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1038, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1052, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1060, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 28, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 36, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 40, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 45, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 52, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 59, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 65, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 83, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 132, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 254, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 201, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 206, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 212, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 433, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 442, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 472, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 479, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 492, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 658, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 664, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 683, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 570, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 576, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 605, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 609, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 875, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 906, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 910, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 922, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 929, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 933, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 939, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 947, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 953, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 963, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 969, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 791, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 811, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 815, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 707, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [32 x i8] c"../drivers/scsi/qedf/qedf_els.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 713, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_els_compl(ptr noundef %qedf, ptr nocapture noundef readonly %cqe, ptr noundef %els_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 1
  %0 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %xid, align 4
  %conv = zext i16 %1 to i32
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_type, align 4
  %conv1 = zext i8 %3 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_els_compl, i32 noundef 149, i32 noundef 32768, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv1) #9
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 9
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  %.off = add i32 %5, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xid, align 4
  %conv12 = zext i16 %7 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_els_compl, i32 noundef 156, i32 noundef 1024, ptr noundef nonnull @.str.1, i32 noundef %conv12, i32 noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport14 = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 6
  %8 = ptrtoint ptr %fcport14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcport14, align 4
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false15, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false15:                                  ; preds = %if.end
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end23, label %lor.lhs.false15.if.then19_crit_edge

lor.lhs.false15.if.then19_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false15.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %16 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %xid, align 4
  %conv22 = zext i16 %17 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_els_compl, i32 noundef 169, i32 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %conv22) #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false15
  %flags24 = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags24) #9
  %timeout_work = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 14
  %call25 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #9
  %cqe_info = getelementptr inbounds %struct.fcoe_cqe, ptr %cqe, i32 0, i32 3
  %18 = ptrtoint ptr %cqe_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cqe_info, align 4
  %resp_len = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 33, i32 6
  %20 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %resp_len, align 4
  %cb_func = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 34
  %21 = ptrtoint ptr %cb_func to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cb_func, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.end23.if.end32_crit_edge, label %land.lhs.true

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end23
  %cb_arg = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 35
  %23 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb_arg, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %land.lhs.true.if.end32_crit_edge, label %if.then28

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %22(ptr noundef nonnull %24) #9
  %25 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cb_arg, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %els_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount) #9, !callees !162
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then19, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !160

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void %release(ptr noundef %kref) #9, !callees !162
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_release_cmd(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_send_rrq(ptr noundef %aborted_io_req) local_unnamed_addr #0 align 64 {
entry:
  %rrq = alloca %struct.fc_els_rrq, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rrq) #9
  %0 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 3
  %1 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 3, i32 1
  %2 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 3, i32 2
  %3 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fc_els_rrq, ptr %rrq, i32 0, i32 5
  %tobool.not = icmp eq ptr %aborted_io_req, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 251, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 6
  %5 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcport1, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %refcount4 = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount4, i32 noundef 4) #9
  %7 = ptrtoint ptr %refcount4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcount4, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 1
  %9 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %xid, align 4
  %conv = zext i16 %10 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 261, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %8) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount4, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount4, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount4, ptr %refcount4, i32 1, ptr elementtype(i32) %refcount4) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount4, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount4) #9, !callees !162
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 268, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %qedf12 = getelementptr inbounds %struct.qedf_rport, ptr %6, i32 0, i32 6
  %15 = ptrtoint ptr %qedf12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qedf12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 273, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %refcount17 = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 11
  %call.i.i.i.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount17, i32 noundef 4) #9
  %17 = ptrtoint ptr %refcount17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcount17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not = icmp eq i32 %18, 1
  br i1 %cmp.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %xid21 = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 1
  %19 = ptrtoint ptr %xid21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %xid21, align 4
  %conv22 = zext i16 %20 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %16, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 287, i32 noundef 32768, ptr noundef nonnull @.str.7, i32 noundef %conv22, ptr noundef nonnull %aborted_io_req, i32 noundef %18) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %lport24 = getelementptr inbounds %struct.qedf_ctx, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %lport24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lport24, align 16
  %sid25 = getelementptr inbounds %struct.qedf_rport, ptr %6, i32 0, i32 22
  %23 = ptrtoint ptr %sid25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sid25, align 4
  %r_a_tov26 = getelementptr inbounds %struct.fc_lport, ptr %22, i32 0, i32 23
  %25 = ptrtoint ptr %r_a_tov26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r_a_tov26, align 8
  %xid28 = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 1
  %27 = ptrtoint ptr %xid28 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %xid28, align 4
  %conv29 = zext i16 %28 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef nonnull %16, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 297, i32 noundef 32768, ptr noundef nonnull @.str.8, ptr noundef nonnull %aborted_io_req, i32 noundef %conv29) #9
  %29 = call ptr @memset(ptr %rrq, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3328, i32 noundef 20) #12
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %rrq_err.thread, label %rrq_err

rrq_err.thread:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %16, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 303, ptr noundef nonnull @.str.9) #9
  br label %if.then39

rrq_err:                                          ; preds = %if.end23
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %aborted_io_req, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %rrq to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 18, ptr %rrq, align 2
  %shr.i85 = lshr i32 %24, 16
  %conv.i = trunc i32 %shr.i85 to i8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %0, align 1
  %shr1.i = lshr i32 %24, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv3.i, ptr %1, align 2
  %conv6.i = trunc i32 %24 to i8
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i, ptr %2, align 1
  %36 = ptrtoint ptr %xid28 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %xid28, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %3, align 2
  %task = getelementptr inbounds %struct.qedf_ioreq, ptr %aborted_io_req, i32 0, i32 18
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_context, ptr %40, i32 0, i32 6, i32 0, i32 5
  %41 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rx_id, align 2
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %4, align 2
  %call37 = call fastcc i32 @qedf_initiate_els(ptr noundef nonnull %6, i32 noundef 18, ptr noundef nonnull %rrq, i32 noundef 12, ptr noundef nonnull @qedf_rrq_compl, ptr noundef nonnull %call7.i.i, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %rrq_err.cleanup_crit_edge, label %rrq_err.if.then39_crit_edge

rrq_err.if.then39_crit_edge:                      ; preds = %rrq_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

rrq_err.cleanup_crit_edge:                        ; preds = %rrq_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %rrq_err.if.then39_crit_edge, %rrq_err.thread
  %rc.096 = phi i32 [ -12, %rrq_err.thread ], [ %call37, %rrq_err.if.then39_crit_edge ]
  %44 = ptrtoint ptr %xid28 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %xid28, align 4
  %conv42 = zext i16 %45 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef nonnull %16, ptr noundef nonnull @__func__.qedf_send_rrq, i32 noundef 322, ptr noundef nonnull @.str.10, i32 noundef %conv42) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %call.i.i.i.i.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount17, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount17, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount17, ptr %refcount17, i32 1, ptr elementtype(i32) %refcount17) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i87)
  %cmp.i.i.i.i88 = icmp eq i32 %asmresult.i.i.i.i.i.i.i87, 1
  br i1 %cmp.i.i.i.i88, label %if.then.i92, label %if.end5.i.i.i.i90

if.end5.i.i.i.i90:                                ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i87)
  %.not.i.i.i.i89 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i89, label %if.end5.i.i.i.i90.cleanup_crit_edge, label %if.then10.i.i.i.i91, !prof !160

if.end5.i.i.i.i90.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i91:                              ; preds = %if.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount17, i32 noundef 3) #9
  br label %cleanup

if.then.i92:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount17) #9, !callees !162
  br label %cleanup

cleanup:                                          ; preds = %if.then.i92, %if.then10.i.i.i.i91, %if.end5.i.i.i.i90.cleanup_crit_edge, %rrq_err.cleanup_crit_edge, %if.then20, %if.then14, %if.then10, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then20 ], [ -22, %if.then14 ], [ -22, %if.then10 ], [ -22, %if.then ], [ 0, %rrq_err.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ], [ %rc.096, %if.end5.i.i.i.i90.cleanup_crit_edge ], [ %rc.096, %if.then10.i.i.i.i91 ], [ %rc.096, %if.then.i92 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rrq) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_initiate_els(ptr noundef %fcport, i32 noundef %op, ptr nocapture noundef readonly %data, i32 noundef %data_len, ptr noundef %cb_func, ptr noundef %cb_arg, i32 noundef %timer_msec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fcport, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 28, ptr noundef nonnull @.str.23) #9
  br label %els_err

if.end:                                           ; preds = %entry
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %0 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedf1, align 4
  %lport2 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport2, align 16
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 36, i32 noundef 32768, ptr noundef nonnull @.str.24) #9
  %rport = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 4
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_state.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.if.then4_crit_edge [
    i32 2, label %if.end.sw.bb.i_crit_edge
    i32 11, label %if.end.sw.bb.i_crit_edge135
  ]

if.end.sw.bb.i_crit_edge135:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge135
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.then4_crit_edge, label %if.end6

sw.bb.i.if.then4_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %sw.bb.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 40, ptr noundef nonnull @.str.25, i32 noundef %op) #9
  br label %els_err

if.end6:                                          ; preds = %sw.bb.i
  %state = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp.not = icmp eq i32 %12, 14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end6
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then8_crit_edge, label %if.end10

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 46, ptr noundef nonnull @.str.26, i32 noundef %op) #9
  br label %els_err

if.end10:                                         ; preds = %lor.lhs.false
  %flags11 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 1
  %15 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags11, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 52, ptr noundef nonnull @.str.27, i32 noundef %op) #9
  br label %els_err

if.end16:                                         ; preds = %if.end10
  %call17 = tail call ptr @qedf_alloc_cmd(ptr noundef nonnull %fcport, i8 noundef zeroext 4) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 60, i32 noundef 32768, ptr noundef nonnull @.str.28, i32 noundef %op) #9
  br label %els_err

if.end21:                                         ; preds = %if.end16
  %xid23 = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 1
  %18 = ptrtoint ptr %xid23 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %xid23, align 4
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 67, i32 noundef 32768, ptr noundef nonnull @.str.29, ptr noundef nonnull %call17, ptr noundef %cb_arg, i32 noundef %conv) #9
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 2
  %20 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sc_cmd, align 4
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 3
  %21 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %cmd_type, align 4
  %fcport24 = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 6
  %22 = ptrtoint ptr %fcport24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fcport, ptr %fcport24, align 4
  %cb_func25 = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 34
  %23 = ptrtoint ptr %cb_func25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cb_func, ptr %cb_func25, align 4
  %io_req = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %24 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call17, ptr %io_req, align 4
  %conv26 = trunc i32 %op to i8
  %op27 = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 2
  %25 = ptrtoint ptr %op27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv26, ptr %op27, align 4
  %cb_arg28 = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 35
  %26 = ptrtoint ptr %cb_arg28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cb_arg, ptr %cb_arg28, align 4
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 10
  %27 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %data_len, ptr %data_xfer_len, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !148) #9
  %and.i132 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i132 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %cpu30 = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 37
  %32 = ptrtoint ptr %cpu30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cpu30, align 4
  %call32 = tail call i32 @qedf_init_mp_req(ptr noundef nonnull %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then42, label %if.then34

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 83, ptr noundef nonnull @.str.30) #9
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 11
  tail call fastcc void @kref_put(ptr noundef %refcount, ptr noundef nonnull @qedf_release_cmd)
  br label %els_err

if.then42:                                        ; preds = %if.end21
  %req_buf = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 33, i32 1
  %33 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req_buf, align 4
  %35 = call ptr @memcpy(ptr %34, ptr %data, i32 %data_len)
  %req_fc_hdr = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 33, i32 5
  %rdata = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 5
  %36 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdata, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %37, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_id, align 8
  %sid53 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 22
  %40 = ptrtoint ptr %sid53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sid53, align 4
  tail call fastcc void @__fc_fill_fc_hdr(ptr noundef %req_fc_hdr, i32 noundef %39, i32 noundef %41)
  %42 = ptrtoint ptr %xid23 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %xid23, align 4
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %fcport) #9
  %call62 = tail call zeroext i16 @qedf_get_sqe_idx(ptr noundef nonnull %fcport) #9
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 13
  %44 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %call62 to i32
  %arrayidx = getelementptr %struct.fcoe_wqe, ptr %45, i32 %idxprom
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %tasks = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 46
  %conv63 = zext i16 %43 to i32
  %num_tids_per_block.i = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 46, i32 1
  %47 = ptrtoint ptr %num_tids_per_block.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_tids_per_block.i, align 4
  %conv63.frozen = freeze i32 %conv63
  %.frozen = freeze i32 %48
  %div.i = udiv i32 %conv63.frozen, %.frozen
  %arrayidx.i = getelementptr %struct.qedf_ctx, ptr %1, i32 0, i32 46, i32 2, i32 %div.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %51 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv63.frozen, %51
  %52 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tasks, align 4
  %mul.i = mul i32 %53, %rem.i.decomposed
  %add.ptr.i = getelementptr i8, ptr %50, i32 %mul.i
  tail call void @qedf_init_mp_task(ptr noundef nonnull %call17, ptr noundef %add.ptr.i, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer_msec)
  %tobool65.not = icmp eq i32 %timer_msec, 0
  br i1 %tobool65.not, label %if.then42.if.end67_crit_edge, label %if.then66

if.then42.if.end67_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then66:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qedf_cmd_timer_set(ptr noundef %1, ptr noundef nonnull %call17, i32 noundef %timer_msec) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then42.if.end67_crit_edge
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_initiate_els, i32 noundef 133, i32 noundef 32768, ptr noundef nonnull @.str.32) #9
  tail call void @qedf_ring_doorbell(ptr noundef nonnull %fcport) #9
  %flags69 = getelementptr inbounds %struct.qedf_ioreq, ptr %call17, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags69) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %fcport, i32 noundef %call59) #9
  br label %els_err

els_err:                                          ; preds = %if.end67, %if.then34, %if.then19, %if.then14, %if.then8, %if.then4, %if.then
  %rc.1 = phi i32 [ -11, %if.then4 ], [ -11, %if.then8 ], [ %call32, %if.then34 ], [ 0, %if.end67 ], [ -12, %if.then19 ], [ -22, %if.then14 ], [ -22, %if.then ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_rrq_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_req = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %0 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_req, align 4
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport, align 4
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedf1, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rrq_compl, i32 noundef 201, i32 noundef 32768, ptr noundef nonnull @.str.34) #9
  %6 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_arg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rrq_compl, i32 noundef 207, ptr noundef nonnull @.str.35, ptr noundef %1) #9
  br label %out_free

if.end:                                           ; preds = %entry
  %refcount3 = getelementptr inbounds %struct.qedf_ioreq, ptr %7, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount3, i32 noundef 4) #9
  %8 = ptrtoint ptr %refcount3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount3, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %xid, align 4
  %conv = zext i16 %11 to i32
  %xid5 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %xid5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %xid5, align 4
  %conv6 = zext i16 %13 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rrq_compl, i32 noundef 214, i32 noundef 32768, ptr noundef nonnull @.str.36, ptr noundef nonnull %7, i32 noundef %conv, i32 noundef %conv6, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then9, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then9:                                         ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount3, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount3, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount3, ptr %refcount3, i32 1, ptr elementtype(i32) %refcount3) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_free_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.out_free_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount3, i32 noundef 3) #9
  br label %out_free

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount3) #9, !callees !162
  br label %out_free

out_free:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_free_crit_edge, %if.end.out_free_crit_edge, %if.then
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp13 = icmp eq i32 %16, 4
  br i1 %cmp13, label %if.then15, label %out_free.if.end18_crit_edge

out_free.if.end18_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %out_free
  %refcount16 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 11
  %call.i.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount16, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount16, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount16, ptr %refcount16, i32 1, ptr elementtype(i32) %refcount16) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i34)
  %cmp.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i.i34, 1
  br i1 %cmp.i.i.i.i35, label %if.then.i39, label %if.end5.i.i.i.i37

if.end5.i.i.i.i37:                                ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i34)
  %.not.i.i.i.i36 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i34, 0
  br i1 %.not.i.i.i.i36, label %if.end5.i.i.i.i37.if.end18_crit_edge, label %if.then10.i.i.i.i38, !prof !160

if.end5.i.i.i.i37.if.end18_crit_edge:             ; preds = %if.end5.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then10.i.i.i.i38:                              ; preds = %if.end5.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount16, i32 noundef 3) #9
  br label %if.end18

if.then.i39:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount16) #9, !callees !162
  br label %if.end18

if.end18:                                         ; preds = %if.then.i39, %if.then10.i.i.i.i38, %if.end5.i.i.i.i37.if.end18_crit_edge, %out_free.if.end18_crit_edge
  tail call void @kfree(ptr noundef %cb_arg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_restart_rport(ptr noundef %fcport) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fcport, null
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_restart_rport, i32 noundef 376, ptr noundef nonnull @.str.11) #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %fcport) #9
  %flags5 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 1
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags5, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool7.not = icmp eq i32 %2, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body1.if.then15_crit_edge

do.body1.if.then15_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.body1
  %3 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags5, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false11

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags5, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %if.end17, label %lor.lhs.false11.if.then15_crit_edge

lor.lhs.false11.if.then15_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge, %do.body1.if.then15_crit_edge
  %qedf = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %9 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qedf, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %10, ptr noundef nonnull @__func__.qedf_restart_rport, i32 noundef 385, ptr noundef nonnull @.str.12, ptr noundef nonnull %fcport) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %fcport, i32 noundef %call2) #9
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags5) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %fcport, i32 noundef %call2) #9
  %rdata20 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 5
  %11 = ptrtoint ptr %rdata20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdata20, align 4
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %if.end17.if.end48_crit_edge, label %land.lhs.true

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end17
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %12, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #9
  %13 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %15 = phi i32 [ %14, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #9, !srcloc !163
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !160

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #9
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.end48.sink.split_crit_edge, label %land.lhs.true28

kref_get_unless_zero.exit.if.end48.sink.split_crit_edge: ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.sink.split

land.lhs.true28:                                  ; preds = %kref_get_unless_zero.exit
  %rp_state = getelementptr inbounds %struct.fc_rport_priv, ptr %12, i32 0, i32 3
  %25 = ptrtoint ptr %rp_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp29 = icmp eq i32 %26, 6
  br i1 %cmp29, label %if.then31, label %land.lhs.true28.if.end48_crit_edge

land.lhs.true28.if.end48_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then31:                                        ; preds = %land.lhs.true28
  %qedf32 = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %27 = ptrtoint ptr %qedf32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qedf32, align 4
  %lport33 = getelementptr inbounds %struct.qedf_ctx, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %lport33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lport33, align 16
  %port_id34 = getelementptr inbounds %struct.fc_rport_priv, ptr %12, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %port_id34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_id34, align 8
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %28, ptr noundef nonnull @__func__.qedf_restart_rport, i32 noundef 404, ptr noundef nonnull @.str.13, i32 noundef %32) #9
  %call37 = call i32 @fc_rport_logoff(ptr noundef nonnull %12) #9
  %call.i.i.i.i.i.i85 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i86 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i86)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i86, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i86)
  %.not.i.i.i.i87 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i86, 0
  br i1 %.not.i.i.i.i87, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i88, !prof !160

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i88:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @fc_rport_destroy(ptr noundef %kref) #9, !callees !162
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i88, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %30, i32 0, i32 6, i32 8
  call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #9
  %call40 = call ptr @fc_rport_create(ptr noundef %30, i32 noundef %32) #9
  call void @mutex_unlock(ptr noundef %disc_mutex) #9
  %tobool43.not = icmp eq ptr %call40, null
  br i1 %tobool43.not, label %kref_put.exit.if.end48.sink.split_crit_edge, label %if.then44

kref_put.exit.if.end48.sink.split_crit_edge:      ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.sink.split

if.then44:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call i32 @fc_rport_login(ptr noundef nonnull %call40) #9
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.then44, %kref_put.exit.if.end48.sink.split_crit_edge, %kref_get_unless_zero.exit.if.end48.sink.split_crit_edge
  %.sink = phi ptr [ null, %kref_get_unless_zero.exit.if.end48.sink.split_crit_edge ], [ %call40, %if.then44 ], [ %call40, %kref_put.exit.if.end48.sink.split_crit_edge ]
  %34 = ptrtoint ptr %rdata20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.sink, ptr %rdata20, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %land.lhs.true28.if.end48_crit_edge, %if.end17.if.end48_crit_edge
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then15, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_rport_logoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_rport_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_rport_login(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_send_adisc(ptr noundef %fcport, ptr nocapture noundef readonly %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qedf = getelementptr inbounds %struct.qedf_rport, ptr %fcport, i32 0, i32 6
  %0 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qedf, align 4
  %lport1 = getelementptr inbounds %struct.qedf_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport1, align 16
  %r_a_tov3 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %r_a_tov3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_a_tov3, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i = icmp ult i32 %7, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !164

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3328, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %adisc_err.thread, label %if.end

adisc_err.thread:                                 ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_send_adisc, i32 noundef 516, ptr noundef nonnull @.str.14) #9
  br label %if.then11

if.end:                                           ; preds = %fc_frame_header_get.exit
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fh_ox_id, align 4
  %l2_oxid = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %l2_oxid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %l2_oxid, align 2
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %1, ptr noundef nonnull @__func__.qedf_send_adisc, i32 noundef 523, i32 noundef 32768, ptr noundef nonnull @.str.15, i32 noundef %conv) #9
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %15)
  %cmp.not.i = icmp ult i32 %15, 52
  br i1 %cmp.not.i, label %if.end.adisc_err_crit_edge, label %fc_frame_header_get.exit.i

if.end.adisc_err_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adisc_err

fc_frame_header_get.exit.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %17, i32 1
  br label %adisc_err

adisc_err:                                        ; preds = %fc_frame_header_get.exit.i, %if.end.adisc_err_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end.adisc_err_crit_edge ]
  %call9 = tail call fastcc i32 @qedf_initiate_els(ptr noundef %fcport, i32 noundef 82, ptr noundef %pp.0.i, i32 noundef 28, ptr noundef nonnull @qedf_l2_els_compl, ptr noundef nonnull %call7.i.i, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %adisc_err.if.end13_crit_edge, label %adisc_err.if.then11_crit_edge

adisc_err.if.then11_crit_edge:                    ; preds = %adisc_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

adisc_err.if.end13_crit_edge:                     ; preds = %adisc_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %adisc_err.if.then11_crit_edge, %adisc_err.thread
  %rc.026 = phi i32 [ -12, %adisc_err.thread ], [ %call9, %adisc_err.if.then11_crit_edge ]
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %1, ptr noundef nonnull @__func__.qedf_send_adisc, i32 noundef 532, ptr noundef nonnull @.str.16) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %adisc_err.if.end13_crit_edge
  %rc.027 = phi i32 [ %rc.026, %if.then11 ], [ 0, %adisc_err.if.end13_crit_edge ]
  ret i32 %rc.027
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_l2_els_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %l2_oxid1 = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 3
  %0 = ptrtoint ptr %l2_oxid1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %l2_oxid1, align 2
  %io_req = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %2 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_req, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_l2_els_compl, i32 noundef 433, ptr noundef nonnull @.str.37) #9
  br label %free_arg

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xid, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_l2_els_compl, i32 noundef 443, ptr noundef nonnull @.str.38, i32 noundef %conv) #9
  br label %free_arg

if.end3:                                          ; preds = %if.end
  %fcport4 = getelementptr inbounds %struct.qedf_ioreq, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %fcport4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcport4, align 4
  %resp_fc_hdr = getelementptr inbounds %struct.qedf_ioreq, ptr %3, i32 0, i32 33, i32 11
  %resp_len6 = getelementptr inbounds %struct.qedf_ioreq, ptr %3, i32 0, i32 33, i32 6
  %10 = ptrtoint ptr %resp_len6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp_len6, align 4
  %resp_buf7 = getelementptr inbounds %struct.qedf_ioreq, ptr %3, i32 0, i32 33, i32 7
  %12 = ptrtoint ptr %resp_buf7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resp_buf7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp9 = icmp eq i32 %5, 4
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end3
  %op = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 2
  %14 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %15)
  %cmp13 = icmp eq i8 %15, 82
  br i1 %cmp13, label %if.then15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qedf_restart_rport(ptr noundef %9)
  br label %cleanup

if.end17:                                         ; preds = %if.end3
  %16 = add i32 %11, -4073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %16)
  %cmp18 = icmp ult i32 %16, -4097
  %qedf = getelementptr inbounds %struct.qedf_rport, ptr %9, i32 0, i32 6
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qedf, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %18, ptr noundef nonnull @__func__.qedf_l2_els_compl, i32 noundef 473, ptr noundef nonnull @.str.39) #9
  br label %free_arg

if.end21:                                         ; preds = %if.end17
  %rem.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qedf, align 4
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lport, align 16
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %22, i32 noundef %11) #9
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %11) #9
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool23.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool23.not, label %if.then24, label %if.end27

if.then24:                                        ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qedf, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %24, ptr noundef nonnull @__func__.qedf_l2_els_compl, i32 noundef 480, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end27:                                         ; preds = %fc_frame_alloc.exit
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %26)
  %cmp.i = icmp ult i32 %26, 24
  br i1 %cmp.i, label %do.end.i, label %if.end27.fc_frame_header_get.exit_crit_edge, !prof !164

if.end27.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end27.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %resp_fc_hdr, i32 24)
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %add.i = add nsw i32 %11, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add.i)
  %cmp.not.i = icmp ult i32 %31, %add.i
  br i1 %cmp.not.i, label %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge, label %if.then.i65

fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge: ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_payload_get.exit

if.then.i65:                                      ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %31)
  %cmp.i.i = icmp ult i32 %31, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i65.fc_frame_header_get.exit.i_crit_edge, !prof !164

if.then.i65.fc_frame_header_get.exit.i_crit_edge: ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then.i65.fc_frame_header_get.exit.i_crit_edge
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %33, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %34 = call ptr @memcpy(ptr %pp.0.i, ptr %13, i32 %11)
  %35 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qedf, align 4
  %conv32 = zext i16 %1 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %36, ptr noundef nonnull @__func__.qedf_l2_els_compl, i32 noundef 493, i32 noundef 32768, ptr noundef nonnull @.str.41, i32 noundef %conv32) #9
  %37 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qedf, align 4
  %lport1.i = getelementptr inbounds %struct.qedf_ctx, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %lport1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lport1.i, align 16
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %42)
  %cmp.i.i66 = icmp ult i32 %42, 24
  br i1 %cmp.i.i66, label %do.end.i.i67, label %fc_frame_payload_get.exit.fc_frame_header_get.exit.i70_crit_edge, !prof !164

fc_frame_payload_get.exit.fc_frame_header_get.exit.i70_crit_edge: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit.i70

do.end.i.i67:                                     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit.i70

fc_frame_header_get.exit.i70:                     ; preds = %do.end.i.i67, %fc_frame_payload_get.exit.fc_frame_header_get.exit.i70_crit_edge
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.not.i69 = icmp eq i16 %1, -1
  br i1 %cmp.not.i69, label %fc_frame_header_get.exit.i70.qedf_process_l2_frame_compl.exit_crit_edge, label %if.then.i71

fc_frame_header_get.exit.i70.qedf_process_l2_frame_compl.exit_crit_edge: ; preds = %fc_frame_header_get.exit.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %qedf_process_l2_frame_compl.exit

if.then.i71:                                      ; preds = %fc_frame_header_get.exit.i70
  call void @__sanitizer_cov_trace_pc() #11
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %1, ptr %fh_ox_id.i, align 4
  br label %qedf_process_l2_frame_compl.exit

qedf_process_l2_frame_compl.exit:                 ; preds = %if.then.i71, %fc_frame_header_get.exit.i70.qedf_process_l2_frame_compl.exit_crit_edge
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 35, ptr %44, align 4
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %fh_type.i, align 4
  %fh_f_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %44, i32 0, i32 5
  %48 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -104, ptr %fh_f_ctl.i, align 1
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %44, i32 0, i32 1
  %port_id.i = getelementptr inbounds %struct.fc_lport, ptr %40, i32 0, i32 18
  %49 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_id.i, align 8
  %shr.i.i = lshr i32 %50, 16
  %conv.i.i = trunc i32 %shr.i.i to i8
  %51 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i.i, ptr %fh_d_id.i, align 1
  %shr1.i.i = lshr i32 %50, 8
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %44, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %conv6.i.i = trunc i32 %50 to i8
  %arrayidx7.i.i = getelementptr %struct.fc_frame_header, ptr %44, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %44, i32 0, i32 3
  %rdata.i = getelementptr inbounds %struct.qedf_rport, ptr %9, i32 0, i32 5
  %54 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rdata.i, align 4
  %port_id4.i = getelementptr inbounds %struct.fc_rport_priv, ptr %55, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %port_id4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_id4.i, align 8
  %shr.i33.i = lshr i32 %57, 16
  %conv.i34.i = trunc i32 %shr.i33.i to i8
  %58 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i34.i, ptr %fh_s_id.i, align 1
  %shr1.i35.i = lshr i32 %57, 8
  %conv3.i36.i = trunc i32 %shr1.i35.i to i8
  %arrayidx4.i37.i = getelementptr %struct.fc_frame_header, ptr %44, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %arrayidx4.i37.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv3.i36.i, ptr %arrayidx4.i37.i, align 1
  %conv6.i38.i = trunc i32 %57 to i8
  %arrayidx7.i39.i = getelementptr %struct.fc_frame_header, ptr %44, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx7.i39.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv6.i38.i, ptr %arrayidx7.i39.i, align 1
  %fh_rx_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %44, i32 0, i32 10
  %61 = ptrtoint ptr %fh_rx_id.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %fh_rx_id.i, align 2
  %call5.i = tail call i32 @fcoe_fc_crc(ptr noundef nonnull %fp.0.i) #9
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3
  %fr_seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 4
  %62 = ptrtoint ptr %fr_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %fr_seq.i.i, align 4
  %fr_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 20
  %63 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %fr_flags.i.i, align 4
  %fr_encaps.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 21
  %64 = ptrtoint ptr %fr_encaps.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %fr_encaps.i.i, align 1
  %65 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %40, ptr %cb.i.i, align 8
  %fr_sof.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 18
  %66 = ptrtoint ptr %fr_sof.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 46, ptr %fr_sof.i, align 2
  %fr_eof.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 19
  %67 = ptrtoint ptr %fr_eof.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 66, ptr %fr_eof.i, align 1
  %neg.i = xor i32 %call5.i, -1
  %68 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #9
  %fr_crc.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 12
  %69 = ptrtoint ptr %fr_crc.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %fr_crc.i, align 4
  tail call void @fc_exch_recv(ptr noundef %40, ptr noundef nonnull %fp.0.i) #9
  br label %free_arg

free_arg:                                         ; preds = %qedf_process_l2_frame_compl.exit, %if.then20, %if.then2, %if.then
  tail call void @kfree(ptr noundef %cb_arg) #9
  br label %cleanup

cleanup:                                          ; preds = %free_arg, %if.then24, %if.then15, %if.then11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_process_seq_cleanup_compl(ptr noundef %qedf, ptr noundef readnone %cqe, ptr noundef %io_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_arg1 = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 35
  %0 = ptrtoint ptr %cb_arg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_arg1, align 4
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 9
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  %tobool.not = icmp eq ptr %cqe, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_seq_cleanup_compl, i32 noundef 754, ptr noundef nonnull @.str.17, i32 noundef %3) #9
  br label %free

if.end:                                           ; preds = %entry
  %timeout_work = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #9
  %offset = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %r_ctl = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %r_ctl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %r_ctl, align 4
  %call3 = tail call fastcc i32 @qedf_send_srr(ptr noundef %io_req, i32 noundef %5, i8 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.free_crit_edge, label %if.then5

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 1
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xid, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %qedf, ptr noundef nonnull @__func__.qedf_process_seq_cleanup_compl, i32 noundef 764, ptr noundef nonnull @.str.18, i32 noundef %conv) #9
  br label %free

free:                                             ; preds = %if.then5, %if.end.free_crit_edge, %if.then
  tail call void @kfree(ptr noundef %1) #9
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %free
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount) #9, !callees !162
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qedf_send_srr(ptr noundef %orig_io_req, i32 noundef %offset, i8 noundef zeroext %r_ctl) unnamed_addr #0 align 64 {
entry:
  %srr = alloca %struct.fcp_srr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %srr) #9
  %0 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 2
  %1 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 3
  %2 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 4
  %3 = getelementptr inbounds %struct.fcp_srr, ptr %srr, i32 0, i32 5
  %tobool.not = icmp eq ptr %orig_io_req, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_srr, i32 noundef 634, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 6
  %4 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcport1, align 4
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_srr, i32 noundef 642, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %qedf5 = getelementptr inbounds %struct.qedf_rport, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %qedf5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qedf5, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_srr, i32 noundef 647, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !160

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %13 = ptrtoint ptr %qedf5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qedf5, align 4
  %lport10 = getelementptr inbounds %struct.qedf_ctx, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %lport10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lport10, align 16
  %r_a_tov11 = getelementptr inbounds %struct.fc_lport, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %r_a_tov11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r_a_tov11, align 8
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 1
  %19 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %xid, align 4
  %conv = zext i16 %20 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %14, ptr noundef nonnull @__func__.qedf_send_srr, i32 noundef 659, i32 noundef 32768, ptr noundef nonnull @.str.42, ptr noundef nonnull %orig_io_req, i32 noundef %conv) #9
  %21 = call ptr @memset(ptr %srr, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3328, i32 noundef 20) #12
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %srr_err.thread, label %srr_err

srr_err.thread:                                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %14, ptr noundef nonnull @__func__.qedf_send_srr, i32 noundef 665, ptr noundef nonnull @.str.43) #9
  br label %if.then21

srr_err:                                          ; preds = %kref_get.exit
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %orig_io_req, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %srr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 20, ptr %srr, align 4
  %25 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %xid, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %0, align 4
  %rx_id = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 43
  %28 = ptrtoint ptr %rx_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_id, align 4
  %conv18 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv18, ptr %1, align 2
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %offset, ptr %2, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %r_ctl, ptr %3, align 4
  %call19 = call fastcc i32 @qedf_initiate_els(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %srr, i32 noundef 16, ptr noundef nonnull @qedf_srr_compl, ptr noundef nonnull %call7.i.i, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %srr_err.if.then21_crit_edge

srr_err.if.then21_crit_edge:                      ; preds = %srr_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %srr_err.if.then21_crit_edge, %srr_err.thread
  %rc.061 = phi i32 [ -12, %srr_err.thread ], [ %call19, %srr_err.if.then21_crit_edge ]
  %33 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %xid, align 4
  %conv24 = zext i16 %34 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %14, ptr noundef nonnull @__func__.qedf_send_srr, i32 noundef 684, ptr noundef nonnull @.str.44, i32 noundef %conv24) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %call25 = tail call i32 @qedf_initiate_abts(ptr noundef nonnull %orig_io_req, i1 noundef zeroext true) #9
  %call.i.i.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i58, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount) #9, !callees !162
  br label %cleanup

if.else:                                          ; preds = %srr_err
  call void @__sanitizer_cov_trace_pc() #11
  %flags28 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then3 ], [ -22, %if.then ], [ 0, %if.else ], [ %rc.061, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.061, %if.then10.i.i.i.i ], [ %rc.061, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %srr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_send_rec(ptr noundef %orig_io_req) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca %struct.fc_els_rec, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rec) #9
  %0 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 3
  %1 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 3, i32 1
  %2 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 3, i32 2
  %3 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fc_els_rec, ptr %rec, i32 0, i32 5
  %tobool.not = icmp eq ptr %orig_io_req, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rec, i32 noundef 1009, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 6
  %5 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcport1, align 4
  %flags = getelementptr inbounds %struct.qedf_rport, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rec, i32 noundef 1017, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %qedf5 = getelementptr inbounds %struct.qedf_rport, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %qedf5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qedf5, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_send_rec, i32 noundef 1022, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !160

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %14 = ptrtoint ptr %qedf5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qedf5, align 4
  %lport10 = getelementptr inbounds %struct.qedf_ctx, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %lport10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lport10, align 16
  %sid11 = getelementptr inbounds %struct.qedf_rport, ptr %6, i32 0, i32 22
  %18 = ptrtoint ptr %sid11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sid11, align 4
  %r_a_tov12 = getelementptr inbounds %struct.fc_lport, ptr %17, i32 0, i32 23
  %20 = ptrtoint ptr %r_a_tov12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r_a_tov12, align 8
  %22 = call ptr @memset(ptr %rec, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3328, i32 noundef 20) #12
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %rec_err.thread, label %rec_err

rec_err.thread:                                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %15, ptr noundef nonnull @__func__.qedf_send_rec, i32 noundef 1039, ptr noundef nonnull @.str.20) #9
  br label %if.then23

rec_err:                                          ; preds = %kref_get.exit
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %orig_io_req, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %rec to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 19, ptr %rec, align 2
  %shr.i57 = lshr i32 %19, 16
  %conv.i = trunc i32 %shr.i57 to i8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %0, align 1
  %shr1.i = lshr i32 %19, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.i, ptr %1, align 2
  %conv6.i = trunc i32 %19 to i8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv6.i, ptr %2, align 1
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 1
  %29 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %xid, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %3, align 2
  %task = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 18
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_context, ptr %33, i32 0, i32 6, i32 0, i32 5
  %34 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_id, align 2
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %4, align 2
  %conv = zext i16 %30 to i32
  %conv20 = zext i16 %35 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %15, ptr noundef nonnull @__func__.qedf_send_rec, i32 noundef 1054, i32 noundef 32768, ptr noundef nonnull @.str.21, ptr noundef nonnull %orig_io_req, i32 noundef %conv, i32 noundef %conv20) #9
  %call21 = call fastcc i32 @qedf_initiate_els(ptr noundef %6, i32 noundef 19, ptr noundef nonnull %rec, i32 noundef 12, ptr noundef nonnull @qedf_rec_compl, ptr noundef nonnull %call7.i.i, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %rec_err.cleanup_crit_edge, label %rec_err.if.then23_crit_edge

rec_err.if.then23_crit_edge:                      ; preds = %rec_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

rec_err.cleanup_crit_edge:                        ; preds = %rec_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %rec_err.if.then23_crit_edge, %rec_err.thread
  %rc.062 = phi i32 [ -12, %rec_err.thread ], [ %call21, %rec_err.if.then23_crit_edge ]
  %xid25 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 1
  %37 = ptrtoint ptr %xid25 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %xid25, align 4
  %conv26 = zext i16 %38 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %15, ptr noundef nonnull @__func__.qedf_send_rec, i32 noundef 1061, ptr noundef nonnull @.str.22, i32 noundef %conv26) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %call.i.i.i.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i59 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i59, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount) #9, !callees !162
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %rec_err.cleanup_crit_edge, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then3 ], [ -22, %if.then ], [ 0, %rec_err.cleanup_crit_edge ], [ %rc.062, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.062, %if.then10.i.i.i.i ], [ %rc.062, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rec) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_rec_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_req = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %0 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_req, align 4
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport, align 4
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedf1, align 4
  %lport2 = getelementptr inbounds %struct.qedf_ctx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport2, align 16
  %8 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_arg, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 860, ptr noundef nonnull @.str.19) #9
  br label %out_free

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch = icmp eq i32 %12, 4
  br i1 %switch, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_work = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %refcount7 = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount7, i32 noundef 4) #9
  %13 = ptrtoint ptr %refcount7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount7, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %xid, align 4
  %conv = zext i16 %16 to i32
  %xid9 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %xid9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xid9, align 4
  %conv10 = zext i16 %18 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 871, i32 noundef 32768, ptr noundef nonnull @.str.45, ptr noundef nonnull %9, i32 noundef %conv, i32 noundef %conv10, i32 noundef %14) #9
  %19 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp12 = icmp eq i32 %20, 4
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xid, align 4
  %conv17 = zext i16 %22 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 877, ptr noundef nonnull @.str.49, ptr noundef nonnull %9, i32 noundef %conv17) #9
  br label %out_put

if.end18:                                         ; preds = %if.end6
  %resp_len20 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 33, i32 6
  %23 = ptrtoint ptr %resp_len20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp_len20, align 4
  %resp_buf21 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 33, i32 7
  %25 = ptrtoint ptr %resp_buf21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resp_buf21, align 4
  %rem.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %7, i32 noundef %24) #9
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %24) #9
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool23.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 890, ptr noundef nonnull @.str.40) #9
  br label %out_put

if.end26:                                         ; preds = %fc_frame_alloc.exit
  %resp_fc_hdr = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 33, i32 11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %28)
  %cmp.i = icmp ult i32 %28, 24
  br i1 %cmp.i, label %do.end.i, label %if.end26.fc_frame_header_get.exit_crit_edge, !prof !164

if.end26.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end26.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %31 = call ptr @memcpy(ptr %30, ptr %resp_fc_hdr, i32 24)
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %add.i = add i32 %24, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i)
  %cmp.not.i = icmp ult i32 %33, %add.i
  br i1 %cmp.not.i, label %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge, label %if.then.i166

fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge: ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_payload_get.exit

if.then.i166:                                     ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %cmp.i.i = icmp ult i32 %33, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i166.fc_frame_header_get.exit.i_crit_edge, !prof !164

if.then.i166.fc_frame_header_get.exit.i_crit_edge: ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then.i166.fc_frame_header_get.exit.i_crit_edge
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %35, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %36 = call ptr @memcpy(ptr %pp.0.i, ptr %26, i32 %24)
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %38)
  %cmp.not.i.i = icmp ult i32 %38, 25
  br i1 %cmp.not.i.i, label %fc_frame_payload_get.exit.out_free_frame_crit_edge, label %fc_frame_payload_get.exit.i

fc_frame_payload_get.exit.out_free_frame_crit_edge: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_frame

fc_frame_payload_get.exit.i:                      ; preds = %fc_frame_payload_get.exit
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %40, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.out_free_frame_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.out_free_frame_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_frame

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %42, label %fc_frame_payload_op.exit.out_free_frame_crit_edge [
    i8 1, label %if.then33
    i8 2, label %if.then62
  ]

fc_frame_payload_op.exit.out_free_frame_crit_edge: ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_frame

if.then33:                                        ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %38)
  %cmp.not.i168 = icmp ult i32 %38, 32
  br i1 %cmp.not.i168, label %if.then33.if.then36_crit_edge, label %fc_frame_payload_get.exit177

if.then33.if.then36_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

fc_frame_payload_get.exit177:                     ; preds = %if.then33
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i173 = getelementptr %struct.fc_frame_header, ptr %45, i32 1
  %tobool35.not = icmp eq ptr %add.ptr.i173, null
  br i1 %tobool35.not, label %fc_frame_payload_get.exit177.if.then36_crit_edge, label %if.end38

fc_frame_payload_get.exit177.if.then36_crit_edge: ; preds = %fc_frame_payload_get.exit177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %fc_frame_payload_get.exit177.if.then36_crit_edge, %if.then33.if.then36_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 906, ptr noundef nonnull @.str.50) #9
  br label %out_free_frame

if.end38:                                         ; preds = %fc_frame_payload_get.exit177
  %er_reason = getelementptr %struct.fc_frame_header, ptr %45, i32 1, i32 3
  %46 = ptrtoint ptr %er_reason to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %er_reason, align 1
  %conv40 = zext i8 %47 to i32
  %er_explan = getelementptr %struct.fc_frame_header, ptr %45, i32 1, i32 3, i32 1
  %48 = ptrtoint ptr %er_explan to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %er_explan, align 1
  %conv41 = zext i8 %49 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 912, i32 noundef 32768, ptr noundef nonnull @.str.51, i32 noundef %conv40, i32 noundef %conv41) #9
  %50 = ptrtoint ptr %er_reason to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %er_reason, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %51, label %if.end38.out_free_frame_crit_edge [
    i8 3, label %if.end38.land.lhs.true50_crit_edge
    i8 9, label %if.end38.land.lhs.true50_crit_edge187
  ]

if.end38.land.lhs.true50_crit_edge187:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true50

if.end38.land.lhs.true50_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true50

if.end38.out_free_frame_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_frame

land.lhs.true50:                                  ; preds = %if.end38.land.lhs.true50_crit_edge, %if.end38.land.lhs.true50_crit_edge187
  %53 = ptrtoint ptr %er_explan to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %er_explan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %54)
  %cmp53 = icmp eq i8 %54, 23
  br i1 %cmp53, label %if.then55, label %land.lhs.true50.out_free_frame_crit_edge

land.lhs.true50.out_free_frame_crit_edge:         ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_frame

if.then55:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 923, i32 noundef 32768, ptr noundef nonnull @.str.52) #9
  tail call fastcc void @qedf_requeue_io_req(ptr noundef nonnull %9)
  br label %out_free_frame

if.then62:                                        ; preds = %fc_frame_payload_op.exit
  %reca_fc4value = getelementptr inbounds %struct.fc_els_rec_acc, ptr %26, i32 0, i32 8
  %55 = ptrtoint ptr %reca_fc4value to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reca_fc4value, align 4
  %reca_e_stat = getelementptr inbounds %struct.fc_els_rec_acc, ptr %26, i32 0, i32 9
  %57 = ptrtoint ptr %reca_e_stat to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reca_e_stat, align 4
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 931, i32 noundef 32768, ptr noundef nonnull @.str.53, i32 noundef %56, i32 noundef %58) #9
  %and = and i32 %58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 934, i32 noundef 32768, ptr noundef nonnull @.str.54) #9
  br label %out_free_frame

if.end67:                                         ; preds = %if.then62
  %sc_cmd68 = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 2
  %59 = ptrtoint ptr %sc_cmd68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sc_cmd68, align 4
  %tobool69.not = icmp eq ptr %60, null
  br i1 %tobool69.not, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %xid, align 4
  %conv73 = zext i16 %62 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 941, i32 noundef 32768, ptr noundef nonnull @.str.55, i32 noundef %conv73) #9
  br label %out_free_frame

if.end74:                                         ; preds = %if.end67
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %60, i32 0, i32 15
  %63 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp75 = icmp eq i32 %64, 1
  br i1 %cmp75, label %if.then77, label %if.else85

if.then77:                                        ; preds = %if.end74
  %data_xfer_len = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 10
  %65 = ptrtoint ptr %data_xfer_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %66)
  %cmp78 = icmp eq i32 %56, %66
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 948, i32 noundef 32768, ptr noundef nonnull @.str.56) #9
  br label %if.then96

if.else82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 954, i32 noundef 32768, ptr noundef nonnull @.str.57) #9
  %tx_buf_off = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 42
  %67 = ptrtoint ptr %tx_buf_off to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_buf_off, align 4
  br label %if.else99

if.else85:                                        ; preds = %if.end74
  %rx_buf_off = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 41
  %69 = ptrtoint ptr %rx_buf_off to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_buf_off, align 4
  %data_xfer_len86 = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 10
  %71 = ptrtoint ptr %data_xfer_len86 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_xfer_len86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp87 = icmp eq i32 %70, %72
  br i1 %cmp87, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 964, i32 noundef 32768, ptr noundef nonnull @.str.58) #9
  br label %if.then96

if.else91:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_rec_compl, i32 noundef 970, i32 noundef 32768, ptr noundef nonnull @.str.59) #9
  br label %if.else99

if.then96:                                        ; preds = %if.then89, %if.then80
  %call98 = tail call fastcc i32 @qedf_send_srr(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 7)
  br label %out_free_frame

if.else99:                                        ; preds = %if.else91, %if.else82
  %r_ctl.0 = phi i8 [ 5, %if.else82 ], [ 1, %if.else91 ]
  %offset.0 = phi i32 [ %68, %if.else82 ], [ 0, %if.else91 ]
  tail call fastcc void @qedf_initiate_seq_cleanup(ptr noundef nonnull %9, i32 noundef %offset.0, i8 noundef zeroext %r_ctl.0)
  br label %out_free_frame

out_free_frame:                                   ; preds = %if.else99, %if.then96, %if.then70, %if.then65, %if.then55, %land.lhs.true50.out_free_frame_crit_edge, %if.end38.out_free_frame_crit_edge, %if.then36, %fc_frame_payload_op.exit.out_free_frame_crit_edge, %fc_frame_payload_get.exit.i.out_free_frame_crit_edge, %fc_frame_payload_get.exit.out_free_frame_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #9
  br label %out_put

out_put:                                          ; preds = %out_free_frame, %if.then24, %if.then14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount7, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount7, i32 1, i32 3, i32 1) #9
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount7, ptr %refcount7, i32 1, ptr elementtype(i32) %refcount7) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i178, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_free_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.out_free_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount7, i32 noundef 3) #9
  br label %out_free

if.then.i178:                                     ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount7) #9, !callees !162
  br label %out_free

out_free:                                         ; preds = %if.then.i178, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_free_crit_edge, %if.then
  tail call void @kfree(ptr noundef %cb_arg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qedf_alloc_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_init_mp_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @__fc_fill_fc_hdr(ptr nocapture noundef writeonly %fh, i32 noundef %did, i32 noundef %sid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fh to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 34, ptr %fh, align 4
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 1
  %shr.i = lshr i32 %did, 16
  %conv.i = trunc i32 %shr.i to i8
  %1 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv.i, ptr %fh_d_id, align 1
  %shr1.i = lshr i32 %did, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %fh, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %did to i8
  %arrayidx7.i = getelementptr %struct.fc_frame_header, ptr %fh, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 3
  %shr.i1 = lshr i32 %sid, 16
  %conv.i2 = trunc i32 %shr.i1 to i8
  %4 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i2, ptr %fh_s_id, align 1
  %shr1.i3 = lshr i32 %sid, 8
  %conv3.i4 = trunc i32 %shr1.i3 to i8
  %arrayidx4.i5 = getelementptr %struct.fc_frame_header, ptr %fh, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx4.i5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.i4, ptr %arrayidx4.i5, align 1
  %conv6.i6 = trunc i32 %sid to i8
  %arrayidx7.i7 = getelementptr %struct.fc_frame_header, ptr %fh, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx7.i7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6.i6, ptr %arrayidx7.i7, align 1
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 4
  %7 = ptrtoint ptr %fh_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %fh_type, align 4
  %fh_f_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 5
  %8 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 41, ptr %fh_f_ctl, align 1
  %arrayidx4.i8 = getelementptr %struct.fc_frame_header, ptr %fh, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx4.i8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4.i8, align 1
  %arrayidx7.i9 = getelementptr %struct.fc_frame_header, ptr %fh, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx7.i9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx7.i9, align 1
  %fh_cs_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 2
  %11 = ptrtoint ptr %fh_cs_ctl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fh_cs_ctl, align 4
  %fh_df_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 7
  %12 = ptrtoint ptr %fh_df_ctl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fh_df_ctl, align 1
  %fh_parm_offset = getelementptr inbounds %struct.fc_frame_header, ptr %fh, i32 0, i32 11
  %13 = ptrtoint ptr %fh_parm_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fh_parm_offset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qedf_get_sqe_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_init_mp_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_cmd_timer_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_ring_doorbell(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_fc_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qedf_srr_compl(ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_req = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %cb_arg, i32 0, i32 1
  %0 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_req, align 4
  %fcport = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcport, align 4
  %qedf1 = getelementptr inbounds %struct.qedf_rport, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %qedf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedf1, align 4
  %lport2 = getelementptr inbounds %struct.qedf_ctx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport2, align 16
  %8 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_arg, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_srr_compl, i32 noundef 559, ptr noundef nonnull @.str.19) #9
  br label %out_free

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #9
  %event = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch = icmp eq i32 %12, 4
  br i1 %switch, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_work = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %refcount7 = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount7, i32 noundef 4) #9
  %13 = ptrtoint ptr %refcount7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount7, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %xid, align 4
  %conv = zext i16 %16 to i32
  %xid9 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %xid9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xid9, align 4
  %conv10 = zext i16 %18 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_srr_compl, i32 noundef 572, i32 noundef 32768, ptr noundef nonnull @.str.45, ptr noundef nonnull %9, i32 noundef %conv, i32 noundef %conv10, i32 noundef %14) #9
  %19 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp12 = icmp eq i32 %20, 4
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %xid9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xid9, align 4
  %conv17 = zext i16 %22 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_srr_compl, i32 noundef 577, ptr noundef nonnull @.str.46, i32 noundef %conv17) #9
  br label %out_put

if.end18:                                         ; preds = %if.end6
  %resp_len20 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 33, i32 6
  %23 = ptrtoint ptr %resp_len20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp_len20, align 4
  %resp_buf21 = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 33, i32 7
  %25 = ptrtoint ptr %resp_buf21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resp_buf21, align 4
  %rem.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %7, i32 noundef %24) #9
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %24) #9
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool23.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_srr_compl, i32 noundef 590, ptr noundef nonnull @.str.40) #9
  br label %out_put

if.end26:                                         ; preds = %fc_frame_alloc.exit
  %resp_fc_hdr = getelementptr inbounds %struct.qedf_ioreq, ptr %1, i32 0, i32 33, i32 11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %28)
  %cmp.i = icmp ult i32 %28, 24
  br i1 %cmp.i, label %do.end.i, label %if.end26.fc_frame_header_get.exit_crit_edge, !prof !164

if.end26.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end26.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %31 = call ptr @memcpy(ptr %30, ptr %resp_fc_hdr, i32 24)
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %add.i = add i32 %24, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i)
  %cmp.not.i = icmp ult i32 %33, %add.i
  br i1 %cmp.not.i, label %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge, label %if.then.i66

fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge: ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_payload_get.exit

if.then.i66:                                      ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %cmp.i.i = icmp ult i32 %33, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i66.fc_frame_header_get.exit.i_crit_edge, !prof !164

if.then.i66.fc_frame_header_get.exit.i_crit_edge: ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then.i66.fc_frame_header_get.exit.i_crit_edge
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %35, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %36 = call ptr @memcpy(ptr %pp.0.i, ptr %26, i32 %24)
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %38)
  %cmp.not.i.i = icmp ult i32 %38, 25
  br i1 %cmp.not.i.i, label %fc_frame_payload_get.exit.sw.epilog_crit_edge, label %fc_frame_payload_get.exit.i

fc_frame_payload_get.exit.sw.epilog_crit_edge:    ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

fc_frame_payload_get.exit.i:                      ; preds = %fc_frame_payload_get.exit
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %40, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.sw.epilog_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.sw.epilog_crit_edge:  ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %42, label %fc_frame_payload_op.exit.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb32
  ]

fc_frame_payload_op.exit.sw.epilog_crit_edge:     ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_srr_compl, i32 noundef 606, i32 noundef 32768, ptr noundef nonnull @.str.47) #9
  br label %sw.epilog

sw.bb32:                                          ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %5, ptr noundef nonnull @__func__.qedf_srr_compl, i32 noundef 610, i32 noundef 32768, ptr noundef nonnull @.str.48) #9
  %call34 = tail call i32 @qedf_initiate_abts(ptr noundef nonnull %9, i1 noundef zeroext true) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb, %fc_frame_payload_op.exit.sw.epilog_crit_edge, %fc_frame_payload_get.exit.i.sw.epilog_crit_edge, %fc_frame_payload_get.exit.sw.epilog_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %fp.0.i, i32 noundef 0) #9
  br label %out_put

out_put:                                          ; preds = %sw.epilog, %if.then24, %if.then14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount7, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount7, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount7, ptr %refcount7, i32 1, ptr elementtype(i32) %refcount7) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i67, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_free_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.out_free_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount7, i32 noundef 3) #9
  br label %out_free

if.then.i67:                                      ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount7) #9, !callees !162
  br label %out_free

out_free:                                         ; preds = %if.then.i67, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_free_crit_edge, %if.then
  tail call void @kfree(ptr noundef %cb_arg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_initiate_abts(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_requeue_io_req(ptr noundef %orig_io_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef null, ptr noundef nonnull @__func__.qedf_requeue_io_req, i32 noundef 779, ptr noundef nonnull @.str.11) #9
  br label %out

if.end:                                           ; preds = %entry
  %sc_cmd = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 2
  %2 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_cmd, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %qedf = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qedf, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 1
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xid, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %5, ptr noundef nonnull @__func__.qedf_requeue_io_req, i32 noundef 785, ptr noundef nonnull @.str.55, i32 noundef %conv) #9
  br label %out

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @qedf_alloc_cmd(ptr noundef nonnull %1, i8 noundef zeroext 1) #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %qedf7 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %qedf7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qedf7, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %9, ptr noundef nonnull @__func__.qedf_requeue_io_req, i32 noundef 792, ptr noundef nonnull @.str.60) #9
  br label %out

if.end9:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %sc_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_cmd, align 4
  %sc_cmd11 = getelementptr inbounds %struct.qedf_ioreq, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %sc_cmd11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sc_cmd11, align 4
  store ptr null, ptr %sc_cmd, align 4
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !160

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @qedf_release_cmd(ptr noundef %refcount) #9, !callees !162
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #9
  %call20 = tail call i32 @qedf_post_io_req(ptr noundef nonnull %1, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %qedf25 = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %qedf25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qedf25, align 4
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %15, ptr noundef nonnull @__func__.qedf_requeue_io_req, i32 noundef 811, ptr noundef nonnull @.str.61) #9
  %free_sqes = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %free_sqes, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_sqes, ptr %free_sqes, i32 1, ptr elementtype(i32) %free_sqes) #9, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %call17) #9
  br label %out

if.else:                                          ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  %xid27 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 1
  %17 = ptrtoint ptr %xid27 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xid27, align 4
  %conv28 = zext i16 %18 to i32
  %xid29 = getelementptr inbounds %struct.qedf_ioreq, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %xid29 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %xid29, align 4
  %conv30 = zext i16 %20 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %15, ptr noundef nonnull @__func__.qedf_requeue_io_req, i32 noundef 817, i32 noundef 32768, ptr noundef nonnull @.str.62, i32 noundef %conv28, i32 noundef %conv30) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %call17) #9
  %call32 = tail call i32 @qedf_initiate_abts(ptr noundef %orig_io_req, i1 noundef zeroext false) #9
  br label %out

out:                                              ; preds = %if.else, %if.then22, %if.then6, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qedf_initiate_seq_cleanup(ptr noundef %orig_io_req, i32 noundef %offset, i8 noundef zeroext %r_ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcport1 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 6
  %0 = ptrtoint ptr %fcport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcport1, align 4
  %qedf = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qedf, align 4
  %xid = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 1
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xid, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %3, ptr noundef nonnull @__func__.qedf_initiate_seq_cleanup, i32 noundef 709, i32 noundef 32768, ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef %offset) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3328, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qedf, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %8, ptr noundef nonnull @__func__.qedf_initiate_seq_cleanup, i32 noundef 714, ptr noundef nonnull @.str.64) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !160

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %cmd_type = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 3
  %11 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %cmd_type, align 4
  %offset4 = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %offset4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %offset, ptr %offset4, align 4
  %r_ctl5 = getelementptr inbounds %struct.qedf_els_cb_arg, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %r_ctl5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %r_ctl, ptr %r_ctl5, align 8
  %cb_arg6 = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 35
  %14 = ptrtoint ptr %cb_arg6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %cb_arg6, align 4
  %15 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qedf, align 4
  tail call void @qedf_cmd_timer_set(ptr noundef %16, ptr noundef %orig_io_req, i32 noundef 100) #9
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call14 = tail call zeroext i16 @qedf_get_sqe_idx(ptr noundef %1) #9
  %sq = getelementptr inbounds %struct.qedf_rport, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sq, align 4
  %idxprom = zext i16 %call14 to i32
  %arrayidx = getelementptr %struct.fcoe_wqe, ptr %18, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %task_params = getelementptr inbounds %struct.qedf_ioreq, ptr %orig_io_req, i32 0, i32 19
  %20 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task_params, align 4
  %sqe15 = getelementptr inbounds %struct.fcoe_task_params, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %sqe15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %sqe15, align 4
  %23 = load ptr, ptr %task_params, align 4
  %call17 = tail call i32 @init_initiator_sequence_recovery_fcoe_task(ptr noundef %23, i32 noundef %offset) #9
  tail call void @qedf_ring_doorbell(ptr noundef %1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call11) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_post_io_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_initiator_sequence_recovery_fcoe_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146}
!llvm.named.register.sp = !{!148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__func__.qedf_process_els_compl, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 148, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 154, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 167, i32 3}
!7 = !{ptr @__func__.qedf_send_rrq, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 251, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 259, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 268, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 273, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 285, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 295, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 302, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 321, i32 3}
!24 = !{ptr @__func__.qedf_restart_rport, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 376, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 384, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 403, i32 3}
!31 = !{ptr @__func__.qedf_send_adisc, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 515, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 522, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 532, i32 3}
!38 = !{ptr @__func__.qedf_process_seq_cleanup_compl, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 753, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 763, i32 3}
!43 = !{ptr @__func__.qedf_send_rec, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 1009, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 1038, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 1052, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 1060, i32 3}
!52 = !{ptr @__func__.qedf_initiate_els, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 28, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 36, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 40, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 45, i32 3}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 52, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 59, i32 3}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 65, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 83, i32 3}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 94, i32 3}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 132, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/scsi/fc_frame.h", i32 254, i32 2}
!75 = !{ptr @__func__.qedf_rrq_compl, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 201, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 206, i32 3}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 212, i32 2}
!82 = !{ptr @__func__.qedf_l2_els_compl, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 433, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 442, i32 3}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 472, i32 3}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 479, i32 3}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 492, i32 2}
!93 = !{ptr @__func__.qedf_send_srr, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 634, i32 3}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 658, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 664, i32 3}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 683, i32 3}
!101 = !{ptr @__func__.qedf_srr_compl, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 559, i32 3}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 570, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 576, i32 3}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 605, i32 3}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 609, i32 3}
!111 = !{ptr @__func__.qedf_rec_compl, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 860, i32 3}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 875, i32 3}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 906, i32 4}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 910, i32 3}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 922, i32 4}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 929, i32 3}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 933, i32 4}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 939, i32 4}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 947, i32 5}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 953, i32 5}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 963, i32 5}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 969, i32 5}
!135 = !{ptr @__func__.qedf_requeue_io_req, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 779, i32 3}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 791, i32 3}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 811, i32 3}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 815, i32 3}
!143 = !{ptr @__func__.qedf_initiate_seq_cleanup, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 707, i32 2}
!145 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qedf/qedf_els.c", i32 713, i32 3}
!148 = !{!"sp"}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 2148515069}
!159 = !{i64 2148429533, i64 2148429565, i64 2148429594, i64 2148429628, i64 2148429659, i64 2148429682}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2150596722}
!162 = !{ptr @fc_rport_destroy, ptr @qedf_release_cmd}
!163 = !{i64 909274, i64 909298, i64 909319, i64 909336, i64 909353}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2148427068, i64 2148427100, i64 2148427129, i64 2148427163, i64 2148427194, i64 2148427217}
!166 = !{i64 2148425538, i64 2148425564, i64 2148425593, i64 2148425627, i64 2148425658, i64 2148425681}
